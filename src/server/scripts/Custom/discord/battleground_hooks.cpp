// DiscordWebhookMgr.cpp
// Zero external dependencies: C++ standard library + POSIX sockets only.
// NOTE: This implementation supports http:// URLs only. Discord requires https://,
//       so you must front it with a local TLS relay (nginx/caddy/stunnel/socat) if
//       you want to talk to Discord directly. See notes at the bottom of the file.
//
// THREADING MODEL:
//   - All webhook work runs on ONE persistent worker thread, shared process-wide.
//   - Callers enqueue (url, body) pairs; they never touch sockets.
//   - Queue is bounded; oldest jobs are dropped under flood.
//   - Worker is joined on shutdown so queued messages flush and no logging
//     happens after the Log singleton is torn down.
//   - Exposed via DiscordWebhookQueue::Instance() so other translation units
//     (e.g. the player-activity script) reuse the same worker.

#include <sys/types.h>
#include <sys/socket.h>
#include <netinet/in.h>
#include <netinet/tcp.h>
#include <netdb.h>
#include <unistd.h>
#include <fcntl.h>
#include <cerrno>
#include <cstdio>
#include <cstring>
#include <string>
#include <sstream>
#include <map>
#include <thread>
#include <mutex>
#include <condition_variable>
#include <queue>
#include <atomic>
#include <utility>

#include "ScriptMgr.h"
#include "Battleground.h"
#include "BattlegroundMgr.h"
#include "Player.h"
#include "Config.h"
#include "Log.h"
#include "DiscordWebhookMgr.h"

namespace
{
    // ---------------------------------------------------------------------
    // JSON string escaping – enough for Discord payloads (quotes, slashes,
    // control chars). Emojis are just UTF-8 bytes and pass through untouched.
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

    // ---------------------------------------------------------------------
    // Minimal URL parser for http://host[:port][/path]
    // ---------------------------------------------------------------------
    struct ParsedUrl
    {
        std::string host;
        std::string port = "80";
        std::string path = "/";
    };

    bool ParseHttpUrl(const std::string& url, ParsedUrl& out)
    {
        const std::string prefix = "http://";
        if (url.size() < prefix.size() ||
            url.compare(0, prefix.size(), prefix) != 0)
            return false;

        std::string rest = url.substr(prefix.size());
        if (rest.empty())
            return false;

        auto slash = rest.find('/');
        std::string hostPort = (slash == std::string::npos) ? rest : rest.substr(0, slash);
        out.path = (slash == std::string::npos) ? "/" : rest.substr(slash);

        // Handle IPv6 in brackets: [::1]:8080
        if (!hostPort.empty() && hostPort.front() == '[')
        {
            auto close = hostPort.find(']');
            if (close == std::string::npos)
                return false;
            out.host = hostPort.substr(1, close - 1);
            if (close + 1 < hostPort.size() && hostPort[close + 1] == ':')
                out.port = hostPort.substr(close + 2);
        }
        else
        {
            auto colon = hostPort.rfind(':');
            if (colon == std::string::npos)
            {
                out.host = hostPort;
            }
            else
            {
                out.host = hostPort.substr(0, colon);
                out.port = hostPort.substr(colon + 1);
            }
        }

        if (out.host.empty() || out.port.empty())
            return false;
        return true;
    }

    // ---------------------------------------------------------------------
    // Non-blocking connect with timeout.
    // Returns connected fd on success, -1 on failure.
    // ---------------------------------------------------------------------
    int ConnectWithTimeout(const addrinfo* p, int timeoutSec)
    {
        int sock = ::socket(p->ai_family, p->ai_socktype, p->ai_protocol);
        if (sock < 0)
            return -1;

        int flags = ::fcntl(sock, F_GETFL, 0);
        if (flags < 0) { ::close(sock); return -1; }
        if (::fcntl(sock, F_SETFL, flags | O_NONBLOCK) < 0)
        {
            ::close(sock);
            return -1;
        }

        int r = ::connect(sock, p->ai_addr, p->ai_addrlen);
        if (r < 0 && errno != EINPROGRESS)
        {
            ::close(sock);
            return -1;
        }

        if (r < 0)
        {
            fd_set wfds;
            FD_ZERO(&wfds);
            FD_SET(sock, &wfds);
            struct timeval tv{};
            tv.tv_sec  = timeoutSec;
            tv.tv_usec = 0;

            int sel = ::select(sock + 1, nullptr, &wfds, nullptr, &tv);
            if (sel <= 0)
            {
                ::close(sock);
                return -1;
            }

            int err = 0;
            socklen_t len = sizeof(err);
            if (::getsockopt(sock, SOL_SOCKET, SO_ERROR, &err, &len) < 0 || err != 0)
            {
                ::close(sock);
                return -1;
            }
        }

        // Restore blocking mode; we use SO_SNDTIMEO/SO_RCVTIMEO for I/O timeouts.
        if (::fcntl(sock, F_SETFL, flags) < 0)
        {
            ::close(sock);
            return -1;
        }

        return sock;
    }

