-- ( NPC Argent Valiant)
DELETE FROM `creature` WHERE `id`=33448;
UPDATE `creature_template` SET `npcflag`=0, `faction_A`=14, `faction_H`=14, `equipment_id`=33698 WHERE `entry`='33448';
UPDATE `creature_template_addon` SET `mount`=28918, `auras`="63500 0" WHERE `entry`='33448';
-- (NPC Squire David)
UPDATE `creature_template` SET `npcflag`=1, `unit_flags`=131072, `spell1`=0, `ScriptName`='npc_squire_david' WHERE `entry`='33447';

UPDATE `creature_template` SET `ScriptName` = "npc_lake_frog" WHERE `entry` = 33224;

UPDATE `quest_template` SET `ReqCreatureOrGOId1` = 33707 WHERE `entry` in (13727, 13728, 13729, 13731, 13726, 13725, 13713, 13723, 13724, 13699);
-- NPC Argent Champion
DELETE FROM `creature` WHERE `id`=33707;
UPDATE `creature_template` SET `npcflag` = 0, `faction_A` = 14, `faction_H` = 14 WHERE `entry` = 33707;
-- NPC Squire Danny
UPDATE `creature_template` SET `npcflag` = 1, `ScriptName` = 'npc_squire_danny' WHERE `entry` = 33518;