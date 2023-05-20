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

#define nemhtext11   -1700239 // tell player to log out and back in
#define nemhtext21   -1700240 // tell player they not entilied
#define nemhtext31   -1700241 // no mga token

#define GOSSIP_HELLO_TP1  "Location 1"
#define GOSSIP_HELLO_TP2  "Location 2"
#define GOSSIP_HELLO_TP3  "Location 3"
#define GOSSIP_HELLO_TP4  "Location 4"
#define GOSSIP_HELLO_TP5  "Location 5"
#define GOSSIP_HELLO_TP6  "Location 6"
#define GOSSIP_HELLO_TP7  "Location 7"
#define GOSSIP_HELLO_TP8  "Location 8"
#define GOSSIP_HELLO_TP9  "Location 9"
#define GOSSIP_HELLO_TP10  "Location 10"

//HORDE
#define GOSSIP_HELLO_HTP1  "Orgrimmar"
#define GOSSIP_HELLO_HTP2  "Undercity"
#define GOSSIP_HELLO_HTP3  "Thunder Bluff"
#define GOSSIP_HELLO_HTP4  "Silvermoon"
// START LOCS
#define GOSSIP_HELLO_HSTP1  "Orc Starting Zone"
#define GOSSIP_HELLO_HSTP2  "Undead Starting Zone"
#define GOSSIP_HELLO_HSTP3  "Tauren Starting Zone"
#define GOSSIP_HELLO_HSTP4  "Blood Elf Starting Zone"
#define GOSSIP_HELLO_HSTP5  "Goblin Starting Zone"
#define GOSSIP_HELLO_HSTP6  "Worgen Elf Starting Zone"
#define GOSSIP_HELLO_HSTP7  "Trol Starting Zone"

// ALLY
#define GOSSIP_HELLO_ATP1  "Stormwind"
#define GOSSIP_HELLO_ATP2  "Ironforge"
#define GOSSIP_HELLO_ATP3  "Darnassus"
#define GOSSIP_HELLO_ATP4  "Exodar"
// START LOCS
#define GOSSIP_HELLO_ASTP1  "Human Starting Zone"
#define GOSSIP_HELLO_ASTP2  "Gnome Starting Zone"
#define GOSSIP_HELLO_ASTP3  "Night Elf Starting Zone"
#define GOSSIP_HELLO_ASTP4  "Draenei Starting Zone"
#define GOSSIP_HELLO_ASTP5  "Dwarf Starting Zone"

#define GOSSIP_HELLO_L1  "Shattrath City"
#define GOSSIP_HELLO_L2  "City of Dalaran"
#define GOSSIP_HELLO_L3  "Stairway to Heaven"

#define GOSSIP_HELLO_TPNO  "You have not voted in the last 12 hours, if you wish to use me please go and vote"
#define GOSSIP_HELLO_TPN01  "You used me within the last 5 mins please wait a little longer."

