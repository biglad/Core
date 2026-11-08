// DiscordWebhookMgr.cpp
// Zero external dependencies: C++ standard library + POSIX sockets only.
// NOTE: This implementation supports http:// URLs only. Discord requires https://,
//       so you must front it with a local TLS relay (nginx/caddy/stunnel/socat) if
//       you want to talk to Discord directly. See notes at the bottom of the file.

#include <sys/types.h>
#include <sys/socket.h>
#include <netdb.h>
#include <unistd.h>
#include <cerrno>
#include <cstdio>
#include <cstring>
#include <string>
#include <sstream>
#include <map>
#include <memory>

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
    // Minimal blocking HTTP/1.1 POST using raw sockets.
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
        // We don't need the body; Discord replies with 204/2xx on success.
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
        while (::recv(sock, buf, sizeof(buf), 0) > 0) {}

        ::close(sock);

        // Parse "HTTP/1.1 204 No Content"
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


// -------------------------------------------------------------------------
// Public entry point – signature matches the original Poco version.
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

    const std::string body = payload.str();

    ParsedUrl url;
    if (!ParseHttpUrl(webhookUrl, url))
    {
        TC_LOG_ERROR("bg.hooks",
            "Discord webhook: URL must be http:// (build has no TLS). Use a "
            "local relay for https://discord.com/... Got: %s",
            webhookUrl.c_str());
        return;
    }

    int status = 0;
    if (!HttpPost(url, body, status))
    {
        TC_LOG_ERROR("bg.hooks",
            "Failed to send Discord webhook to %s", webhookUrl.c_str());
        return;
    }

    if (status < 200 || status >= 300)
    {
        TC_LOG_ERROR("bg.hooks",
            "Discord webhook returned HTTP %d", status);
    }
}


// Stub kept for parity with the original file.
void AddBattlegroundDiscordHookScripts()
{
    //new BattlegroundScript_DiscordHook();
}