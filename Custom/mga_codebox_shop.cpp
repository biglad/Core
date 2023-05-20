#include "ScriptPCH.h"
#include <cstring>

/* Mysql table info
code 0
itemid 1
itemct 2
status 3
*/
// Text
#define mgacstext1 -1900007
#define mgacstext2 -1900008
#define mgacstext3 -1900009
#define mgacstext4 -1900010
#define mgacstext5 -1900011
#define _MENU1_ "I would like to enter my unique code." 
#define _MENU2_ "Maybe Another Time" 
/*
#define _FAIL1_ "You have entered an invalid code. Please check out for typo's."  -1900007
#define _FAIL2_ "Your inventory is full, please make sure you have at least one free slot."  -1900008
#define _FAIL3_ "Unexpected technical error. Please inform a Staffmember." -1900009
#define _SUCCESS_ "There you go! Thanks for your custom, have fun." -1900010
#define _BYE_ "Good bye!" -1900011
INSERT INTO `script_texts` (`npc_entry`,`entry`,`content_default`) VALUES ('500911','-1900007','You have entered an invalid code. Please check out for typo\'s.');
INSERT INTO `script_texts` (`npc_entry`,`entry`,`content_default`) VALUES ('500911','-1900008','Your inventory is full, please make sure you have at least one free slot.');
INSERT INTO `script_texts` (`npc_entry`,`entry`,`content_default`) VALUES ('500911','-1900009','Unexpected technical error. Please inform a Staffmember.');
INSERT INTO `script_texts` (`npc_entry`,`entry`,`content_default`) VALUES ('500911','-1900010','There you go! Thanks for your custom, have fun.');
INSERT INTO `script_texts` (`npc_entry`,`entry`,`content_default`) VALUES ('500911','-1900011','Good bye!');
#*/
// SQL
#define _QUERY1_ "SELECT * FROM `shop_order` WHERE `code` = '%s' AND `status` = '0' AND `acct_id` = '%d'"
#define _QUERY2_ "UPDATE `shop_order` SET `status` = '1' WHERE `code` = '%s'"

//This function is called when the player opens the gossip menubool
class mga_codebox_shop : public CreatureScript
{
public:
    mga_codebox_shop() : CreatureScript("mga_codebox_shop") { }
 
	bool OnGossipHello(Player* player, Creature* creature)
	{
		player->ADD_GOSSIP_ITEM_EXTENDED(0, _MENU1_, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF+1, "", 0, true);
        player->ADD_GOSSIP_ITEM(0, _MENU2_, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF+2);

	    player->PlayerTalkClass->SendGossipMenu(907, creature->GetGUID());

        return true;

	}


	bool OnGossipSelect(Player* player, Creature* creature, uint32 /*sender*/, uint32 action)
    {
            if (action == GOSSIP_ACTION_INFO_DEF+2)
            {
                creature->Say(mgacstext5, LANG_UNIVERSAL, NULL);
				player->CLOSE_GOSSIP_MENU();
            }

            return true;
    }


	bool OnGossipSelectCode(Player* player, Creature* creature, uint32 sender, uint32 action, const char* code)
	{
		if (sender == GOSSIP_SENDER_MAIN)
		{
			if(action == GOSSIP_ACTION_INFO_DEF+1)
			{
				checkCode(player, creature, code);
			}
			player->CLOSE_GOSSIP_MENU();
			return true;
		}
		
		return false;
	}

bool checkCode(Player* pPlayer, Creature* pCreature, const char* sCode)
{

	// Some variables declarations.
    QueryResult result;
    uint32 item_id = 0;
    uint32 quantity = 0;
    //bool check = false;
    //extern DatabaseType TScriptDB;

    result = WorldDatabase.PQuery(_QUERY1_, sCode, pPlayer->GetSession()->GetAccountId());
    if(result)
    {
        Field *fields = result->Fetch();

        item_id = fields[2].GetUInt32();
		quantity = fields[3].GetUInt32();

        if(item_id > 0)
        {
            ItemPosCountVec dest;
            uint8 canStoreNewItem = pPlayer->CanStoreNewItem(NULL_BAG, NULL_SLOT, dest, item_id, quantity);
            if(canStoreNewItem == EQUIP_ERR_OK)
            {
                Item *newItem = NULL;
                newItem = pPlayer->StoreNewItem(dest, item_id, quantity, true);
                pPlayer->SendNewItem(newItem, quantity, true, false);
                pCreature->Say(mgacstext4, LANG_UNIVERSAL, NULL);
                WorldDatabase.PExecute(_QUERY2_, sCode);
                return true;
            }
            else
            {
                pCreature->Say(mgacstext2, LANG_UNIVERSAL, NULL);
                return false;
            }
        }
		else
		{
			pCreature->Say(mgacstext3, LANG_UNIVERSAL, NULL);
			return false;
		}
    }
    else
    {
        pCreature->Yell(mgacstext1, LANG_UNIVERSAL, NULL);
        sLog->outSQLDriver(sCode);
        return false;
    }
	//delete result;
}


};
void AddSC_mga_codebox_shopAI()
{
    new mga_codebox_shop;

}
