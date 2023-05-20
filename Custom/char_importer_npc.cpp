#include "ScriptPCH.h"
#include "AchievementMgr.h"
#include "Database/DatabaseEnv.h"
#include "../ArkChat/IRCClient.h"

//errors & warning messages
#define importtext1 -1700018
#define importtext2 -1700019
#define importtext3 -1700020
//Success message
#define importtext4 -1700021
#define importtext5 -1700022
#define importtext6 -1700023
#define importtext7 -1700024
#define importtext8 -1700025
#define importtext9 -1700035

//extern DatabaseType WorldDatabase;
int16 oldlvl;

//menu items
#define _MENU_NULL1_ "Not in system, if you think you should be, speak to a Gamemaster"
#define _MENU_PH1_ "Money, Level and Bags"
#define _MENU_PH2_ "Furious Gladiator's armor set - MAKE ROOM!"
#define _MENU_PH2a_ "Dungeon 2 armor set - MAKE ROOM!"
#define _MENU_PH3_ "First Profession"
#define _MENU_PH4_ "Second Profession"
#define _MENU_PH5a_ "I will unlearn my profession manually and talk to you again to repeat this step. Doing this, I will lose all recipes I gathered."
#define _MENU_PH5b_ "I want to skip this step, I already have my profession set up."

#define ERROR1 "OH CRAP SOME ERROR!! Tell a GM please!!"

#define ERROR2 "Free level 80s are just for Allaince right now, sorry.."
#define ERROR3 "Free level 80s are just for Horde right now, sorry.."

#define _ALCH_ "Alchemy"
#define _BLAK_ "Blacksmithing"
#define _ENCH_ "Enchanting"
#define _ENGI_ "Engineering"
#define _HERB_ "Herbalism"
#define _JEWE_ "Jewelcrafting"
#define _LEWO_ "Leatherworking"
#define _MINI_ "Mining"
#define _SKIN_ "Skinning"
#define _TAIL_ "Tailoring"
#define _INSC_ "Inscription"


class mga_guild_shopone : public CreatureScript
{
	public:
    mga_guild_shopone() : CreatureScript("mga_guild_shopone") { }


bool UpdateCharData(Player *player, int16 status)
{
    WorldDatabase.PExecute("UPDATE `guild_transfer` SET `status` = '%d' WHERE `name1` = '%s'", status, std::string(player->GetName()).c_str());
    return true;
}

bool OnGossipHello(Player *player, Creature *_Creature)
{
    QueryResult result2;
	result2 = WorldDatabase.PQuery("SELECT * FROM `free80limit`");
	if(!result2)
	{
		player->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, ERROR1, GOSSIP_SENDER_MAIN, 5000);
		player->PlayerTalkClass->SendGossipMenu(907,_Creature->GetGUID());
		return true;
	}
	Field *fields2 = result2->Fetch();
	int16 allowedfree80 = fields2[0].GetInt16();
	
	if (allowedfree80 == 0 && player->GetTeamId() == TEAM_HORDE)
	{
		player->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, ERROR2, GOSSIP_SENDER_MAIN, 5000);
		player->PlayerTalkClass->SendGossipMenu(907,_Creature->GetGUID());
		return true;
	}
	
	if (allowedfree80 == 1 && player->GetTeamId() == TEAM_ALLIANCE)
	{
		player->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, ERROR3, GOSSIP_SENDER_MAIN, 5000);
		player->PlayerTalkClass->SendGossipMenu(907,_Creature->GetGUID());
		return true;
	}
	
	
	QueryResult result;
    result = WorldDatabase.PQuery("SELECT * FROM `guild_transfer` WHERE `name1` = '%s' AND `duplicate` = '0' AND `status` < '7'", std::string(player->GetName()).c_str());
    if(!result)
    {
        player->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, _MENU_NULL1_, GOSSIP_SENDER_MAIN, 5000);
		//_Creature->Whisper(importtext1, player->GetGUID(), false);
        //player->CLOSE_GOSSIP_MENU();
		player->PlayerTalkClass->SendGossipMenu(907,_Creature->GetGUID());
        return true;
    }

    Field *fields = result->Fetch();
    int16 status = fields[3].GetInt16();
	oldlvl = fields[5].GetInt16();
    //delete result;

	if(status == 0)
		player->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, _MENU_PH1_, GOSSIP_SENDER_MAIN, 11);
	
	if(status == 1)
	{
		if(oldlvl > 79)
			player->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, _MENU_PH2_, GOSSIP_SENDER_MAIN, 21);
        if(oldlvl > 69 && oldlvl < 80)
			player->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, _MENU_PH2a_, GOSSIP_SENDER_MAIN, 22);
		if(oldlvl > 19 && oldlvl < 70)
			player->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, _MENU_PH3_, GOSSIP_SENDER_MAIN, 31);
	}
	
	if(status == 2 && oldlvl > 69)
		player->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, _MENU_PH3_, GOSSIP_SENDER_MAIN, 31);
	
	if(status == 3 && oldlvl > 19)
		player->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, _MENU_PH4_, GOSSIP_SENDER_MAIN, 41);

    if(status == 5)
    {
        player->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, _MENU_PH5a_, GOSSIP_SENDER_MAIN, 31);
        player->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, _MENU_PH5b_, GOSSIP_SENDER_MAIN, 41);

    }
    if(status == 6)
    {
        player->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, _MENU_PH5a_, GOSSIP_SENDER_MAIN, 41);
        player->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, _MENU_PH5b_, GOSSIP_SENDER_MAIN, 51);
    }

    player->PlayerTalkClass->SendGossipMenu(907,_Creature->GetGUID());
    return true;
}

