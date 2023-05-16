#include "ScriptMgr.h"
#include "ScriptedCreature.h"
#include "ScriptedGossip.h"
#include "GameEventMgr.h"
#include "Player.h"
#include "Unit.h"
#include "WorldDatabase.h"
#include "DatabaseEnv.h"
#include "WorldSession.h"
#include <sstream>
#include <string>

#define nemhtext41   "Log out to change faction/race." // tell player to log out and back in
#define nemhtext42   -1700143 // tell player they not entilied
#define nemhtext43   "You are missing a MGA Token!" // no mga token

#define GOSSIP_HELLO_NEMH5  "Change My Faction"
#define GOSSIP_HELLO_NEMH6  "Change My Race"
#define GOSSIP_HELLO_NEMH7  "You are not in the character editor system please visit the vote shop on the web site to enable faction or race swapping for this character. (near bottom of list ont he shop)"

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


class npc_faction_class_edit : public CreatureScript
{
public:
    npc_faction_class_edit() : CreatureScript("npc_faction_class_edit") { }

    struct npc_faction_class_editAI : public ScriptedAI
    {
        npc_faction_class_editAI(Creature* creature) : ScriptedAI(creature) {}

        void WhisperTo(Player* player, char const* message)
        {
            me->Whisper(message, LANG_UNIVERSAL, player);
        }

		
        bool UpdateReNameCharData(Player* player, int16 status)
        {
            WorldDatabase.PExecute("UPDATE `char_edit` SET `status`='%d' WHERE `charid`='%d' AND `status` = '0'", status, player->GetGUID());
            return true;
        }

        bool OnGossipHello(Player* player) override
        {
            me->HandleEmoteCommand(EMOTE_ONESHOT_WAVE);
            QueryResult result;
            result = WorldDatabase.PQuery("SELECT * FROM `char_edit` WHERE `charid`='%d' AND `status`='0' LIMIT 1", player->GetGUID());
            if (result)
            {
                //check to see faction/race chnage
                uint32 edittype = 0;
                Field* fields = result->Fetch();
                edittype = fields[2].GetUInt32();
                if (edittype < 1)
                {
                    //faction
                    //player->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, GOSSIP_HELLO_NEMH5, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);
                    AddGossipItemFor(player, GOSSIP_ICON_CHAT, GOSSIP_HELLO_NEMH5, GOSSIP_SENDER_MAIN, 1001);
                }
                else
                {
                    //race
                    //player->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, GOSSIP_HELLO_NEMH6, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 2);
                    AddGossipItemFor(player, GOSSIP_ICON_CHAT, GOSSIP_HELLO_NEMH6, GOSSIP_SENDER_MAIN, 1002);
                }
            }
            else
            {
                //player->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, GOSSIP_HELLO_NEMH7, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 3);
                AddGossipItemFor(player, GOSSIP_ICON_CHAT, GOSSIP_HELLO_NEMH7, GOSSIP_SENDER_MAIN, 1003);
            }
			
			AddGossipItemFor(player, GOSSIP_ICON_CHAT, "Bye", GOSSIP_SENDER_MAIN, 2);
            player->TalkedToCreature(me->GetEntry(), me->GetGUID());
            SendGossipMenuFor(player, player->GetGossipTextId(me), me->GetGUID());
            return true;
        }

        bool OnGossipSelect(Player* player, uint32 /*menuId*/, uint32 gossipListId) override
        {
            WorldSession* session = player->GetSession();
            uint32 const action = player->PlayerTalkClass->GetGossipOptionAction(gossipListId);
            ClearGossipMenuFor(player);
			
			uint8 lvl = player->GetLevel();
           
            switch (action)
            {
            case 2:
            {
                CloseGossipMenuFor(player);
                me->Say("Farewell!", LANG_UNIVERSAL);
                me->HandleEmoteCommand(EMOTE_ONESHOT_WAVE);
            }
            break;
            case 1001:
            {
                CloseGossipMenuFor(player);
                if (player->HasItemCount(21140, 1))
                {
                    uint32 glId = player->GetGuildId();
                    uint32 target_guid = player->GetGUID();
                    uint32 guild = player->GetGuildId();

                    if (guild > 0) {
                        player->SetInGuild(0);
                    }

                    player->SetAtLoginFlag(AT_LOGIN_CHANGE_FACTION);
                    UpdateReNameCharData(player, 1);
                    player->DestroyItemCount(21140, 1, true);
                    CharacterDatabase.PExecute("UPDATE characters SET at_login = at_login | '64' WHERE guid = %u", player->GetGUID());
                    me->Say(nemhtext41, LANG_UNIVERSAL); // tell player to log out and back in
					session->SendNotification("Logout and back in you will be prompted to change your Faction.");
					UpdateReNameCharData(player, 1);
                    return true;
                }
                else
                {
                    // no mga token
                    me->Say(nemhtext43, LANG_UNIVERSAL);
                    return false;
                }
            }
            break;
            case 1002:
            {
                CloseGossipMenuFor(player);
                if (player->HasItemCount(21140, 1))
                {
                    UpdateReNameCharData(player, 1);
                    player->DestroyItemCount(21140, 1, true);
                    //PSendSysMessage(LANG_CUSTOMIZE_PLAYER, GetNameLink(player).c_str());
                    player->SetAtLoginFlag(AT_LOGIN_CHANGE_RACE);
                    CharacterDatabase.PExecute("UPDATE characters SET at_login = at_login | '128' WHERE guid = %u", player->GetGUID());
                    me->Say(nemhtext41, LANG_UNIVERSAL); // tell player to log out and back in
					session->SendNotification("Logout and back in you will be prompted to change your race.");
					UpdateReNameCharData(player, 1);
                    return true;
                }
                else
                {
                    // no mga token
                    me->Say(nemhtext43, LANG_UNIVERSAL);
                    return false;
                }
            }
            break;
            case 1003:
            {
                CloseGossipMenuFor(player);
            }
            break;


            }
            
            CloseGossipMenuFor(player);
            return true;
        }
    };

    CreatureAI* GetAI(Creature* creature) const override
    {
        return new npc_faction_class_editAI(creature);
    }
};

void AddSC_npc_faction_class_edit()
{
    new npc_faction_class_edit();
}
