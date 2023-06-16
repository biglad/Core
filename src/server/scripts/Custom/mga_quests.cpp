/*
 * This file is part of the TrinityCore Project. See AUTHORS file for Copyright information
 *
 * This program is free software; you can redistribute it and/or modify it
 * under the terms of the GNU General Public License as published by the
 * Free Software Foundation; either version 2 of the License, or (at your
 * option) any later version.
 *
 * This program is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
 * FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for
 * more details.
 *
 * You should have received a copy of the GNU General Public License along
 * with this program. If not, see <http://www.gnu.org/licenses/>.
 */

#include "ScriptMgr.h"
#include "CellImpl.h"
#include "CombatAI.h"
#include "CreatureTextMgr.h"
#include "GameEventMgr.h"
#include "GridNotifiersImpl.h"
#include "Log.h"
#include "MotionMaster.h"
#include "MoveSplineInit.h"
#include "ObjectAccessor.h"
#include "ObjectMgr.h"
#include "PassiveAI.h"
#include "Pet.h"
#include "ScriptedEscortAI.h"
#include "ScriptedGossip.h"
#include "SmartAI.h"
#include "SpellAuras.h"
#include "SpellHistory.h"
#include "SpellMgr.h"
#include "Vehicle.h"
#include "World.h"


/*########
# npc_chicken_cluck
#########*/

enum ChickenCluck1
{
    EMOTE_HELLO_A       = 0,  // ally hellp
    EMOTE_HELLO_H       = 1,  // horde hello
    EMOTE_CLUCK1_TEXT    = 2,  // TEXT to say.

    QUEST_CLUCK1        = 3861  //quest id
};

class npc_chicken_cluck1 : public CreatureScript
{
public:
    npc_chicken_cluck1() : CreatureScript("npc_chicken_cluck1") { }

    struct npc_chicken_cluck1AI : public ScriptedAI
    {
        npc_chicken_cluck1AI(Creature* creature) : ScriptedAI(creature)
        {
            Initialize();
        }

        void Initialize()
        {
            ResetFlagTimer = 120000;
        }

        uint32 ResetFlagTimer;

        void Reset() override
        {
            Initialize();
            me->SetFaction(FACTION_PREY);
            me->RemoveNpcFlag(UNIT_NPC_FLAG_QUESTGIVER);
        }

        void JustEngagedWith(Unit* /*who*/) override { }

        void UpdateAI(uint32 diff) override
        {
            // Reset flags after a certain time has passed so that the next player has to start the 'event' again
            if (me->HasNpcFlag(UNIT_NPC_FLAG_QUESTGIVER))
            {
                if (ResetFlagTimer <= diff)
                {
                    EnterEvadeMode();
                    return;
                }
                else
                    ResetFlagTimer -= diff;
            }

            if (UpdateVictim())
                DoMeleeAttackIfReady();
        }

        void ReceiveEmote(Player* player, uint32 emote) override
        {
            switch (emote)
            {
                case TEXT_EMOTE_CHICKEN:
                    if (player->GetQuestStatus(QUEST_CLUCK1) == QUEST_STATUS_NONE && rand32() % 30 == 1)
                    {
                        me->SetNpcFlag(UNIT_NPC_FLAG_QUESTGIVER);
                        me->SetFaction(FACTION_FRIENDLY);
                        Talk(player->GetTeam() == HORDE ? EMOTE_HELLO_H : EMOTE_HELLO_A);
                    }
                    break;
                case TEXT_EMOTE_CHEER:
                    if (player->GetQuestStatus(QUEST_CLUCK1) == QUEST_STATUS_COMPLETE)
                    {
                        me->SetNpcFlag(UNIT_NPC_FLAG_QUESTGIVER);
                        me->SetFaction(FACTION_FRIENDLY);
                        Talk(EMOTE_CLUCK1_TEXT);
                    }
                    break;
            }
        }

        void OnQuestAccept(Player* /*player*/, Quest const* quest) override
        {
            if (quest->GetQuestId() == QUEST_CLUCK1)
                Reset();
        }

        void OnQuestReward(Player* /*player*/, Quest const* quest, uint32 /*opt*/) override
        {
            if (quest->GetQuestId() == QUEST_CLUCK1)
                Reset();
        }
    };

    CreatureAI* GetAI(Creature* creature) const override
    {
        return new npc_chicken_cluck1AI(creature);
    }
};

void AddSC_npcs_special1()
{ 
    new npc_chicken_cluck1();
    
}