bool OnGossipSelect(Player *player, Creature *_Creature, uint32 sender, uint32 action)
{
			
	player->PlayerTalkClass->ClearMenus();
			//											alc, bls, ech, eng, hrb, jew, lwk, min, ski, tai, ins
            //static const unsigned short SkillList[] = { 171, 164, 333, 202, 182, 755, 165, 186, 393, 197, 773 };
			static const unsigned short SkillList[] = { 171, 164, 333, 202, 182, 755, 165, 186, 393, 197};
            static const unsigned short SpellList[] =
	        {
		        2259, 3101, 3464, 11611, // Alchemy
		        2018, 3100, 3538, 9785, // Blacksmithing
		        7411, 7412, 7413, 13920, // Enchanting
		        4036, 4037, 4038, 12656, // Engineering
                2366, 2368, 3570, 11993, //Herbalism
		        25229, 25230, 28894, 28895, // Jewelcrafting
		        2108, 3104, 3811, 10662, //Leatherworking
		        2575, 2576, 3564, 10248, // Mining
		        8613, 8617, 8618, 10768, // Skinning
		        3908, 3909, 3910, 12180, // Tailoring
			//	45357, 45358, 45359, 45360 // Inscription
				
	        };
            static const unsigned short LoopList[] = { 0, 4, 8, 12, 16, 20, 24, 28, 32, 38, 42 }; // not sure if it's 42
            int rank = 0;
			int value = 0;
            int maxrank = 0;
    switch(action)
    {
        case 11: // Bags + Level + Gold
        {
            uint32 money;
			if (oldlvl > 0)
			{
                money = 150000;
				if (oldlvl > 10) 
				{
					money = 250000;
					if (oldlvl > 19)
					{
						money=350000;
						if (oldlvl > 29)
						{
							money=900000;
							if (oldlvl > 59)
							{
								money=1150000;
								if (oldlvl > 69)
								{
									money=26500000;
                                    if (oldlvl > 75)
                                    {
                                        money=99900000;
                                    }
								}
							}		
						}
					}
				}
			}
			if(money > 99900000)
			money = 99900000;
			player->SetMoney(player->GetMoney()+money);
            if(player->getLevel() < oldlvl)
			{
				if (oldlvl > 9)
				{
					player->SetLevel(10);
					player->GetAchievementMgr().UpdateAchievementCriteria(ACHIEVEMENT_CRITERIA_TYPE_REACH_LEVEL);
				}
				if (oldlvl > 19)
				{
					player->SetLevel(20);
					player->GetAchievementMgr().UpdateAchievementCriteria(ACHIEVEMENT_CRITERIA_TYPE_REACH_LEVEL);
				}
				if (oldlvl > 29)
				{
					player->SetLevel(30);
					player->GetAchievementMgr().UpdateAchievementCriteria(ACHIEVEMENT_CRITERIA_TYPE_REACH_LEVEL);
				}
				if (oldlvl > 39)
				{
					player->SetLevel(40);
					player->GetAchievementMgr().UpdateAchievementCriteria(ACHIEVEMENT_CRITERIA_TYPE_REACH_LEVEL);
				}
				if (oldlvl > 49)
				{
					player->SetLevel(50);
					player->GetAchievementMgr().UpdateAchievementCriteria(ACHIEVEMENT_CRITERIA_TYPE_REACH_LEVEL);
				}
				if (oldlvl > 59)
				{
					player->SetLevel(60);
					player->GetAchievementMgr().UpdateAchievementCriteria(ACHIEVEMENT_CRITERIA_TYPE_REACH_LEVEL);
				}
				if (oldlvl > 69)
				{
					player->SetLevel(70);
					player->GetAchievementMgr().UpdateAchievementCriteria(ACHIEVEMENT_CRITERIA_TYPE_REACH_LEVEL);
				}
				if (oldlvl > 79)
				{
					player->SetLevel(80);
					player->GetAchievementMgr().UpdateAchievementCriteria(ACHIEVEMENT_CRITERIA_TYPE_REACH_LEVEL);
				}
				if (oldlvl > 84)
				{
					player->SetLevel(85);
					player->GetAchievementMgr().UpdateAchievementCriteria(ACHIEVEMENT_CRITERIA_TYPE_REACH_LEVEL);
				}
				player->SetLevel(oldlvl);
				player->GetAchievementMgr().UpdateAchievementCriteria(ACHIEVEMENT_CRITERIA_TYPE_REACH_LEVEL);
			} 
            player->InitTalentForLevel();
		    player->InitStatsForLevel();

            for(int i = 0; i < 4; ++i)
            {
                ItemPosCountVec dest;
	            uint8 msg = player->CanStoreNewItem( NULL_BAG, NULL_SLOT, dest, 5764, 1, false );
                if( msg == EQUIP_ERR_OK )
                {
                        
                        Item* item = player->StoreNewItem( dest, 5764, 1, true);
                        player->SendNewItem( item, 1, true, false);
                }
            }

            _Creature->Say( importtext4, LANG_UNIVERSAL, player->GetGUID());
            UpdateCharData(player, 1);
            //player->SaveToDB();
            player->CLOSE_GOSSIP_MENU();
            return true;
        }
        break;
        case 21: // Armor Sets lvl 80s
        {
            /*static const unsigned short Tier0_5List[] =  // Correspond line numbers with uint8 class in enum Classes
	        {
		        40783, 40801, 40819, 40840, 40859, 0, 0, 0, // Warrior 1
		        40782, 40802, 40821, 40842, 40861, 0, 0, 0, // Paladin 2
		        41085, 41141, 41155, 41203, 41215, 0, 0, 0, // Hunter 3
		        41648, 41653, 41670, 41681, 41765, 0, 0, 0, // Rogue 4
		        41913, 41919, 41925, 41931, 41938, 0, 0, 0, // Priest 5
                0, 0, 0, 0, 0, 0, 0, 0, // DK 6 - no set available
		        40989, 41005, 41017, 41031, 41042, 0, 0, 0, // Shaman 7
		        41944, 41950, 41957, 41963, 41969, 0, 0, 0, // Mage 8
		        41991, 42001, 42003, 42009, 42015, 0, 0, 0, // Warlock 9
                0, 0, 0, 0, 0, 0, 0, 0, // Unused 10
		        41279, 41291, 41302, 41314, 41325, 0, 0, 0, // Druid 11
	        };*/ //HATEFULL!!!!
			/*static const unsigned short Tier0_5List[] =  // Correspond line numbers with uint8 class in enum Classes
	        {
		        40786, 40804, 40823, 40844, 40862, 0, 0, 0, // Warrior 1
		        40785, 40805, 40825, 40846, 40864, 0, 0, 0, // Paladin 2
		        41086, 41142, 41156, 41204, 41216, 0, 0, 0, // Hunter 3
		        41649, 41654, 41671, 41682, 41766, 0, 0, 0, // Rogue 4
		        41914, 41920, 41926, 41933, 41939, 0, 0, 0, // Priest 5
                40863, 40784, 40806, 40824, 40845, 0, 0, 0, // DK 6 - no set available
		        40990, 41000, 41012, 41026, 41037, 0, 0, 0, // Shaman 7
		        41945, 41951, 41958, 41964, 41970, 0, 0, 0, // Mage 8
		        41992, 41997, 42004, 42010, 42016, 0, 0, 0, // Warlock 9
                0, 0, 0, 0, 0, 0, 0, 0, // Unused 10
		        41280, 41292, 41303, 41315, 41326, 0, 0, 0, // Druid 11
	        }; // DEADLY SET*/
			static const unsigned short Tier0_5List[] =  // Correspond line numbers with uint8 class in enum Classes
	        {
		        40847, 40789, 40807, 40826, 40866, 0, 0, 0, // Warrior 1 / done
		        40933, 40907, 40927, 40939, 40963, 0, 0, 0, // Paladin 2 / done				
		        41087, 41143, 41157, 41205, 41217, 0, 0, 0, // Hunter 3	/ done			
		        41650, 41655, 41672, 41683, 41767, 0, 0, 0, // Rogue 4	/ done			
		        41915, 41921, 41927, 41934, 41940, 0, 0, 0, // Priest 5 / done				
                40787, 40809, 40827, 40848, 40868, 0, 0, 0, // DK 6 - / done		
		        41019, 40993, 41007, 41033, 41044, 0, 0, 0, // Shaman 7 / done				
		        41971, 41946, 41953, 41959, 41965, 0, 0, 0, // Mage 8 / done
		        42017, 41993, 41998, 42005, 42011, 0, 0, 0, // Warlock 9 / done
                0, 0, 0, 0, 0, 0, 0, 0, // Unused 10
		        41281, 41293, 41304, 41316, 41327, 0, 0, 0, // Druid 11 / done
	        }; // Furious SET
           SQLTransaction trans = CharacterDatabase.BeginTransaction();
           int8 pclass = player->getClass();
           int loop = ((pclass * 8) - 8);
           for(unsigned long i = loop; i < (loop + 8); i++)
           {
                uint32 itemid = Tier0_5List[i];
                ItemPosCountVec dest;
                uint8 msg = player->CanStoreNewItem( NULL_BAG, NULL_SLOT, dest, itemid, 1, false);
                if( msg == EQUIP_ERR_OK )
                {
                    
                    //Item* item = player->StoreNewItem( dest, itemid, 1, true);
					Item* item = player->StoreNewItem(dest, itemid, true);
                    player->SendNewItem( item, 1, true, false);
                }
                else
                {
                    _Creature->Say(importtext2, LANG_UNIVERSAL, player->GetGUID());
                    player->SendEquipError( msg, NULL, NULL, itemid );
                 }
            }

			uint32 bonusitem = 47241; // Emblem of Triumph
            for(int i = 1; i <= 50; i++)
            {
                ItemPosCountVec dest;
	            uint8 msg = player->CanStoreNewItem( NULL_BAG, NULL_SLOT, dest, bonusitem, 1, false );
                if( msg == EQUIP_ERR_OK )
                {
                        
                        Item* item = player->StoreNewItem( dest, bonusitem, 1, true);
                        player->SendNewItem( item, 1, true, false);
                }
            }

                //player->SaveInventoryAndGoldToDB(trans);
 
                _Creature->Say(importtext9, LANG_UNIVERSAL, player->GetGUID());
                UpdateCharData(player, 2);
                player->ModifyHonorPoints(75000);
                //player->SetArenaPoints(2000);
				//player->GetAchievementMgr().UpdateAchievementCriteria(ACHIEVEMENT_CRITERIA_TYPE_REACH_LEVEL);
                player->SaveToDB();
                player->CLOSE_GOSSIP_MENU();
                return true;
        }
        break;
        case 22: // Armor Sets 70+
        {
            static const unsigned short Tier0_5List[] =  // Correspond line numbers with uint8 class in enum Classes
	        {
		        30120, 30118, 30119, 30121, 30122, 0, 0, 0, // Warrior 1
		        30129, 30130, 30132, 30133, 30131, 0, 0, 0, // Paladin 2
		        30139, 30140, 30141, 30142, 30143, 0, 0, 0, // Hunter 3
		        30144, 30145, 30146, 30148, 30149, 0, 0, 0, // Rogue 4
		        30160, 30161, 30162, 30159, 30163, 0, 0, 0, // Priest 5
                0, 0, 0, 0, 0, 0, 0, 0, // DK 6 - no set available
		        30169, 30170, 30171, 30172, 30173, 0, 0, 0, // Shaman 7
		        30206, 30205, 30207, 30210, 30196, 0, 0, 0, // Mage 8
		        30211, 30212, 30213, 30215, 30214, 0, 0, 0, // Warlock 9
                0, 0, 0, 0, 0, 0, 0, 0, // Unused 10
		        30231, 30232, 30233, 30234, 30235, 0, 0, 0 // Druid 11
	        };
           SQLTransaction trans = CharacterDatabase.BeginTransaction();
           int8 pclass = player->getClass();
           int loop = ((pclass * 8) - 8);
           for(unsigned long i = loop; i < (loop + 8); i++)
           {
                uint32 itemid = Tier0_5List[i];
                ItemPosCountVec dest;
                uint8 msg = player->CanStoreNewItem( NULL_BAG, NULL_SLOT, dest, itemid, 1, false );
                if( msg == EQUIP_ERR_OK )
                {
                    
                    Item* item = player->StoreNewItem( dest, itemid, 1, true);
                    player->SendNewItem( item, 1, true, false);
                }
                else
                {
                    _Creature->Say(importtext2, LANG_UNIVERSAL, player->GetGUID());
                    player->SendEquipError( msg, NULL, NULL );
                 }
            }
                   
                //player->SaveInventoryAndGoldToDB(trans);
 
                _Creature->Say(importtext5, LANG_UNIVERSAL, player->GetGUID());
                UpdateCharData(player, 2);
                player->SaveToDB();
                player->CLOSE_GOSSIP_MENU();
                return true;
        }
        break;
        case 31: // choose prof for 375
        {
            player->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, _ALCH_, GOSSIP_SENDER_SEC_PROFTRAIN, 101);
            player->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, _BLAK_, GOSSIP_SENDER_SEC_PROFTRAIN, 102 );
            player->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, _ENCH_, GOSSIP_SENDER_SEC_PROFTRAIN, 103 );
            player->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, _ENGI_, GOSSIP_SENDER_SEC_PROFTRAIN, 104 );
            player->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, _HERB_, GOSSIP_SENDER_SEC_PROFTRAIN, 105 );
            player->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, _JEWE_, GOSSIP_SENDER_SEC_PROFTRAIN, 106 );
            player->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, _LEWO_, GOSSIP_SENDER_SEC_PROFTRAIN, 107 );
            player->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, _MINI_, GOSSIP_SENDER_SEC_PROFTRAIN, 108);
            player->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, _SKIN_, GOSSIP_SENDER_SEC_PROFTRAIN, 109 );
            player->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, _TAIL_, GOSSIP_SENDER_SEC_PROFTRAIN, 110);
			//player->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, _INSC_, GOSSIP_SENDER_SEC_PROFTRAIN, 111);
            player->PlayerTalkClass->SendGossipMenu(907,_Creature->GetGUID());
            return true;

        }break;
        case 41: // choose prof for 300
        {
            player->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, _ALCH_, GOSSIP_SENDER_SEC_PROFTRAIN, 201);
            player->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, _BLAK_, GOSSIP_SENDER_SEC_PROFTRAIN, 202 );
            player->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, _ENCH_, GOSSIP_SENDER_SEC_PROFTRAIN, 203 );
            player->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, _ENGI_, GOSSIP_SENDER_SEC_PROFTRAIN, 204 );
            player->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, _HERB_, GOSSIP_SENDER_SEC_PROFTRAIN, 205 );
            player->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, _JEWE_, GOSSIP_SENDER_SEC_PROFTRAIN, 206 );
            player->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, _LEWO_, GOSSIP_SENDER_SEC_PROFTRAIN, 207 );
            player->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, _MINI_, GOSSIP_SENDER_SEC_PROFTRAIN, 208);
            player->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, _SKIN_, GOSSIP_SENDER_SEC_PROFTRAIN, 209 );
            player->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, _TAIL_, GOSSIP_SENDER_SEC_PROFTRAIN, 210);
			//player->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, _INSC_, GOSSIP_SENDER_SEC_PROFTRAIN, 211);
            player->PlayerTalkClass->SendGossipMenu(907,_Creature->GetGUID());
            return true;
        }
        break;
        case 51:
        {
            _Creature->Say(importtext8, LANG_UNIVERSAL, player->GetGUID());
            UpdateCharData(player, 7);
            player->CLOSE_GOSSIP_MENU();
        }
		break;
        case 101:
        case 102:
        case 103:
        case 104:
        case 105:
        case 106:
        case 107:
        case 108:
        case 109:
        case 110:
		//case 111:
        {   
			int choice = action - 101;
            uint32 skill = SkillList[choice];
            if (oldlvl > 19) //over level 19?
			{
                value = 150;
                maxrank = 2;			
				if (oldlvl > 39) //over level 40?
				{
					value = 225;
					maxrank = 3;
					if (oldlvl > 49) //over level 50 ?
					{
						value = 300;
						maxrank = 4;
						if (oldlvl > 70) //level 70
						{
						 	value = 375;
                			maxrank = 4;
						}
					}
				}
			}					
            // I don't know why you made 2 checks below, one for primary profession points, and another one for skill value
            // I re added the second part in the if-clause, because i'ts essential it is in 1 clause.
            // Imagine if someone has a 375 profession already, he should get the 'Master' profession spell in his spell book
            // If this protocol wants to set his proffession skill to i.e 225, he would get the 'Expert' profession spell, while his skill level remains the same
            // I changed the GetFreePrimaryProffesionPoints clause to '> 0', because as long as the player has 1 free proff slot, it can be taught.
            // No need to have 2 free proff slots for only one proff.
            // Also the double initializations of variables such as 'rank' and 'rank2' really isn't needed and all it does is eat memory.
            
            if (player->GetFreePrimaryProfessionPoints() > 0 && player->GetSkillValue(skill) < value)
            {
                for (unsigned long i = LoopList[choice]; i < (sizeof(SpellList)/sizeof(short)); ++i)
			    {
				    if (rank < maxrank)
				    {
                        player->removeSpell((uint16)SpellList[i]); //remove first to prevent all ranks show up in spellbook
					    player->learnSpell((uint16)SpellList[i], false);
					    ++rank;
				    }
			    }
			    player->SetSkill(skill, 0, value, value);
			    _Creature->Say(importtext6, LANG_UNIVERSAL, NULL);
                UpdateCharData(player, 3);
			    player->CLOSE_GOSSIP_MENU();
			}
			else
            {
                _Creature->Say(importtext3, LANG_UNIVERSAL, player->GetGUID());
                UpdateCharData(player, 5);
                player->CLOSE_GOSSIP_MENU();
            }
            return true;
        }break;
        case 201:
        case 202:
        case 203:
        case 204:
        case 205:
        case 206:
        case 207:
        case 208:
        case 209:
        case 210:
		//case 211:
        { 
			int choice = action - 201;
            uint32 skill = SkillList[choice];
			if (oldlvl > 19) //over level 19?
			{
                value = 150;
                maxrank = 2;			
				if (oldlvl > 39) //over level 40?
				{
					value = 225;
					maxrank = 3;
					if (oldlvl > 49) //over level 50 ?
					{
						value = 300;
						maxrank = 4;
						if (oldlvl > 70) //level 70
						{
						 	value = 375;
                			maxrank = 4;
						}
					}
				}
			}
            if (player->GetFreePrimaryProfessionPoints() > 0 && player->GetSkillValue(skill) < value)
            {
                for (unsigned long i = LoopList[choice]; i < (sizeof(SpellList)/sizeof(short)); ++i)
			    {
				    if (rank < maxrank)
				    {
                        player->removeSpell((uint16)SpellList[i]); //remove first to prevent all ranks show up in spellbook
					    player->learnSpell((uint16)SpellList[i], false);
					    ++rank;
				    }
			    }
			    player->SetSkill(skill, 0, value, value);
				_Creature->Say(importtext7, LANG_UNIVERSAL, NULL);
                UpdateCharData(player, 7);
				player->UpdateSkillsToMaxSkillsForLevel();
				//
				std::string ircchan = "#";
				ircchan += sIRC._irc_chan[sIRC.anchn].c_str();
				std::string tmpstr = "";
				std::stringstream ss;
				ss << player->GetName();
				ss << " Has Just made his FREE level 80, Welcome to MGA :)";
				sIRC.Send_IRC_Channel(ircchan, sIRC.MakeMsg("\00304,08\037/!\\\037\017\00304 MGA Announcer \00304,08\037/!\\\037\017 %s", "%s", ss.str().c_str()), true);
				sWorld->SendWorldText(9999, ss.str().c_str());
				//
				player->CLOSE_GOSSIP_MENU();
            }
            else
            {
                _Creature->Say(importtext3, LANG_UNIVERSAL, player->GetGUID());
                UpdateCharData(player, 6);
                player->CLOSE_GOSSIP_MENU();
            }
            return true;

       }break;
	   case 5000:
	   {
	   player->CLOSE_GOSSIP_MENU();
	   }break;
	   
     }
     player->CLOSE_GOSSIP_MENU();
     return true;
}
};
void AddSC_mga_guild_shoponeAI()
{
    new mga_guild_shopone;
}