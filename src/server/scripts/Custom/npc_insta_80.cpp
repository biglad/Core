#include "ScriptMgr.h"
#include "ScriptedCreature.h"
#include "ScriptedGossip.h"
#include "GameEventMgr.h"
#include "Player.h"
#include "Unit.h"
#include "Pet.h"
#include "Chat.h"
#include "ObjectMgr.h"
#include "DBCStores.h"
#include "WorldDatabase.h"
#include "DatabaseEnv.h"
#include "WorldSession.h"
#include "SpellInfo.h"
#include "SpellMgr.h"
#include "World.h"
#include "AchievementMgr.h"
#include <sstream>
#include <string>
#define nemhtext11   800013 // tell player to log out and back in
#define nemhtext21   800014 // tell player they not entilied
#define nemhtext31   800012 // no mga token

#define GOSSIP_HELLO_NEMH3  "Insta80 Me (costs 1 MGA Token)"
#define GOSSIP_HELLO_NEMH4  "You are not in the Insta80 system please visit the vote shop the web site to enable Insta80 for this character. (near bottom of list ont he shop)"
#define GOSSIP_HELLO_NEMH5  "Goodbye."



enum SpellsAndItemIDsAndCost
{
    MAINPROFF = 3,  // token cost
    SECPROFF = 2,   // token cost

    ITEMCOSTID = 461143,  //MGA Instant Level 80 Voucher

    FirstAidSkill = 129,
    FirstAidSPell = 65292,

    CookingSkill = 185,
    CookingSpell = 65291,

    FishingSkill = 356,
    FishingSpell = 65293,

    BlackSmithSkill = 164,
    BlackSmithSPell = 51298,

    LeatherWorkingSKill = 165,
    LeatherWorkingSpell = 51301,

    AlchemySkill = 171,
    AlchemySPell = 65281,

    HerbalismSkill = 182,
    HerbalismSpell = 65288,

    MiningSKill = 186,
    MiningSpell = 65289,

    TailoringSKill = 197,
    TailoringSpell = 65283,

    EngSkill = 202,
    EngSPell = 61464,

    EnchanterSkill = 333,
    EnchanterSpell = 51312,

    SKinningSkill = 393,
    SkinningSPell = 50307,

    JewelSKill = 773,
    JewelSpell = 65289,

    InscriptSKill = 773,
    InscriptSpell = 65287,
};

static void HandleLearnSkillRecipesHelper(Player* player, uint32 skillId)
{
    uint32 classmask = player->GetClassMask();

    std::vector<SkillLineAbilityEntry const*> const* skillLineAbilities = GetSkillLineAbilitiesBySkill(skillId);
    if (!skillLineAbilities)
        return;

    for (SkillLineAbilityEntry const* skillLine : *skillLineAbilities)
    {
        // not high rank
        if (skillLine->SupercededBySpell)
            continue;

        // skip racial skills
        if (skillLine->RaceMask != 0)
            continue;

        // skip wrong class skills
        if (skillLine->ClassMask && (skillLine->ClassMask & classmask) == 0)
            continue;

        SpellInfo const* spellInfo = sSpellMgr->GetSpellInfo(skillLine->Spell);
        if (!spellInfo || !SpellMgr::IsSpellValid(spellInfo, player, false))
            continue;

        player->LearnSpell(skillLine->Spell, false);
    }
}



static bool HandleLearnMySpellsCommand(Player* player)
{
    ChrClassesEntry const* classEntry = sChrClassesStore.LookupEntry(player->GetClass());
    if (!classEntry)
        return true;

    std::vector<Trainer::Trainer const*> const& trainers = sObjectMgr->GetClassTrainers(player->GetClass());

    bool hadNew;
    do
    {
        hadNew = false;
        for (Trainer::Trainer const* trainer : trainers)
        {
            if (!trainer->IsTrainerValidForPlayer(player))
                continue;
            for (Trainer::Spell const& trainerSpell : trainer->GetSpells())
            {
                if (!trainer->CanTeachSpell(player, &trainerSpell))
                    continue;

                if (trainerSpell.IsCastable())
                    player->CastSpell(player, trainerSpell.SpellId, true);
                else
                    player->LearnSpell(trainerSpell.SpellId, false);

                hadNew = true;
            }
        }
    } while (hadNew);

    //player->SendSysMessage(LANG_COMMAND_LEARN_CLASS_SPELLS);
    return true;
}

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


class npc_insta_80 : public CreatureScript
{
public:
    npc_insta_80() : CreatureScript("npc_insta_80") { }

