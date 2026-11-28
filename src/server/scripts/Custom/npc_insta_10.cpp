#include "ScriptMgr.h"
#include "ScriptedCreature.h"
#include "ScriptedGossip.h"
#include "Player.h"
#include "Pet.h"
#include "Chat.h"
#include "Item.h"
#include "ObjectMgr.h"
#include "DBCStores.h"
#include "WorldDatabase.h"
#include "DatabaseEnv.h"
#include "WorldSession.h"
#include "SpellInfo.h"
#include "SpellMgr.h"
#include "World.h"
#include "AchievementMgr.h"
#include "botmgr.h"
#include "botdatamgr.h"
#include <string>

enum Insta10Config
{
    TARGET_LEVEL        = 10,
    ITEMCOSTID_10       = 461190,  
    SOUND_NO_VOUCHER    = 11965,

    ACTION_DO_LEVEL     = GOSSIP_ACTION_INFO_DEF + 1001,
    ACTION_BYE          = GOSSIP_ACTION_INFO_DEF + 1002,
    ACTION_NO_VOUCHER   = GOSSIP_ACTION_INFO_DEF + 9997,
    ACTION_NOOP         = GOSSIP_ACTION_INFO_DEF + 9999,
};

static bool LearnAllClassSpells(Player* player)
{
    ChrClassesEntry const* classEntry = sChrClassesStore.LookupEntry(player->GetClass());
    if (!classEntry)
        return true;

    std::vector<Trainer::Trainer const*> const& trainers = sObjectMgr->GetClassTrainers(player->GetClass());

    bool hadNew;
    do
    {
        hadNew = false;
        for (Trainer::Trainer const* trainer : trainers)
        {
            if (!trainer->IsTrainerValidForPlayer(player))
                continue;
            for (Trainer::Spell const& trainerSpell : trainer->GetSpells())
            {
                if (!trainer->CanTeachSpell(player, &trainerSpell))
                    continue;

                if (trainerSpell.IsCastable())
                    player->CastSpell(player, trainerSpell.SpellId, true);
                else
                    player->LearnSpell(trainerSpell.SpellId, false);

                hadNew = true;
            }
        }
    } while (hadNew);

    return true;
}

class npc_insta_10 : public CreatureScript
{
public:
    npc_insta_10() : CreatureScript("npc_insta_10") { }

    struct npc_insta_10AI : public ScriptedAI
    {
        npc_insta_10AI(Creature* creature) : ScriptedAI(creature) {}

        bool HasAlreadyUsed(Player* player)
        {
            QueryResult result = WorldDatabase.PQuery(
                "SELECT 1 FROM `char_Insta10_done` WHERE `acct_id`='{}' LIMIT 1",
                player->GetSession()->GetAccountId());
            return result != nullptr;
        }

        void MarkUsed(Player* player)
        {
            WorldDatabase.PExecute(
                "INSERT INTO `char_Insta10_done` (`char_id`, `acct_id`) VALUES ({}, {})",
                player->GetGUID().GetCounter(), player->GetSession()->GetAccountId());
        }

        bool OnGossipHello(Player* player) override
        {
            ClearGossipMenuFor(player);

            if (HasAlreadyUsed(player))
            {
                AddGossipItemFor(player, GOSSIP_ICON_DOT, "You have already used me on this account!", GOSSIP_SENDER_MAIN, ACTION_NOOP);
                AddGossipItemFor(player, GOSSIP_ICON_TALK, "Bye.", GOSSIP_SENDER_MAIN, ACTION_BYE);
            }
            else if (player->GetLevel() >= TARGET_LEVEL)
            {
                AddGossipItemFor(player, GOSSIP_ICON_DOT, "Your character is already level 10 or higher.", GOSSIP_SENDER_MAIN, ACTION_NOOP);
                AddGossipItemFor(player, GOSSIP_ICON_TALK, "Bye.", GOSSIP_SENDER_MAIN, ACTION_BYE);
            }
            else if (!player->HasItemCount(ITEMCOSTID_10, 1))
            {
                AddGossipItemFor(player, GOSSIP_ICON_DOT, "You don't have an instant level voucher!", GOSSIP_SENDER_MAIN, ACTION_NOOP);
                player->PlayDirectSound(SOUND_NO_VOUCHER);
                AddGossipItemFor(player, GOSSIP_ICON_TALK, "How do I get one?", GOSSIP_SENDER_MAIN, ACTION_NO_VOUCHER);
                AddGossipItemFor(player, GOSSIP_ICON_TALK, "Bye.", GOSSIP_SENDER_MAIN, ACTION_BYE);
            }
            else
            {
                AddGossipItemFor(player, GOSSIP_ICON_TABARD, "Make > " + player->GetName() + " < level 10.", GOSSIP_SENDER_MAIN, ACTION_DO_LEVEL);
                AddGossipItemFor(player, GOSSIP_ICON_TALK, "Nevermind, bye.", GOSSIP_SENDER_MAIN, ACTION_BYE);
            }

            player->TalkedToCreature(me->GetEntry(), me->GetGUID());
            SendGossipMenuFor(player, player->GetGossipTextId(me), me->GetGUID());
            return true;
        }

        bool OnGossipSelect(Player* player, uint32 /*menuId*/, uint32 gossipListId) override
        {
            uint32 const action = player->PlayerTalkClass->GetGossipOptionAction(gossipListId);
            ClearGossipMenuFor(player);

            if (action == ACTION_BYE)
            {
                me->Say("Farewell " + player->GetName(), LANG_UNIVERSAL);
                me->HandleEmoteCommand(EMOTE_ONESHOT_WAVE);
                CloseGossipMenuFor(player);
                return true;
            }

            if (action == ACTION_NO_VOUCHER)
            {
                me->Say(player->GetName() + " via the website, the vote shop. If you want another online shop mgawow.online/shop", LANG_UNIVERSAL);
                CloseGossipMenuFor(player);
                return true;
            }

            if (action == ACTION_DO_LEVEL)
            {
                // Re-validate everything: the menu may be stale
                if (HasAlreadyUsed(player) || player->GetLevel() >= TARGET_LEVEL || !player->HasItemCount(ITEMCOSTID_10, 1))
                {
                    CloseGossipMenuFor(player);
                    return true;
                }

                // Level up
                player->SetLevel(TARGET_LEVEL);
                player->InitTalentForLevel();
                player->InitStatsForLevel();
                player->InitTaxiNodesForLevel();
                player->UpdateSkillsForLevel();
                player->UpdateAchievementCriteria(ACHIEVEMENT_CRITERIA_TYPE_REACH_LEVEL);

                if (player->HaveBot())
                    player->GetBotMgr()->SetBotsShouldUpdateStats();

                if (Pet* pet = player->GetPet())
                    pet->SynchronizeLevelWithOwner();

                // Spells + weapon/defense skills capped for the NEW level (level 10 => 50)
                LearnAllClassSpells(player);
                player->UpdateWeaponsSkillsToMaxSkillsForLevel();

                // Consume voucher, record use, save
                player->DestroyItemCount(ITEMCOSTID_10, 1, true);
                MarkUsed(player);
                player->SaveToDB();

                CloseGossipMenuFor(player);
                me->Yell("All done! " + player->GetName() + ", welcome to the family!", LANG_UNIVERSAL);
                return true;
            }

            CloseGossipMenuFor(player);
            return true;
        }
    };

    CreatureAI* GetAI(Creature* creature) const override
    {
        return new npc_insta_10AI(creature);
    }
};

void AddSC_npc_insta_10()
{
    new npc_insta_10();
}