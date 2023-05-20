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
#include "ScriptMgr.h"
#include "ScriptedCreature.h"
#include "ScriptedGossip.h"
#include "GameEventMgr.h"
#include "Player.h"
#include "WorldSession.h"

#define GOSSIP_HELLO_INFO  "Tell Me About MGAWoW"

#define GOSSIP_HELLO_INFO1  "You might qualify for a free level 80?"

#define GOSSIP_HELLO_TP1  "Send me to the MGA Voters Area"
#define GOSSIP_HELLO_TP2  "IMPORT DETECTED!!! - Teleport me to the voters area."

#define GOSSIP_HELLO_TPNO  "You have not voted in the last 12 hours on this account or your in the DK starting zone, if you wish to use me please go and vote and I will send you to a Very Very nice location."
#define GOSSIP_HELLO_TPNO1 "You must be level 2+ to use me."

#define mgainfotext1 -1705551
#define mgainfotext2 -1705552
/*
#define mgainfotext2 -1705552
#define mgainfotext3 -1705553
#define mgainfotext4 -1705554
#define mgainfotext5 -1705555
#define mgainfotext6 -1705556

INSERT IGNORE INTO `script_texts` (`npc_entry`,`entry`,`content_default`) VALUES ('500612','-1705551','MGA has a lot of features like Faction/Race/Name Changer and we have our own currency Mini & MGA Tokens, for more infomation visit the features page @ wrath.mgawow.co.uk');
INSERT IGNORE INTO `script_texts` (`npc_entry`,`entry`,`content_default`) VALUES ('500612','-1705552','MGA offers a character import service, for full info visit wrath.mgawow.co.uk and click import.');
INSERT IGNORE INTO `script_texts` (`npc_entry`,`entry`,`content_default`) VALUES ('500612','-1705553','INFO THREE');
INSERT IGNORE INTO `script_texts` (`npc_entry`,`entry`,`content_default`) VALUES ('500612','-1705554','INFO FOUR');
INSERT IGNORE INTO `script_texts` (`npc_entry`,`entry`,`content_default`) VALUES ('500612','-1705555','INFO FIVE');
INSERT IGNORE INTO `script_texts` (`npc_entry`,`entry`,`content_default`) VALUES ('500612','-1705556','INFO SIX');
UPDATE `script_texts` SET `content_default`='For a limited time and during promotion time ALL new accounts get one (1) free level 80, for more info on this please visit wrath.mgawow.co.uk login with your new account and make sure popup blockers are turned off.  Thank you and welcome to MGA' WHERE (`npc_entry`='500612') AND (`entry`='-1705552')
*/
//#define mgainfotext7 -1705557
//#define mgainfotext8 -1705558
//#define mgainfotext9 -1705559

class npc_mga_access : public CreatureScript
{
	public:
    npc_mga_access() : CreatureScript("npc_mga_access") { }


bool OnGossipHello(Player *player, Creature *_Creature)
{
	QueryResult result;
    result = WorldDatabase.PQuery("SELECT * FROM `guild_transfer` WHERE `name1` = '%s' AND `duplicate` = '0' AND `status` = '0'", std::string(player->GetName()).c_str());
    if(result)
    {
        AddGossipItemFor(player, GOSSIP_ICON_CHAT, GOSSIP_HELLO_TP2 , GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF+1);
    }

    //if(player->getLevel() > 1)
	//{
    
        time_t tseconds;
        tseconds = time (NULL);
        uint32 ttcheck;
        ttcheck = (tseconds-43200); // 12 hours
        QueryResult result2;
        result2 = WorldDatabase.PQuery("SELECT * FROM `vote_tp` WHERE `guid`='%d' AND `time` >'%d' LIMIT 1", player->GetSession()->GetAccountId(),ttcheck);
        //sLog->outError("SELECT * FROM `vote_tp` WHERE `guid`='%d' AND `time` >'%d' LIMIT 1", player->GetSession()->GetAccountId(),ttcheck);
	
        if(result2)
        {
        player->ADD_GOSSIP_ITEM( GOSSIP_ICON_CHAT, GOSSIP_HELLO_TP1 , GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF+1);
        }
        else
        {
        player->ADD_GOSSIP_ITEM( GOSSIP_ICON_CHAT, GOSSIP_HELLO_TPNO , GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF+50);
        }

	//}
        //else
        //{
       // player->ADD_GOSSIP_ITEM( GOSSIP_ICON_CHAT, GOSSIP_HELLO_TPNO1 , GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF+50);
        //}

	//player->ADD_GOSSIP_ITEM( GOSSIP_ICON_CHAT, GOSSIP_HELLO_INFO , GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF+100);
	//player->ADD_GOSSIP_ITEM( GOSSIP_ICON_CHAT, GOSSIP_HELLO_INFO1 , GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF+101);
	
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
			if (player->getClass() == CLASS_DEATH_KNIGHT && player->getLevel() < 80)
				player->SetPhaseMask(PHASEMASK_NORMAL, false);
			player->TeleportTo(571,5817.41f,601.99f,570.55f,3.13f);        // dala sewer arena (visual copy)
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

	case 100: 
		{
			player->CLOSE_GOSSIP_MENU();
			_Creature->Yell(mgainfotext1, LANG_UNIVERSAL, NULL);
		}
        break;
    case 101: 
		{
			player->CLOSE_GOSSIP_MENU();
			_Creature->Yell(mgainfotext2, LANG_UNIVERSAL, NULL);

		}
        break;
		
	}		
	return true;
    
}

};

void AddSC_npc_mga_accessAI()
{
    new npc_mga_access;
}
