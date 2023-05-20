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

//#include "../ArkChat/IRCClient.h"
#include "ScriptMgr.h"
#include "ScriptedCreature.h"
#include "ScriptedGossip.h"
#include "GameEventMgr.h"
#include "Player.h"
#include "WorldSession.h"
#include "Creature.h"


#define AGGRO			-1710000 
#define	PAUSEDONE		-1710001
#define	DIEINAOE		-1710002
#define	NABSTORM		-1710003
#define	HABUBBLE		-1710004
#define	NOBUBBLE		-1710005
#define	MINIADDDIE		-1710006
#define	MINIADDFIRE		-1710007
#define	ENRAGE			-1710009
#define	PLAYERDIEADD	-1710010
#define	PLAYERDIE		-1710011

#define WIDOWMAKERPULL	-1710008

#define _QUERY1_ "UPDATE `mga_event_data` SET `active` = '1' WHERE `id` ='1'"
#define _QUERY2_ "UPDATE `mga_event_data` SET `active` = '0' WHERE `id` ='1'"

enum NPCs
{
   NPC_GUARD							= 500924,
   MINI_ADD								= 500926,
   NPC_SLIME							= 500923,
   
   NPC_BOSS_MEDMODE						= 500928,
   NPC_GUARD_MEDMODE					= 500929,
   NPC_BOSS_HARDMODE					= 500930,
   NPC_GUARD_HARDMODE					= 500931,
};

enum Spells
{
	SPELL_ROT_WORM_SPAWNER              = 70675,
	SPELL_FROSTBOLT_VOLLEY              = 70184, //shadow bolt volley spell
	SPELL_FROSTBOLT_VOLLEY2             = 38836, //fire ball volley spell
    SPELL_MANA_VOID                     = 71179,
	SPELL_ICY_GRIP              		= 70117,
	SPELL_FROSTNOVA						= 62597,
	SPELL_IMMOLATE						= 50589,
	SPELL_FIRENOVA						= 43464,
	SPELL_LEAP							= 67880,
	SPELL_EXPLODE						= 67886,
	SPELL_GROW							= 31671,
	SPELL_RADIANCE						= 66935,
	// BOSS SPELLS
	SPELL_SHIELD						= 66515,
	SPELL_COLDFLAME_NORMAL				= 69140,
	SPELL_CLEAVE						= 19983,
	SPELL_FEL_LIGHTING					= 66528,
	SPELL_SLIME_POOL_EFFECT				= 66882,
	SPELL_DEATH_COIL					= 71490,
	SPELL_FELL_FIREBALL					= 66532,
	SPELL_BONE_STORM					= 69076,
	SPELL_FROST_SLOW					= 72217,
	SPELL_ROOT							= 22800,
	SPELL_FEAR							= 65809,
	SPELL_ENRAGE						= 68335,
	SPELL_FINGER						= 31984,
	SPELL_LEECHING_SWARM    			= 66118,
	SPELL_MANA_BURN         			= 66100,
};

class mga_mini_add : public CreatureScript
{
public:
    mga_mini_add() : CreatureScript("mga_mini_add") { }

    struct mga_mini_addAI : public ScriptedAI
    {
        mga_mini_addAI(Creature* creature) : ScriptedAI(creature) {}

        uint32 uiAttackTimer;
		uint32 uiExplodeTimer;
		uint32 uiDespawnTimer;
		uint32 BlindSpell;
		bool HasPopped;

        void Reset()
        {
            uiAttackTimer = 3500;
			uiExplodeTimer = 25000;
			uiDespawnTimer = 10000;
			BlindSpell = 13000; 
			HasPopped = false;
        }

		void EnterEvadeMode() 
		{
			me->DisappearAndDie();
		}
		
		void KilledUnit(Unit* victim)
        {
			if (victim->GetTypeId() == TYPEID_PLAYER)
			{
				me->PlayDirectSound(14565) ; // EbonHold_WomanScream2_01.wav
				me->Say(PLAYERDIEADD, LANG_UNIVERSAL, NULL);
			}
		}

