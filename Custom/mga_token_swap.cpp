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

mga_night_elf_mohawk AI
NPC Will give mohawk grande 43489


*/
#include "ScriptMgr.h"
#include "ScriptedCreature.h"
#include "ScriptedGossip.h"
#include "GameEventMgr.h"
#include "Player.h"
#include "WorldSession.h"

#define tokentext1 -1700000
#define tokentext2 -1700001
#define tokentext3 -1700002
#define tokentext4 -1700003
#define tokentext5 -1700004
#define tokentext6 -1700005
#define tokentext7 -1700006

#define GOSSIP_HELLO_TSWAP1  "Create 1 MGA Token (Requies 50 Mini Tokens)"
#define GOSSIP_HELLO_TSWAP2  "Exchange 3 WSG Marks for 50 Honor"
#define GOSSIP_HELLO_TSWAP3  "Exchange 2 AB Marks for 50 Honor"
#define GOSSIP_HELLO_TSWAP4  "Exchange 1 AV Mark for 50 Honor" 
#define GOSSIP_HELLO_TSWAP5  "Exchange 1 EOTS Mark for 50 Honor"
#define GOSSIP_HELLO_TSWAP11  "Exchange 10 WG Mark for 50 Honor"
#define GOSSIP_HELLO_TSWAP6  "1 MGA Super VIP Emblem at the cost of 100 Emblem of MGA"
#define GOSSIP_HELLO_TSWAP7  "Obtain 10 Sunmotes at the cost of 1 Badge of Justice"
#define GOSSIP_HELLO_TSWAP8  "How do I earn Mini Tokens?"
#define GOSSIP_HELLO_TSWAP10  "Exchange 5K honor for 1 Mini Token"
#define GOSSIP_HELLO_TSWAP12  "Exchange 75K honor for 100 Arena Points."
#define GOSSIP_HELLO_TSWAP9  "Goodbye !"
#define GOSSIP_HELLO_NOTVIP  "I Can only make MGA Super VIP Emblem's for VIPs!"

