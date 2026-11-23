// Discord player activity webhook – zero external dependencies.
// Requires: C++ standard library + POSIX sockets.
// NOTE: supports http:// only. Front it with a local TLS relay for Discord.
//
// THREADING MODEL:
//   - All webhook work runs on ONE persistent worker thread.
//   - Callers enqueue (url, body) pairs; they never touch sockets.
//   - Queue is bounded; oldest jobs are dropped under flood.
//   - Worker is joined on shutdown so shutdown messages flush and no
//     logging happens after the Log singleton is torn down.

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
#include <unordered_set>
#include <memory>
#include <thread>
#include <mutex>
#include <condition_variable>
#include <queue>
#include <atomic>
#include <utility>

#include "ScriptMgr.h"
#include "Config.h"
#include "Log.h"
#include "Player.h"
#include "World.h"
#include "WorldSession.h"
#include "server_shutdown.h"
#include "DBCStores.h"
#include "AchievementMgr.h"
#include "DatabaseEnv.h"
#include "../../scripts/Custom/discord/DiscordWebhookMgr.h"

namespace
{
    // ---------------------------------------------------------------------
    // JSON string escaping
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
    // URL parser: http://host[:port][/path]
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

        return !out.host.empty() && !out.port.empty();
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
    // Minimal blocking HTTP/1.1 POST with timeouts.
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
            if (head.size() > 4096) break;
        }

        // Drain remaining body so the relay/Discord sees a clean close.
        while (true)
        {
            ssize_t n = ::recv(sock, buf, sizeof(buf), 0);
            if (n < 0 && errno == EINTR) continue;
            if (n <= 0) break;
        }

        ::close(sock);

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

    // ---------------------------------------------------------------------
    // Single-worker webhook dispatcher.
    // ---------------------------------------------------------------------
    class WebhookQueue
    {
    public:
        static constexpr size_t kMaxQueue = 1000;

        static WebhookQueue& Instance()
        {
            // Intentionally leaked: avoids static-destruction-order issues
            // with the worker thread during process teardown. Stop() is
            // called explicitly from the shutdown script hook.
            static WebhookQueue* inst = new WebhookQueue();
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
                // Log from the caller's thread; queue state is not held here.
                TC_LOG_ERROR("player.hooks",
                    "Webhook queue full; dropped oldest job.");
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
        WebhookQueue()
        {
            _worker = std::thread([this]{ Run(); });
        }

        ~WebhookQueue()
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
                    ParsedUrl parsed;
                    if (!ParseHttpUrl(job.first, parsed))
                    {
                        TC_LOG_ERROR("player.hooks",
                            "Webhook URL must be http:// (build has no TLS). "
                            "Front Discord with a local relay. Got: %s",
                            job.first.c_str());
                        continue;
                    }

                    int status = 0;
                    if (!HttpPost(parsed, job.second, status))
                    {
                        TC_LOG_ERROR("player.hooks",
                            "Webhook POST failed to %s", job.first.c_str());
                        continue;
                    }

                    if (status < 200 || status >= 300)
                    {
                        TC_LOG_ERROR("player.hooks",
                            "Webhook returned HTTP %d", status);
                    }
                }
                catch (const std::exception& e)
                {
                    TC_LOG_ERROR("player.hooks",
                        "Exception in webhook worker: %s", e.what());
                }
                catch (...)
                {
                    TC_LOG_ERROR("player.hooks",
                        "Unknown exception in webhook worker");
                }
            }
        }

        std::queue<std::pair<std::string, std::string>> _queue;
        std::mutex                                       _mtx;
        std::condition_variable                          _cv;
        std::thread                                      _worker;
        bool                                             _stopped = false;
    };
}

static std::unordered_set<uint64> LoggedInGuids;


class DiscordWebhookPlayerActivity : public PlayerScript
{
public:
    DiscordWebhookPlayerActivity() : PlayerScript("DiscordWebhookPlayerActivity")
    {
        TC_LOG_INFO("player.hooks", "DiscordWebhookPlayerActivity script loaded.");
    }

    void OnAchievementEarned(Player* player, AchievementEntry const* achievement) //override
    {
        if (!sConfigMgr->GetBoolDefault("Webhook.Enabled", false))
            return;

        const std::string webhookUrl = sConfigMgr->GetStringDefault("Webhook.URL", "");
        if (webhookUrl.empty())
        {
            TC_LOG_ERROR("player.hooks", "No webhook URL configured!");
            return;
        }

        const std::string name            = player->GetName();
        const std::string achievementName = GetLocalizedAchievementName(achievement->ID);

        const std::string gmTag = player->GetSession()->GetSecurity() > SEC_PLAYER
            ? (player->GetSession()->GetSecurity() > 3 ? "🧪 " : "⚙️ ")
            : "👤 ";

        std::ostringstream messageStream;
        messageStream << "🌍 "
                      << gmTag << "🏆 Achievement Earned by `" << name
                      << "`: **" << achievementName << "**";

        SendDiscordWebhookAsync(webhookUrl, messageStream.str());
    }