        void UpdateAI(const uint32 uiDiff)
        {
            if (!UpdateVictim())
                return;

            if (uiAttackTimer <= uiDiff)
            {
				uiAttackTimer = 3500;
            } else uiAttackTimer -= uiDiff;

			if (uiExplodeTimer <= uiDiff)
			{
				DoCast(me, SPELL_IMMOLATE, true);
				me->Say(MINIADDFIRE, LANG_UNIVERSAL, NULL);
				uiExplodeTimer = 12000;
				HasPopped = true;
			}
			else uiExplodeTimer -= uiDiff;
			
			if (uiDespawnTimer <= uiDiff && HasPopped)
			{
				me->Say(MINIADDDIE, LANG_UNIVERSAL, NULL);
				me->PlayDirectSound(9818) ; // FelBoarDeathA.wav
				EnterEvadeMode();
			}
			else uiDespawnTimer -= uiDiff;
			


				if (BlindSpell <= uiDiff)
				{
					//DoCast(me, SPELL_RADIANCE );
					Unit* target = SelectTarget(SELECT_TARGET_RANDOM, 0);
					if (target)
						DoCast(target, SPELL_MANA_BURN);
						
					BlindSpell = urand(14000, 18000);
				}	
				else BlindSpell -= uiDiff;

            DoMeleeAttackIfReady();
        }
    };

    CreatureAI* GetAI(Creature* creature) const
    {
        return new mga_mini_addAI(creature);
    }
};

class npc_mga_abomo : public CreatureScript
{
public:
    npc_mga_abomo() : CreatureScript("npc_mga_abomo") { }
	
	CreatureAI* GetAI(Creature* creature) const
    {
        return new npc_mga_abomoAI(creature);
    }
	
    struct npc_mga_abomoAI : public ScriptedAI
    {
        npc_mga_abomoAI(Creature* creature) : ScriptedAI(creature) {}

		uint32 uiSpell1CD;
		uint32 uiSpell2CD;
		uint32 uiSpell3CD;
		uint32 uiSwpadd;
		uint32 BlowAdd;
		uint32 FearCD;

        void Reset()
        {
			uiSpell1CD = urand(1000, 5000);
			uiSpell2CD = urand(8000, 10000+uiSpell1CD);
			uiSpell3CD = uiSpell2CD+500;
			BlowAdd = 14000;
			uiSwpadd = 9500;
			FearCD = 16000;

        }

		void JustSummoned(Creature* summon)
        {
            summon->AI()->AttackStart(me->getVictim());
        }

		void EnterEvadeMode() 
		{
			me->DisappearAndDie();
		}
		
		void JustDied(Unit* /*killer*/)
		{
			if (me->GetEntry() == NPC_GUARD_MEDMODE || me->GetEntry() == NPC_GUARD_HARDMODE)
				DoCast(me, SPELL_ROT_WORM_SPAWNER, true);
		}
		
		void KilledUnit(Unit* victim)
        {
			if (victim->GetTypeId() == TYPEID_PLAYER)
			{
				me->PlayDirectSound(14565) ; // EbonHold_WomanScream2_01.wav
				me->Say(PLAYERDIEADD, LANG_UNIVERSAL, NULL);
			}
		}
		
		void MoveInLineOfSight(Unit* who)
		{
			if (me->IsWithinDistInMap(who, 20.0f) && who->GetTypeId() == TYPEID_PLAYER)
			{
				if (Unit* target = SelectTarget(SELECT_TARGET_RANDOM, 1, 100, true))
				{
					if (target->GetTypeId() == TYPEID_PLAYER)
					{
						me->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE | UNIT_FLAG_OOC_NOT_ATTACKABLE);
						me->SetReactState(REACT_AGGRESSIVE);
						me->AddThreat(target, 100.0f);
						me->SetInCombatWith(target);
						target->SetInCombatWith(me);
						AttackStart(target);
						EnterCombat(who);
					}
				}
			}
			
			
		}
		
		void EnterCombat(Unit* Who)
		{
			me->m_CombatDistance = 100.0f;
			AttackStart(Who);
			DoMeleeAttackIfReady();
			//DoCast(Who, SPELL_FEAR);
		}

