// Discord player activity webhook – zero external dependencies.
// Requires: C++ standard library + POSIX sockets.
// NOTE: supports http:// only. Front it with a local TLS relay for Discord.

#include <sys/types.h>
#include <sys/socket.h>
#include <netinet/in.h>
#include <netinet/tcp.h>
#include <netdb.h>
#include <unistd.h>
#include <cerrno>
#include <cstdio>
#include <cstring>
#include <string>
#include <sstream>
#include <map>
#include <unordered_set>
#include <memory>
#include <thread>

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
    // Minimal blocking HTTP/1.1 POST.
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
            sock = ::socket(p->ai_family, p->ai_socktype, p->ai_protocol);
            if (sock < 0)
                continue;
            if (::connect(sock, p->ai_addr, p->ai_addrlen) == 0)
                break;
            ::close(sock);
            sock = -1;
        }
        freeaddrinfo(res);

        if (sock < 0)
            return false;

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

        while (::recv(sock, buf, sizeof(buf), 0) > 0) {}

        ::close(sock);

        if (head.compare(0, 5, "HTTP/") == 0)
        {
            auto sp = head.find(' ');
            if (sp != std::string::npos)
            {
                try { statusOut = std::stoi(head.substr(sp + 1, 3)); }
                catch (...) { statusOut = 0; }
            }
        }

        return true;
    }

} // namespace


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

    // -----------------------------------------------------------------
    // Single POST – replaces the old Poco::Net call.
    // -----------------------------------------------------------------
    void SendDiscordWebhook(const std::string& url, const std::string& message)
    {
        const std::string avatarUrl = sConfigMgr->GetStringDefault("Webhook.AvatarURL", "");

        // Original code prepended an empty realmName; keep that behaviour.
        const std::string fullMessage = message;

        std::ostringstream payload;
        payload << '{'
                << "\"content\":\"" << JsonEscape(fullMessage) << '"';
        if (!avatarUrl.empty())
            payload << ",\"avatar_url\":\"" << JsonEscape(avatarUrl) << '"';
        payload << '}';

        const std::string body = payload.str();

        ParsedUrl parsed;
        if (!ParseHttpUrl(url, parsed))
        {
            TC_LOG_ERROR("player.hooks",
                "Webhook URL must be http:// (build has no TLS). "
                "Front Discord with a local relay. Got: %s", url.c_str());
            return;
        }

        int status = 0;
        if (!HttpPost(parsed, body, status))
        {
            TC_LOG_ERROR("player.hooks",
                "Webhook POST failed to %s", url.c_str());
            return;
        }

        if (status < 200 || status >= 300)
            TC_LOG_ERROR("player.hooks", "Webhook returned HTTP %d", status);
    }

    void SendDiscordWebhookAsync(const std::string& url, const std::string& message)
    {
        std::thread([this, url, message]()
        {
            try
            {
                SendDiscordWebhook(url, message);
            }
            catch (const std::exception& e)
            {
                TC_LOG_ERROR("player.hooks",
                    "Exception in webhook thread: %s", e.what());
            }
            catch (...)
            {
                TC_LOG_ERROR("player.hooks",
                    "Unknown exception in webhook thread");
            }
        }).detach();
    }
};


void AddSC_DiscordWebhookPlayerActivity()
{
    new DiscordWebhookPlayerActivity();
}