    void OnLogin(Player* player, bool /*firstLogin*/) override
    {
        if (!sConfigMgr->GetBoolDefault("Webhook.Enabled", false))
            return;

        uint64 guid = player->GetGUID().GetRawValue();
        if (!LoggedInGuids.insert(guid).second)
            return;

        Notify(player, true);
    }

    void OnLogout(Player* player) override
    {
        if (!sConfigMgr->GetBoolDefault("Webhook.Enabled", false))
            return;

        if (serverShuttingDown)
        {
            const std::string webhookUrl = sConfigMgr->GetStringDefault("Webhook.URL", "");
            if (!webhookUrl.empty())
            {
                const std::string message = "🌍 👢 All online players have been logged out..";
                SendDiscordWebhookAsync(webhookUrl, message);
            }
            return;
        }

        LoggedInGuids.erase(player->GetGUID().GetRawValue());
        Notify(player, false);
    }

private:
    void Notify(Player* player, bool loggingIn)
    {
        const std::string webhookUrl = sConfigMgr->GetStringDefault("Webhook.URL", "");
        if (webhookUrl.empty())
        {
            TC_LOG_ERROR("player.hooks", "No webhook URL configured!");
            return;
        }

        const std::string name  = player->GetName();
        const uint8       level = player->GetLevel();
        const std::string gmTag = player->GetSession()->GetSecurity() > SEC_PLAYER
            ? (player->GetSession()->GetSecurity() > 3 ? "🧪 " : "⚙️ ")
            : "👤 ";
        const std::string status = loggingIn ? "🟢 Logged In" : "🛑 Logged Out";

        std::ostringstream messageStream;
        messageStream << "🌍 " << gmTag << status << " `" << name
                      << "` (Level " << static_cast<int>(level) << ")";
        SendDiscordWebhookAsync(webhookUrl, messageStream.str());

        if (!loggingIn)
        {
            uint32 guid = player->GetGUID().GetCounter();
            QueryResult result = CharacterDatabase.PQuery(
                "SELECT in_world_channel FROM world_channel_flags WHERE guid = {}",
                guid);
            if (result)
            {
                const std::string status2 = "🛑 Left World Channel";
                std::ostringstream messageStream2;
                messageStream2 << "🌍 " << gmTag << status2 << " `" << name
                               << "` (Level " << static_cast<int>(level) << ")";
                SendDiscordMessageWorld(messageStream2.str());
            }
        }
    }

    static std::string GetLocalizedAchievementName(uint32 id)
    {
        const AchievementEntry* achievement = sAchievementStore.LookupEntry(id);
        if (!achievement)
            return "Unknown Achievement";

        const uint8 locale = sWorld->GetDefaultDbcLocale();

        if (achievement->Title[locale] && achievement->Title[locale][0] != '\0')
            return std::string(achievement->Title[locale]);
        else if (achievement->Title[0])
            return std::string(achievement->Title[0]);

        return "Unnamed Achievement";
    }

    // Build the JSON payload on the caller's thread (cheap string work).
    static std::string BuildPayload(const std::string& message)
    {
        const std::string avatarUrl = sConfigMgr->GetStringDefault("Webhook.AvatarURL", "");

        std::ostringstream payload;
        payload << '{'
                << "\"content\":\"" << JsonEscape(message) << '"';
        if (!avatarUrl.empty())
            payload << ",\"avatar_url\":\"" << JsonEscape(avatarUrl) << '"';
        payload << '}';
        return payload.str();
    }

    // Enqueue only — never blocks on the network.
    static void SendDiscordWebhookAsync(const std::string& url, const std::string& message)
    {
        WebhookQueue::Instance().Push(url, BuildPayload(message));
    }
};


// -------------------------------------------------------------------------
// World script: guarantees the worker is joined on shutdown so queued
// messages (including the "server shutting down" logout notice) flush
// while the Log singleton is still alive.
// -------------------------------------------------------------------------
class DiscordWebhookWorldScript : public WorldScript
{
public:
    DiscordWebhookWorldScript() : WorldScript("DiscordWebhookWorldScript") {}

    void OnShutdown() override
    {
        WebhookQueue::Instance().Stop();
    }
};


void AddSC_DiscordWebhookPlayerActivity()
{
    new DiscordWebhookPlayerActivity();
    new DiscordWebhookWorldScript();
}
