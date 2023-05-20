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

INSERT IGNORE INTO `script_texts` (`npc_entry`,`entry`,`content_default`) VALUES ('500112','-1700139','You have been flagged for a rename, please exit and reload the game, thank you.');
INSERT IGNORE INTO `script_texts` (`npc_entry`,`entry`,`content_default`) VALUES ('500112','-1700140','You are not in the rename system please visit the account page on the web site to enable rename for this character.');
INSERT IGNORE INTO `script_texts` (`npc_entry`,`entry`,`content_default`) VALUES ('500112','-1700141','You do not have a MGA Token in your bag, get one and i will rename you.');

*/
#include "ScriptPCH.h"

#define nemhtext11   -1700139 // tell player to log out and back in
#define nemhtext21   -1700140 // tell player they not entilied
#define nemhtext31   -1700141 // no mga token

#define GOSSIP_HELLO_NEMH3  "Rename Me (costs 1 MGA Token)"
#define GOSSIP_HELLO_NEMH4  "You are not in the rename system please visit the account page on the web site to enable rename for this character."

class npc_mga_char_renamer : public CreatureScript
{
	public:
    npc_mga_char_renamer() : CreatureScript("npc_mga_char_renamer") { }
	

bool UpdateReNameCharData(Player *player, int16 status)
{
	WorldDatabase.PExecute("UPDATE `char_rename` SET `status`='%d' WHERE `charid`='%d' AND `status` = '0'",status, player->GetGUID());
    return true;
}

bool OnGossipHello(Player *player, Creature *_Creature)
{
	QueryResult result;
	result = WorldDatabase.PQuery("SELECT * FROM `char_rename` WHERE `charid`='%d' AND `status`='0' LIMIT 1", player->GetGUID());  
	if(result)
	{
	player->ADD_GOSSIP_ITEM( GOSSIP_ICON_CHAT, GOSSIP_HELLO_NEMH3 , GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF+1);
	}
	else
	{
	player->ADD_GOSSIP_ITEM( GOSSIP_ICON_CHAT, GOSSIP_HELLO_NEMH4 , GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF+2);
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
				UpdateReNameCharData(player, 1);
				player->DestroyItemCount(21140, 1, true);
				player->SetAtLoginFlag(AT_LOGIN_RENAME);
				_Creature->Say(nemhtext11, LANG_UNIVERSAL, NULL); // tell player to log out and back in
				return true;
			}
			else
			{
				// no mga token
				_Creature->Say(nemhtext31, LANG_UNIVERSAL, NULL);
				return false;
			}
		}
        break;
    case 2: 
		{
			player->CLOSE_GOSSIP_MENU();
		}
        break;
        
    }
	return true;
    
}

};

void AddSC_npc_mga_char_renamerAI()
{
    new npc_mga_char_renamer;
}