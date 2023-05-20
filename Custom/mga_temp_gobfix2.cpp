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


*/
#include "ScriptPCH.h"

#define GOSSIP_HELLO_FIX  "Jump to Boat"

#define GOSSIP_HELLO_BYE  "Bye"

class mga_temp_gobfix2 : public CreatureScript
{
	public:
    mga_temp_gobfix2() : CreatureScript("mga_temp_gobfix2") { }


bool OnGossipHello(Player *player, Creature *_Creature)
{
	
    player->ADD_GOSSIP_ITEM( GOSSIP_ICON_CHAT, GOSSIP_HELLO_FIX , GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF+1);
	player->ADD_GOSSIP_ITEM( GOSSIP_ICON_CHAT, GOSSIP_HELLO_BYE , GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF+2);
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
			player->TeleportTo(648, -7853.50f, 1838.10f, 7.83f, 0.03f); 
            player->SetPvP(false);
			return false;
		}
        break;
   
	// BYE BYE	
	case 2: 
		{
			player->CLOSE_GOSSIP_MENU();
		}
        break;

	}		
	return true;
    
}

};

void AddSC_mga_temp_gobfix2AI()
{
    new mga_temp_gobfix2;
}