        void UpdateAI(const uint32 uiDiff)
        {
			if (me->HasUnitState(UNIT_STAT_CASTING))
               return;

			if (!UpdateVictim())
                return;
			   
			if (uiSpell1CD <= uiDiff)
			{
				DoCast(me, SPELL_FROSTBOLT_VOLLEY ,true);
				uiSpell1CD = urand(7000, 12000);
			}
			else uiSpell1CD -= uiDiff;
			
			if (uiSpell2CD <= uiDiff)
			{
				DoCast(me, SPELL_FROSTBOLT_VOLLEY2);
				uiSpell2CD = urand(10000, 14000);
			}
			else uiSpell2CD -= uiDiff;
			
			if (uiSpell3CD <= uiDiff)
			{
				DoCast(me, SPELL_FROSTNOVA );
				uiSpell3CD = urand(15000, 17000);
			}
			else uiSpell3CD -= uiDiff;
			
			if (uiSwpadd <= uiDiff)
			{
				me->SummonCreature(MINI_ADD, me->GetPositionX()+5, me->GetPositionY()+5, me->GetPositionZ(), 0, TEMPSUMMON_CORPSE_TIMED_DESPAWN, 2000);
				if (me->GetEntry() == NPC_GUARD_HARDMODE)
					me->SummonCreature(MINI_ADD, me->GetPositionX()-5, me->GetPositionY()-5, me->GetPositionZ(), 0, TEMPSUMMON_CORPSE_TIMED_DESPAWN, 2000);
					
				uiSwpadd = urand(60000, 65000);
			}
			else uiSwpadd -= uiDiff;
			

				if (FearCD <= uiDiff)
				{
					Unit* target = SelectTarget(SELECT_TARGET_RANDOM, 0, NonTankTargetSelector(me));
					if (!target)
					{
						Unit* target = SelectTarget(SELECT_TARGET_RANDOM, 0);
						if (target)
							DoCast(target, SPELL_FEAR);
					}
					else
					{
						DoCast(target, SPELL_FEAR);
					}
					FearCD  = urand(38000, 40000);
				}
				else FearCD -= uiDiff;
			
			DoMeleeAttackIfReady();
        }
    };

};


class mga_slime_pool : public CreatureScript
{
public:
    mga_slime_pool() : CreatureScript("mga_slime_pool") { }

    CreatureAI* GetAI(Creature* creature) const
    {
        return new mga_slime_poolAI(creature);
    }

    struct mga_slime_poolAI : public ScriptedAI
    {
        mga_slime_poolAI(Creature* creature) : ScriptedAI(creature)
        {
        }

        bool casted;
        void Reset()
        {
            casted = false;
            me->SetReactState(REACT_PASSIVE);
        }
		
        void UpdateAI(const uint32 /*uiDiff*/)
        {
			if (!casted)
            {
                casted = true;
                DoCast(me, SPELL_SLIME_POOL_EFFECT);
            }
        }
    };

};

class mga_boss_one : public CreatureScript
{
public:
    mga_boss_one() : CreatureScript("mga_boss_one") { }

    CreatureAI* GetAI(Creature* creature) const
    {
        return new mga_boss_oneAI(creature);
    }

    struct mga_boss_oneAI : public ScriptedAI
    {
        mga_boss_oneAI(Creature* creature) : ScriptedAI(creature)
        {
        }

		uint32 CleaveCD;
		uint32 flightningCD;
		uint32 SlimePoolCD;
		uint32 DeathCoilCD;
		uint32 FellFireballCD;
		uint32 BlueSHitCD;
		uint32 IcyGripCD;
		uint32 GuardSpwanCD;
		uint32 NabStormCD;
		uint32 BossPauseTimer;
		uint32 NabStormTimer;
		uint32 ImmuneTimer;
		uint32 ImmuneDuration;
		uint32 pullcheck;
		uint32 EnrageTimer;
		uint32 FingerCD;
		uint32 LeechTimer;
		uint32 DoPullCD;
		bool PauseDone;
		bool HasStarted;
		bool MGAImmune;
		bool HasEnraged;
		bool DoneSwam;
		bool DoPull;