class npc_gm_token_swap : public CreatureScript
{
	public:
    npc_gm_token_swap() : CreatureScript("npc_gm_token_swap") { }

bool OnGossipHello(Player *player, Creature *_Creature)
{
		
    AddGossipItemFor(player, GOSSIP_ICON_CHAT, GOSSIP_HELLO_TSWAP1, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);
    AddGossipItemFor(player, GOSSIP_ICON_CHAT, GOSSIP_HELLO_TSWAP2, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 2);
    AddGossipItemFor(player, GOSSIP_ICON_CHAT, GOSSIP_HELLO_TSWAP3, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 3);
    AddGossipItemFor(player, GOSSIP_ICON_CHAT, GOSSIP_HELLO_TSWAP4, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 4);
    AddGossipItemFor(player, GOSSIP_ICON_CHAT, GOSSIP_HELLO_TSWAP5, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 5);


	
	QueryResult result2;
	result2 = WorldDatabase.PQuery("SELECT * FROM `VIP` WHERE `acct_id`='%d' LIMIT 1", player->GetSession()->GetAccountId());
	if(result2)
        AddGossipItemFor(player, GOSSIP_ICON_CHAT, GOSSIP_HELLO_TSWAP6 , GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF+4);
	else
        AddGossipItemFor(player, GOSSIP_ICON_CHAT, GOSSIP_HELLO_NOTVIP , GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF+9);
	
	
    AddGossipItemFor(player, GOSSIP_ICON_CHAT, GOSSIP_HELLO_TSWAP7 , GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF+6);
    AddGossipItemFor(player, GOSSIP_ICON_CHAT, GOSSIP_HELLO_TSWAP8 , GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF+5);
    AddGossipItemFor(player, GOSSIP_ICON_CHAT, GOSSIP_HELLO_TSWAP10 , GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF+10);
    AddGossipItemFor(player, GOSSIP_ICON_CHAT, GOSSIP_HELLO_TSWAP11 , GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF+11);
    AddGossipItemFor(player, GOSSIP_ICON_CHAT, GOSSIP_HELLO_TSWAP12 , GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF+12);
    AddGossipItemFor(player, GOSSIP_ICON_CHAT, GOSSIP_HELLO_TSWAP9 , GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF+9);

		
	player->PlayerTalkClass->SendGossipMenu(907,_Creature->GetGUID());

    return true;
}

bool OnGossipSelect(Player* player, Creature* _Creature, uint32 /*sender*/, uint32 action)
{
	player->PlayerTalkClass->ClearMenus();
	switch(action - GOSSIP_ACTION_INFO_DEF)
	{
    case 1: // Give item if dont alrdy have it
        CloseGossipMenuFor(player);
		if (player->HasItemCount(18154, 50) )
		{
			uint32 itemId = 21140;
			ItemPosCountVec dest;

        uint8 msg = player->CanStoreNewItem( NULL_BAG, NULL_SLOT, dest, itemId, 1, false );
        if( msg == EQUIP_ERR_OK )
        {
            Item* item = player->StoreNewItem( dest, itemId, 1, true);
			player->SendNewItem(item, 1, true, false); 
			player->DestroyItemCount(18154, 50, true);
			_Creature->Say(tokentext1, LANG_UNIVERSAL, NULL);
        }
        else
        {
            player->SendEquipError( msg, NULL, NULL );
        }
		}
		else
		{
            _Creature->Yell(tokentext2, LANG_UNIVERSAL, NULL);
		}
        break;
    case 2: // close and cast spell on player and insuly
        CloseGossipMenuFor(player);
		if (player->HasItemCount(20558, 3) )
		{
			player->DestroyItemCount(20558, 3, true);
			player->AddHonorPoints(50);		
			
			/*uint32 itemId = 18154;
			ItemPosCountVec dest;

        uint8 msg = player->CanStoreNewItem( NULL_BAG, NULL_SLOT, dest, itemId, 1, false );
        if( msg == EQUIP_ERR_OK )
        {
            Item* item = player->StoreNewItem( dest, itemId, 1, true);
			player->SendNewItem(item, 1, true, false); 
			player->DestroyItemCount(20558, 3, true);
			_Creature->Say(tokentext3, LANG_UNIVERSAL, NULL);
        }
        else
        {
            player->SendEquipError( msg, NULL, NULL );
        }*/
		}
		else
		{
			_Creature->Yell(tokentext2, LANG_UNIVERSAL, NULL);
		}
        break;
	case 3:
        CloseGossipMenuFor(player);
		if (player->HasItemCount(20559, 2) )
		{
			player->DestroyItemCount(20559, 2, true);
			player->AddHonorPoints(50);	
			/*uint32 itemId = 18154;
			ItemPosCountVec dest;

        uint8 msg = player->CanStoreNewItem( NULL_BAG, NULL_SLOT, dest, itemId, 1, false );
        if( msg == EQUIP_ERR_OK )
        {
            Item* item = player->StoreNewItem( dest, itemId, 1, true);
			player->SendNewItem(item, 1, true, false); 
			player->DestroyItemCount(20559, 2, true);
			_Creature->Say(tokentext3, LANG_UNIVERSAL, NULL);
        }
        else
        {
            player->SendEquipError( msg, NULL, NULL );
        }*/
		}
		else
		{
			_Creature->Yell(tokentext2, LANG_UNIVERSAL, NULL);
		}
	break;
	case 4:
        CloseGossipMenuFor(player);
		if (player->HasItemCount(37711, 100) )
		{
			uint32 itemId = 22484;
			ItemPosCountVec dest;

			uint8 msg = player->CanStoreNewItem( NULL_BAG, NULL_SLOT, dest, itemId, 1, false );
			if( msg == EQUIP_ERR_OK )
			{
				Item* item = player->StoreNewItem( dest, itemId, 1, true);
				player->SendNewItem(item, 1, true, false); 
				player->DestroyItemCount(37711, 100, true);
				//player->CastSpell(player, 74996, true); // Grow 30%
				//player->CastSpell(player, 74996, true); // Grow Stack 2 60%
				//player->CastSpell(player, 50247, true); // Path of Illidan
				//_Creature->Say(tokentext4, LANG_UNIVERSAL, NULL);
			}
			else
			{
				player->SendEquipError( msg, NULL, NULL );
			}
		}
		else
		{
			_Creature->Yell(tokentext2, LANG_UNIVERSAL, NULL);
		}
	break;
	case 5:
        CloseGossipMenuFor(player);
        _Creature->Say(tokentext5, LANG_UNIVERSAL, NULL);
	break;
	case 6:
        CloseGossipMenuFor(player);
		if (player->HasItemCount(29434, 1) )
		{
			uint32 itemId = 34664;
			ItemPosCountVec dest;

        uint8 msg = player->CanStoreNewItem( NULL_BAG, NULL_SLOT, dest, itemId, 1, false );
        if( msg == EQUIP_ERR_OK )
        {
            Item* item = player->StoreNewItem( dest, itemId, 10, true);
			player->SendNewItem(item, 10, true, false); 
			player->DestroyItemCount(29434, 1, true);
			_Creature->Say(tokentext6, LANG_UNIVERSAL, NULL);
        }
        else
        {
            player->SendEquipError( msg, NULL, NULL );
        }
		}
		else
		{
			_Creature->Yell(tokentext2, LANG_UNIVERSAL, NULL);
		}
	break;
	case 7:
        CloseGossipMenuFor(player);
		if (player->HasItemCount(20560, 1) )
		{
			player->DestroyItemCount(20560, 1, true);
			player->AddHonorPoints(50);
			/*uint32 itemId = 18154;
			ItemPosCountVec dest;

        uint8 msg = player->CanStoreNewItem( NULL_BAG, NULL_SLOT, dest, itemId, 1, false );
        if( msg == EQUIP_ERR_OK )
        {
            Item* item = player->StoreNewItem( dest, itemId, 1, true);
			player->SendNewItem(item, 1, true, false); 
			player->DestroyItemCount(20560, 1, true);
			_Creature->Say(tokentext3, LANG_UNIVERSAL, NULL);
        }
        else
        {
            player->SendEquipError( msg, NULL, NULL );
        }*/
		}
		else
		{
			_Creature->Yell(tokentext2, LANG_UNIVERSAL, NULL);
		}
	break;
	case 8:
        CloseGossipMenuFor(player);
		if (player->HasItemCount(29024, 1) )
		{
			player->DestroyItemCount(29024, 1, true);
			player->AddHonorPoints(50);
			/*uint32 itemId = 18154;
			ItemPosCountVec dest;

        uint8 msg = player->CanStoreNewItem( NULL_BAG, NULL_SLOT, dest, itemId, 1, false );
        if( msg == EQUIP_ERR_OK )
        {
            Item* item = player->StoreNewItem( dest, itemId, 1, true);
			player->SendNewItem(item, 1, true, false); 
			player->DestroyItemCount(29024, 1, true);
            _Creature->Say(tokentext1, LANG_UNIVERSAL, NULL);
        }
        else
        {
            player->SendEquipError( msg, NULL, NULL );
        }*/
		}
		else
		{
			_Creature->Yell(tokentext2, LANG_UNIVERSAL, NULL);
		}
	break;
	case 9:
        CloseGossipMenuFor(player);
		_Creature->Yell(tokentext7, LANG_UNIVERSAL, NULL);
	break;
    case 10:
        CloseGossipMenuFor(player);
		if (player->GetHonorPoints() > 4999)
		{
			uint32 itemId = 18154;
			ItemPosCountVec dest;
			
			uint8 msg = player->CanStoreNewItem( NULL_BAG, NULL_SLOT, dest, itemId, 1, false );
			if( msg == EQUIP_ERR_OK )
			{
				 Item* item = player->StoreNewItem( dest, itemId, 1, true);
				 player->SendNewItem(item, 1, true, false);
				 player->AddHonorPoints(-5000);				 
			}
		}
	break;  
	case 11:
        CloseGossipMenuFor(player);
		if (player->HasItemCount(43589, 10) )
		{
			player->DestroyItemCount(43589, 10, true);
			player->AddHonorPoints(50);
			/*uint32 itemId = 18154;
			ItemPosCountVec dest;

        uint8 msg = player->CanStoreNewItem( NULL_BAG, NULL_SLOT, dest, itemId, 1, false );
        if( msg == EQUIP_ERR_OK )
        {
            Item* item = player->StoreNewItem( dest, itemId, 1, true);
			player->SendNewItem(item, 1, true, false); 
			player->DestroyItemCount(29024, 1, true);
            _Creature->Say(tokentext1, LANG_UNIVERSAL, NULL);
        }
        else
        {
            player->SendEquipError( msg, NULL, NULL );
        }*/
		}
		else
		{
			_Creature->Yell(tokentext2, LANG_UNIVERSAL, NULL);
		}
	break;
	case 12:
        CloseGossipMenuFor(player);
		if (player->GetHonorPoints() > 74999 )
		{
			player->AddHonorPoints(-75000);
		}
		else
		{
			_Creature->Yell(tokentext2, LANG_UNIVERSAL, NULL);
		}
	break;
    }
	return true;
    
}

};

void AddSC_npc_gm_token_swapAI()
{
    new npc_gm_token_swap;
}
