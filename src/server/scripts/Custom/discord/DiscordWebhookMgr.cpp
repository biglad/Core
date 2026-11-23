// DiscordWebhookMgr.cpp
// libcurl-based webhook sender, running on a single persistent worker thread.
//
// THREADING MODEL:
//   - All webhook work runs on ONE persistent worker thread, shared process-wide.
//   - Callers enqueue (url, body) pairs; they never touch curl or sockets.
//   - Queue is bounded; oldest jobs are dropped under flood.
//   - curl_global_init() runs once on the worker thread before the loop, and
//     curl_global_cleanup() runs once after the loop. A single CURL* handle is
//     reused for every request on that worker (curl handles are NOT thread-safe,
//     but one handle on one thread is fine and efficient).
//   - Worker is joined on shutdown so queued messages flush and no logging
//     happens after the Log singleton is torn down.
//   - Exposed via DiscordWebhookQueue::Instance() so other translation units
//     (e.g. the player-activity script) reuse the same worker.

#include "DiscordWebhookMgr.h"
#include "Config.h"
#include "Log.h"

#include <curl/curl.h>
#include <string>
#include <sstream>
#include <thread>
#include <mutex>
#include <condition_variable>
#include <queue>
#include <atomic>
#include <utility>

namespace
{
    // ---------------------------------------------------------------------
    // JSON string escaping – same rules as the rest of the codebase.
    // ---------------------------------------------------------------------
    std::string JsonEscape(const std::string& s)
    {
        std::string out;
        out.reserve(s.size() + 8);
        for (unsigned char c : s)
        {
            switch (c)
            {
                case '"':  out += "\\\""; break;
                case '\\': out += "\\\\"; break;
                case '\b': out += "\\b";  break;
                case '\f': out += "\\f";  break;
                case '\n': out += "\\n";  break;
                case '\r': out += "\\r";  break;
                case '\t': out += "\\t";  break;
                default:
                    if (c < 0x20)
                    {
                        char buf[8];
                        std::snprintf(buf, sizeof(buf), "\\u%04x", c);
                        out += buf;
                    }
                    else
                    {
                        out += static_cast<char>(c);
                    }
            }
        }
        return out;
    }

    // Build a Discord JSON payload from a raw message + optional avatar URL.
    std::string BuildPayload(const std::string& message,
                             const std::string& avatarUrl)
    {
        std::ostringstream payload;
        payload << '{'
                << "\"content\":\"" << JsonEscape(message) << '"';
        if (!avatarUrl.empty())
            payload << ",\"avatar_url\":\"" << JsonEscape(avatarUrl) << '"';
        payload << '}';
        return payload.str();
    }
}


// =========================================================================
// Shared webhook queue (declared in DiscordWebhookMgr.h).
//
//   class DiscordWebhookQueue
//   {
//   public:
//       static DiscordWebhookQueue& Instance();
//       void Push(std::string url, std::string body);
//       void Stop();
//   };
//
// Exposing it in the header lets the player-activity script enqueue on the
// SAME worker instead of spawning its own thread.
// =========================================================================
class DiscordWebhookQueue
{
public:
    static constexpr size_t kMaxQueue = 1000;

    static DiscordWebhookQueue& Instance()
    {
        // Intentionally leaked: avoids static-destruction-order issues with
        // the worker thread during process teardown. Stop() is called
        // explicitly from the shutdown hook.
        static DiscordWebhookQueue* inst = new DiscordWebhookQueue();
        return *inst;
    }

    void Push(std::string url, std::string body)
    {
        bool dropped = false;
        {
            std::lock_guard<std::mutex> lk(_mtx);
            if (_stopped)
                return; // ignore late pushes during/after shutdown
            if (_queue.size() >= kMaxQueue)
            {
                _queue.pop();
                dropped = true;
            }
            _queue.emplace(std::move(url), std::move(body));
        }
        _cv.notify_one();

        if (dropped)
        {
            // Log from the caller's thread; queue lock is not held here.
            TC_LOG_ERROR("module",
                "Discord webhook queue full; dropped oldest job.");
        }
    }

    void Stop()
    {
        {
            std::lock_guard<std::mutex> lk(_mtx);
            if (_stopped)
                return;
            _stopped = true;
        }
        _cv.notify_all();
        if (_worker.joinable())
            _worker.join();
    }

private:
    DiscordWebhookQueue()
    {
        _worker = std::thread([this]{ Run(); });
    }

    ~DiscordWebhookQueue()
    {
        Stop();
    }