        void Reset()
        {
            //me->SetReactState(REACT_PASSIVE);
			CleaveCD = 2500; //done
			flightningCD = 5000; //done
			DeathCoilCD = 7000; // done
			FellFireballCD = 7000; //done
			BlueSHitCD = 2500; //done
			IcyGripCD = 180000; //done
			GuardSpwanCD = 27000; //done
			SlimePoolCD = 20000; //done
			NabStormCD = 22000; //done
			NabStormTimer = 7000; //done
			BossPauseTimer = 35000; //done
			ImmuneTimer = 30000;
			ImmuneDuration = 20000;
			EnrageTimer = 600000;
			FingerCD = 3000;
			LeechTimer = 6000;
			DoPullCD = urand(22000, 24000);
			PauseDone = false;
			HasStarted = false;
			MGAImmune = false;
			HasEnraged = false;
			DoneSwam = false;
			DoPull = false;
			me->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE);
			me->setFaction(14);
			
        }

		void JustSummoned(Creature* summon)
        {
            summon->AI()->AttackStart(me->getVictim());
        }
		
		void EnterEvadeMode() 
		{
			WorldDatabase.PExecute(_QUERY1_);
			SendMSGToAll("Resistance is Futile, I Am immortal, come back when your ready to try again noobs....");
			me->DisappearAndDie();
			std::string title ="Mega Boss Event";
			std::string msg ="The Mega Boss has won this round, better luck next time | #mgawow ";
			std::string url ="http://wrath.mgawow.co.uk/activity";
			WorldDatabase.PExecute("INSERT INTO `rss_feed` (`title`, `msg`,`url`) VALUES ('%s','%s','%s')", title.c_str(), msg.c_str(), url.c_str());
			WorldDatabase.PExecute("UPDATE `rss_feed` SET `update`='1' WHERE `update`='0'");
		}

		void JustDied(Unit* /*killer*/)
		{
			WorldDatabase.PExecute(_QUERY1_);
			if (me->GetEntry() == NPC_BOSS_HARDMODE)
				SendMSGToAll("Has been downed in 25+ Man Mode.  Well Done!");
			else if (me->GetEntry() == NPC_BOSS_MEDMODE)
				SendMSGToAll("Has been downed in 15-25 Man Mode.  Well Done!");
			else
				SendMSGToAll("Has been downed in 10-15 Man Mode.  Well Done!");
				
			QueryResult result;
			result = WorldDatabase.PQuery("SELECT * FROM `bonus_rewards` WHERE `active` = '1' AND `name` = 'megaboss' LIMIT 1");
			if(result)
			{
				Field *fields = result->Fetch();
				uint32 bitem = fields[2].GetInt32();
				uint32 bcount = fields[3].GetInt32();
				if (bitem > 1 && bcount > 0)
				{
					//SPAWN A CHEST WITH EXTRA LOOTS
					me->SummonGameObject(bitem, me->GetPositionX()+25, me->GetPositionY()+25, me->GetPositionZ(), 0, 0, 0, 0, 0, 30000000);
				}
			}
			std::string title ="Mega Boss Event";
			std::string msg ="The Mega Boss has been DOWNED!!!, well done! | #mgawow ";
			std::string url ="http://wrath.mgawow.co.uk/activity";
			WorldDatabase.PExecute("INSERT INTO `rss_feed` (`title`, `msg`,`url`) VALUES ('%s','%s','%s')", title.c_str(), msg.c_str(), url.c_str());
			WorldDatabase.PExecute("UPDATE `rss_feed` SET `update`='1' WHERE `update`='0'");
		}
		
		void KilledUnit(Unit* victim)
        {
			if (victim->GetTypeId() == TYPEID_PLAYER)
			{
				me->PlayDirectSound(14565) ; // EbonHold_WomanScream2_01.wav
				me->Say(PLAYERDIE, LANG_UNIVERSAL, NULL);
			}
		}
		
