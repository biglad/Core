#ifndef DISCORD_WEBHOOK_MGR_H
#define DISCORD_WEBHOOK_MGR_H

#include <string>

void SendDiscordMessage(const std::string& message);
void SendDiscordMessageWorld(const std::string& message);
void SendBattlegroundDiscordWebhook(const std::string& webhookUrl,
                                    const std::string& battlegroundName,
                                    uint32 alliancePlayers,
                                    uint32 hordePlayers,
                                    const std::string& bracket);

// Enqueue a raw webhook POST on the shared worker thread. Non-blocking.
// The worker lives in DiscordWebhookMgr.cpp — one per process, shared by
// every Discord sender (BG hooks, player activity, server hooks).
void EnqueueDiscordWebhook(std::string url, std::string body);

// Flush and join the shared worker. Call LAST during shutdown, before Log
// teardown, after every other script has enqueued its goodbye messages.
// Idempotent: safe to call more than once.
void StopDiscordWebhookQueue();

#endif // DISCORD_WEBHOOK_MGR_H