    // Perform one HTTP POST with the shared CURL* handle.
    // Returns true on CURLE_OK and 2xx/3xx status.
    bool PerformPost(CURL* curl, const std::string& url, const std::string& body)
    {
        // Fresh header list per request (curl_slist is not reusable safely
        // across calls without resetting).
        struct curl_slist* headers = nullptr;
        headers = curl_slist_append(headers, "Content-Type: application/json");
        headers = curl_slist_append(headers, "User-Agent: AzerothCore-DiscordWebhook/1.0");

        // Reset the handle so leftover state from the last request can't leak
        // into this one (cookies, options, error buffer, etc.).
        curl_easy_reset(curl);

        curl_easy_setopt(curl, CURLOPT_URL, url.c_str());
        curl_easy_setopt(curl, CURLOPT_HTTPHEADER, headers);
        curl_easy_setopt(curl, CURLOPT_POSTFIELDS, body.c_str());
        curl_easy_setopt(curl, CURLOPT_POSTFIELDSIZE,
                         static_cast<long>(body.size()));
        curl_easy_setopt(curl, CURLOPT_TIMEOUT, 10L);          // total
        curl_easy_setopt(curl, CURLOPT_CONNECTTIMEOUT, 5L);    // connect
        curl_easy_setopt(curl, CURLOPT_NOSIGNAL, 1L);          // thread-safe DNS
        curl_easy_setopt(curl, CURLOPT_FOLLOWLOCATION, 0L);
        curl_easy_setopt(curl, CURLOPT_FAILONERROR, 0L);       // we check status ourselves

        CURLcode res = curl_easy_perform(curl);

        long httpStatus = 0;
        curl_easy_getinfo(curl, CURLINFO_RESPONSE_CODE, &httpStatus);

        curl_slist_free_all(headers);

        if (res != CURLE_OK)
        {
            TC_LOG_ERROR("module",
                "Discord webhook CURL failed for %s: %s",
                url.c_str(), curl_easy_strerror(res));
            return false;
        }

        if (httpStatus < 200 || httpStatus >= 300)
        {
            TC_LOG_ERROR("module",
                "Discord webhook returned HTTP %ld for %s",
                httpStatus, url.c_str());
            return false;
        }

        return true;
    }

    void Run()
    {
        // curl_global_init / cleanup must run once per process, and it is
        // NOT thread-safe to call concurrently. Doing it on the worker
        // thread is the simplest correct approach here.
        CURLcode globalInit = curl_global_init(CURL_GLOBAL_DEFAULT);
        if (globalInit != CURLE_OK)
        {
            TC_LOG_ERROR("module",
                "curl_global_init failed: %s", curl_easy_strerror(globalInit));
            return;
        }

        // One handle, reused for every request on this worker.
        CURL* curl = curl_easy_init();
        if (!curl)
        {
            TC_LOG_ERROR("module", "curl_easy_init failed");
            curl_global_cleanup();
            return;
        }

        while (true)
        {
            std::pair<std::string, std::string> job;
            {
                std::unique_lock<std::mutex> lk(_mtx);
                _cv.wait(lk, [this]{
                    return _stopped || !_queue.empty();
                });
                if (_queue.empty())
                {
                    if (_stopped)
                        break;
                    continue;
                }
                job = std::move(_queue.front());
                _queue.pop();
            }

            try
            {
                PerformPost(curl, job.first, job.second);
            }
            catch (const std::exception& e)
            {
                TC_LOG_ERROR("module",
                    "Exception in Discord webhook worker: %s", e.what());
            }
            catch (...)
            {
                TC_LOG_ERROR("module",
                    "Unknown exception in Discord webhook worker");
            }
        }

        curl_easy_cleanup(curl);
        curl_global_cleanup();
    }

    std::queue<std::pair<std::string, std::string>> _queue;
    std::mutex                                       _mtx;
    std::condition_variable                          _cv;
    std::thread                                      _worker;
    bool                                             _stopped = false;
};


// -------------------------------------------------------------------------
// Public entry points – unchanged signatures.
// Now build the JSON on the caller's thread (cheap) and enqueue only.
// -------------------------------------------------------------------------
void SendDiscordMessage(const std::string& message)
{
    if (!sConfigMgr->GetBoolDefault("Webhook.Enabled", true))
        return;

    std::string webhookUrl = sConfigMgr->GetStringDefault("Webhook.URL", "");
    std::string avatarUrl  = sConfigMgr->GetStringDefault("Webhook.AvatarURL", "");
    // realmName is currently unused here in the original; leave the read for
    // parity, or drop it if you like.
    /* std::string realmName = */ sConfigMgr->GetStringDefault("WorldServer.RealmName", "Unknown Realm");

    if (webhookUrl.empty())
    {
        TC_LOG_ERROR("module", "Webhook URL is empty. Check your config (Webhook.URL)");
        return;
    }

    DiscordWebhookQueue::Instance().Push(webhookUrl, BuildPayload(message, avatarUrl));
}


void SendDiscordMessageWorld(const std::string& message)
{
    if (!sConfigMgr->GetBoolDefault("Webhook.Enabled", true))
        return;

    std::string webhookUrl = sConfigMgr->GetStringDefault("Webhook2.URL", "");
    std::string avatarUrl  = sConfigMgr->GetStringDefault("Webhook2.AvatarURL", "");
    /* std::string realmName = */ sConfigMgr->GetStringDefault("WorldServer.RealmName", "Unknown Realm");

    if (webhookUrl.empty())
    {
        TC_LOG_ERROR("module", "Webhook URL is empty. Check your config (Webhook2.URL)");
        return;
    }

    DiscordWebhookQueue::Instance().Push(webhookUrl, BuildPayload(message, avatarUrl));
}

void EnqueueDiscordWebhook(std::string url, std::string body)
{
    DiscordWebhookQueue::Instance().Push(std::move(url), std::move(body));
}

void StopDiscordWebhookQueue()
{
    DiscordWebhookQueue::Instance().Stop();
}