		void MoveInLineOfSight(Unit* who)
		{
			if (me->IsWithinDistInMap(who, 10.0f))
			{
				if (me->IsValidAttackTarget(who) && !HasStarted)
				{
				WorldDatabase.PExecute(_QUERY2_);
				me->PlayDirectSound(15771) ; // UR_FemaleYogg_Prefight01.wav
				HasStarted = true;
				EnterCombat(who);
				DoCast(who, SPELL_ROOT); // root
				me->AddThreat(who, 10.0f);
				DoCast(me, SPELL_SHIELD);
				me->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE + UNIT_FLAG_NON_ATTACKABLE);
				//me->GetMotionMaster()->MovePoint(1, me->GetPositionX(),me->GetPositionY(),me->GetPositionZ()+15);
				MGAImmune = true;
				if (me->GetEntry() == NPC_BOSS_MEDMODE)
				{
					me->SummonCreature(NPC_GUARD_MEDMODE, who->GetPositionX()+5, who->GetPositionY()+5, who->GetPositionZ(), 0, TEMPSUMMON_CORPSE_TIMED_DESPAWN, 2000);
					me->SummonCreature(NPC_GUARD_MEDMODE, who->GetPositionX()-5, who->GetPositionY()-5, who->GetPositionZ(), 0, TEMPSUMMON_CORPSE_TIMED_DESPAWN, 2000);
				}
				else if (me->GetEntry() == NPC_BOSS_HARDMODE)
				{
					me->SummonCreature(NPC_GUARD_HARDMODE, who->GetPositionX()+5, who->GetPositionY()+5, who->GetPositionZ(), 0, TEMPSUMMON_CORPSE_TIMED_DESPAWN, 2000);
					me->SummonCreature(NPC_GUARD_HARDMODE, who->GetPositionX()-5, who->GetPositionY()-5, who->GetPositionZ(), 0, TEMPSUMMON_CORPSE_TIMED_DESPAWN, 2000);
					me->SummonCreature(NPC_GUARD_HARDMODE, who->GetPositionX()+10, who->GetPositionY()+10, who->GetPositionZ(), 0, TEMPSUMMON_CORPSE_TIMED_DESPAWN, 2000);
					me->SummonCreature(NPC_GUARD_HARDMODE, who->GetPositionX()-10, who->GetPositionY()-10, who->GetPositionZ(), 0, TEMPSUMMON_CORPSE_TIMED_DESPAWN, 2000);
				}
				else
				{
					me->SummonCreature(NPC_GUARD, who->GetPositionX()+5, who->GetPositionY()+5, who->GetPositionZ(), 0, TEMPSUMMON_CORPSE_TIMED_DESPAWN, 2000);
					me->SummonCreature(NPC_GUARD, who->GetPositionX()-5, who->GetPositionY()-5, who->GetPositionZ(), 0, TEMPSUMMON_CORPSE_TIMED_DESPAWN, 2000);
				}
				SlimePoolCD = 18000;
				me->SummonCreature(NPC_SLIME, who->GetPositionX(), who->GetPositionY(), who->GetPositionZ(), 0, TEMPSUMMON_TIMED_DESPAWN, 30000);
				me->Yell(AGGRO, LANG_UNIVERSAL, NULL);
				DoStartNoMovement(who);
				}
			}
		
		}
		
		void EnterCombat(Unit* Who)
		{
			me->m_CombatDistance = 100.0f;
			AttackStart(Who);
		}

        void UpdateAI(const uint32 uiDiff)
        {
			if (!UpdateVictim())
                return;

			if (EnrageTimer <= uiDiff)
			{
				DoCast(me, SPELL_ENRAGE);
				HasEnraged = true;
				EnrageTimer = 6000000;
				me->Say(ENRAGE, LANG_UNIVERSAL, NULL);
			}
			else EnrageTimer -= uiDiff;

			if (me->HasUnitState(UNIT_STAT_CASTING))
               return;

			if (HasEnraged)
			{
				if (FingerCD <= uiDiff)
				{
					Unit* target = SelectTarget(SELECT_TARGET_RANDOM, 1, 100, true);
					if (target)
						DoCast(target, SPELL_FINGER);
					else
						DoCast(me->getVictim(), SPELL_FINGER);
					FingerCD = 3000;
				}
				else FingerCD -= uiDiff;
			}
		   
			if (BossPauseTimer <= uiDiff && !PauseDone)
			{
				PauseDone = true;
				MGAImmune = false;
				me->RemoveAura(SPELL_SHIELD);
				me->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE + UNIT_FLAG_NON_ATTACKABLE);
				me->GetMotionMaster()->MoveChase(me->getVictim());
				AttackStart(me->getVictim());
				DoStartMovement(me->getVictim());
				SlimePoolCD = urand(12000, 14000);
				me->Yell(PAUSEDONE, LANG_UNIVERSAL, NULL);
				me->PlayDirectSound(15724) ; // UR_XT002_Aggro01.wav
				
			}else BossPauseTimer -= uiDiff;
			

		   if (GuardSpwanCD <= uiDiff)
		   {
				me->PlayDirectSound(5828) ; // AmnennarTheColdbringerSummon01.wav
				if (me->GetEntry() == NPC_BOSS_MEDMODE)
				{
					me->SummonCreature(NPC_GUARD_MEDMODE, me->getVictim()->GetPositionX()-2, me->getVictim()->GetPositionY()+2, me->getVictim()->GetPositionZ(), 0, TEMPSUMMON_CORPSE_TIMED_DESPAWN, 2000);
				}
				else if (me->GetEntry() == NPC_BOSS_HARDMODE)
				{
					me->SummonCreature(NPC_GUARD_HARDMODE, me->getVictim()->GetPositionX()-2, me->getVictim()->GetPositionY()+2, me->getVictim()->GetPositionZ(), 0, TEMPSUMMON_CORPSE_TIMED_DESPAWN, 2000);
				}
				else
				{
					me->SummonCreature(NPC_GUARD, me->getVictim()->GetPositionX()-2, me->getVictim()->GetPositionY()+2, me->getVictim()->GetPositionZ(), 0, TEMPSUMMON_CORPSE_TIMED_DESPAWN, 2000);
				}
			   me->PlayDirectSound(9101) ; // SUCCUBUS_KILL01.wav
			   GuardSpwanCD = urand(26000, 36000);
			   if (me->GetEntry() == NPC_BOSS_MEDMODE)
					GuardSpwanCD = urand(16000, 18000);
			   if (me->GetEntry() == NPC_BOSS_HARDMODE)
			        GuardSpwanCD = urand(12000, 16000);
				if (!PauseDone)
				   GuardSpwanCD = urand(16000, 18000);
		   }
		   else GuardSpwanCD -= uiDiff;

		   	if (me->HasAura(SPELL_BONE_STORM))
			{
				if (NabStormTimer <= uiDiff)
				{
					Unit* target = SelectTarget(SELECT_TARGET_RANDOM, 1, 100, true);
					if (target)
					{
						me->AddThreat(target, 20.0f);
						AttackStart(target);
					}
					me->RemoveAurasDueToSpell(SPELL_BONE_STORM);
					NabStormTimer = 10000;
				}
				else NabStormTimer -= uiDiff;
					
				return;
			}
					
			if (!PauseDone)
			   return;

			if (MGAImmune)
			{
							
				if (ImmuneDuration <= uiDiff)
				{
					MGAImmune = false;
					me->RemoveAura(SPELL_SHIELD);
					me->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE + UNIT_FLAG_NON_ATTACKABLE);
					me->GetMotionMaster()->MoveChase(me->getVictim());
					me->Yell(NOBUBBLE, LANG_UNIVERSAL, NULL);
					DoStartMovement(me->getVictim());
					AttackStart(me->getVictim());
					if (me->GetEntry() == NPC_BOSS_MEDMODE)
						ImmuneDuration = 13000;
					else if (me->GetEntry() == NPC_BOSS_HARDMODE)
						ImmuneDuration = 15000;
					else
						ImmuneDuration = 20000;
				}
				else ImmuneDuration -= uiDiff;
				
				return;
			}
						
		   if (CleaveCD <= uiDiff)
		   {
			   DoCastVictim(SPELL_CLEAVE);
			   CleaveCD = urand(4000, 6000);
		   }
		   else CleaveCD -= uiDiff;

		   if (FellFireballCD <= uiDiff)
		   {
			   Unit* target = SelectTarget(SELECT_TARGET_RANDOM, 0, NonTankTargetSelector(me));
				if (!target)
					target = SelectTarget(SELECT_TARGET_RANDOM, 1, 100, true);
				if (target)
					DoCast(target, SPELL_FELL_FIREBALL);

				FellFireballCD = urand(14000, 19000);
		   }
		   else FellFireballCD -= uiDiff;

		   if (BlueSHitCD <= uiDiff)
		   {
			   DoCastAOE(SPELL_COLDFLAME_NORMAL);
			   BlueSHitCD = urand(4000, 6000);
			   DoCastAOE(SPELL_COLDFLAME_NORMAL);
		   }
		   else BlueSHitCD -= uiDiff;
	
			if (DoPullCD <= uiDiff)
			{
				DoPull = false;
				DoPullCD = urand(22000, 24000);
			}
			else DoPullCD -= uiDiff;
		   
			if (SlimePoolCD <= uiDiff)
			{
			   if (me->GetEntry() == NPC_BOSS_MEDMODE)
					pullcheck = urand(1, 5);
				else if (me->GetEntry() == NPC_BOSS_HARDMODE)
					pullcheck = urand(1, 4);
				else
					pullcheck = urand(1, 6);
			   Unit* target = SelectTarget(SELECT_TARGET_RANDOM, 1, 100, true);
			   if (target && pullcheck < 2)
			   {
					DoCast(target, SPELL_ROOT); // root
					me->SummonCreature(NPC_SLIME, target->GetPositionX(), target->GetPositionY(), target->GetPositionZ(), 0, TEMPSUMMON_TIMED_DESPAWN, 29000);
					me->Yell(DIEINAOE, LANG_UNIVERSAL, NULL); 
			   }
			   else if (pullcheck > 1 && pullcheck < 3 && !DoPull)
			   {
					DoPull = true;
					DoCast(me, SPELL_FROST_SLOW );
					DoStartNoMovement(me->getVictim());
					me->SummonCreature(NPC_SLIME, me->GetPositionX(), me->GetPositionY(), me->GetPositionZ(), 0, TEMPSUMMON_TIMED_DESPAWN, 29000);
					me->Say(WIDOWMAKERPULL, LANG_UNIVERSAL, NULL);
					DoCast(me, SPELL_ICY_GRIP );
					me->Yell(DIEINAOE, LANG_UNIVERSAL, NULL);
			   }
			   else
			   {
					if (target)
					{
						DoCast(target, SPELL_ROOT); // root
						me->SummonCreature(NPC_SLIME, target->GetPositionX(), target->GetPositionY(), target->GetPositionZ(), 0, TEMPSUMMON_TIMED_DESPAWN, 29000);
					}
					else
					{
						DoCast(me->getVictim(), SPELL_ROOT); // root
						me->SummonCreature(NPC_SLIME, me->getVictim()->GetPositionX(), me->getVictim()->GetPositionY(), me->getVictim()->GetPositionZ(), 0, TEMPSUMMON_TIMED_DESPAWN, 29000);
					}
					me->Yell(DIEINAOE, LANG_UNIVERSAL, NULL); 
			   }
			   
			   if (me->GetEntry() == NPC_BOSS_HARDMODE)
			   {
					Unit* target = SelectTarget(SELECT_TARGET_RANDOM, 1, 100, true);
					if (target)
					{
						DoCast(target, SPELL_ROOT); // root
						me->SummonCreature(NPC_SLIME, target->GetPositionX(), target->GetPositionY(), target->GetPositionZ(), 0, TEMPSUMMON_TIMED_DESPAWN, 29000);
					}
			   }
			   
			   if (me->GetEntry() == NPC_BOSS_MEDMODE)
			   {
					Unit* target = SelectTarget(SELECT_TARGET_RANDOM, 1, 100, true);
					if (target)
					{
						DoCast(target, SPELL_FELL_FIREBALL);
					}
			   }
			   
			   SlimePoolCD = urand(15000, 20000);
		   }
		   else SlimePoolCD -= uiDiff;
		   
		   if (IcyGripCD <= uiDiff)
		   {
		        DoCast(me, SPELL_ICY_GRIP );
				me->GetMotionMaster()->MoveChase(me->getVictim());
				IcyGripCD = 300000;
		   }
		   else IcyGripCD -= uiDiff;

		   if (NabStormCD <= uiDiff)
		   {
			   Unit* target = SelectTarget(SELECT_TARGET_RANDOM, 1, 100, true);
			   if (target)
			   {
				   AttackStart(target);
				   me->AddThreat(target, 100.0f);
				   me->GetMotionMaster()->MoveChase(target);
			   }
			   DoCast(me, SPELL_BONE_STORM);
			   me->Yell(NABSTORM, LANG_UNIVERSAL, NULL);
			   NabStormCD = urand(19000, 24000);
			   if (me->GetEntry() == NPC_BOSS_MEDMODE)
					NabStormCD = urand(15000, 20000);
				if (me->GetEntry() == NPC_BOSS_HARDMODE)
					NabStormCD = urand(15000, 20000);
		   }
		   else NabStormCD -= uiDiff;

		   if (flightningCD <= uiDiff)
		   {
			   Unit* target = SelectTarget(SELECT_TARGET_RANDOM, 1, 100, true);
			   if (target)
				   DoCast(target, SPELL_FEL_LIGHTING);

			   flightningCD = urand(9000, 14000);
		   }
		   else flightningCD -= uiDiff;

		   /*if (DeathCoilCD <= uiDiff)
		   {
			   Unit* target = SelectTarget(SELECT_TARGET_RANDOM, 1, 100, true);
			   if (target)
				   DoCast(target, SPELL_DEATH_COIL);

			   DeathCoilCD  = urand(7000, 26000);
		   }
		   else DeathCoilCD  -= uiDiff;*/

		   if (ImmuneTimer <= uiDiff)
		   {
			   MGAImmune = true;
			   me->PlayDirectSound(6918) ; // HumanFemaleLaugh01.wav
			   me->Yell(HABUBBLE, LANG_UNIVERSAL, NULL);
			   DoCast(me, SPELL_SHIELD);
			   me->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE + UNIT_FLAG_NON_ATTACKABLE);
			   //me->GetMotionMaster()->MovePoint(1, me->GetPositionX(),me->GetPositionY(),me->GetPositionZ()+15);
			   DoStartNoMovement(me->getVictim());
			   ImmuneTimer = 30000;
			   if (me->GetEntry() == NPC_BOSS_MEDMODE)
					ImmuneTimer = 25000;
			    if (me->GetEntry() == NPC_BOSS_HARDMODE)
					ImmuneTimer = 20000;
		   }
		   else ImmuneTimer  -= uiDiff;
		   
		if (me->GetEntry() == NPC_BOSS_HARDMODE && me->HealthBelowPct(10) && !DoneSwam)
		{
			if (LeechTimer <= uiDiff)
			{
				DoCastAOE(SPELL_LEECHING_SWARM);
				DoneSwam = true;
			}
			else LeechTimer -= uiDiff;
		}
		
		if (me->GetEntry() == NPC_BOSS_MEDMODE && me->HealthBelowPct(3) && !DoneSwam)
		{
			if (LeechTimer <= uiDiff)
			{
				DoCastAOE(SPELL_LEECHING_SWARM);
				DoneSwam = true;
			}
			else LeechTimer -= uiDiff;
		}
		
		if (me->GetEntry() != NPC_BOSS_MEDMODE && me->GetEntry() != NPC_BOSS_HARDMODE && me->HealthBelowPct(1) && !DoneSwam)
		{
			if (LeechTimer <= uiDiff)
			{
				DoCastAOE(SPELL_LEECHING_SWARM);
				DoneSwam = true;
			}
			else LeechTimer -= uiDiff;
		}

		if (DoneSwam && me->HealthAbovePct(15))
		{	
			DoneSwam = false;
			me->RemoveAurasDueToSpell(SPELL_LEECHING_SWARM);
			if (me->GetEntry() == NPC_BOSS_HARDMODE)
				EnrageTimer = (EnrageTimer+60000);
			else if (me->GetEntry() == NPC_BOSS_MEDMODE)
				EnrageTimer = (EnrageTimer+120000);
			else
				EnrageTimer = (EnrageTimer+300000);
		}
		
					
		DoMeleeAttackIfReady();
        }
		
		

		void SendMSGToAll(std::string bossmode)
		{
			std::string ircchan = "#";
			ircchan += sIRC._irc_chan[sIRC.anchn].c_str();
			std::string tmpstr = "";
			std::stringstream ss;
			ss << "MGA Boss ";
			ss << bossmode;
			sIRC.Send_IRC_Channel(ircchan, sIRC.MakeMsg("\00304,08\037/!\\\037\017\00304 MGA Event Announcer \00304,08\037/!\\\037\017 %s", "%s", ss.str().c_str()), true);
			//sWorld->SendWorldText(9999, ss.str().c_str());
		}

	};

};

// END
void AddSC_mga_boss()
{
    new npc_mga_abomo();
	new mga_slime_pool();
	new mga_boss_one();
	new mga_mini_add();
}
