#ifndef DISCORD_WEBHOOK_MGR_H
#define DISCORD_WEBHOOK_MGR_H

#include <string>

void SendDiscordMessage(const std::string& message);
void SendDiscordMessageWorld(const std::string& message);
void SendBattlegroundDiscordWebhook(const std::string& webhookUrl, const std::string& battlegroundName, uint32 alliancePlayers, uint32 hordePlayers, const std::string& bracket);

// Shared webhook worker — one per process, used by ALL Discord senders
// (DiscordWebhookMgr.cpp, server_hooks.cpp, the player-activity script).
// Push() is thread-safe and non-blocking. Stop() is idempotent and joins
// the worker; call it LAST during shutdown, before Log teardown.
class DiscordWebhookQueue
{
public:
    static DiscordWebhookQueue& Instance();
    void Push(std::string url, std::string body);
    void Stop();
};

#endif // DISCORD_WEBHOOK_MGR_H