class npc_mga_vote_teleporter : public CreatureScript
{
	public:
    npc_mga_vote_teleporter() : CreatureScript("npc_mga_vote_teleporter") { }

bool UpdateVoteTPData(Player *player, uint32 newwtime)
{
	WorldDatabase.PExecute("UPDATE `vote_tp` SET `tptime`='%d' WHERE `guid`='%d'",newwtime,  player->GetSession()->GetAccountId());
    return true;
}

	
bool OnGossipHello(Player *player, Creature *_Creature)
{
	time_t tseconds;
	tseconds = time (NULL);
	uint32 ttcheck;
	uint32 fiveminabusecheck;
	uint32 lasttptime;
	ttcheck = (tseconds-43200); // 12 hours
	fiveminabusecheck = (tseconds-300); // 5mins
	QueryResult result;
	result = WorldDatabase.PQuery("SELECT * FROM `vote_tp` WHERE `guid`='%d' AND `time` >'%d' LIMIT 1", player->GetSession()->GetAccountId(),ttcheck);
    //sLog->outError("SELECT * FROM `vote_tp` WHERE `guid`='%d' AND `time` >'%d' LIMIT 1", player->GetSession()->GetAccountId(),ttcheck);
	
	if(result)
	{
	
		Field *fields = result->Fetch();
	
		lasttptime = fields[2].GetUInt32();
		if (lasttptime < 1)
 				lasttptime=(tseconds-305); // current time - 5 mins was no entry in DB
				
		if (fiveminabusecheck < lasttptime)
		{
			player->ADD_GOSSIP_ITEM( GOSSIP_ICON_CHAT, GOSSIP_HELLO_TPN01 , GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF+50);
			//sLog->outError("MGA: FAILED:: time from db = %d time we checking = %d", lasttptime,fiveminabusecheck);
		}
		else
		{
			//sLog->outError("MGA: WORKED:: time from db = %d time we checking = %d", lasttptime,fiveminabusecheck);
			if (player->GetTeamId() == TEAM_HORDE)
			{
				// HORDE LOCATIONS
				player->ADD_GOSSIP_ITEM( GOSSIP_ICON_CHAT, GOSSIP_HELLO_HTP1 , GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF+11);
				player->ADD_GOSSIP_ITEM( GOSSIP_ICON_CHAT, GOSSIP_HELLO_HTP2 , GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF+12);
				player->ADD_GOSSIP_ITEM( GOSSIP_ICON_CHAT, GOSSIP_HELLO_HTP3 , GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF+13);
				player->ADD_GOSSIP_ITEM( GOSSIP_ICON_CHAT, GOSSIP_HELLO_HTP4 , GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF+14);
				player->ADD_GOSSIP_ITEM( GOSSIP_ICON_CHAT, GOSSIP_HELLO_HSTP1 , GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF+22); // orc starting zone
				player->ADD_GOSSIP_ITEM( GOSSIP_ICON_CHAT, GOSSIP_HELLO_HSTP2 , GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF+23); // undead start zone
				player->ADD_GOSSIP_ITEM( GOSSIP_ICON_CHAT, GOSSIP_HELLO_HSTP3 , GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF+24); // tauren start zone
				player->ADD_GOSSIP_ITEM( GOSSIP_ICON_CHAT, GOSSIP_HELLO_HSTP4 , GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF+25); // bloodelf start zone
				player->ADD_GOSSIP_ITEM( GOSSIP_ICON_CHAT, GOSSIP_HELLO_HSTP5 , GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF+125); // goblin start zone
				player->ADD_GOSSIP_ITEM( GOSSIP_ICON_CHAT, GOSSIP_HELLO_HSTP6 , GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF+126); // worgen start zone
                player->ADD_GOSSIP_ITEM( GOSSIP_ICON_CHAT, GOSSIP_HELLO_HSTP7 , GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF+31); // troll starting zone
			}
			else
			{
				// ALLY LOCATIONS
				player->ADD_GOSSIP_ITEM( GOSSIP_ICON_CHAT, GOSSIP_HELLO_ATP1 , GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF+16);
				player->ADD_GOSSIP_ITEM( GOSSIP_ICON_CHAT, GOSSIP_HELLO_ATP2 , GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF+17);
				player->ADD_GOSSIP_ITEM( GOSSIP_ICON_CHAT, GOSSIP_HELLO_ATP3 , GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF+18);
				player->ADD_GOSSIP_ITEM( GOSSIP_ICON_CHAT, GOSSIP_HELLO_ATP4 , GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF+19);
				player->ADD_GOSSIP_ITEM( GOSSIP_ICON_CHAT, GOSSIP_HELLO_ASTP1 , GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF+26); // human start zone
				player->ADD_GOSSIP_ITEM( GOSSIP_ICON_CHAT, GOSSIP_HELLO_ASTP2 , GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF+27); // gnome start zone
				player->ADD_GOSSIP_ITEM( GOSSIP_ICON_CHAT, GOSSIP_HELLO_ASTP3 , GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF+28); // night elf start zone
				player->ADD_GOSSIP_ITEM( GOSSIP_ICON_CHAT, GOSSIP_HELLO_ASTP4 , GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF+29); // draenei start zone
                player->ADD_GOSSIP_ITEM( GOSSIP_ICON_CHAT, GOSSIP_HELLO_ASTP5 , GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF+30); // dwarf start zone
			}

			if(player->getLevel() > 57)
			{
				// SHAT CITY
				player->ADD_GOSSIP_ITEM( GOSSIP_ICON_CHAT, GOSSIP_HELLO_L1 , GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF+20);
			}
			if(player->getLevel() > 67)
			{
				// DALARAN
				player->ADD_GOSSIP_ITEM( GOSSIP_ICON_CHAT, GOSSIP_HELLO_L2 , GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF+21);
			}
				//player->ADD_GOSSIP_ITEM( GOSSIP_ICON_CHAT, GOSSIP_HELLO_L3 , GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF+30);
			/*
			player->ADD_GOSSIP_ITEM( GOSSIP_ICON_CHAT, GOSSIP_HELLO_TP1 , GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF+1);
			player->ADD_GOSSIP_ITEM( GOSSIP_ICON_CHAT, GOSSIP_HELLO_TP2 , GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF+2);
			player->ADD_GOSSIP_ITEM( GOSSIP_ICON_CHAT, GOSSIP_HELLO_TP3 , GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF+3);
			player->ADD_GOSSIP_ITEM( GOSSIP_ICON_CHAT, GOSSIP_HELLO_TP4 , GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF+4);
			player->ADD_GOSSIP_ITEM( GOSSIP_ICON_CHAT, GOSSIP_HELLO_TP5 , GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF+5);
			player->ADD_GOSSIP_ITEM( GOSSIP_ICON_CHAT, GOSSIP_HELLO_TP6 , GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF+6);
			player->ADD_GOSSIP_ITEM( GOSSIP_ICON_CHAT, GOSSIP_HELLO_TP7 , GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF+7);
			player->ADD_GOSSIP_ITEM( GOSSIP_ICON_CHAT, GOSSIP_HELLO_TP8 , GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF+8);
			player->ADD_GOSSIP_ITEM( GOSSIP_ICON_CHAT, GOSSIP_HELLO_TP9 , GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF+9);
			player->ADD_GOSSIP_ITEM( GOSSIP_ICON_CHAT, GOSSIP_HELLO_TP10 , GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF+10);
			*/
		}

	}
	else
	{
		player->ADD_GOSSIP_ITEM( GOSSIP_ICON_CHAT, GOSSIP_HELLO_TPNO , GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF+50);
	}	
	player->PlayerTalkClass->SendGossipMenu(907,_Creature->GetGUID());

    return true;
}

bool OnGossipSelect(Player* player, Creature* _Creature, uint32 /*sender*/, uint32 action)
{

	time_t ttseconds;
	ttseconds = time (NULL);
	
	player->PlayerTalkClass->ClearMenus();
	switch(action - GOSSIP_ACTION_INFO_DEF)
	{
    case 1: 
		{
			player->CLOSE_GOSSIP_MENU();
			UpdateVoteTPData(player, ttseconds);
			// LOCATION NAME
            player->TeleportTo(578, 987.53f, 1065.11f, 359.98f, 0); // NOT CALLED YET  
            player->SetPvP(false);
            return false;
		}
        break;
    case 2: 
		{
			player->CLOSE_GOSSIP_MENU();
			UpdateVoteTPData(player, ttseconds);
			// LOCATION NAME
            player->TeleportTo(578, 987.53f, 1065.11f, 359.98f, 0);   // NOT CALLED YET  
            player->SetPvP(false);
            return false;
		}
        break;
    case 3: 
		{
			player->CLOSE_GOSSIP_MENU();
			UpdateVoteTPData(player, ttseconds);
			// LOCATION NAME
            player->TeleportTo(578, 987.53f, 1065.11f, 359.98f, 0);   // NOT CALLED YET  
            player->SetPvP(false);
            return false;
		}
        break;        
	case 4: 
		{
			player->CLOSE_GOSSIP_MENU();
			UpdateVoteTPData(player, ttseconds);
			// LOCATION NAME
            player->TeleportTo(578, 987.53f, 1065.11f, 359.98f, 0);   // NOT CALLED YET  
            player->SetPvP(false);
            return false;
		}
        break;
	case 5: 
		{
			player->CLOSE_GOSSIP_MENU();
			UpdateVoteTPData(player, ttseconds);
			// LOCATION NAME
            player->TeleportTo(578, 987.53f, 1065.11f, 359.98f, 0);   // NOT CALLED YET  
            player->SetPvP(false);
            return false;
		}
        break;
	case 6: 
		{
			player->CLOSE_GOSSIP_MENU();
			UpdateVoteTPData(player, ttseconds);
			// LOCATION NAME
            player->TeleportTo(578, 987.53f, 1065.11f, 359.98f, 0);  // NOT CALLED YET   
            player->SetPvP(false);
            return false;
		}
        break;
	case 7: 
		{
			player->CLOSE_GOSSIP_MENU();
			UpdateVoteTPData(player, ttseconds);
			// LOCATION NAME
            player->TeleportTo(578, 987.53f, 1065.11f, 359.98f, 0);   // NOT CALLED YET  
            player->SetPvP(false);
            return false;
		}
        break;
	case 8: 
		{
			player->CLOSE_GOSSIP_MENU();
			UpdateVoteTPData(player, ttseconds);
			// LOCATION NAME
            player->TeleportTo(578, 987.53f, 1065.11f, 359.98f, 0);   // NOT CALLED YET  
            player->SetPvP(false);
            return false;
		}
		break;
	case 9: 
		{
			player->CLOSE_GOSSIP_MENU();
			UpdateVoteTPData(player, ttseconds);
			// LOCATION NAME
            player->TeleportTo(578, 987.53f, 1065.11f, 359.98f, 0);   // NOT CALLED YET  
            player->SetPvP(false);
            return false;
		}
		break;
	case 10: 
		{
			player->CLOSE_GOSSIP_MENU();
			UpdateVoteTPData(player, ttseconds);
			// LOCATION NAME
            player->TeleportTo(578, 987.53f, 1065.11f, 359.98f, 0);   // NOT CALLED YET  
            player->SetPvP(false);
            return false;
		}
		break;

    case 11: 
		{
			player->CLOSE_GOSSIP_MENU();
			UpdateVoteTPData(player, ttseconds);
			// Orgrimmar
            player->TeleportTo(1, 1632.38f, -4440.45f, 15.71f, 2.77f);   // Orgrimmar
            player->SetPvP(false);
            return false;
		}
		break;
    case 12: 
		{
			player->CLOSE_GOSSIP_MENU();
			UpdateVoteTPData(player, ttseconds);
            player->TeleportTo(0, 1630.80f, 240.08f, -43.10f, 3.09f);   // Undercity
            player->SetPvP(false);
            return false;
		}
		break;
    case 13: 
		{
			player->CLOSE_GOSSIP_MENU();
			UpdateVoteTPData(player, ttseconds);
            player->TeleportTo(1, -1210.98f, 40.00f, 132.13f, 2.43f);   // Thunder Bluff
            player->SetPvP(false);
            return false;
		}
		break;
	case 14: 
		{
			player->CLOSE_GOSSIP_MENU();
			UpdateVoteTPData(player, ttseconds);
			// Orgrimmar
            player->TeleportTo(530, 9532.57f, -7239.16f, 16.40f, 4.82f);   // Silvermoon
            player->SetPvP(false);
            return false;
		}
		break;
	case 16: 
		{
			player->CLOSE_GOSSIP_MENU();
			UpdateVoteTPData(player, ttseconds);
            player->TeleportTo(0, -8867.23f, 673.80f, 97.90f, 5.20f);   // stormwind
            player->SetPvP(false);
            return false;
		}
		break;
	case 17: 
		{
			player->CLOSE_GOSSIP_MENU();
			UpdateVoteTPData(player, ttseconds);
            player->TeleportTo(0, -4850.82f, -868.45f, 501.91f, 4.94f);   // ironforge
            player->SetPvP(false);
            return false;
		}
		break;
	case 18: 
		{
			player->CLOSE_GOSSIP_MENU();
			UpdateVoteTPData(player, ttseconds);
            player->TeleportTo(1, 9951.97f, 2280.06f, 1341.39f, 1.60f);   // darnassus
            player->SetPvP(false);
            return false;
		}
		break;
	case 19: 
		{
			player->CLOSE_GOSSIP_MENU();
			UpdateVoteTPData(player, ttseconds);
            player->TeleportTo(530, -3962.08f, -11657.74f, -138.81f, -138.81f);   // exodar
            player->SetPvP(false);
            return false;
		}
		break;
	case 20: 
		{
			player->CLOSE_GOSSIP_MENU();
			UpdateVoteTPData(player, ttseconds);
            player->TeleportTo(530, -1838.16f, 5301.79f, -12.42f, 0);   // shat city
            player->SetPvP(false);
            return false;
		}
		break;
	case 21: 
		{
			player->CLOSE_GOSSIP_MENU();
			UpdateVoteTPData(player, ttseconds);
            player->TeleportTo(571, 5804.14f, 624.77f, 647.76f, 0);   // dalaran
            player->SetPvP(false);
            return false;
		}
		break;
	case 22: 
		{
			player->CLOSE_GOSSIP_MENU();
			UpdateVoteTPData(player, ttseconds);
            player->TeleportTo(1, -603.57f, -4198.80f, 41.09f, 4.74f);   // orc start
            player->SetPvP(false);
            return false;
		}
		break;
	case 23: 
		{
			player->CLOSE_GOSSIP_MENU();
			UpdateVoteTPData(player, ttseconds);
            player->TeleportTo(0, 1663.47f, 1662.78f, 141.85f, 6.10f);   // undead start
            player->SetPvP(false);
            return false;
		}
		break;
	case 24: 
		{
			player->CLOSE_GOSSIP_MENU();
			UpdateVoteTPData(player, ttseconds);
            player->TeleportTo(1, -2883.02f, -229.16f, 55.16f, 4.05f);   // tauren start
            player->SetPvP(false);
            return false;
		}
		break;
	case 25: 
		{
			player->CLOSE_GOSSIP_MENU();
			UpdateVoteTPData(player, ttseconds);
            player->TeleportTo(530, 10348.84f, -6375.89f, 36.92f, 1.80f);   // belf start
            player->SetPvP(false);
            return false;
		}
		break;
	case 26: 
		{
			player->CLOSE_GOSSIP_MENU();
			UpdateVoteTPData(player, ttseconds);
            player->TeleportTo(0, -8911.54f, -141.84f, 82.21f, 2.07f);   // human start
            player->SetPvP(false);
            return false;
		}
		break;
	case 27: 
		{
			player->CLOSE_GOSSIP_MENU();
			UpdateVoteTPData(player, ttseconds);
            player->TeleportTo(0, -4981.92f, 873.20f, 244.30f, 4.59f);   // gnome start
            player->SetPvP(false);
            return false;
		}
		break;
	case 28: 
		{
			player->CLOSE_GOSSIP_MENU();
			UpdateVoteTPData(player, ttseconds);
            player->TeleportTo(1, 10317.47f, 821.03f, 1326.37f, 0.74f);   // nelf start
            player->SetPvP(false);
            return false;
		}
		break;
	case 29: 
		{
			player->CLOSE_GOSSIP_MENU();
			UpdateVoteTPData(player, ttseconds);
            player->TeleportTo(530, -3962.26f, -13930.66f, 100.56f, 2.09f);   // draenei start
            player->SetPvP(false);
            return false;
		}
		break;
	case 30: 
		{
			player->CLOSE_GOSSIP_MENU();
			UpdateVoteTPData(player, ttseconds);
			// LOCATION NAME
            player->TeleportTo(0,-6230.41f,330.22f,383.10f,6.17f);  // Drawf
            player->SetPvP(false);
            return false;
		}
        break;
    case 31: 
		{
			player->CLOSE_GOSSIP_MENU();
			UpdateVoteTPData(player, ttseconds);
			// LOCATION NAME
            player->TeleportTo(1,-1169.98f,-5258.24f,0.59f,1.37f);  // Troll
            player->SetPvP(false);
            return false;
		}
        break;

	// BYE BYE	
	case 50: 
		{
			player->CLOSE_GOSSIP_MENU();
		}
        break;
    
	case 125: 
		{
			player->CLOSE_GOSSIP_MENU();
			UpdateVoteTPData(player, ttseconds);
            player->TeleportTo(648, -8242.04f, 1361.12f, 104.67f, 1.80f);   // gob start zone
            player->SetPvP(false);
            return false;
		}
		break;
	case 126: 
		{
			player->CLOSE_GOSSIP_MENU();
			UpdateVoteTPData(player, ttseconds);
            player->TeleportTo(638, -1436.46f, 1419.81f, 35.55f, 1.80f);   // worg start
            player->SetPvP(false);
            return false;
		}
		break;
	}
	return true;
    
}

};

void AddSC_npc_mga_vote_teleporterAI()
{
    new npc_mga_vote_teleporter;
}