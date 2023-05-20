-- This needs spawning where you get to end of gobln phasing.
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES ('7500001', '0', '0', '0', '0', '0', '27172', '0', '0', '0', 'Phase Corrector', '', '', '0', '80', '80', '2', '35', '35', '3', '1', '1.14286', '1', '1', '801.8', '1113.4', '0', '1220', '7.5', '0', '0', '1', '0', '8', '0', '0', '0', '0', '0', '655.5', '967.1', '134', '6', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1220', '3046', '', '0', '3', '3.1', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', 'mga_temp_gobfix', '1');

-- set back to method 2 once working....
UPDATE `quest_template` SET `Method`='0' WHERE (`entry`='14110');
UPDATE `quest_template` SET `ReqItemId1`='0', `ReqItemId2`='0', `ReqItemId3`='0' WHERE (`entry`='14110');
UPDATE `quest_template` SET `ReqItemCount1`='0', `ReqItemCount2`='0', `ReqItemCount3`='0' WHERE (`entry`='14110');
UPDATE `quest_template` SET `ReqSourceId4`='0', `ReqSourceCount4`='0' WHERE (`entry`='14110');
UPDATE `quest_template` SET `QuestFlags`='786432' WHERE (`entry`='14110');
-- 14110	0	4737	0	1	0	3	0	0	0	0	0	0	0	0	0	0	0	0	0	3670016	0	0	0	0	0	26711	0	0	0	5	0	0	0	The New You	A new outfit? You don't say! There's quite a buzz surrounding your party. Everyone who's anyone on the island is going to be there.$B$BWell, happy shopping. Swindle Street has some of the best bargains anywhere!	Buy some Shiny Bling from Gappy Silvertooth, a Hip New Outfit from Szabo, and some Cool Shades from Missa Spekkies on Swindle Street.	Oh yeah, you're going to look hot! You're going to replace the Trade Prince any day now at the rate you're going!$B$BI can't wait to be a kept man!$B$BLet me have all that stuff and I'll help you get into it right before the party.		Return to your boyfriend, Chip Endale, at KTC Headquarters on Kezan.						47045	47046	47047	0	0	0	1	1	1	0	0	0	0	0	0	47044	0	0	0	10	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1133	0	0	0	0	5	0	0	0	0	0	0	0	0	0	0	0	0	50	150	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0					0	0	890	878	0	0	0	1
UPDATE `quest_template` SET `Method`='0' WHERE (`entry`='14109');
UPDATE `quest_template` SET `ReqItemId1`='0', `ReqItemId2`='0', `ReqItemId3`='0' WHERE (`entry`='14109');
UPDATE `quest_template` SET `ReqItemCount1`='0', `ReqItemCount2`='0', `ReqItemCount3`='0', `ReqSourceId4`='0', `ReqSourceCount4`='0' WHERE (`entry`='14109');
UPDATE `quest_template` SET `QuestFlags`='786432' WHERE (`entry`='14109');
-- 14109	0	4737	0	1	0	3	0	0	0	0	0	0	0	0	0	0	0	0	0	3670016	0	0	0	0	0	26712	0	0	0	5	0	0	0	The New You	A new outfit? You don't say! There's quite a buzz surrounding your party. Everyone who's anyone on the island is going to be there.$B$BWell, happy shopping. Swindle Street has some of the best bargains anywhere!	Buy some Shiny Bling from Gappy Silvertooth, a Hip New Outfit from Szabo, and some Cool Shades from Missa Spekkies on Swindle Street.	Oh, you are going to look so fine, but not as gorgeous as me! You're going to replace the Trade Prince any day now at the rate you're going!$B$BI can't wait to not have to work anymore! You're going to buy me everything that I want, right babe?$B$BLet me have all that stuff and I'll help you get into it right before the party.		Return to your girlfriend, Candy Cane, at KTC Headquarters on Kezan.						47045	47046	47047	0	0	0	1	1	1	0	0	0	0	0	0	47044	0	0	0	10	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1133	0	0	0	0	5	0	0	0	0	0	0	0	0	0	0	0	0	50	150	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0					0	0	890	878	0	0	0	1


UPDATE `quest_template` SET `Method`='0' WHERE (`entry`='14113');
UPDATE `quest_template` SET `Method`='0' WHERE (`entry`='14153');
UPDATE `quest_template` SET `ReqCreatureOrGOId1`='0', `ReqCreatureOrGOCount1`='0' WHERE (`entry`='14113');
UPDATE `quest_template` SET `ReqCreatureOrGOId1`='0', `ReqCreatureOrGOCount1`='0' WHERE (`entry`='14153');
UPDATE `quest_template` SET `QuestFlags`='786432' WHERE (`entry`='14113');
UPDATE `quest_template` SET `QuestFlags`='786432' WHERE (`entry`='14153');
UPDATE `quest_template` SET `Method`='2' WHERE (`entry`='14153');
UPDATE `quest_template` SET `Method`='2' WHERE (`entry`='14113');



UPDATE `quest_template` SET `QuestFlags`='786432', `ReqCreatureOrGOId1`='0', `ReqCreatureOrGOCount1`='0' WHERE (`entry`='14115');
UPDATE `quest_template` SET `Method`='0' WHERE (`entry`='14115');
UPDATE `quest_template` SET `QuestFlags`='786432', `ReqCreatureOrGOId4`='0', `ReqCreatureOrGOCount4`='0' WHERE (`entry`='14125');