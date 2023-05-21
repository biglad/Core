#include "ScriptMgr.h"
#include "ScriptedCreature.h"
#include "ScriptedGossip.h"
#include "GameEventMgr.h"
#include "Player.h"
#include "Unit.h"
#include "WorldDatabase.h"
#include "DatabaseEnv.h"
#include "WorldSession.h"
#include "World.h"
#include <sstream>
#include <string>



/*
5 ways to notify player
session->SendNotification("MESSAGE");
session->SendAreaTriggerMessage("MESSAGE");
WhisperTo(player, "MESSAGE");
me->Say("MESSAGE", LANG_UNIVERSAL);
me->Yell("MESSAGE", LANG_UNIVERSAL);

EMOTE
me->HandleEmoteCommand(EMOTE_STATE_TALK);
*/


class npc_xp_mod : public CreatureScript
{
public:
    npc_xp_mod() : CreatureScript("npc_xp_mod") { }

    struct npc_xp_modAI : public ScriptedAI
    {
        npc_xp_modAI(Creature* creature) : ScriptedAI(creature) {}

        void WhisperTo(Player* player, char const* message)
        {
            me->Whisper(message, LANG_UNIVERSAL, player);
        }

		

        bool OnGossipHello(Player* player) override
        {
            WorldSession* session = player->GetSession();
            uint32 itemId = 461141;
            if (player->HasItemCount(itemId, 1))
                AddGossipItemFor(player, GOSSIP_ICON_DOT, "Set XP To Normal (400%)", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1000);
            else 
                AddGossipItemFor(player, GOSSIP_ICON_DOT, "Set XP Rates to 100%", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1001);

            AddGossipItemFor(player, GOSSIP_ICON_TALK, "Bye.", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 2000);
            player->TalkedToCreature(me->GetEntry(), me->GetGUID());
            SendGossipMenuFor(player, player->GetGossipTextId(me), me->GetGUID());
            return true;
        }

        bool OnGossipSelect(Player* player, uint32 /*menuId*/, uint32 gossipListId) override
        {
            WorldSession* session = player->GetSession();
            uint32 const action = player->PlayerTalkClass->GetGossipOptionAction(gossipListId);
            ClearGossipMenuFor(player);
           
            if (action == GOSSIP_ACTION_INFO_DEF + 1000)
            {
                CloseGossipMenuFor(player);
                uint32 itemId = 461141;
                if (player->HasItemCount(itemId, 1))
                {
                    player->DestroyItemCount(itemId, 1, true);
                    me->Say("XP Reduction Item Removed!", LANG_UNIVERSAL);
                    return true;
                }
            }

            if (action == GOSSIP_ACTION_INFO_DEF + 1001)
			{
                CloseGossipMenuFor(player);
                uint32 itemId = 461141;
                if (player->HasItemCount(itemId, 1))
                {
                    me->Say("You have the XP deduction item", LANG_UNIVERSAL);
                    return true;
                }
                
                ItemPosCountVec dest;
                InventoryResult msg = player->CanStoreNewItem(NULL_BAG, NULL_SLOT, dest, itemId, 1);
                if (msg == EQUIP_ERR_OK)
                {
                    Item* item = player->StoreNewItem(dest, itemId, 1, true);
                    player->SendNewItem(item, 1, true, false);
                    me->Say("Here you go, carry this item and XP is reduces to 100%", LANG_UNIVERSAL);
                }

			}

            if (action == GOSSIP_ACTION_INFO_DEF + 2000)
            {
                CloseGossipMenuFor(player);
                return true;
            }

            
            CloseGossipMenuFor(player);
            return true;
        }
    };

    CreatureAI* GetAI(Creature* creature) const override
    {
        return new npc_xp_modAI(creature);
    }
};

void AddSC_npc_xp_mod()
{
    new npc_xp_mod();
}
