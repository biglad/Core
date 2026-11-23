#ifndef DISCORD_WEBHOOK_MGR_H
#define DISCORD_WEBHOOK_MGR_H

#include <string>
#include <queue>
#include <mutex>
#include <condition_variable>
#include <thread>
#include <atomic>
#include <utility>
#include <cstddef>

void SendDiscordMessage(const std::string& message);
void SendDiscordMessageWorld(const std::string& message);
void SendBattlegroundDiscordWebhook(const std::string& webhookUrl,
                                    const std::string& battlegroundName,
                                    uint32 alliancePlayers,
                                    uint32 hordePlayers,
                                    const std::string& bracket);

class DiscordWebhookQueue
{
public:
    static DiscordWebhookQueue& Instance();

    void Push(std::string url, std::string body);
    void Stop();

private:
    DiscordWebhookQueue();
    ~DiscordWebhookQueue();
    DiscordWebhookQueue(const DiscordWebhookQueue&) = delete;
    DiscordWebhookQueue& operator=(const DiscordWebhookQueue&) = delete;

    void Run();
    bool PerformPost(struct CURL* curl, const std::string& url, const std::string& body);

    static constexpr size_t kMaxQueue = 1000;

    std::queue<std::pair<std::string, std::string>> _queue;
    std::mutex                                       _mtx;
    std::condition_variable                          _cv;
    std::thread                                      _worker;
    bool                                             _stopped = false;
};

#endif // DISCORD_WEBHOOK_MGR_H