    struct npc_insta_80AI : public ScriptedAI
    {
        npc_insta_80AI(Creature* creature) : ScriptedAI(creature) {}

        void WhisperTo(Player* player, char const* message)
        {
            me->Whisper(message, LANG_UNIVERSAL, player);
        }

		
		bool UpdateInsta80CharData(Player* player, int16 status)
        {
            WorldDatabase.PExecute("UPDATE `char_Insta80` SET `status`='%d' WHERE `char_id`='%d'", status, player->GetGUID());
            return true;
        }
		bool InsertInsta80CharData(Player* player, int16 acctid, int16 status)
        {
            WorldDatabase.PExecute("INSERT INTO `char_Insta80` (`char_id`, `acct_id`, `status`) VALUES (%d, %d, %d)", player->GetGUID(), acctid, status);
            return true;
        }

        bool OnGossipHello(Player* player) override
        {

            //InitGossipMenuFor(player, NPC_GOSSIP_MENU);
            WorldSession* session = player->GetSession();
/*
            if (!player->IsGameMaster())
            {
                AddGossipItemFor(player, GOSSIP_ICON_DOT, "TEST MODE GMS ONLY", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 9999);
                AddGossipItemFor(player, GOSSIP_ICON_TALK, "LOL Bye.", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1002);
                player->TalkedToCreature(me->GetEntry(), me->GetGUID());
                SendGossipMenuFor(player, player->GetGossipTextId(me), me->GetGUID());
                return true;
            }
*/
			QueryResult result;

            result = WorldDatabase.PQuery("SELECT * FROM `char_Insta80` WHERE `acct_id`='%d' AND `status` = 8 LIMIT 1", player->GetSession()->GetAccountId());
            if (result)
            {
                AddGossipItemFor(player, GOSSIP_ICON_DOT, "YOU HAVE ALL READY MADE A LEVEL 80", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 9999);
                AddGossipItemFor(player, GOSSIP_ICON_TALK, "LOL Bye.", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1002);
                player->TalkedToCreature(me->GetEntry(), me->GetGUID());
                SendGossipMenuFor(player, player->GetGossipTextId(me), me->GetGUID());
                return true;
            }

            if (!player->HasItemCount(ITEMCOSTID, 1))
            {
                AddGossipItemFor(player, GOSSIP_ICON_DOT, "You dont have a instant level voucher!!", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 9997);
                AddGossipItemFor(player, GOSSIP_ICON_TALK, "LOL Bye.", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1002);
                player->TalkedToCreature(me->GetEntry(), me->GetGUID());
                SendGossipMenuFor(player, player->GetGossipTextId(me), me->GetGUID());
                return true;
            }

            result = WorldDatabase.PQuery("SELECT * FROM `char_Insta80` WHERE `char_id`='%d' LIMIT 1", player->GetGUID());
            if (!result)
            {
                AddGossipItemFor(player, GOSSIP_ICON_DOT, "I want to make > " + player->GetName() + " < a level 80.", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1001);
                AddGossipItemFor(player, GOSSIP_ICON_TALK, "You can only make ONE level 80.", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 9998);

                AddGossipItemFor(player, GOSSIP_ICON_DOT, "Nevermind.", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1002);
                player->TalkedToCreature(me->GetEntry(), me->GetGUID());
                SendGossipMenuFor(player, player->GetGossipTextId(me), me->GetGUID());
                return true;
            }

            result = WorldDatabase.PQuery("SELECT * FROM `char_Insta80` WHERE `char_id`='%d' AND `status` = 0 LIMIT 1", player->GetGUID());
            if (result)
            {
                AddGossipItemFor(player, GOSSIP_ICON_DOT, "I want to make > " + player->GetName() + " < a level 80.", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1001);
                AddGossipItemFor(player, GOSSIP_ICON_TALK, "You can only make ONE level 80.", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 9998);

                AddGossipItemFor(player, GOSSIP_ICON_DOT, "Nevermind.", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1002);
                player->TalkedToCreature(me->GetEntry(), me->GetGUID());
                SendGossipMenuFor(player, player->GetGossipTextId(me), me->GetGUID());
                return true;
            }

            result = WorldDatabase.PQuery("SELECT * FROM `char_Insta80` WHERE `char_id`='%d' AND `status` = 7 LIMIT 1", player->GetGUID());
            if (result)
            {
                AddGossipItemFor(player, GOSSIP_ICON_BATTLE, "Bags!!", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 8000);
                AddGossipItemFor(player, GOSSIP_ICON_DOT, "Nevermind.", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1002);
                player->TalkedToCreature(me->GetEntry(), me->GetGUID());
                SendGossipMenuFor(player, player->GetGossipTextId(me), me->GetGUID());
                return true;
            }

            result = WorldDatabase.PQuery("SELECT * FROM `char_Insta80` WHERE `char_id`='%d' AND `status` = 6 LIMIT 1", player->GetGUID());
            if (result)
            {
                AddGossipItemFor(player, GOSSIP_ICON_BATTLE, "Learn ALL spell.", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 7000);
                AddGossipItemFor(player, GOSSIP_ICON_DOT, "Nevermind.", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1002);
                player->TalkedToCreature(me->GetEntry(), me->GetGUID());
                SendGossipMenuFor(player, player->GetGossipTextId(me), me->GetGUID());
                return true;
            }

            result = WorldDatabase.PQuery("SELECT * FROM `char_Insta80` WHERE `char_id`='%d' AND `status` = 5 LIMIT 1", player->GetGUID());
            if (result)
            {
                AddGossipItemFor(player, GOSSIP_ICON_BATTLE, "Level 80", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 6000);
                AddGossipItemFor(player, GOSSIP_ICON_DOT, "Nevermind.", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1002);
                player->TalkedToCreature(me->GetEntry(), me->GetGUID());
                SendGossipMenuFor(player, player->GetGossipTextId(me), me->GetGUID());
                return true;
            }


            result = WorldDatabase.PQuery("SELECT * FROM `char_Insta80` WHERE `char_id`='%d' AND `status` = 4 LIMIT 1", player->GetGUID());
            if (result)
            {
                AddGossipItemFor(player, GOSSIP_ICON_BATTLE, "Honor Points", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 5000);
                AddGossipItemFor(player, GOSSIP_ICON_DOT, "Nevermind.", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1002);
                player->TalkedToCreature(me->GetEntry(), me->GetGUID());
                SendGossipMenuFor(player, player->GetGossipTextId(me), me->GetGUID());
                return true;
            }

            result = WorldDatabase.PQuery("SELECT * FROM `char_Insta80` WHERE `char_id`='%d' AND `status` = 3 LIMIT 1", player->GetGUID());
            if (result)
            {
                AddGossipItemFor(player, GOSSIP_ICON_MONEY_BAG, "Give me some Gold!", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 4000);
                AddGossipItemFor(player, GOSSIP_ICON_DOT, "Nevermind.", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1002);
                player->TalkedToCreature(me->GetEntry(), me->GetGUID());
                SendGossipMenuFor(player, player->GetGossipTextId(me), me->GetGUID());
                return true;
            }


            result = WorldDatabase.PQuery("SELECT * FROM `char_Insta80` WHERE `char_id`='%d' AND `status` = 2 LIMIT 1", player->GetGUID());
            if (result)
            {
                uint32 freeProfs = player->GetFreePrimaryProfessionPoints();
                if (freeProfs < 1)
                {
                    AddGossipItemFor(player, GOSSIP_ICON_DOT, "YOU HAVE TOO MANY PROFFESSIONS!!!", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 9999);
                    AddGossipItemFor(player, GOSSIP_ICON_DOT, "SKIP SECOND PROFF", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 9996);
                    AddGossipItemFor(player, GOSSIP_ICON_DOT, "Nevermind.", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1002);
                    player->TalkedToCreature(me->GetEntry(), me->GetGUID());
                    SendGossipMenuFor(player, player->GetGossipTextId(me), me->GetGUID());
                    return true;
                }
                AddGossipItemFor(player, GOSSIP_ICON_DOT, "Pick Second Proffesion", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 2000);
                if (!player->HasSkill(BlackSmithSkill))
                    AddGossipItemFor(player, GOSSIP_ICON_TRAINER, "Blacksmithing", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 3001); //BS
                if (!player->HasSkill(LeatherWorkingSKill))
                    AddGossipItemFor(player, GOSSIP_ICON_TRAINER, "Leather Worker", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 3002);  //LW
                if (!player->HasSkill(AlchemySkill))
                    AddGossipItemFor(player, GOSSIP_ICON_TRAINER, "Alchemist", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 3003);  //ALC
                if (!player->HasSkill(HerbalismSkill))
                    AddGossipItemFor(player, GOSSIP_ICON_TRAINER, "Herbalist", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 3004);  //HERB
                if (!player->HasSkill(MiningSKill))
                    AddGossipItemFor(player, GOSSIP_ICON_TRAINER, "Miner", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 3005);  //MINING
                if (!player->HasSkill(TailoringSKill))
                    AddGossipItemFor(player, GOSSIP_ICON_TRAINER, "Tailor", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 3006);  //Tailor
                if (!player->HasSkill(EngSkill))
                    AddGossipItemFor(player, GOSSIP_ICON_TRAINER, "Engineer", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 3007);  //Eng
                if (!player->HasSkill(EnchanterSkill))
                    AddGossipItemFor(player, GOSSIP_ICON_TRAINER, "Enchanter", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 3008);  //Enchanter
                if (!player->HasSkill(SKinningSkill))
                    AddGossipItemFor(player, GOSSIP_ICON_TRAINER, "Skinner", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 3009);  //Skinner
                if (!player->HasSkill(JewelSKill))
                    AddGossipItemFor(player, GOSSIP_ICON_TRAINER, "Jeweler", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 3010);  //Jewel
                if (!player->HasSkill(InscriptSKill))
                    AddGossipItemFor(player, GOSSIP_ICON_TRAINER, "Inscription", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 3011);  //scribe

                player->TalkedToCreature(me->GetEntry(), me->GetGUID());
                SendGossipMenuFor(player, player->GetGossipTextId(me), me->GetGUID());
                return true;
            }




			// FIRST PROFF
            result = WorldDatabase.PQuery("SELECT * FROM `char_Insta80` WHERE `char_id`='%d' AND `status` = 1 LIMIT 1", player->GetGUID());
            if (result)
            {

                uint32 freeProfs = player->GetFreePrimaryProfessionPoints();
                if (freeProfs < 1)
                {
                    AddGossipItemFor(player, GOSSIP_ICON_DOT, "YOU HAVE TOO MANY PROFFESSIONS!!!", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 9999);
                    AddGossipItemFor(player, GOSSIP_ICON_DOT, "SKIP FIRST PROFF", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 9995);
                    AddGossipItemFor(player, GOSSIP_ICON_DOT, "Nevermind.", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1002);
                    player->TalkedToCreature(me->GetEntry(), me->GetGUID());
                    SendGossipMenuFor(player, player->GetGossipTextId(me), me->GetGUID());
                    return true;
                }
                AddGossipItemFor(player, GOSSIP_ICON_DOT, "Pick First Proffesion", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 2000);
				if (!player->HasSkill(BlackSmithSkill))
                    AddGossipItemFor(player, GOSSIP_ICON_TRAINER, "Blacksmithing", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 2001); //BS
                if (!player->HasSkill(LeatherWorkingSKill))
                    AddGossipItemFor(player, GOSSIP_ICON_TRAINER, "Leather Worker", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 2002);  //LW
                if (!player->HasSkill(AlchemySkill))
                    AddGossipItemFor(player, GOSSIP_ICON_TRAINER, "Alchemist", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 2003);  //ALC
                if (!player->HasSkill(HerbalismSkill))
                    AddGossipItemFor(player, GOSSIP_ICON_TRAINER, "Herbalist", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 2004);  //HERB
                if (!player->HasSkill(MiningSKill))
                    AddGossipItemFor(player, GOSSIP_ICON_TRAINER, "Miner", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 2005);  //MINING
                if (!player->HasSkill(TailoringSKill))
                    AddGossipItemFor(player, GOSSIP_ICON_TRAINER, "Tailor", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 2006);  //Tailor
                if (!player->HasSkill(EngSkill))
                    AddGossipItemFor(player, GOSSIP_ICON_TRAINER, "Engineer", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 2007);  //Eng
                if (!player->HasSkill(EnchanterSkill))
                    AddGossipItemFor(player, GOSSIP_ICON_TRAINER, "Enchanter", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 2008);  //Enchanter
                if (!player->HasSkill(SKinningSkill))
                    AddGossipItemFor(player, GOSSIP_ICON_TRAINER, "Skinner", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 2009);  //Skinner
                if (!player->HasSkill(JewelSKill))
                    AddGossipItemFor(player, GOSSIP_ICON_TRAINER, "Jeweler", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 2010);  //Jewel
                if (!player->HasSkill(InscriptSKill))
                    AddGossipItemFor(player, GOSSIP_ICON_TRAINER, "Inscription", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 2011);  //scribe

                AddGossipItemFor(player, GOSSIP_ICON_DOT, "Nevermind.", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1002);
                player->TalkedToCreature(me->GetEntry(), me->GetGUID());
                SendGossipMenuFor(player, player->GetGossipTextId(me), me->GetGUID());
                return true;
            }
            AddGossipItemFor(player, GOSSIP_ICON_DOT, "Use Have Used Me on This Account!", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1002);
            AddGossipItemFor(player, GOSSIP_ICON_DOT, "Nevermind.", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1002);
            player->TalkedToCreature(me->GetEntry(), me->GetGUID());
            SendGossipMenuFor(player, player->GetGossipTextId(me), me->GetGUID());
            return true;
        }