    // ---------------------------------------------------------------------
    // Minimal blocking HTTP/1.1 POST using raw sockets, with timeouts.
    // Returns true if we received any response at all. Status code (if any)
    // is placed in `statusOut`.
    // ---------------------------------------------------------------------
    bool HttpPost(const ParsedUrl& url,
                  const std::string& body,
                  int& statusOut)
    {
        statusOut = 0;

        addrinfo hints{};
        hints.ai_family   = AF_UNSPEC;
        hints.ai_socktype = SOCK_STREAM;

        addrinfo* res = nullptr;
        if (getaddrinfo(url.host.c_str(), url.port.c_str(), &hints, &res) != 0)
            return false;

        int sock = -1;
        for (addrinfo* p = res; p; p = p->ai_next)
        {
            sock = ConnectWithTimeout(p, 5);
            if (sock >= 0)
                break;
        }
        freeaddrinfo(res);

        if (sock < 0)
            return false;

        // I/O timeouts (connect timeout handled above).
        struct timeval tv{};
        tv.tv_sec  = 10;
        tv.tv_usec = 0;
        ::setsockopt(sock, SOL_SOCKET, SO_RCVTIMEO, &tv, sizeof(tv));
        ::setsockopt(sock, SOL_SOCKET, SO_SNDTIMEO, &tv, sizeof(tv));

        // Disable Nagle so small payloads go out immediately.
        int one = 1;
        ::setsockopt(sock, IPPROTO_TCP, TCP_NODELAY, &one, sizeof(one));

        std::ostringstream req;
        req << "POST " << url.path << " HTTP/1.1\r\n"
            << "Host: " << url.host;
        if (url.port != "80")
            req << ':' << url.port;
        req << "\r\n"
            << "User-Agent: AzerothCore-DiscordWebhook/1.0\r\n"
            << "Content-Type: application/json\r\n"
            << "Content-Length: " << body.size() << "\r\n"
            << "Connection: close\r\n"
            << "\r\n"
            << body;

        const std::string reqStr = req.str();

        // Send everything (loop on partial writes).
        size_t sent = 0;
        while (sent < reqStr.size())
        {
            ssize_t n = ::send(sock, reqStr.data() + sent,
                               reqStr.size() - sent, MSG_NOSIGNAL);
            if (n < 0)
            {
                if (errno == EINTR) continue;
                ::close(sock);
                return false;
            }
            if (n == 0)
            {
                ::close(sock);
                return false;
            }
            sent += static_cast<size_t>(n);
        }

        // Read just enough of the response to grab the status line.
        std::string head;
        head.reserve(512);
        char buf[512];
        while (head.find("\r\n") == std::string::npos)
        {
            ssize_t n = ::recv(sock, buf, sizeof(buf), 0);
            if (n < 0)
            {
                if (errno == EINTR) continue;
                break;
            }
            if (n == 0) break;
            head.append(buf, static_cast<size_t>(n));
            if (head.size() > 4096) break; // sanity guard
        }

        // Drain the rest so the kernel frees the connection cleanly.
        while (true)
        {
            ssize_t n = ::recv(sock, buf, sizeof(buf), 0);
            if (n < 0 && errno == EINTR) continue;
            if (n <= 0) break;
        }

        ::close(sock);

        // Parse "HTTP/1.1 204 No Content"
        if (head.compare(0, 5, "HTTP/") == 0)
        {
            auto sp = head.find(' ');
            if (sp != std::string::npos && sp + 3 < head.size())
            {
                try { statusOut = std::stoi(head.substr(sp + 1, 3)); }
                catch (...) { statusOut = 0; }
            }
        }

        return true;
    }

} // namespace


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
// SAME worker instead of spawning its own thread. If you'd rather keep the
// class private, drop this to an anonymous-namespace class and give the
// header only a free `EnqueueDiscordWebhook(url, body)` function.
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
            TC_LOG_ERROR("bg.hooks",
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

    void Run()
    {
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
                        return;
                    continue;
                }
                job = std::move(_queue.front());
                _queue.pop();
            }

            try
            {
                ParsedUrl url;
                if (!ParseHttpUrl(job.first, url))
                {
                    TC_LOG_ERROR("bg.hooks",
                        "Discord webhook: URL must be http:// (build has no TLS). "
                        "Use a local relay for https://discord.com/... Got: %s",
                        job.first.c_str());
                    continue;
                }

                int status = 0;
                if (!HttpPost(url, job.second, status))
                {
                    TC_LOG_ERROR("bg.hooks",
                        "Failed to send Discord webhook to %s",
                        job.first.c_str());
                    continue;
                }

                if (status < 200 || status >= 300)
                {
                    TC_LOG_ERROR("bg.hooks",
                        "Discord webhook returned HTTP %d", status);
                }
            }
            catch (const std::exception& e)
            {
                TC_LOG_ERROR("bg.hooks",
                    "Exception in Discord webhook worker: %s", e.what());
            }
            catch (...)
            {
                TC_LOG_ERROR("bg.hooks",
                    "Unknown exception in Discord webhook worker");
            }
        }
    }

    std::queue<std::pair<std::string, std::string>> _queue;
    std::mutex                                       _mtx;
    std::condition_variable                          _cv;
    std::thread                                      _worker;
    bool                                             _stopped = false;
};


