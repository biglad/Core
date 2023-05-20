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

MGA Token Master NPC
NPC Will Exchange MGA Tokens at the cost of gifts

*/

#include "ScriptPCH.h"

#define tokentext8 -1700007
#define tokentext9 -1700008
#define tokentext10 -1700009
#define tokentext11 -1700010
#define tokentext12 -1700011
#define tokentext13 -1700012
#define tokentext14 -1700013
#define tokentext15 -1700014
#define tokentext16 -1700015
#define tokentext17 -1700016
#define tokentext18 -1700017

class npc_gm_token_shop : public CreatureScript
{
	public:
    npc_gm_token_shop() : CreatureScript("npc_gm_token_shop") { }



bool OnGossipHello(Player *player, Creature *_Creature)
{
		
	player->ADD_GOSSIP_ITEM( 1, "Level Rewards"    , GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF+1000);
	player->ADD_GOSSIP_ITEM( 1, "Gold Rewards"    , GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF+1300);
	//player->ADD_GOSSIP_ITEM( 4, "Armor Rewards"    , GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF+1400);
	player->ADD_GOSSIP_ITEM( 1, "Reputation Rewards"    , GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF+1500);

		
	player->PlayerTalkClass->SendGossipMenu(907, _Creature->GetGUID());

    return true;
}

/*******************************************************
 *				Start of GOSSIP_MENU
 *******************************************************/
bool OnGossipSelect(Player* player, Creature* _Creature, uint32 /*sender*/, uint32 action)
{
	player->PlayerTalkClass->ClearMenus();
	switch(action - GOSSIP_ACTION_INFO_DEF)
	{
		case 1: // Main menu recall
		{
			player->ADD_GOSSIP_ITEM( 4, "Level Rewards"    , GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF+1000);
			player->ADD_GOSSIP_ITEM( 6, "Gold Rewards"    , GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF+1300);
			//player->ADD_GOSSIP_ITEM( 4, "Armor Rewards"    , GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF+1400);
			player->ADD_GOSSIP_ITEM( 1, "Reputation Rewards"    , GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF+1500);
				
			player->PlayerTalkClass->SendGossipMenu(907,_Creature->GetGUID());

			return true;
		}break;
		case 2: // Bye
		{
			player->CLOSE_GOSSIP_MENU();
			_Creature->Say(tokentext8, LANG_UNIVERSAL, NULL);
		}break;
		case 1000: // Level Rewards
		{
			if(player->getLevel() < 60)
			{
			player->ADD_GOSSIP_ITEM( 2, "2 Levels at the cost of 1 MGA Token"    , GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF+1001);
			
		}
			if(player->getLevel() >= 60 && player->getLevel() <= 79)
			
		{
			player->ADD_GOSSIP_ITEM( 2, "1 Level at the cost of 1 MGA Token"    , GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF+1004);
		}
			if(player->getLevel() >= 80)
			
		{
			player->ADD_GOSSIP_ITEM( 2, "You are too high level to boost yourself max is level 77"    , GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF+1);
		}
			
			player->ADD_GOSSIP_ITEM( 1, "[Back]"    , GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF+1);
			player->PlayerTalkClass->SendGossipMenu(907,_Creature->GetGUID());

		    return true;
		}break;
		case 1001: // 60, 2L for 1 Token
		{
			player->CLOSE_GOSSIP_MENU();
			if (player->HasItemCount(21140, 1) )
			{
				player->RemoveAurasByType(SPELL_AURA_MOUNTED);
                player->GiveLevel(player->getLevel()+2);
				player->InitTalentForLevel();
				player->InitStatsForLevel();
				_Creature->Say(tokentext9, LANG_UNIVERSAL, NULL);
				player->DestroyItemCount(21140, 1, true);
				player->SaveToDB();
				
			}
			else
			{
				_Creature->Say(tokentext10, LANG_UNIVERSAL, NULL);
			}
		}break;
		case 1004: // 70, 
		{
			player->CLOSE_GOSSIP_MENU();
			if (player->HasItemCount(21140, 1) )
			{
				player->RemoveAurasByType(SPELL_AURA_MOUNTED);
                player->GiveLevel(player->getLevel()+1);
				player->InitTalentForLevel();
				player->InitStatsForLevel();
				_Creature->Say(tokentext9, LANG_UNIVERSAL, NULL);
				player->DestroyItemCount(21140, 1, true);
				player->SaveToDB();
			}
			else
			{
				_Creature->Say(tokentext10, LANG_UNIVERSAL, NULL);
			}
		}break;
		case 1300: // Gief Gawld Menu
		{
			player->ADD_GOSSIP_ITEM( 2, "500 Gold at the cost of 1 MGA Token"    , GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF+1301);
			player->ADD_GOSSIP_ITEM( 2, "1250 Gold at the cost of 2 MGA Tokens"    , GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF+1302);
			//player->ADD_GOSSIP_ITEM( 2, "2500 Gold at the cost of 4 MGA Tokens"    , GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF+1303);
			player->ADD_GOSSIP_ITEM( 1, "[Back]"    , GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF+1);
			player->PlayerTalkClass->SendGossipMenu(907,_Creature->GetGUID());

		    return true;
		}break;
		case 1301:
		{
			player->CLOSE_GOSSIP_MENU();
			if (player->HasItemCount(21140, 1) )
			{
				player->RemoveAurasByType(SPELL_AURA_MOUNTED);
                player->SetMoney(player->GetMoney()+5000000);
				_Creature->Say(tokentext11, LANG_UNIVERSAL, NULL);
				player->DestroyItemCount(21140, 1, true);
				player->SaveToDB();
			}
			else
			{
				_Creature->Say(tokentext12, LANG_UNIVERSAL, NULL);
			}
		}break;
		case 1302:
		{
			player->CLOSE_GOSSIP_MENU();
			if (player->HasItemCount(21140, 2) )
			{
				player->RemoveAurasByType(SPELL_AURA_MOUNTED);
                player->SetMoney(player->GetMoney()+12500000);
				_Creature->Say(tokentext13, LANG_UNIVERSAL, NULL);
				player->DestroyItemCount(21140, 2, true);
				player->SaveToDB();
			}
			else
			{
				_Creature->Say(tokentext12, LANG_UNIVERSAL, NULL);
			}
		}break;
		case 1303:
		{
			player->CLOSE_GOSSIP_MENU();
			if (player->HasItemCount(21140, 4) )
			{
				player->RemoveAurasByType(SPELL_AURA_MOUNTED);
                player->SetMoney(player->GetMoney()+25000000);
				_Creature->Say(tokentext13, LANG_UNIVERSAL, NULL);
				player->DestroyItemCount(21140, 4, true);

				player->SaveToDB();
			}
			else
			{
				_Creature->Say(tokentext12, LANG_UNIVERSAL, NULL);
			}
		}break;
		/*case 1400:
		{
			if(player->getClass() == CLASS_DRUID )
			{
				player->ADD_GOSSIP_ITEM( 3, "Druid Raid Tier 4"    , GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF+1401);
				player->ADD_GOSSIP_ITEM( 3, "Druid Raid Tier 5"    , GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF+1402);
				player->ADD_GOSSIP_ITEM( 3, "Druid Raid Tier 6"    , GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF+1403);
			}
			if(player->getClass() == CLASS_HUNTER)
			{
				player->ADD_GOSSIP_ITEM( 3, "Hunter Raid Tier 4"    , GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF+1443);
				player->ADD_GOSSIP_ITEM( 3, "Hunter Raid Tier 5"    , GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF+1449);
				player->ADD_GOSSIP_ITEM( 3, "Hunter Raid Tier 6"    , GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF+1455);
			}
			if(player->getClass() == CLASS_MAGE)
			{
				player->ADD_GOSSIP_ITEM( 3, "Mage Raid Tier 4"    , GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF+1443);
				player->ADD_GOSSIP_ITEM( 3, "Mage Raid Tier 5"    , GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF+1449);
				player->ADD_GOSSIP_ITEM( 3, "Mage Raid Tier 6"    , GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF+1403);
			}
			if(player->getClass() == CLASS_PALADIN)
			{
				player->ADD_GOSSIP_ITEM( 3, "Paladin Raid Tier 4"    , GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF+1464);
				player->ADD_GOSSIP_ITEM( 3, "Paladin Raid Tier 5"    , GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF+1470);
				player->ADD_GOSSIP_ITEM( 3, "Paladin Raid Tier 6"    , GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF+1476);
			}
			if(player->getClass() == CLASS_PRIEST)
			{
				player->ADD_GOSSIP_ITEM( 3, "Priest Raid Tier 4"    , GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF+1401);
				player->ADD_GOSSIP_ITEM( 3, "Priest Raid Tier 5"    , GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF+1402);
				player->ADD_GOSSIP_ITEM( 3, "Priest Raid Tier 6"    , GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF+1476);
			}
			if(player->getClass() == CLASS_ROGUE)
			{
				player->ADD_GOSSIP_ITEM( 3, "Rogue Raid Tier 4"    , GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF+1464);
				player->ADD_GOSSIP_ITEM( 3, "Rogue Raid Tier 5"    , GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF+1470);
				player->ADD_GOSSIP_ITEM( 3, "Rogue Raid Tier 6"    , GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF+1403);
			}
			if(player->getClass() == CLASS_SHAMAN)
			{
				player->ADD_GOSSIP_ITEM( 3, "Shaman Raid Tier 4"    , GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF+1464);
				player->ADD_GOSSIP_ITEM( 3, "Shaman Raid Tier 5"    , GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF+1470);
				player->ADD_GOSSIP_ITEM( 3, "Shaman Raid Tier 6"    , GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF+1455);
			}
			if(player->getClass() == CLASS_WARLOCK)
			{
				player->ADD_GOSSIP_ITEM( 3, "Warlock Raid Tier 4"    , GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF+1443);
				player->ADD_GOSSIP_ITEM( 3, "Warlock Raid Tier 5"    , GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF+1449);
				player->ADD_GOSSIP_ITEM( 3, "Warlock Raid Tier 6"    , GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF+0000);
			}
			if(player->getClass() == CLASS_WARRIOR)
			{
				player->ADD_GOSSIP_ITEM( 3, "Warrior Raid Tier 4"    , GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF+1401);
				player->ADD_GOSSIP_ITEM( 3, "Warrior Raid Tier 5"    , GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF+1402);
				player->ADD_GOSSIP_ITEM( 3, "Warrior Raid Tier 6"    , GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF+1455);
			}
			player->ADD_GOSSIP_ITEM( 1, "[Back]"    , GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF+1);
			player->PlayerTalkClass->SendGossipMenu(907,_Creature->GetGUID());
			return;
		}break;
		case 1401: //druid, priest, warrior t4
		{
			player->ADD_GOSSIP_ITEM( 3, "Helm of the Fallen Defender at the cost of 15 MGA Tokens"    , GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF+1404);
			player->ADD_GOSSIP_ITEM( 3, "Chestguard of the Fallen Defender at the cost of 15 MGA Tokens"    , GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF+1405);
			player->ADD_GOSSIP_ITEM( 3, "Pauldrons of the Fallen Defender at the cost of 15 MGA Tokens"    , GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF+1406);
			player->ADD_GOSSIP_ITEM( 3, "Gloves of the Fallen Defender at the cost of 15 MGA Tokens"    , GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF+1407);
			player->ADD_GOSSIP_ITEM( 3, "Leggings of the Fallen Defender at the cost of 15 MGA Tokens"    , GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF+1408);
			player->ADD_GOSSIP_ITEM( 1, "[Back]"    , GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF+1400);
			player->ADD_GOSSIP_ITEM( 1, "[Main Menu]"    , GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF+1);
			player->PlayerTalkClass->SendGossipMenu(907,_Creature->GetGUID());
			return;
			
		}break;
		case 1402: // druid, priest, warrior t5
		{
			player->ADD_GOSSIP_ITEM( 3, "Helm of the Vanquished Defender at the cost of 20 MGA Tokens"    , GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF+1430);
			player->ADD_GOSSIP_ITEM( 3, "Chestguard of the Vanquished Defender at the cost of 20 MGA Tokens"    , GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF+1431);
			player->ADD_GOSSIP_ITEM( 3, "Pauldrons of the Vanquished Defender at the cost of 20 MGA Tokens"    , GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF+1432);
			player->ADD_GOSSIP_ITEM( 3, "Gloves of the Vanquished Defender at the cost of 20 MGA Tokens"    , GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF+1433);
			player->ADD_GOSSIP_ITEM( 3, "Leggings of the Vanquished Defender at the cost of 20 MGA Tokens"    , GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF+1434);
			player->ADD_GOSSIP_ITEM( 1, "[Back]"    , GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF+1400);
			player->ADD_GOSSIP_ITEM( 1, "[Main Menu]"    , GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF+1);
			player->PlayerTalkClass->SendGossipMenu(907,_Creature->GetGUID());
			return;
			
		}break;
		case 1403: // rogue druid mage t6
		{
			player->ADD_GOSSIP_ITEM( 3, "Helm of the Forgotten Vanquisher at the cost of 25 MGA Tokens"    , GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF+1435);
			player->ADD_GOSSIP_ITEM( 3, "Chestguard of the Forgotten Vanquisher at the cost of 25 MGA Tokens"    , GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF+1436);
			player->ADD_GOSSIP_ITEM( 3, "Pauldrons of the Forgotten Vanquisher at the cost of 25 MGA Tokens"    , GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF+1437);
			player->ADD_GOSSIP_ITEM( 3, "Gloves of the Forgotten Vanquisher at the cost of 25 MGA Tokens"    , GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF+1438);
			player->ADD_GOSSIP_ITEM( 3, "Bracers of the Forgotten Vanquisher at the cost of 20 MGA Tokens"    , GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF+1439);
			player->ADD_GOSSIP_ITEM( 3, "Belt of the Forgotten Vanquisher at the cost of 20 MGA Tokens"    , GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF+1440);
			player->ADD_GOSSIP_ITEM( 3, "Leggings of the Forgotten Vanquisher at the cost of 25 MGA Tokens"    , GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF+1441);
			player->ADD_GOSSIP_ITEM( 3, "Boots of the Forgotten Vanquisher at the cost of 20 MGA Tokens"    , GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF+1442);
			player->ADD_GOSSIP_ITEM( 1, "[Back]"    , GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF+1400);
			player->ADD_GOSSIP_ITEM( 1, "[Main Menu]"    , GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF+1);
			player->PlayerTalkClass->SendGossipMenu(907,_Creature->GetGUID());
			return;
			
		}break;
		case 1404:
		{
			player->CLOSE_GOSSIP_MENU();
			if (player->HasItemCount(21140, 15) )
			{
				uint32 itemId = 29761;
				ItemPosCountVec dest;

				uint8 msg = player->CanStoreNewItem( NULL_BAG, NULL_SLOT, dest, itemId, 1, false );
		        if( msg == EQUIP_ERR_OK )
		        {
		            Item* item = player->StoreNewItem( dest, itemId, 1, true);
					player->DestroyItemCount(21140, 15, true);
					_Creature->Say("Feel free to trade this token in at your local store for a piece of T4 or Gladiator gear.", LANG_UNIVERSAL, NULL);
		        }
		        else
		        {
		            player->SendEquipError( msg, NULL, NULL );
		        }
			}
			else
			{
				_Creature->Yell(tokentext15, LANG_UNIVERSAL, NULL);
			}
	    }break;
		case 1405:
		{
			player->CLOSE_GOSSIP_MENU();
			if (player->HasItemCount(21140, 15) )
			{
				uint32 itemId = 29753;
				ItemPosCountVec dest;

				uint8 msg = player->CanStoreNewItem( NULL_BAG, NULL_SLOT, dest, itemId, 1, false );
		        if( msg == EQUIP_ERR_OK )
		        {
		            Item* item = player->StoreNewItem( dest, itemId, 1, true);
					player->DestroyItemCount(21140, 15, true);
					_Creature->Say("Feel free to trade this token in at your local store for a piece of T4 or Gladiator gear.", LANG_UNIVERSAL, NULL);
		        }
		        else
		        {
		            player->SendEquipError( msg, NULL, NULL );
		        }
			}
			else
			{
				_Creature->Yell(tokentext15, LANG_UNIVERSAL, NULL);
			}
	    }break;
		case 1406:
		{
			player->CLOSE_GOSSIP_MENU();
			if (player->HasItemCount(21140, 15) )
			{
				uint32 itemId = 29764;
				ItemPosCountVec dest;

				uint8 msg = player->CanStoreNewItem( NULL_BAG, NULL_SLOT, dest, itemId, 1, false );
		        if( msg == EQUIP_ERR_OK )
		        {
		            Item* item = player->StoreNewItem( dest, itemId, 1, true);
					player->DestroyItemCount(21140, 15, true);
					_Creature->Say("Feel free to trade this token in at your local store for a piece of T4 or Gladiator gear.", LANG_UNIVERSAL, NULL);
		        }
		        else
		        {
		            player->SendEquipError( msg, NULL, NULL );
		        }
			}
			else
			{
				_Creature->Yell(tokentext15, LANG_UNIVERSAL, NULL);
			}
	    }break;
		case 1407:
		{
			player->CLOSE_GOSSIP_MENU();
			if (player->HasItemCount(21140, 15) )
			{
				uint32 itemId = 29758;
				ItemPosCountVec dest;

				uint8 msg = player->CanStoreNewItem( NULL_BAG, NULL_SLOT, dest, itemId, 1, false );
		        if( msg == EQUIP_ERR_OK )
		        {
		            Item* item = player->StoreNewItem( dest, itemId, 1, true);
					player->DestroyItemCount(21140, 15, true);
					_Creature->Say("Feel free to trade this token in at your local store for a piece of T4 or Gladiator gear.", LANG_UNIVERSAL, NULL);
		        }
		        else
		        {
		            player->SendEquipError( msg, NULL, NULL );
		        }
			}
			else
			{
				_Creature->Yell(tokentext15, LANG_UNIVERSAL, NULL);
			}
	    }break;
		case 1408:
		{
			player->CLOSE_GOSSIP_MENU();
			if (player->HasItemCount(21140, 15) )
			{
				uint32 itemId = 29767;
				ItemPosCountVec dest;

				uint8 msg = player->CanStoreNewItem( NULL_BAG, NULL_SLOT, dest, itemId, 1, false );
		        if( msg == EQUIP_ERR_OK )
		        {
		            Item* item = player->StoreNewItem( dest, itemId, 1, true);
					player->DestroyItemCount(21140, 15, true);
					_Creature->Say("Feel free to trade this token in at your local store for a piece of T4 or Gladiator gear.", LANG_UNIVERSAL, NULL);
		        }
		        else
		        {
		            player->SendEquipError( msg, NULL, NULL );
		        }
			}
			else
			{
				_Creature->Yell(tokentext15, LANG_UNIVERSAL, NULL);
			}
	    }break;
		case 1430:
		{
			player->CLOSE_GOSSIP_MENU();
			if (player->HasItemCount(21140, 20) )
			{
				uint32 itemId = 30243;
				ItemPosCountVec dest;

				uint8 msg = player->CanStoreNewItem( NULL_BAG, NULL_SLOT, dest, itemId, 1, false );
		        if( msg == EQUIP_ERR_OK )
		        {
		            Item* item = player->StoreNewItem( dest, itemId, 1, true);
					player->DestroyItemCount(21140, 20, true);
					_Creature->Say("Feel free to trade this token in at your local store for a piece of T5 or Merciless Gladiator gear.", LANG_UNIVERSAL, NULL);
		        }
		        else
		        {
		            player->SendEquipError( msg, NULL, NULL );
		        }
			}
			else
			{
				_Creature->Yell(tokentext15, LANG_UNIVERSAL, NULL);
			}
	    }break;
		case 1431:
		{
			player->CLOSE_GOSSIP_MENU();
			if (player->HasItemCount(21140, 20) )
			{
				uint32 itemId = 30237;
				ItemPosCountVec dest;

				uint8 msg = player->CanStoreNewItem( NULL_BAG, NULL_SLOT, dest, itemId, 1, false );
		        if( msg == EQUIP_ERR_OK )
		        {
		            Item* item = player->StoreNewItem( dest, itemId, 1, true);
					player->DestroyItemCount(21140, 20, true);
					_Creature->Say("Feel free to trade this token in at your local store for a piece of T5 or Merciless Gladiator gear.", LANG_UNIVERSAL, NULL);
		        }
		        else
		        {
		            player->SendEquipError( msg, NULL, NULL );
		        }
			}
			else
			{
				_Creature->Yell(tokentext15, LANG_UNIVERSAL, NULL);
			}
	    }break;
		case 1432:
		{
			player->CLOSE_GOSSIP_MENU();
			if (player->HasItemCount(21140, 20) )
			{
				uint32 itemId = 30249;
				ItemPosCountVec dest;

				uint8 msg = player->CanStoreNewItem( NULL_BAG, NULL_SLOT, dest, itemId, 1, false );
		        if( msg == EQUIP_ERR_OK )
		        {
		            Item* item = player->StoreNewItem( dest, itemId, 1, true);
					player->DestroyItemCount(21140, 20, true);
					_Creature->Say("Feel free to trade this token in at your local store for a piece of T5 or Merciless Gladiator gear.", LANG_UNIVERSAL, NULL);
		        }
		        else
		        {
		            player->SendEquipError( msg, NULL, NULL );
		        }
			}
			else
			{
				_Creature->Yell(tokentext15, LANG_UNIVERSAL, NULL);
			}
	    }break;
		case 1433:
		{
			player->CLOSE_GOSSIP_MENU();
			if (player->HasItemCount(21140, 20) )
			{
				uint32 itemId = 30240;
				ItemPosCountVec dest;

				uint8 msg = player->CanStoreNewItem( NULL_BAG, NULL_SLOT, dest, itemId, 1, false );
		        if( msg == EQUIP_ERR_OK )
		        {
		            Item* item = player->StoreNewItem( dest, itemId, 1, true);
					player->DestroyItemCount(21140, 20, true);
					_Creature->Say("Feel free to trade this token in at your local store for a piece of T5 or Merciless Gladiator gear.", LANG_UNIVERSAL, NULL);
		        }
		        else
		        {
		            player->SendEquipError( msg, NULL, NULL );
		        }
			}
			else
			{
				_Creature->Yell(tokentext15, LANG_UNIVERSAL, NULL);
			}
	    }break;
		case 1434:
		{
			player->CLOSE_GOSSIP_MENU();
			if (player->HasItemCount(21140, 20) )
			{
				uint32 itemId = 30246;
				ItemPosCountVec dest;

				uint8 msg = player->CanStoreNewItem( NULL_BAG, NULL_SLOT, dest, itemId, 1, false );
		        if( msg == EQUIP_ERR_OK )
		        {
		            Item* item = player->StoreNewItem( dest, itemId, 1, true);
					player->DestroyItemCount(21140, 20, true);
					_Creature->Say("Feel free to trade this token in at your local store for a piece of T5 or Merciless Gladiator gear.", LANG_UNIVERSAL, NULL);
		        }
		        else
		        {
		            player->SendEquipError( msg, NULL, NULL );
		        }
			}
			else
			{
				_Creature->Yell(tokentext15, LANG_UNIVERSAL, NULL);
			}
	    }break;
		case 1435:
		{
			player->CLOSE_GOSSIP_MENU();
			if (player->HasItemCount(21140, 25) )
			{
				uint32 itemId = 31096;
				ItemPosCountVec dest;

				uint8 msg = player->CanStoreNewItem( NULL_BAG, NULL_SLOT, dest, itemId, 1, false );
		        if( msg == EQUIP_ERR_OK )
		        {
		            Item* item = player->StoreNewItem( dest, itemId, 1, true);
					player->DestroyItemCount(21140, 25, true);
					_Creature->Say("Feel free to trade this token in at your local store for a piece of T6 or Gladiator gear.", LANG_UNIVERSAL, NULL);
		        }
		        else
		        {
		            player->SendEquipError( msg, NULL, NULL );
		        }
			}
			else
			{
				_Creature->Yell(tokentext15, LANG_UNIVERSAL, NULL);
			}
	    }break;
		case 1436:
		{
			player->CLOSE_GOSSIP_MENU();
			if (player->HasItemCount(21140, 25) )
			{
				uint32 itemId = 31090;
				ItemPosCountVec dest;

				uint8 msg = player->CanStoreNewItem( NULL_BAG, NULL_SLOT, dest, itemId, 1, false );
		        if( msg == EQUIP_ERR_OK )
		        {
		            Item* item = player->StoreNewItem( dest, itemId, 1, true);
					player->DestroyItemCount(21140, 25, true);
					_Creature->Say("Feel free to trade this token in at your local store for a piece of T6 or Gladiator gear.", LANG_UNIVERSAL, NULL);
		        }
		        else
		        {
		            player->SendEquipError( msg, NULL, NULL );
		        }
			}
			else
			{
				_Creature->Yell(tokentext15, LANG_UNIVERSAL, NULL);
			}
	    }break;
		case 1437:
		{
			player->CLOSE_GOSSIP_MENU();
			if (player->HasItemCount(21140, 25) )
			{
				uint32 itemId = 31102;
				ItemPosCountVec dest;

				uint8 msg = player->CanStoreNewItem( NULL_BAG, NULL_SLOT, dest, itemId, 1, false );
		        if( msg == EQUIP_ERR_OK )

		        {
		            Item* item = player->StoreNewItem( dest, itemId, 1, true);
					player->DestroyItemCount(21140, 25, true);
					_Creature->Say("Feel free to trade this token in at your local store for a piece of T6 or Gladiator gear.", LANG_UNIVERSAL, NULL);
		        }
		        else
		        {
		            player->SendEquipError( msg, NULL, NULL );
		        }
			}
			else
			{
				_Creature->Yell(tokentext15, LANG_UNIVERSAL, NULL);
			}
	    }break;
		case 1438:
		{
			player->CLOSE_GOSSIP_MENU();
			if (player->HasItemCount(21140, 25) )
			{
				uint32 itemId = 31093;
				ItemPosCountVec dest;

				uint8 msg = player->CanStoreNewItem( NULL_BAG, NULL_SLOT, dest, itemId, 1, false );
		        if( msg == EQUIP_ERR_OK )
		        {
		            Item* item = player->StoreNewItem( dest, itemId, 1, true);
					player->DestroyItemCount(21140, 25, true);
					_Creature->Say("Feel free to trade this token in at your local store for a piece of T6 or Gladiator gear.", LANG_UNIVERSAL, NULL);
		        }
		        else
		        {
		            player->SendEquipError( msg, NULL, NULL );
		        }
			}
			else
			{
				_Creature->Yell(tokentext15, LANG_UNIVERSAL, NULL);
			}
	    }break;
		case 1439:
		{
			player->CLOSE_GOSSIP_MENU();
			if (player->HasItemCount(21140, 20) )
			{
				uint32 itemId = 34852;
				ItemPosCountVec dest;

				uint8 msg = player->CanStoreNewItem( NULL_BAG, NULL_SLOT, dest, itemId, 1, false );
		        if( msg == EQUIP_ERR_OK )
		        {
		            Item* item = player->StoreNewItem( dest, itemId, 1, true);
					player->DestroyItemCount(21140, 20, true);
					_Creature->Say("Feel free to trade this token in at your local store for a piece of T6 or Gladiator gear.", LANG_UNIVERSAL, NULL);
		        }
		        else
		        {
		            player->SendEquipError( msg, NULL, NULL );
		        }
			}
			else
			{
				_Creature->Yell(tokentext15, LANG_UNIVERSAL, NULL);
			}
	    }break;
		case 1440:
		{
			player->CLOSE_GOSSIP_MENU();
			if (player->HasItemCount(21140, 20) )
			{
				uint32 itemId = 34855;
				ItemPosCountVec dest;

				uint8 msg = player->CanStoreNewItem( NULL_BAG, NULL_SLOT, dest, itemId, 1, false );
		        if( msg == EQUIP_ERR_OK )
		        {
		            Item* item = player->StoreNewItem( dest, itemId, 1, true);
					player->DestroyItemCount(21140, 20, true);
					_Creature->Say("Feel free to trade this token in at your local store for a piece of T6 or Gladiator gear.", LANG_UNIVERSAL, NULL);
		        }
		        else
		        {
		            player->SendEquipError( msg, NULL, NULL );
		        }
			}
			else
			{
				_Creature->Yell(tokentext15, LANG_UNIVERSAL, NULL);
			}
	    }break;		
		case 1441:
		{
			player->CLOSE_GOSSIP_MENU();
			if (player->HasItemCount(21140, 25) )
			{
				uint32 itemId = 31099;
				ItemPosCountVec dest;

				uint8 msg = player->CanStoreNewItem( NULL_BAG, NULL_SLOT, dest, itemId, 1, false );
		        if( msg == EQUIP_ERR_OK )
		        {
		            Item* item = player->StoreNewItem( dest, itemId, 1, true);
					player->DestroyItemCount(21140, 25, true);
					_Creature->Say("Feel free to trade this token in at your local store for a piece of T6 or Gladiator gear.", LANG_UNIVERSAL, NULL);
		        }
		        else
		        {
		            player->SendEquipError( msg, NULL, NULL );
		        }
			}
			else
			{
				_Creature->Yell(tokentext15, LANG_UNIVERSAL, NULL);
			}
	    }break;
		case 1442:
		{
			player->CLOSE_GOSSIP_MENU();
			if (player->HasItemCount(21140, 20) )
			{
				uint32 itemId = 34858;
				ItemPosCountVec dest;

				uint8 msg = player->CanStoreNewItem( NULL_BAG, NULL_SLOT, dest, itemId, 1, false );
		        if( msg == EQUIP_ERR_OK )
		        {
		            Item* item = player->StoreNewItem( dest, itemId, 1, true);
					player->DestroyItemCount(21140, 20, true);
					_Creature->Say("Feel free to trade this token in at your local store for a piece of T6 or Gladiator gear.", LANG_UNIVERSAL, NULL);
		        }
		        else
		        {
		            player->SendEquipError( msg, NULL, NULL );
		        }
			}
			else
			{
				_Creature->Yell(tokentext15, LANG_UNIVERSAL, NULL);
			}
	    }break;
		case 1443: // hunter , mage, warlock
		{
			player->ADD_GOSSIP_ITEM( 3, "Helm of the Fallen Hero at the cost of 15 MGA Tokens"    , GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF+1444);
			player->ADD_GOSSIP_ITEM( 3, "Chestguard of the Fallen Hero at the cost of 15 MGA Tokens"    , GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF+1445);
			player->ADD_GOSSIP_ITEM( 3, "Pauldrons of the Fallen Hero at the cost of 15 MGA Tokens"    , GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF+1446);
			player->ADD_GOSSIP_ITEM( 3, "Gloves of the Fallen Hero at the cost of 15 MGA Tokens"    , GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF+1447);
			player->ADD_GOSSIP_ITEM( 3, "Leggings of the Fallen Hero at the cost of 15 MGA Tokens"    , GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF+1448);
			player->ADD_GOSSIP_ITEM( 1, "[Back]"    , GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF+1400);
			player->ADD_GOSSIP_ITEM( 1, "[Main Menu]"    , GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF+1);
			player->PlayerTalkClass->SendGossipMenu(907,_Creature->GetGUID());
			return;
			
		}break;
		case 1444:
		{
			player->CLOSE_GOSSIP_MENU();
			if (player->HasItemCount(21140, 15) )
			{
				uint32 itemId = 29759;
				ItemPosCountVec dest;

				uint8 msg = player->CanStoreNewItem( NULL_BAG, NULL_SLOT, dest, itemId, 1, false );
		        if( msg == EQUIP_ERR_OK )
		        {
		            Item* item = player->StoreNewItem( dest, itemId, 1, true);
					player->DestroyItemCount(21140, 15, true);
					_Creature->Say("Feel free to trade this token in at your local store for a piece of T4 or Gladiator gear.", LANG_UNIVERSAL, NULL);
		        }
		        else
		        {
		            player->SendEquipError( msg, NULL, NULL );
		        }
			}
			else
			{
				_Creature->Yell(tokentext15, LANG_UNIVERSAL, NULL);
			}
	    }break;
		case 1445:
		{
			player->CLOSE_GOSSIP_MENU();
			if (player->HasItemCount(21140, 15) )
			{
				uint32 itemId = 29755;
				ItemPosCountVec dest;

				uint8 msg = player->CanStoreNewItem( NULL_BAG, NULL_SLOT, dest, itemId, 1, false );
		        if( msg == EQUIP_ERR_OK )
		        {
		            Item* item = player->StoreNewItem( dest, itemId, 1, true);
					player->DestroyItemCount(21140, 15, true);
					_Creature->Say("Feel free to trade this token in at your local store for a piece of T4 or Gladiator gear.", LANG_UNIVERSAL, NULL);
		        }
		        else
		        {
		            player->SendEquipError( msg, NULL, NULL );
		        }
			}
			else
			{
				_Creature->Yell(tokentext15, LANG_UNIVERSAL, NULL);
			}
	    }break;
		case 1446:
		{
			player->CLOSE_GOSSIP_MENU();
			if (player->HasItemCount(21140, 15) )
			{
				uint32 itemId = 29762;
				ItemPosCountVec dest;

				uint8 msg = player->CanStoreNewItem( NULL_BAG, NULL_SLOT, dest, itemId, 1, false );
		        if( msg == EQUIP_ERR_OK )
		        {
		            Item* item = player->StoreNewItem( dest, itemId, 1, true);
					player->DestroyItemCount(21140, 15, true);
					_Creature->Say("Feel free to trade this token in at your local store for a piece of T4 or Gladiator gear.", LANG_UNIVERSAL, NULL);
		        }
		        else
		        {
		            player->SendEquipError( msg, NULL, NULL );
		        }
			}
			else
			{
				_Creature->Yell(tokentext15, LANG_UNIVERSAL, NULL);
			}
	    }break;
		case 1447:
		{
			player->CLOSE_GOSSIP_MENU();
			if (player->HasItemCount(21140, 15) )
			{
				uint32 itemId = 29756;
				ItemPosCountVec dest;

				uint8 msg = player->CanStoreNewItem( NULL_BAG, NULL_SLOT, dest, itemId, 1, false );
		        if( msg == EQUIP_ERR_OK )
		        {
		            Item* item = player->StoreNewItem( dest, itemId, 1, true);
					player->DestroyItemCount(21140, 15, true);
					_Creature->Say("Feel free to trade this token in at your local store for a piece of T4 or Gladiator gear.", LANG_UNIVERSAL, NULL);
		        }
		        else
		        {
		            player->SendEquipError( msg, NULL, NULL );
		        }
			}
			else
			{
				_Creature->Yell(tokentext15, LANG_UNIVERSAL, NULL);
			}
	    }break;
		case 1448:
		{
			player->CLOSE_GOSSIP_MENU();
			if (player->HasItemCount(21140, 15) )
			{
				uint32 itemId = 29765;
				ItemPosCountVec dest;

				uint8 msg = player->CanStoreNewItem( NULL_BAG, NULL_SLOT, dest, itemId, 1, false );
		        if( msg == EQUIP_ERR_OK )
		        {
		            Item* item = player->StoreNewItem( dest, itemId, 1, true);
					player->DestroyItemCount(21140, 15, true);
					_Creature->Say("Feel free to trade this token in at your local store for a piece of T4 or Gladiator gear.", LANG_UNIVERSAL, NULL);
		        }
		        else
		        {
		            player->SendEquipError( msg, NULL, NULL );
		        }
			}
			else
			{
				_Creature->Yell(tokentext15, LANG_UNIVERSAL, NULL);
			}
	    }break;
		case 1449: // hunter , mage, warlock
		{
			player->ADD_GOSSIP_ITEM( 3, "Helm of the Vanquished Hero at the cost of 20 MGA Tokens"    , GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF+1450);
			player->ADD_GOSSIP_ITEM( 3, "Chestguard of the Vanquished Hero at the cost of 20 MGA Tokens"    , GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF+1451);
			player->ADD_GOSSIP_ITEM( 3, "Pauldrons of the Vanquished Hero at the cost of 20 MGA Tokens"    , GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF+1452);
			player->ADD_GOSSIP_ITEM( 3, "Gloves of the Vanquished Hero at the cost of 20 MGA Tokens"    , GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF+1453);
			player->ADD_GOSSIP_ITEM( 3, "Leggings of the Vanquished Hero at the cost of 20 MGA Tokens"    , GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF+1454);
			player->ADD_GOSSIP_ITEM( 1, "[Back]"    , GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF+1400);
			player->ADD_GOSSIP_ITEM( 1, "[Main Menu]"    , GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF+1);
			player->PlayerTalkClass->SendGossipMenu(907,_Creature->GetGUID());
			return;
		
		}break;
		case 1450:
		{
			player->CLOSE_GOSSIP_MENU();
			if (player->HasItemCount(21140, 20) )
			{
				uint32 itemId = 30244;
				ItemPosCountVec dest;

				uint8 msg = player->CanStoreNewItem( NULL_BAG, NULL_SLOT, dest, itemId, 1, false );
		        if( msg == EQUIP_ERR_OK )
		        {
		            Item* item = player->StoreNewItem( dest, itemId, 1, true);
					player->DestroyItemCount(21140, 20, true);
					_Creature->Say("Feel free to trade this token in at your local store for a piece of T5 or Merciless Gladiator gear.", LANG_UNIVERSAL, NULL);
		        }
		        else
		        {
		            player->SendEquipError( msg, NULL, NULL );
		        }
			}
			else
			{
				_Creature->Yell(tokentext15, LANG_UNIVERSAL, NULL);
			}
	    }break;	
		case 1451:
		{
			player->CLOSE_GOSSIP_MENU();
			if (player->HasItemCount(21140, 20) )
			{
				uint32 itemId = 30238;
				ItemPosCountVec dest;

				uint8 msg = player->CanStoreNewItem( NULL_BAG, NULL_SLOT, dest, itemId, 1, false );
		        if( msg == EQUIP_ERR_OK )
		        {
		            Item* item = player->StoreNewItem( dest, itemId, 1, true);
					player->DestroyItemCount(21140, 20, true);
					_Creature->Say("Feel free to trade this token in at your local store for a piece of T5 or Merciless Gladiator gear.", LANG_UNIVERSAL, NULL);
		        }
		        else
		        {
		            player->SendEquipError( msg, NULL, NULL );
		        }
			}
			else
			{
				_Creature->Yell(tokentext15, LANG_UNIVERSAL, NULL);
			}
	    }break;	
		case 1452:
		{
			player->CLOSE_GOSSIP_MENU();
			if (player->HasItemCount(21140, 20) )
			{
				uint32 itemId = 30250;
				ItemPosCountVec dest;

				uint8 msg = player->CanStoreNewItem( NULL_BAG, NULL_SLOT, dest, itemId, 1, false );
		        if( msg == EQUIP_ERR_OK )
		        {
		            Item* item = player->StoreNewItem( dest, itemId, 1, true);
					player->DestroyItemCount(21140, 20, true);
					_Creature->Say("Feel free to trade this token in at your local store for a piece of T5 or Merciless Gladiator gear.", LANG_UNIVERSAL, NULL);
		        }
		        else
		        {
		            player->SendEquipError( msg, NULL, NULL );
		        }
			}
			else
			{
				_Creature->Yell(tokentext15, LANG_UNIVERSAL, NULL);
			}
	    }break;	
		case 1453:
		{
			player->CLOSE_GOSSIP_MENU();
			if (player->HasItemCount(21140, 20) )
			{
				uint32 itemId = 30241;
				ItemPosCountVec dest;

				uint8 msg = player->CanStoreNewItem( NULL_BAG, NULL_SLOT, dest, itemId, 1, false );
		        if( msg == EQUIP_ERR_OK )
		        {
		            Item* item = player->StoreNewItem( dest, itemId, 1, true);
					player->DestroyItemCount(21140, 20, true);
					_Creature->Say("Feel free to trade this token in at your local store for a piece of T5 or Merciless Gladiator gear.", LANG_UNIVERSAL, NULL);
		        }
		        else
		        {
		            player->SendEquipError( msg, NULL, NULL );
		        }
			}
			else
			{
				_Creature->Yell(tokentext15, LANG_UNIVERSAL, NULL);
			}
	    }break;	
		case 1454:
		{
			player->CLOSE_GOSSIP_MENU();
			if (player->HasItemCount(21140, 20) )
			{
				uint32 itemId = 30247;
				ItemPosCountVec dest;

				uint8 msg = player->CanStoreNewItem( NULL_BAG, NULL_SLOT, dest, itemId, 1, false );
		        if( msg == EQUIP_ERR_OK )
		        {
		            Item* item = player->StoreNewItem( dest, itemId, 1, true);
					player->DestroyItemCount(21140, 20, true);
					_Creature->Say("Feel free to trade this token in at your local store for a piece of T5 or Merciless Gladiator gear.", LANG_UNIVERSAL, NULL);
		        }
		        else
		        {
		            player->SendEquipError( msg, NULL, NULL );
		        }
			}
			else
			{
				_Creature->Yell(tokentext15, LANG_UNIVERSAL, NULL);
			}
	    }break;	
		case 1455: // hunter warriror shaman
		{
			player->ADD_GOSSIP_ITEM( 3, "Helm of the Forgotten Protector at the cost of 25 MGA Tokens"    , GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF+1456);
			player->ADD_GOSSIP_ITEM( 3, "Chestguard of the Forgotten Protector at the cost of 25 MGA Tokens"    , GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF+1457);
			player->ADD_GOSSIP_ITEM( 3, "Pauldrons of the Forgotten Protector at the cost of 25 MGA Tokens"    , GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF+1458);
			player->ADD_GOSSIP_ITEM( 3, "Gloves of the Forgotten Protector at the cost of 25 MGA Tokens"    , GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF+1459);
			player->ADD_GOSSIP_ITEM( 3, "Bracers of the Forgotten Protector at the cost of 20 MGA Tokens"    , GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF+1460);
			player->ADD_GOSSIP_ITEM( 3, "Belt of the Forgotten Protector at the cost of 20 MGA Tokens"    , GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF+1461);
			player->ADD_GOSSIP_ITEM( 3, "Leggings of the Forgotten Protector at the cost of 25 MGA Tokens"    , GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF+1462);
			player->ADD_GOSSIP_ITEM( 3, "Boots of the Forgotten Protector at the cost of 20 MGA Tokens"    , GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF+1463);
			player->ADD_GOSSIP_ITEM( 1, "[Back]"    , GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF+1400);
			player->ADD_GOSSIP_ITEM( 1, "[Main Menu]"    , GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF+1);
			player->PlayerTalkClass->SendGossipMenu(907,_Creature->GetGUID());
			return;
			
		}break;
		case 1456:
		{
			player->CLOSE_GOSSIP_MENU();
			if (player->HasItemCount(21140, 25) )
			{
				uint32 itemId = 31095;
				ItemPosCountVec dest;

				uint8 msg = player->CanStoreNewItem( NULL_BAG, NULL_SLOT, dest, itemId, 1, false );
		        if( msg == EQUIP_ERR_OK )
		        {
		            Item* item = player->StoreNewItem( dest, itemId, 1, true);
					player->DestroyItemCount(21140, 25, true);
					_Creature->Say("Feel free to trade this token in at your local store for a piece of T6 or Gladiator gear.", LANG_UNIVERSAL, NULL);
		        }
		        else
		        {
		            player->SendEquipError( msg, NULL, NULL );
		        }
			}
			else
			{
				_Creature->Yell(tokentext15, LANG_UNIVERSAL, NULL);
			}
	    }break;
		case 1457:
		{
			player->CLOSE_GOSSIP_MENU();
			if (player->HasItemCount(21140, 25) )
			{
				uint32 itemId = 31091;
				ItemPosCountVec dest;

				uint8 msg = player->CanStoreNewItem( NULL_BAG, NULL_SLOT, dest, itemId, 1, false );
		        if( msg == EQUIP_ERR_OK )
		        {
		            Item* item = player->StoreNewItem( dest, itemId, 1, true);
					player->DestroyItemCount(21140, 25, true);
					_Creature->Say("Feel free to trade this token in at your local store for a piece of T6 or Gladiator gear.", LANG_UNIVERSAL, NULL);
		        }
		        else
		        {
		            player->SendEquipError( msg, NULL, NULL );
		        }
			}
			else
			{
				_Creature->Yell(tokentext15, LANG_UNIVERSAL, NULL);
			}
	    }break;
		case 1458:
		{
			player->CLOSE_GOSSIP_MENU();
			if (player->HasItemCount(21140, 25) )
			{
				uint32 itemId = 31103;
				ItemPosCountVec dest;

				uint8 msg = player->CanStoreNewItem( NULL_BAG, NULL_SLOT, dest, itemId, 1, false );
		        if( msg == EQUIP_ERR_OK )
		        {
		            Item* item = player->StoreNewItem( dest, itemId, 1, true);
					player->DestroyItemCount(21140, 25, true);
					_Creature->Say("Feel free to trade this token in at your local store for a piece of T6 or Gladiator gear.", LANG_UNIVERSAL, NULL);
		        }
		        else
		        {
		            player->SendEquipError( msg, NULL, NULL );
		        }
			}
			else
			{
				_Creature->Yell(tokentext15, LANG_UNIVERSAL, NULL);
			}
	    }break;
		case 1459:
		{
			player->CLOSE_GOSSIP_MENU();
			if (player->HasItemCount(21140, 25) )
			{
				uint32 itemId = 31094;
				ItemPosCountVec dest;

				uint8 msg = player->CanStoreNewItem( NULL_BAG, NULL_SLOT, dest, itemId, 1, false );
		        if( msg == EQUIP_ERR_OK )
		        {
		            Item* item = player->StoreNewItem( dest, itemId, 1, true);
					player->DestroyItemCount(21140, 25, true);
					_Creature->Say("Feel free to trade this token in at your local store for a piece of T6 or Gladiator gear.", LANG_UNIVERSAL, NULL);
		        }
		        else
		        {
		            player->SendEquipError( msg, NULL, NULL );
		        }
			}
			else
			{
				_Creature->Yell(tokentext15, LANG_UNIVERSAL, NULL);
			}
	    }break;
		case 1460:
		{
			player->CLOSE_GOSSIP_MENU();
			if (player->HasItemCount(21140, 20) )
			{
				uint32 itemId = 34851;
				ItemPosCountVec dest;

				uint8 msg = player->CanStoreNewItem( NULL_BAG, NULL_SLOT, dest, itemId, 1, false );
		        if( msg == EQUIP_ERR_OK )
		        {
		            Item* item = player->StoreNewItem( dest, itemId, 1, true);
					player->DestroyItemCount(21140, 20, true);
					_Creature->Say("Feel free to trade this token in at your local store for a piece of T6 or Gladiator gear.", LANG_UNIVERSAL, NULL);
		        }
		        else
		        {
		            player->SendEquipError( msg, NULL, NULL );
		        }
			}
			else
			{
				_Creature->Yell(tokentext15, LANG_UNIVERSAL, NULL);
			}
	    }break;
		case 1461:
		{
			player->CLOSE_GOSSIP_MENU();
			if (player->HasItemCount(21140, 20) )
			{
				uint32 itemId = 34854;
				ItemPosCountVec dest;

				uint8 msg = player->CanStoreNewItem( NULL_BAG, NULL_SLOT, dest, itemId, 1, false );
		        if( msg == EQUIP_ERR_OK )
		        {
		            Item* item = player->StoreNewItem( dest, itemId, 1, true);
					player->DestroyItemCount(21140, 20, true);
					_Creature->Say("Feel free to trade this token in at your local store for a piece of T6 or Gladiator gear.", LANG_UNIVERSAL, NULL);
		        }
		        else
		        {
		            player->SendEquipError( msg, NULL, NULL );
		        }
			}
			else
			{
				_Creature->Yell(tokentext15, LANG_UNIVERSAL, NULL);
			}
	    }break;
		case 1462:
		{
			player->CLOSE_GOSSIP_MENU();
			if (player->HasItemCount(21140, 25) )
			{
				uint32 itemId = 31100;
				ItemPosCountVec dest;

				uint8 msg = player->CanStoreNewItem( NULL_BAG, NULL_SLOT, dest, itemId, 1, false );
		        if( msg == EQUIP_ERR_OK )
		        {
		            Item* item = player->StoreNewItem( dest, itemId, 1, true);
					player->DestroyItemCount(21140, 25, true);
					_Creature->Say("Feel free to trade this token in at your local store for a piece of T6 or Gladiator gear.", LANG_UNIVERSAL, NULL);
		        }
		        else
		        {
		            player->SendEquipError( msg, NULL, NULL );
		        }
			}
			else
			{
				_Creature->Yell(tokentext15, LANG_UNIVERSAL, NULL);
			}
	    }break;
		case 1463:
		{
			player->CLOSE_GOSSIP_MENU();
			if (player->HasItemCount(21140, 20) )
			{
				uint32 itemId = 34857;
				ItemPosCountVec dest;

				uint8 msg = player->CanStoreNewItem( NULL_BAG, NULL_SLOT, dest, itemId, 1, false );
		        if( msg == EQUIP_ERR_OK )
		        {
		            Item* item = player->StoreNewItem( dest, itemId, 1, true);
					player->DestroyItemCount(21140, 20, true);
					_Creature->Say("Feel free to trade this token in at your local store for a piece of T6 or Gladiator gear.", LANG_UNIVERSAL, NULL);
		        }
		        else
		        {
		            player->SendEquipError( msg, NULL, NULL );
		        }
			}
			else
			{
				_Creature->Yell(tokentext15, LANG_UNIVERSAL, NULL);
			}
	    }break;
		case 1464: //pally rogue shaman t4
		{
			player->ADD_GOSSIP_ITEM( 3, "Helm of the Fallen Champion at the cost of 15 MGA Tokens"    , GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF+1465);
			player->ADD_GOSSIP_ITEM( 3, "Chestguard of the Fallen Champion at the cost of 15 MGA Tokens"    , GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF+1466);
			player->ADD_GOSSIP_ITEM( 3, "Pauldrons of the Fallen Champion at the cost of 15 MGA Tokens"    , GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF+1467);
			player->ADD_GOSSIP_ITEM( 3, "Gloves of the Fallen Champion at the cost of 15 MGA Tokens"    , GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF+1468);
			player->ADD_GOSSIP_ITEM( 3, "Leggings of the Fallen Champion at the cost of 15 MGA Tokens"    , GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF+1469);
			player->ADD_GOSSIP_ITEM( 1, "[Back]"    , GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF+1400);
			player->ADD_GOSSIP_ITEM( 1, "[Main Menu]"    , GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF+1);
			player->PlayerTalkClass->SendGossipMenu(907,_Creature->GetGUID());
			return;
			
		}break;
		case 1465:
		{
			player->CLOSE_GOSSIP_MENU();
			if (player->HasItemCount(21140, 15) )
			{
				uint32 itemId = 29760;
				ItemPosCountVec dest;

				uint8 msg = player->CanStoreNewItem( NULL_BAG, NULL_SLOT, dest, itemId, 1, false );
		        if( msg == EQUIP_ERR_OK )
		        {
		            Item* item = player->StoreNewItem( dest, itemId, 1, true);
					player->DestroyItemCount(21140, 15, true);
					_Creature->Say("Feel free to trade this token in at your local store for a piece of T4 or Gladiator gear.", LANG_UNIVERSAL, NULL);
		        }
		        else
		        {
		            player->SendEquipError( msg, NULL, NULL );
		        }
			}
			else
			{
				_Creature->Yell(tokentext15, LANG_UNIVERSAL, NULL);
			}
	    }break;
		case 1466:
		{
			player->CLOSE_GOSSIP_MENU();
			if (player->HasItemCount(21140, 15) )
			{
				uint32 itemId = 29754;
				ItemPosCountVec dest;

				uint8 msg = player->CanStoreNewItem( NULL_BAG, NULL_SLOT, dest, itemId, 1, false );
		        if( msg == EQUIP_ERR_OK )
		        {
		            Item* item = player->StoreNewItem( dest, itemId, 1, true);
					player->DestroyItemCount(21140, 15, true);
					_Creature->Say("Feel free to trade this token in at your local store for a piece of T4 or Gladiator gear.", LANG_UNIVERSAL, NULL);
		        }
		        else
		        {
		            player->SendEquipError( msg, NULL, NULL );
		        }
			}
			else
			{
				_Creature->Yell(tokentext15, LANG_UNIVERSAL, NULL);
			}
	    }break;
		case 1467:
		{
			player->CLOSE_GOSSIP_MENU();
			if (player->HasItemCount(21140, 15) )
			{
				uint32 itemId = 29763;
				ItemPosCountVec dest;

				uint8 msg = player->CanStoreNewItem( NULL_BAG, NULL_SLOT, dest, itemId, 1, false );
		        if( msg == EQUIP_ERR_OK )
		        {
		            Item* item = player->StoreNewItem( dest, itemId, 1, true);
					player->DestroyItemCount(21140, 15, true);
					_Creature->Say("Feel free to trade this token in at your local store for a piece of T4 or Gladiator gear.", LANG_UNIVERSAL, NULL);
		        }
		        else
		        {
		            player->SendEquipError( msg, NULL, NULL );
		        }
			}
			else
			{
				_Creature->Yell(tokentext15, LANG_UNIVERSAL, NULL);
			}
	    }break;	
		case 1468:
		{
			player->CLOSE_GOSSIP_MENU();
			if (player->HasItemCount(21140, 15) )
			{
				uint32 itemId = 29757;
				ItemPosCountVec dest;

				uint8 msg = player->CanStoreNewItem( NULL_BAG, NULL_SLOT, dest, itemId, 1, false );
		        if( msg == EQUIP_ERR_OK )
		        {
		            Item* item = player->StoreNewItem( dest, itemId, 1, true);
					player->DestroyItemCount(21140, 15, true);
					_Creature->Say("Feel free to trade this token in at your local store for a piece of T4 or Gladiator gear.", LANG_UNIVERSAL, NULL);
		        }
		        else
		        {
		            player->SendEquipError( msg, NULL, NULL );
		        }
			}
			else
			{
				_Creature->Yell(tokentext15, LANG_UNIVERSAL, NULL);
			}
	    }break;
		case 1469:
		{
			player->CLOSE_GOSSIP_MENU();
			if (player->HasItemCount(21140, 15) )
			{
				uint32 itemId = 29766;
				ItemPosCountVec dest;

				uint8 msg = player->CanStoreNewItem( NULL_BAG, NULL_SLOT, dest, itemId, 1, false );
		        if( msg == EQUIP_ERR_OK )
		        {
		            Item* item = player->StoreNewItem( dest, itemId, 1, true);
					player->DestroyItemCount(21140, 15, true);
					_Creature->Say("Feel free to trade this token in at your local store for a piece of T4 or Gladiator gear.", LANG_UNIVERSAL, NULL);
		        }
		        else
		        {
		            player->SendEquipError( msg, NULL, NULL );
		        }
			}
			else
			{
				_Creature->Yell(tokentext15, LANG_UNIVERSAL, NULL);
			}
	    }break;
		case 1470: //pally rogue shaman t5
		{
			player->ADD_GOSSIP_ITEM( 3, "Helm of the Vanquished Champion at the cost of 20 MGA Tokens"    , GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF+1471);
			player->ADD_GOSSIP_ITEM( 3, "Chestguard of the Vanquished Champion at the cost of 20 MGA Tokens"    , GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF+1472);
			player->ADD_GOSSIP_ITEM( 3, "Pauldrons of the Vanquished Champion at the cost of 20 MGA Tokens"    , GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF+1473);
			player->ADD_GOSSIP_ITEM( 3, "Gloves of the Vanquished Champion at the cost of 20 MGA Tokens"    , GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF+1474);
			player->ADD_GOSSIP_ITEM( 3, "Leggings of the Vanquished Champion at the cost of 20 MGA Tokens"    , GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF+1475);
			player->ADD_GOSSIP_ITEM( 1, "[Back]"    , GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF+1400);
			player->ADD_GOSSIP_ITEM( 1, "[Main Menu]"    , GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF+1);
			player->PlayerTalkClass->SendGossipMenu(907,_Creature->GetGUID());
			return;
			
		}break;
		case 1471:
		{
			player->CLOSE_GOSSIP_MENU();
			if (player->HasItemCount(21140, 20) )
			{
				uint32 itemId = 30242;
				ItemPosCountVec dest;

				uint8 msg = player->CanStoreNewItem( NULL_BAG, NULL_SLOT, dest, itemId, 1, false );
		        if( msg == EQUIP_ERR_OK )
		        {
		            Item* item = player->StoreNewItem( dest, itemId, 1, true);
					player->DestroyItemCount(21140, 20, true);
					_Creature->Say("Feel free to trade this token in at your local store for a piece of T5 or Merciless Gladiator gear.", LANG_UNIVERSAL, NULL);
		        }
		        else
		        {
		            player->SendEquipError( msg, NULL, NULL );
		        }
			}
			else
			{
				_Creature->Yell(tokentext15, LANG_UNIVERSAL, NULL);
			}
	    }break;
		case 1472:
		{
			player->CLOSE_GOSSIP_MENU();
			if (player->HasItemCount(21140, 20) )
			{
				uint32 itemId = 30236;
				ItemPosCountVec dest;

				uint8 msg = player->CanStoreNewItem( NULL_BAG, NULL_SLOT, dest, itemId, 1, false );
		        if( msg == EQUIP_ERR_OK )
		        {
		            Item* item = player->StoreNewItem( dest, itemId, 1, true);
					player->DestroyItemCount(21140, 20, true);
					_Creature->Say("Feel free to trade this token in at your local store for a piece of T5 or Merciless Gladiator gear.", LANG_UNIVERSAL, NULL);
		        }
		        else
		        {
		            player->SendEquipError( msg, NULL, NULL );
		        }
			}
			else
			{
				_Creature->Yell(tokentext15, LANG_UNIVERSAL, NULL);
			}
	    }break;
		case 1473:
		{
			player->CLOSE_GOSSIP_MENU();
			if (player->HasItemCount(21140, 20) )
			{
				uint32 itemId = 30248;
				ItemPosCountVec dest;

				uint8 msg = player->CanStoreNewItem( NULL_BAG, NULL_SLOT, dest, itemId, 1, false );
		        if( msg == EQUIP_ERR_OK )
		        {
		            Item* item = player->StoreNewItem( dest, itemId, 1, true);
					player->DestroyItemCount(21140, 20, true);
					_Creature->Say("Feel free to trade this token in at your local store for a piece of T5 or Merciless Gladiator gear.", LANG_UNIVERSAL, NULL);
		        }
		        else
		        {
		            player->SendEquipError( msg, NULL, NULL );
		        }
			}
			else
			{
				_Creature->Yell(tokentext15, LANG_UNIVERSAL, NULL);
			}
	    }break;
		case 1474:
		{
			player->CLOSE_GOSSIP_MENU();
			if (player->HasItemCount(21140, 20) )
			{
				uint32 itemId = 30239;
				ItemPosCountVec dest;

				uint8 msg = player->CanStoreNewItem( NULL_BAG, NULL_SLOT, dest, itemId, 1, false );
		        if( msg == EQUIP_ERR_OK )
		        {
		            Item* item = player->StoreNewItem( dest, itemId, 1, true);
					player->DestroyItemCount(21140, 20, true);
					_Creature->Say("Feel free to trade this token in at your local store for a piece of T5 or Merciless Gladiator gear.", LANG_UNIVERSAL, NULL);
		        }
		        else
		        {
		            player->SendEquipError( msg, NULL, NULL );
		        }
			}
			else
			{
				_Creature->Yell(tokentext15, LANG_UNIVERSAL, NULL);
			}
	    }break;
		case 1475:
		{
			player->CLOSE_GOSSIP_MENU();
			if (player->HasItemCount(21140, 20) )
			{
				uint32 itemId = 30245;
				ItemPosCountVec dest;

				uint8 msg = player->CanStoreNewItem( NULL_BAG, NULL_SLOT, dest, itemId, 1, false );
		        if( msg == EQUIP_ERR_OK )
		        {
		            Item* item = player->StoreNewItem( dest, itemId, 1, true);
					player->DestroyItemCount(21140, 20, true);
					_Creature->Say("Feel free to trade this token in at your local store for a piece of T5 or Merciless Gladiator gear.", LANG_UNIVERSAL, NULL);
		        }
		        else
		        {
		            player->SendEquipError( msg, NULL, NULL );
		        }
			}
			else
			{
				_Creature->Yell(tokentext15, LANG_UNIVERSAL, NULL);
			}
	    }break;
		case 1476:
		{
			player->ADD_GOSSIP_ITEM( 3, "Helm of the Forgotten Conqueror at the cost of 25 MGA Tokens"    , GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF+1477);
			player->ADD_GOSSIP_ITEM( 3, "Chestguard of the Forgotten Conqueror at the cost of 25 MGA Tokens"    , GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF+1478);
			player->ADD_GOSSIP_ITEM( 3, "Pauldrons of the Forgotten Conqueror at the cost of 25 MGA Tokens"    , GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF+1479);
			player->ADD_GOSSIP_ITEM( 3, "Gloves of the Forgotten Conqueror at the cost of 25 MGA Tokens"    , GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF+1480);
			player->ADD_GOSSIP_ITEM( 3, "Bracers of the Forgotten Conqueror at the cost of 20 MGA Tokens"    , GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF+1481);
			player->ADD_GOSSIP_ITEM( 3, "Belt of the Forgotten Conqueror at the cost of 20 MGA Tokens"    , GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF+1482);
			player->ADD_GOSSIP_ITEM( 3, "Leggings of the Forgotten Conqueror at the cost of 25 MGA Tokens"    , GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF+1483);
			player->ADD_GOSSIP_ITEM( 3, "Boots of the Forgotten Conqueror at the cost of 20 MGA Tokens"    , GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF+1484);
			player->ADD_GOSSIP_ITEM( 1, "[Main Menu]"    , GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF+1);
			player->PlayerTalkClass->SendGossipMenu(907,_Creature->GetGUID());
			return;
			
		}break;
		case 1477:
		{
			player->CLOSE_GOSSIP_MENU();
			if (player->HasItemCount(21140, 25) )
			{
				uint32 itemId = 31097;
				ItemPosCountVec dest;

				uint8 msg = player->CanStoreNewItem( NULL_BAG, NULL_SLOT, dest, itemId, 1, false );
		        if( msg == EQUIP_ERR_OK )
		        {
		            Item* item = player->StoreNewItem( dest, itemId, 1, true);
					player->DestroyItemCount(21140, 25, true);
					_Creature->Say("Feel free to trade this token in at your local store for a piece of T6 or Gladiator gear.", LANG_UNIVERSAL, NULL);
		        }
		        else
		        {
		            player->SendEquipError( msg, NULL, NULL );
		        }
			}
			else
			{
				_Creature->Yell(tokentext15, LANG_UNIVERSAL, NULL);
			}
	    }break;
		case 1478:
		{
			player->CLOSE_GOSSIP_MENU();
			if (player->HasItemCount(21140, 25) )
			{
				uint32 itemId = 31089;
				ItemPosCountVec dest;

				uint8 msg = player->CanStoreNewItem( NULL_BAG, NULL_SLOT, dest, itemId, 1, false );
		        if( msg == EQUIP_ERR_OK )
		        {
		            Item* item = player->StoreNewItem( dest, itemId, 1, true);
					player->DestroyItemCount(21140, 25, true);
					_Creature->Say("Feel free to trade this token in at your local store for a piece of T6 or Gladiator gear.", LANG_UNIVERSAL, NULL);
		        }
		        else
		        {
		            player->SendEquipError( msg, NULL, NULL );
		        }
			}
			else
			{
				_Creature->Yell(tokentext15, LANG_UNIVERSAL, NULL);
			}
	    }break;
		case 1479:
		{
			player->CLOSE_GOSSIP_MENU();
			if (player->HasItemCount(21140, 25) )
			{
				uint32 itemId = 31101;
				ItemPosCountVec dest;

				uint8 msg = player->CanStoreNewItem( NULL_BAG, NULL_SLOT, dest, itemId, 1, false );
		        if( msg == EQUIP_ERR_OK )
		        {
		            Item* item = player->StoreNewItem( dest, itemId, 1, true);
					player->DestroyItemCount(21140, 25, true);
					_Creature->Say("Feel free to trade this token in at your local store for a piece of T6 or Gladiator gear.", LANG_UNIVERSAL, NULL);
		        }
		        else
		        {
		            player->SendEquipError( msg, NULL, NULL );
		        }
			}
			else
			{
				_Creature->Yell(tokentext15, LANG_UNIVERSAL, NULL);
			}
	    }break;
		case 1480:
		{
			player->CLOSE_GOSSIP_MENU();
			if (player->HasItemCount(21140, 25) )
			{
				uint32 itemId = 31092;
				ItemPosCountVec dest;

				uint8 msg = player->CanStoreNewItem( NULL_BAG, NULL_SLOT, dest, itemId, 1, false );
		        if( msg == EQUIP_ERR_OK )
		        {
		            Item* item = player->StoreNewItem( dest, itemId, 1, true);
					player->DestroyItemCount(21140, 25, true);
					_Creature->Say("Feel free to trade this token in at your local store for a piece of T6 or Gladiator gear.", LANG_UNIVERSAL, NULL);
		        }
		        else
		        {
		            player->SendEquipError( msg, NULL, NULL );
		        }
			}
			else
			{
				_Creature->Yell(tokentext15, LANG_UNIVERSAL, NULL);
			}
	    }break;
		case 1481:
		{
			player->CLOSE_GOSSIP_MENU();
			if (player->HasItemCount(21140, 20) )
			{
				uint32 itemId = 34848;
				ItemPosCountVec dest;

				uint8 msg = player->CanStoreNewItem( NULL_BAG, NULL_SLOT, dest, itemId, 1, false );
		        if( msg == EQUIP_ERR_OK )
		        {
		            Item* item = player->StoreNewItem( dest, itemId, 1, true);
					player->DestroyItemCount(21140, 20, true);
					_Creature->Say("Feel free to trade this token in at your local store for a piece of T6 or Gladiator gear.", LANG_UNIVERSAL, NULL);
		        }
		        else
		        {

		            player->SendEquipError( msg, NULL, NULL );
		        }
			}
			else
			{
				_Creature->Yell(tokentext15, LANG_UNIVERSAL, NULL);
			}
	    }break;
		case 1482:
		{
			player->CLOSE_GOSSIP_MENU();
			if (player->HasItemCount(21140, 20) )
			{
				uint32 itemId = 34853;
				ItemPosCountVec dest;

				uint8 msg = player->CanStoreNewItem( NULL_BAG, NULL_SLOT, dest, itemId, 1, false );
		        if( msg == EQUIP_ERR_OK )
		        {
		            Item* item = player->StoreNewItem( dest, itemId, 1, true);
					player->DestroyItemCount(21140, 20, true);
					_Creature->Say("Feel free to trade this token in at your local store for a piece of T6 or Gladiator gear.", LANG_UNIVERSAL, NULL);
		        }
		        else
		        {
		            player->SendEquipError( msg, NULL, NULL );
		        }
			}
			else
			{
				_Creature->Yell(tokentext15, LANG_UNIVERSAL, NULL);
			}
	    }break;
		case 1483:
		{
			player->CLOSE_GOSSIP_MENU();
			if (player->HasItemCount(21140, 25) )
			{
				uint32 itemId = 31098;
				ItemPosCountVec dest;

				uint8 msg = player->CanStoreNewItem( NULL_BAG, NULL_SLOT, dest, itemId, 1, false );
		        if( msg == EQUIP_ERR_OK )
		        {
		            Item* item = player->StoreNewItem( dest, itemId, 1, true);
					player->DestroyItemCount(21140, 25, true);
					_Creature->Say("Feel free to trade this token in at your local store for a piece of T6 or Gladiator gear.", LANG_UNIVERSAL, NULL);
		        }
		        else
		        {
		            player->SendEquipError( msg, NULL, NULL );
		        }
			}
			else
			{
				_Creature->Yell(tokentext15, LANG_UNIVERSAL, NULL);
			}
	    }break;
		case 1484:
		{
			player->CLOSE_GOSSIP_MENU();
			if (player->HasItemCount(21140, 20) )
			{
				uint32 itemId = 34856;
				ItemPosCountVec dest;

				uint8 msg = player->CanStoreNewItem( NULL_BAG, NULL_SLOT, dest, itemId, 1, false );
		        if( msg == EQUIP_ERR_OK )
		        {
		            Item* item = player->StoreNewItem( dest, itemId, 1, true);
					player->DestroyItemCount(21140, 20, true);
					_Creature->Say("Feel free to trade this token in at your local store for a piece of T6 or Gladiator gear.", LANG_UNIVERSAL, NULL);
		        }
		        else
		        {
		            player->SendEquipError( msg, NULL, NULL );
		        }
			}
			else
			{
				_Creature->Yell(tokentext15, LANG_UNIVERSAL, NULL);
			}
	    }break;*/
		case 1500:
		{
			player->ADD_GOSSIP_ITEM( 1, "Aldor Reputation Tokens"    , GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF+1501);
			player->ADD_GOSSIP_ITEM( 1, "Scryers Reputation Tokens"    , GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF+1502);
			player->ADD_GOSSIP_ITEM( 1, "Honor Hold Reputation Tokens"    , GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF+1550);
			player->ADD_GOSSIP_ITEM( 1, "Thrallmar Reputation Tokens"    , GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF+1551);
			player->ADD_GOSSIP_ITEM( 1, "[Back]"    , GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF+1);
			player->PlayerTalkClass->SendGossipMenu(907,_Creature->GetGUID());

		    return true;
		}break;
		case 1501: // aldor
		{
			player->ADD_GOSSIP_ITEM( 1, "1 Mark of Sargeras at the cost of 1 Mini Token"    , GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF+1510);
			player->ADD_GOSSIP_ITEM( 1, "10 Marks of Sargeras at the cost of 10 Mini Tokens"    , GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF+1511);
			player->ADD_GOSSIP_ITEM( 1, "1 Fel Armament at the cost of 4 Mini Tokens"    , GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF+1512);
			player->ADD_GOSSIP_ITEM( 1, "10 Fel Armament at the cost of 40 Mini Tokens"    , GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF+1513);
			player->ADD_GOSSIP_ITEM( 1, "[Back]"    , GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF+1500);
			player->ADD_GOSSIP_ITEM( 1, "[Main Menu]"    , GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF+1);
			player->PlayerTalkClass->SendGossipMenu(907,_Creature->GetGUID());

		    return true;
		}break;
		case 1502: // scryers
		{
			player->ADD_GOSSIP_ITEM( 1, "1 Sunfury Signet at the cost of 1 Mini Token"    , GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF+1514);
			player->ADD_GOSSIP_ITEM( 1, "10 Sunfury Signets at the cost of 10 Mini Tokens"    , GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF+1515);
			player->ADD_GOSSIP_ITEM( 1, "1 Arcane Tome at the cost of 4 Mini Tokens"    , GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF+1516);
			player->ADD_GOSSIP_ITEM( 1, "10 Arcane Tomes at the cost of 40 Mini Tokens"    , GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF+1517);
			player->ADD_GOSSIP_ITEM( 1, "[Back]"    , GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF+1500);
			player->ADD_GOSSIP_ITEM( 1, "[Main Menu]"    , GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF+1);
			player->PlayerTalkClass->SendGossipMenu(907,_Creature->GetGUID());
		    return true;
		}break;
		case 1510:
		{
			player->CLOSE_GOSSIP_MENU();
			if (player->HasItemCount(18154, 1) )
			{
				uint32 itemId = 30809;
				ItemPosCountVec dest;

				uint8 msg = player->CanStoreNewItem( NULL_BAG, NULL_SLOT, dest, itemId, 1);
		        if( msg == EQUIP_ERR_OK )
		        {
		            Item* item = player->StoreNewItem( dest, itemId, 1, true);
					player->DestroyItemCount(18154, 1, true);
					_Creature->Say(tokentext14, LANG_UNIVERSAL, NULL);
		        }
		        else
		        {
		            player->SendEquipError( msg, NULL, NULL, itemId );
		        }
			}
			else
			{
				_Creature->Yell(tokentext15, LANG_UNIVERSAL, NULL);
			}
	    }break;
		case 1511:
		{
			player->CLOSE_GOSSIP_MENU();
			if (player->HasItemCount(18154, 10) )
			{
				uint32 itemId = 30809;
				ItemPosCountVec dest;

				uint8 msg = player->CanStoreNewItem( NULL_BAG, NULL_SLOT, dest, itemId, 10, false );
		        if( msg == EQUIP_ERR_OK )
		        {
		            Item* item = player->StoreNewItem( dest, itemId, 1, true);
					player->DestroyItemCount(18154, 10, true);
					_Creature->Say(tokentext14, LANG_UNIVERSAL, NULL);
		        }
		        else
		        {
		            player->SendEquipError( msg, NULL, NULL );
		        }
			}
			else
			{
				_Creature->Yell(tokentext15, LANG_UNIVERSAL, NULL);
			}
	    }break;
		case 1512:
		{
			player->CLOSE_GOSSIP_MENU();
			if (player->HasItemCount(18154, 4) )
			{
				uint32 itemId = 29740;
				ItemPosCountVec dest;

				uint8 msg = player->CanStoreNewItem( NULL_BAG, NULL_SLOT, dest, itemId, 1, false );
		        if( msg == EQUIP_ERR_OK )
		        {
		            Item* item = player->StoreNewItem( dest, itemId, 1, true);
					player->DestroyItemCount(18154, 4, true);
					_Creature->Say(tokentext14, LANG_UNIVERSAL, NULL);
		        }
		        else
		        {
		            player->SendEquipError( msg, NULL, NULL );
		        }
			}
			else
			{
				_Creature->Yell(tokentext15, LANG_UNIVERSAL, NULL);
			}
	    }break;
		case 1513:
		{
			player->CLOSE_GOSSIP_MENU();
			if (player->HasItemCount(18154, 40) )
			{
				uint32 itemId = 29740;
				ItemPosCountVec dest;

				uint8 msg = player->CanStoreNewItem( NULL_BAG, NULL_SLOT, dest, itemId, 10, false );
		        if( msg == EQUIP_ERR_OK )
		        {
		            Item* item = player->StoreNewItem( dest, itemId, 1, true);
					player->DestroyItemCount(18154, 40, true);
					_Creature->Say(tokentext14, LANG_UNIVERSAL, NULL);
		        }
		        else
		        {
		            player->SendEquipError( msg, NULL, NULL );
		        }
			}
			else
			{
				_Creature->Yell(tokentext15, LANG_UNIVERSAL, NULL);
			}
	    }break;
		case 1514:
		{
			player->CLOSE_GOSSIP_MENU();
			if (player->HasItemCount(18154, 1) )
			{
				uint32 itemId = 30810;
				ItemPosCountVec dest;

				uint8 msg = player->CanStoreNewItem( NULL_BAG, NULL_SLOT, dest, itemId, 1, false );
		        if( msg == EQUIP_ERR_OK )
		        {
		            Item* item = player->StoreNewItem( dest, itemId, 1, true);
					player->DestroyItemCount(18154, 1, true);
					_Creature->Say(tokentext16, LANG_UNIVERSAL, NULL);
		        }
		        else
		        {
		            player->SendEquipError( msg, NULL, NULL );
		        }
			}
			else
			{
				_Creature->Yell(tokentext15, LANG_UNIVERSAL, NULL);
			}
	    }break;
		case 1515:
		{
			player->CLOSE_GOSSIP_MENU();
			if (player->HasItemCount(18154, 10) )
			{
				uint32 itemId = 30810;
				ItemPosCountVec dest;

				uint8 msg = player->CanStoreNewItem( NULL_BAG, NULL_SLOT, dest, itemId, 10, false );
		        if( msg == EQUIP_ERR_OK )
		        {
		            Item* item = player->StoreNewItem( dest, itemId, 1, true);
					player->DestroyItemCount(18154, 10, true);
					_Creature->Say(tokentext16, LANG_UNIVERSAL, NULL);
		        }
		        else
		        {
		            player->SendEquipError( msg, NULL, NULL );
		        }
			}
			else
			{
				_Creature->Yell(tokentext15, LANG_UNIVERSAL, NULL);
			}
	    }break;
		case 1516:
		{
			player->CLOSE_GOSSIP_MENU();
			if (player->HasItemCount(18154, 4) )
			{
				uint32 itemId = 29739;
				ItemPosCountVec dest;

				uint8 msg = player->CanStoreNewItem( NULL_BAG, NULL_SLOT, dest, itemId, 1, false );
		        if( msg == EQUIP_ERR_OK )
		        {
		            Item* item = player->StoreNewItem( dest, itemId, 1, true);
					player->DestroyItemCount(18154, 4, true);
					_Creature->Say(tokentext16, LANG_UNIVERSAL, NULL);
		        }
		        else
		        {
		            player->SendEquipError( msg, NULL, NULL );
		        }
			}
			else
			{
				_Creature->Yell(tokentext15, LANG_UNIVERSAL, NULL);
			}
	    }break;
		case 1517:
		{
			player->CLOSE_GOSSIP_MENU();
			if (player->HasItemCount(18154, 40) )
			{
				uint32 itemId = 29739;
				ItemPosCountVec dest;

				uint8 msg = player->CanStoreNewItem( NULL_BAG, NULL_SLOT, dest, itemId, 10, false );
		        if( msg == EQUIP_ERR_OK )
		        {
		            Item* item = player->StoreNewItem( dest, itemId, 1, true);
					player->DestroyItemCount(18154, 40, true);
					_Creature->Say(tokentext16, LANG_UNIVERSAL, NULL);
		        }
		        else
		        {
		            player->SendEquipError( msg, NULL, NULL );
		        }
			}
			else
			{
				_Creature->Yell(tokentext15, LANG_UNIVERSAL, NULL);
			}
	    }break;
		case 1550:
		{
			player->ADD_GOSSIP_ITEM( 1, "5 Marks of Honor Hold at the cost of 1 MGA Token"    , GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF+1552);
			player->ADD_GOSSIP_ITEM( 1, "[Back]"    , GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF+1500);
			player->ADD_GOSSIP_ITEM( 1, "[Main Menu]"    , GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF+1);
			player->PlayerTalkClass->SendGossipMenu(907,_Creature->GetGUID());

		    return true;
		}break;
		case 1551:
		{
			player->ADD_GOSSIP_ITEM( 1, "5 Marks of Thrallmar at the cost of 1 MGA Token"    , GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF+1553);
			player->ADD_GOSSIP_ITEM( 1, "[Back]"    , GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF+1500);
			player->ADD_GOSSIP_ITEM( 1, "[Main Menu]"    , GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF+1);
			player->PlayerTalkClass->SendGossipMenu(907,_Creature->GetGUID());

		    return true;
		}break;
		case 1552:
		{
			player->CLOSE_GOSSIP_MENU();
			if (player->HasItemCount(21140, 1) )
			{
				uint32 itemId = 24579;
				ItemPosCountVec dest;

				uint8 msg = player->CanStoreNewItem( NULL_BAG, NULL_SLOT, dest, itemId, 5, false );
		        if( msg == EQUIP_ERR_OK )
		        {
		            Item* item = player->StoreNewItem( dest, itemId, 1, true);
					player->DestroyItemCount(21140, 1, true);
					_Creature->Say(tokentext17, LANG_UNIVERSAL, NULL);
		        }
		        else
		        {
		            player->SendEquipError( msg, NULL, NULL );
		        }
			}
			else
			{
				_Creature->Yell(tokentext15, LANG_UNIVERSAL, NULL);
			}
	    }break;
		case 1553:
		{
			player->CLOSE_GOSSIP_MENU();
			if (player->HasItemCount(21140, 1) )
			{
				uint32 itemId = 24581;
				ItemPosCountVec dest;

				uint8 msg = player->CanStoreNewItem( NULL_BAG, NULL_SLOT, dest, itemId, 5, false );
		        if( msg == EQUIP_ERR_OK )
		        {
		            Item* item = player->StoreNewItem( dest, itemId, 1, true);
					player->DestroyItemCount(21140, 1, true);
					_Creature->Say(tokentext18, LANG_UNIVERSAL, NULL);
		        }
		        else
		        {
		            player->SendEquipError( msg, NULL, NULL );
		        }
			}
			else
			{
				_Creature->Yell(tokentext15, LANG_UNIVERSAL, NULL);
			} 
	    }break;
		
		
}
return true;
}

/*******************************************************
 *				End of GOSSIP_MENU
 *******************************************************/
/*
bool GossipSelect_npc_gm_token_shop(Player *player, Creature *_Creature, uint32

sender, uint32 action )

{
// Main menu
if (sender == GOSSIP_SENDER_MAIN)
SendDefaultMenu_npc_gm_token_shop(player, _Creature, action   );

return true;

}
*/
};

void AddSC_npc_gm_token_shopAI()
{
new npc_gm_token_shop;
}