        bool OnGossipSelect(Player* player, uint32 /*menuId*/, uint32 gossipListId) override
        {
            WorldSession* session = player->GetSession();
            uint32 const action = player->PlayerTalkClass->GetGossipOptionAction(gossipListId);
            ClearGossipMenuFor(player);

            if (action == GOSSIP_ACTION_INFO_DEF + 2000)
            {
                me->Say("Start Level 80 " + player->GetName(), LANG_UNIVERSAL);
                UpdateInsta80CharData(player, 1);
                CloseGossipMenuFor(player);
                return true;

            }
           
			if (action == GOSSIP_ACTION_INFO_DEF + 1000)
			{
                me->Say("Start Level 80 "+player->GetName(), LANG_UNIVERSAL);
				UpdateInsta80CharData(player, 1);
				CloseGossipMenuFor(player);
				return true;

			}
			if (action == GOSSIP_ACTION_INFO_DEF + 1001)
			{
                UpdateInsta80CharData(player, 1);
                me->Say(player->GetName()+" You have been added to the instant Level 80 system, talk to me again.", LANG_UNIVERSAL);
                InsertInsta80CharData(player,  player->GetSession()->GetAccountId(), 1);
				CloseGossipMenuFor(player);
				return true;
			}
            if (action == GOSSIP_ACTION_INFO_DEF + 1002)
            {
                me->Say("Farewell "+player->GetName(), LANG_UNIVERSAL);
                CloseGossipMenuFor(player);
				me->HandleEmoteCommand(EMOTE_ONESHOT_WAVE);
                return true;
            }
			
			
            // MAIN PROFFS

            if (action == GOSSIP_ACTION_INFO_DEF + 2001) // blacksmith
            {

                UpdateInsta80CharData(player, 2);
                player->CastSpell(player, BlackSmithSPell);
                player->SetSkill(BlackSmithSkill, 1, 450, 450);
                HandleLearnSkillRecipesHelper(player, BlackSmithSkill);
                me->Say("Your Blacksmithing is now at max " + player->GetName()+" , talk to me again to continue.", LANG_UNIVERSAL);
                CloseGossipMenuFor(player);
                return false;

            }

            if (action == GOSSIP_ACTION_INFO_DEF + 2002) // leather working
            {
                UpdateInsta80CharData(player, 2);
                player->CastSpell(player, LeatherWorkingSpell);
                player->SetSkill(LeatherWorkingSKill, 1, 450, 450);
                HandleLearnSkillRecipesHelper(player, LeatherWorkingSKill);
                me->Say("Your leather working is now at max " + player->GetName() + " , talk to me again to continue.", LANG_UNIVERSAL);
                CloseGossipMenuFor(player);
                return false;

            }

            if (action == GOSSIP_ACTION_INFO_DEF + 2003) // ALCH
            {
                UpdateInsta80CharData(player, 2);
                player->CastSpell(player, AlchemySPell);
                player->SetSkill(AlchemySkill, 1, 450, 450);
                HandleLearnSkillRecipesHelper(player, AlchemySkill);
                me->Say("Your Alchemy skill is now at max " + player->GetName() + " , talk to me again to continue.", LANG_UNIVERSAL);
                CloseGossipMenuFor(player);
                return false;

            }

            if (action == GOSSIP_ACTION_INFO_DEF + 2004) // HERB
            {
                UpdateInsta80CharData(player, 2);
                player->CastSpell(player, HerbalismSpell);
                player->SetSkill(HerbalismSkill, 1, 450, 450);
                HandleLearnSkillRecipesHelper(player, HerbalismSkill);
                me->Say("Your Herbalism skill is now at max " + player->GetName() + " , talk to me again to continue.", LANG_UNIVERSAL);
                CloseGossipMenuFor(player);
                return false;

            }

            if (action == GOSSIP_ACTION_INFO_DEF + 2005) // mining
            {
                UpdateInsta80CharData(player, 2);
                player->CastSpell(player, MiningSpell);
                player->SetSkill(MiningSKill, 1, 450, 450);
                HandleLearnSkillRecipesHelper(player, MiningSKill);
                me->Say("Your Mining skill is now at max " + player->GetName() + " , talk to me again to continue.", LANG_UNIVERSAL);
                CloseGossipMenuFor(player);
                return false;

            }

            if (action == GOSSIP_ACTION_INFO_DEF + 2006) // tailor
            {
                UpdateInsta80CharData(player, 2);
                player->CastSpell(player, TailoringSpell);
                player->SetSkill(TailoringSKill, 1, 450, 450);
                HandleLearnSkillRecipesHelper(player, TailoringSKill);
                me->Say("Your Tailoring skill is now at max " + player->GetName() + " , talk to me again to continue.", LANG_UNIVERSAL);
                CloseGossipMenuFor(player);
                return false;

            }

            if (action == GOSSIP_ACTION_INFO_DEF + 2007) // eng
            {
                UpdateInsta80CharData(player, 2);
                player->CastSpell(player, EngSPell);
                player->SetSkill(EngSkill, 1, 450, 450);
                HandleLearnSkillRecipesHelper(player, EngSkill);
                me->Say("Your Engineering skill is now at max " + player->GetName() + " , talk to me again to continue.", LANG_UNIVERSAL);
                CloseGossipMenuFor(player);
                return false;

            }

            if (action == GOSSIP_ACTION_INFO_DEF + 2008) // enchanter
            {
                UpdateInsta80CharData(player, 2);
                player->CastSpell(player, EnchanterSpell);
                player->SetSkill(EnchanterSkill, 1, 450, 450);
                HandleLearnSkillRecipesHelper(player, EnchanterSkill);
                me->Say("Your Enchanting skill is now at max " + player->GetName() + " , talk to me again to continue.", LANG_UNIVERSAL);
                CloseGossipMenuFor(player);
                return false;

            }

            if (action == GOSSIP_ACTION_INFO_DEF + 2009) // skinner
            {
                UpdateInsta80CharData(player, 2);
                player->CastSpell(player, SkinningSPell);
                player->SetSkill(SKinningSkill, 1, 450, 450);
                HandleLearnSkillRecipesHelper(player, SKinningSkill);
                me->Say("Your Skinning skill is now at max " + player->GetName() + " , talk to me again to continue.", LANG_UNIVERSAL);
                CloseGossipMenuFor(player);
                return false;

            }

            if (action == GOSSIP_ACTION_INFO_DEF + 2010) // jewel
            {
                UpdateInsta80CharData(player, 2);
                player->CastSpell(player, JewelSpell);
                player->SetSkill(JewelSKill, 1, 450, 450);
                HandleLearnSkillRecipesHelper(player, JewelSKill);
                me->Say("Your Jewelcrafting skill is now at max " + player->GetName() + " , talk to me again to continue.", LANG_UNIVERSAL);
                CloseGossipMenuFor(player);
                return false;

            }

            if (action == GOSSIP_ACTION_INFO_DEF + 2011) // scribe
            {
                UpdateInsta80CharData(player, 2);
                player->CastSpell(player, InscriptSpell);
                player->SetSkill(InscriptSKill, 1, 450, 450);
                HandleLearnSkillRecipesHelper(player, InscriptSKill);
                me->Say("Your Jewelcrafting skill is now at max " + player->GetName() + " , talk to me again to continue.", LANG_UNIVERSAL);
                CloseGossipMenuFor(player);
                return false;

            }



            // SECOND PROFFS

            if (action == GOSSIP_ACTION_INFO_DEF + 3001) // blacksmith
            {

                UpdateInsta80CharData(player, 3);
                player->CastSpell(player, BlackSmithSPell);
                player->SetSkill(BlackSmithSkill, 1, 450, 450);
                HandleLearnSkillRecipesHelper(player, BlackSmithSkill);
                me->Say("Your Blacksmithing is now at max " + player->GetName() + " , talk to me again to continue.", LANG_UNIVERSAL);
                CloseGossipMenuFor(player);
                return false;

            }

            if (action == GOSSIP_ACTION_INFO_DEF + 3002) // leather working
            {
                UpdateInsta80CharData(player, 3);
                player->CastSpell(player, LeatherWorkingSpell);
                player->SetSkill(LeatherWorkingSKill, 1, 450, 450);
                HandleLearnSkillRecipesHelper(player, LeatherWorkingSKill);
                me->Say("Your leather working is now at max " + player->GetName() + " , talk to me again to continue.", LANG_UNIVERSAL);
                CloseGossipMenuFor(player);
                return false;

            }

            if (action == GOSSIP_ACTION_INFO_DEF + 3003) // ALCH
            {
                UpdateInsta80CharData(player, 3);
                player->CastSpell(player, AlchemySPell);
                player->SetSkill(AlchemySkill, 1, 450, 450);
                HandleLearnSkillRecipesHelper(player, AlchemySkill);
                me->Say("Your Alchemy skill is now at max " + player->GetName() + " , talk to me again to continue.", LANG_UNIVERSAL);
                CloseGossipMenuFor(player);
                return false;

            }

            if (action == GOSSIP_ACTION_INFO_DEF + 3004) // HERB
            {
                UpdateInsta80CharData(player, 3);
                player->CastSpell(player, HerbalismSpell);
                player->SetSkill(HerbalismSkill, 1, 450, 450);
                HandleLearnSkillRecipesHelper(player, HerbalismSkill);
                me->Say("Your Herbalism skill is now at max " + player->GetName() + " , talk to me again to continue.", LANG_UNIVERSAL);
                CloseGossipMenuFor(player);
                return false;

            }

            if (action == GOSSIP_ACTION_INFO_DEF + 3005) // mining
            {
                UpdateInsta80CharData(player, 3);
                player->CastSpell(player, MiningSpell);
                player->SetSkill(MiningSKill, 1, 450, 450);
                HandleLearnSkillRecipesHelper(player, MiningSKill);
                me->Say("Your Mining skill is now at max " + player->GetName() + " , talk to me again to continue.", LANG_UNIVERSAL);
                CloseGossipMenuFor(player);
                return false;

            }

            if (action == GOSSIP_ACTION_INFO_DEF + 3006) // tailor
            {
                UpdateInsta80CharData(player, 3);
                player->CastSpell(player, TailoringSpell);
                player->SetSkill(TailoringSKill, 1, 450, 450);
                HandleLearnSkillRecipesHelper(player, TailoringSKill);
                me->Say("Your Tailoring skill is now at max " + player->GetName() + " , talk to me again to continue.", LANG_UNIVERSAL);
                CloseGossipMenuFor(player);
                return false;

            }

            if (action == GOSSIP_ACTION_INFO_DEF + 3007) // eng
            {
                UpdateInsta80CharData(player, 3);
                player->CastSpell(player, EngSPell);
                player->SetSkill(EngSkill, 1, 450, 450);
                HandleLearnSkillRecipesHelper(player, EngSkill);
                me->Say("Your Engineering skill is now at max " + player->GetName() + " , talk to me again to continue.", LANG_UNIVERSAL);
                CloseGossipMenuFor(player);
                return false;

            }

            if (action == GOSSIP_ACTION_INFO_DEF + 3008) // enchanter
            {
                UpdateInsta80CharData(player, 3);
                player->CastSpell(player, EnchanterSpell);
                player->SetSkill(EnchanterSkill, 1, 450, 450);
                HandleLearnSkillRecipesHelper(player, EnchanterSkill);
                me->Say("Your Enchanting skill is now at max " + player->GetName() + " , talk to me again to continue.", LANG_UNIVERSAL);
                CloseGossipMenuFor(player);
                return false;

            }

            if (action == GOSSIP_ACTION_INFO_DEF + 3009) // skinner
            {
                UpdateInsta80CharData(player, 3);
                player->CastSpell(player, SkinningSPell);
                player->SetSkill(SKinningSkill, 1, 450, 450);
                HandleLearnSkillRecipesHelper(player, SKinningSkill);
                me->Say("Your Skinning skill is now at max " + player->GetName() + " , talk to me again to continue.", LANG_UNIVERSAL);
                CloseGossipMenuFor(player);
                return false;

            }

            if (action == GOSSIP_ACTION_INFO_DEF + 3010) // jewel
            {
                UpdateInsta80CharData(player, 3);
                player->CastSpell(player, JewelSpell);
                player->SetSkill(JewelSKill, 1, 450, 450);
                HandleLearnSkillRecipesHelper(player, JewelSKill);
                me->Say("Your Jewelcrafting skill is now at max " + player->GetName() + " , talk to me again to continue.", LANG_UNIVERSAL);
                CloseGossipMenuFor(player);
                return false;

            }

            if (action == GOSSIP_ACTION_INFO_DEF + 3011) // scribe
            {
                UpdateInsta80CharData(player, 3);
                player->CastSpell(player, InscriptSpell);
                player->SetSkill(InscriptSKill, 1, 450, 450);
                HandleLearnSkillRecipesHelper(player, InscriptSKill);
                me->Say("Your Jewelcrafting skill is now at max " + player->GetName() + " , talk to me again to continue.", LANG_UNIVERSAL);
                CloseGossipMenuFor(player);
                return false;

            }
			


            if (action == GOSSIP_ACTION_INFO_DEF + 4000)
            {
                UpdateInsta80CharData(player, 4);
                player->ModifyMoney(1000000000);
                me->Say("Here you go 100K gold! " + player->GetName() + " , talk to me again to continue.", LANG_UNIVERSAL);
                CloseGossipMenuFor(player);
                return true;
            }


            if (action == GOSSIP_ACTION_INFO_DEF + 5000)
            {
                UpdateInsta80CharData(player, 5);
                player->ModifyHonorPoints(175000);
                me->Say("You now have 175000 honor points " + player->GetName() + " , talk to me again to continue.", LANG_UNIVERSAL);
                CloseGossipMenuFor(player);
                return true;
            }

            if (action == GOSSIP_ACTION_INFO_DEF + 6000)
            {
                UpdateInsta80CharData(player, 6);
                player->SetLevel(80);
                me->Say("You now level 80 " + player->GetName() + " , talk to me again to continue.", LANG_UNIVERSAL);
                CloseGossipMenuFor(player);
                return true;
            }

            if (action == GOSSIP_ACTION_INFO_DEF + 7000)
            {
                UpdateInsta80CharData(player, 7); 
                HandleLearnMySpellsCommand(player);
                me->Say("You have learned all spells. Make sure you set your tallents and you may need to visit your class trainer! " + player->GetName() + " , talk to me again to continue.", LANG_UNIVERSAL);
                CloseGossipMenuFor(player);
                return true;
            }

            if (action == GOSSIP_ACTION_INFO_DEF + 8000)
            {
                int bag_id = 23162;
                for (int i = 0; i < 4; ++i)
                {
                    ItemPosCountVec dest;
                    uint8 msg = player->CanStoreNewItem(NULL_BAG, NULL_SLOT, dest, bag_id, 1);
                    if (msg == EQUIP_ERR_OK)
                    {

                        Item* item = player->StoreNewItem(dest, bag_id, 1, true);
                        player->SendNewItem(item, 1, true, false);
                    }
                }
                UpdateInsta80CharData(player, 8);
                player->DestroyItemCount(ITEMCOSTID, 1, true);
                me->Say("4x Mega Bags!" + player->GetName(), LANG_UNIVERSAL);
                me->Yell("All Done! " + player->GetName()+" Enjoy MGAWoW", LANG_UNIVERSAL);
                if (player->GetTeamId() == TEAM_HORDE)
                    sWorld->SendWorldText(30000, "Horde", player->GetName().c_str());
                else
                    sWorld->SendWorldText(30000, "Alliance", player->GetName().c_str());
                CloseGossipMenuFor(player);
                player->SaveToDB();
                return true;
            }
			
            if (action == GOSSIP_ACTION_INFO_DEF + 9995)
            {
                UpdateInsta80CharData(player, 2);
                me->Say("Skipped Proff" + player->GetName(), LANG_UNIVERSAL);
                CloseGossipMenuFor(player);
                return true;
            }
            if (action == GOSSIP_ACTION_INFO_DEF + 9996)
            {
                UpdateInsta80CharData(player, 3);
                me->Say("Skipped Proff" + player->GetName(), LANG_UNIVERSAL);
                CloseGossipMenuFor(player);
                return true;
            }

            if (action == GOSSIP_ACTION_INFO_DEF + 9997)
            {
                me->Say("Everyone gets one free level 80, if you want more see website" + player->GetName(), LANG_UNIVERSAL);
                CloseGossipMenuFor(player);
                return true;
            }


            if (action == GOSSIP_ACTION_INFO_DEF + 9998)
            {
                me->Say("You can only do this once, so pick right!!! " + player->GetName(), LANG_UNIVERSAL);
                CloseGossipMenuFor(player);
                return true;
            }
			
			if (action == GOSSIP_ACTION_INFO_DEF + 9999)
            {
                CloseGossipMenuFor(player);
                return true;
            }
            
            CloseGossipMenuFor(player);
            return true;
        }
    };

    CreatureAI* GetAI(Creature* creature) const override
    {
        return new npc_insta_80AI(creature);
    }
};

void AddSC_npc_insta_80()
{
    new npc_insta_80();
}