// -------------------------------------------------------------------------
// Public entry point – signature matches the original Poco version.
// Now builds the JSON on the caller's thread (cheap) and enqueues only.
// -------------------------------------------------------------------------
void SendBattlegroundDiscordWebhook(const std::string& webhookUrl,
                                   const std::string& battlegroundName,
                                   uint32 alliancePlayers,
                                   uint32 hordePlayers,
                                   const std::string& bracket)
{
    if (!sConfigMgr->GetBoolDefault("Webhook.Enabled", false))
        return;

    std::string avatarUrl = sConfigMgr->GetStringDefault("Webhook.AvatarURL", "");
    std::string realmName = sConfigMgr->GetStringDefault("WorldServer.RealmName", "Unknown Realm");

    static const std::map<std::string, uint32> bgPlayers = {
        {"Warsong Gulch",        8},
        {"Arathi Basin",         10},
        {"Alterac Valley",       35},
        {"Eye of the Storm",     12},
        {"Strand of the Ancients",12},
        {"Isle of Conquest",     35}
    };

    uint32 fakeplayers = 1;
    auto it = bgPlayers.find(battlegroundName);
    if (it != bgPlayers.end())
        fakeplayers = it->second;

    std::ostringstream content;
    content << "🌍 **[" << realmName << "]**\n"
            << "⚔️ **" << battlegroundName << " Started!**\n"
            << "📊 **Bracket:** " << bracket << "\n"
            << "👥 **Players:** " << (alliancePlayers + fakeplayers)
            << " Alliance vs "     << (hordePlayers   + fakeplayers)
            << " Horde";

    // Hand-rolled JSON – this matches what Poco produced before.
    std::ostringstream payload;
    payload << '{'
            << "\"content\":\"" << JsonEscape(content.str()) << '"';
    if (!avatarUrl.empty())
        payload << ",\"avatar_url\":\"" << JsonEscape(avatarUrl) << '"';
    payload << '}';

    // Enqueue only — never blocks on the network.
    DiscordWebhookQueue::Instance().Push(webhookUrl, payload.str());
}


// Stub kept for parity with the original file.
void AddBattlegroundDiscordHookScripts()
{
    //new BattlegroundScript_DiscordHook();
}