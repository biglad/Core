/* Copyright (C) 2006,2007 ScriptDev2 <https://scriptdev2.svn.sourceforge.net/>
* This program is free software; you can redistribute it and/or modify
* it under the terms of the GNU General Public License as published by
* the Free Software Foundation; either version 2 of the License, or
* (at your option) any later version.
*
* This program is distributed in the hope that it will be useful,
* but WITHOUT ANY WARRANTY; without even the implied warranty of
* MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
* GNU General Public License for more details.
*
* You should have received a copy of the GNU General Public License
* along with this program; if not, write to the Free Software
* Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA

INSERT IGNORE INTO `script_texts` (`npc_entry`,`entry`,`content_default`) VALUES ('500512','-1700142','You have been flagged for a faction change, please exit and reload the game, thank you.');
INSERT IGNORE INTO `script_texts` (`npc_entry`,`entry`,`content_default`) VALUES ('500512','-1700143','You have been flagged for a race change, please exit and reload the game, thank you.');
INSERT IGNORE INTO `script_texts` (`npc_entry`,`entry`,`content_default`) VALUES ('500512','-1700144','You do not have a MGA Token in your bag, get one and we can continue.');

*/
#include "ScriptPCH.h"
#include "GuildMgr.h"

#define nemhtext41   -1700142 // tell player to log out and back in
#define nemhtext42   -1700143 // tell player they not entilied
#define nemhtext43   -1700144 // no mga token

#define GOSSIP_HELLO_NEMH5  "Change My Faction"
#define GOSSIP_HELLO_NEMH6  "Change My Race"
#define GOSSIP_HELLO_NEMH7  "You are not in the character editor system please visit the account page on the web site to enable faction or race swapping for this character."

class npc_mga_char_editor : public CreatureScript
{
	public:
    npc_mga_char_editor() : CreatureScript("npc_mga_char_editor") { }
	

bool UpdateReNameCharData(Player *player, int16 status)
{
	WorldDatabase.PExecute("UPDATE `char_edit` SET `status`='%d' WHERE `charid`='%d' AND `status` = '0'",status, player->GetGUID());
    return true;
}

bool OnGossipHello(Player *player, Creature *_Creature)
{
	QueryResult result;
	result = WorldDatabase.PQuery("SELECT * FROM `char_edit` WHERE `charid`='%d' AND `status`='0' LIMIT 1", player->GetGUID());  
	if(result)
	{
	//check to see faction/race chnage
	uint32 edittype = 0;
	Field *fields = result->Fetch();
	edittype = fields[2].GetUInt32();
	if (edittype < 1)
		{
		//faction
		player->ADD_GOSSIP_ITEM( GOSSIP_ICON_CHAT, GOSSIP_HELLO_NEMH5 , GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF+1);
		}
		else
		{
		//race
		player->ADD_GOSSIP_ITEM( GOSSIP_ICON_CHAT, GOSSIP_HELLO_NEMH6 , GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF+2);
		}
	}
	else
	{
	player->ADD_GOSSIP_ITEM( GOSSIP_ICON_CHAT, GOSSIP_HELLO_NEMH7 , GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF+3);
	}

		
	player->PlayerTalkClass->SendGossipMenu(907,_Creature->GetGUID());

    return true;
}

bool OnGossipSelect(Player* player, Creature* _Creature, uint32 /*sender*/, uint32 action)
{

	player->PlayerTalkClass->ClearMenus();
	switch(action - GOSSIP_ACTION_INFO_DEF)
	{
    case 1: 
		{
			player->CLOSE_GOSSIP_MENU();
            if (player->HasItemCount(21140, 1))
			{
				uint32 glId = player->GetGuildId();
				uint32 target_guid = player->GetGUID();
				Guild* guild = sObjectMgr->GetGuildById(player->GetGuildId());
				if (guild)
					guild->DeleteMember(target_guid, false, true);

				player->SetAtLoginFlag(AT_LOGIN_CHANGE_FACTION);
				UpdateReNameCharData(player, 1);
				player->DestroyItemCount(21140, 1, true);
				CharacterDatabase.PExecute("UPDATE characters SET at_login = at_login | '64' WHERE guid = %u", player->GetGUIDLow());
				_Creature->Say(nemhtext41, LANG_UNIVERSAL, NULL); // tell player to log out and back in
				return true;
			}
			else
			{
				// no mga token
				_Creature->Say(nemhtext43, LANG_UNIVERSAL, NULL);
				return false;
			}
		}
        break;
    case 2: 
		{
			player->CLOSE_GOSSIP_MENU();
            if (player->HasItemCount(21140, 1))
			{
				UpdateReNameCharData(player, 1);
				player->DestroyItemCount(21140, 1, true);
				//PSendSysMessage(LANG_CUSTOMIZE_PLAYER, GetNameLink(player).c_str());
				player->SetAtLoginFlag(AT_LOGIN_CHANGE_RACE);
				CharacterDatabase.PExecute("UPDATE characters SET at_login = at_login | '128' WHERE guid = %u", player->GetGUIDLow());
				_Creature->Say(nemhtext42, LANG_UNIVERSAL, NULL); // tell player to log out and back in
				return true;
			}
			else
			{
				// no mga token
				_Creature->Say(nemhtext43, LANG_UNIVERSAL, NULL);
				return false;
			}
		}
        break;
	case 3: 
		{
			player->CLOSE_GOSSIP_MENU();
		}
        break;
        
    }
	return true;
    
}

};

void AddSC_npc_mga_char_editorAI()
{
    new npc_mga_char_editor;
}