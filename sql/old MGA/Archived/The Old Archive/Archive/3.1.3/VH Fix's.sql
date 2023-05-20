-- remove an adds that are pre-spawned
DELETE from creature WHERE map = 608 AND id = 31079;
DELETE from creature WHERE map = 608 AND id = 30666;
DELETE from creature WHERE map = 608 AND id = 30668;
DELETE from creature WHERE map = 608 AND id = 30667;
DELETE from creature WHERE map = 608 AND id = 32191;
DELETE from creature WHERE map = 608 AND id = 30660;
DELETE from creature WHERE map = 608 AND id = 30695;
DELETE from creature WHERE map = 608 AND id = 30961;
DELETE from creature WHERE map = 608 AND id = 31488;


DELETE from creature_template WHERE entry = 29266;
DELETE from creature_template WHERE entry = 29312;
DELETE from creature_template WHERE entry = 29313;
DELETE from creature_template WHERE entry = 29314;
DELETE from creature_template WHERE entry = 29315;
DELETE from creature_template WHERE entry = 29316;
DELETE from creature_template WHERE entry = 29395;
DELETE from creature_template WHERE entry = 30658;
DELETE from creature_template WHERE entry = 31011;
DELETE from creature_template WHERE entry = 31134;

INSERT INTO creature_template
   (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `unk16`, `unk17`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`)
VALUES
   (29266, 31511, 0, 0, 0, 0,  27486, 0, 0, 0, 'Xevozz', '', '', 77, 77, 227580, 227580, 0, 0, 8822, 16, 16, 0, 1, 1, 1, 371, 522, 0, 478, 7.5, 2000, 0, 1, 832, 0, 0, 0, 0, 0, 0, 314, 466, 81, 7, 72, 29266, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5031, 8385, '', 0, 3, 20, 10, 0, 0, 0, 0, 0, 0, 0, 167, 1, 0, 0, 0, '');

INSERT INTO creature_template
   (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `unk16`, `unk17`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`)
VALUES
   (29312, 31509, 0, 0, 0, 0, 10193, 0, 0, 0, 'Lavanthor', '', '', 77, 77, 227580, 227580, 0, 0, 8822, 16, 16, 0, 1, 1, 1, 371, 522, 0, 478, 7.5, 2000, 0, 1, 832, 0, 0, 0, 0, 0, 0, 314, 466, 81, 1, 72, 29312, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 20, 1, 0, 0, 0, 0, 0, 0, 0, 167, 1, 0, 0, 0, '');

INSERT INTO creature_template
   (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `unk16`, `unk17`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`)
VALUES
   (29313, 31508, 0, 0, 0, 0, 27487, 0, 0, 0, 'Ichoron', '', '', 77, 77, 227580, 227580, 0, 0, 8803, 16, 16, 0, 1, 1, 1, 367, 519, 0, 452, 7.5, 2000, 0, 2, 832, 0, 0, 0, 0, 0, 0, 311, 463, 62, 4, 72, 29313, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 20, 18.7, 0, 42107, 0, 0, 0, 0, 0, 167, 1, 0, 0, 0, '');

INSERT INTO creature_template
   (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `unk16`, `unk17`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`)
VALUES
   (29314, 31512, 0, 0, 0, 0, 27855, 0, 0, 0, 'Zuramat the Obliterator', '', '', 77, 77, 227580, 227580, 0, 0, 8822, 16, 16, 0, 1, 1, 1, 371, 522, 0, 478, 7.5, 2000, 0, 1, 832, 0, 0, 0, 0, 0, 0, 314, 466, 81, 3, 72, 29314, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 20, 1, 0, 0, 0, 0, 0, 0, 0, 167, 1, 0, 0, 0, '');

INSERT INTO creature_template
   (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `unk16`, `unk17`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`)
VALUES
   (29315, 31507, 0, 0, 0, 0, 27488, 0, 0, 0, 'Erekem', '', '', 77, 77, 136548, 136548, 0, 0, 8803, 16, 16, 0, 1, 1, 1, 367, 519, 0, 452, 7.5, 2000, 0, 2, 33600, 0, 0, 0, 0, 0, 0, 311, 463, 62, 7, 72, 29315, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4895, 8159, '', 0, 3, 12, 20, 0, 0, 0, 0, 0, 0, 0, 150, 1, 1410, 0, 0, '');

INSERT INTO creature_template
   (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `unk16`, `unk17`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`)
VALUES
   (29316, 31510, 0, 0, 0, 0, 20590, 0, 0, 0, 'Moragg', '', '', 77, 77, 227580, 227580, 0, 0, 8822, 16, 16, 0, 1, 1, 1, 371, 522, 0, 478, 7.5, 2000, 0, 1, 832, 0, 0, 0, 0, 0, 0, 314, 466, 81, 3, 72, 29316, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 20, 1, 0, 0, 0, 0, 0, 0, 0, 167, 1, 0, 0, 0, '');

INSERT INTO creature_template
   (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `unk16`, `unk17`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`)
VALUES
   (29395, 31513, 0, 0, 0, 0, 18628, 0, 0, 0, 'Erekem Guard', '', '', 76, 76, 44004, 44004, 0, 0, 8520, 16, 16, 0, 1, 1, 1, 356, 503, 0, 432, 7.5, 2000, 0, 1, 33600, 0, 0, 0, 0, 0, 0, 305, 452, 74, 7, 72, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 4, 1, 0, 0, 0, 0, 0, 0, 0, 150, 1, 1449, 0, 0, '');

INSERT INTO creature_template
   (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `unk16`, `unk17`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`)
VALUES
   (30658, 0, 0, 0, 0, 0, 27214, 0, 0, 0, 'Lieutenant Sinclari', '', '', 80, 80, 50400, 50400, 0, 0, 9706, 35, 35, 1, 1, 1, 1, 417, 582, 0, 608, 7.5, 2000, 0, 2, 64, 0, 0, 0, 0, 0, 0, 341, 506, 80, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 4, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 913, 0, 0, '');

INSERT INTO creature_template
   (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `unk16`, `unk17`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`)
VALUES
   (31011, 0, 0, 0, 0, 0, 27393, 0, 0, 0, 'Teleportation Portal (Intro)', '', '', 75, 75, 10635, 10635, 0, 0, 8219, 35, 35, 0, 1, 1, 1, 342, 485, 0, 392, 7.5, 2000, 0, 1, 33555200, 0, 0, 0, 0, 0, 0, 295, 438, 68, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '');

INSERT INTO creature_template
   (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `unk16`, `unk17`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`)
VALUES
   (31134, 31506, 0, 0, 0, 0, 27508, 0, 0, 0, 'Cyanigosa', '', '', 1, 1, 1, 1, 0, 0, 0, 35, 35, 0, 1, 1, 1, 0, 0, 0, 0, 1, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 72, 31134, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 25, 10, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '');

UPDATE `creature_template` SET `ScriptName`='npc_teleportation_portal_vh' WHERE `entry`=31011;
UPDATE `creature_template` SET `ScriptName`='boss_lavanthor' WHERE `entry`=29312;
UPDATE `creature_template` SET `ScriptName`='boss_ichoron' WHERE `entry`=29313;
UPDATE `creature_template` SET `ScriptName`='boss_zuramat' WHERE `entry`=29314;
UPDATE `creature_template` SET `ScriptName`='boss_erekem' WHERE `entry`=29315;
UPDATE `creature_template` SET `ScriptName`='mob_erekem_guard' WHERE `entry`=32226;
UPDATE `creature_template` SET `ScriptName`='boss_moragg' WHERE `entry`=29316;
UPDATE `creature_template` SET `ScriptName`='boss_xevozz' WHERE `entry`=29266;
UPDATE `creature_template` SET `ScriptName`='boss_cyanigosa' WHERE `entry`=31134;
UPDATE `instance_template` SET `script`='instance_violet_hold' WHERE `map`=608;
UPDATE `creature_template` SET `ScriptName`='npc_sinclari_vh', npcflag='1',`minhealth`=ROUND(`minhealth`*4), `maxhealth`=ROUND(`maxhealth`*4) WHERE `entry`='30658'; -- 64

UPDATE `creature_template` SET `modelid1`=5492, `modelid3`=5492 WHERE `entry`='29321';
UPDATE `creature_template` SET `modelid1`=5492, `modelid3`=5492 WHERE `entry`='31515'; -- heroic

DELETE FROM `creature` WHERE map = 608 AND `id`='31011';
DELETE FROM `creature` WHERE map = 608 AND `id`='31134'; -- cyanigosa should not spawn
UPDATE `gameobject_template` SET `flags`=`flags`|4 WHERE `entry` IN (191723,191564,191563,191562,191606,191722,191556,191566,191565); -- door untargetable

UPDATE `creature_template` SET AIName='EventAI',`ScriptName`='' WHERE `entry` IN ('30660','30695','30666','30668','30667','32191');
DELETE FROM creature_ai_scripts WHERE creature_id IN ('30660','30695','30666','30668','30667','32191');
INSERT INTO `creature_ai_scripts` VALUES
('3066001', '30660', '0', '0', '100', '1', '5000', '10000', '30000', '32000', '11', '58504', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Agonizing Strike'),
('3066002', '30660', '0', '0', '100', '1', '12000', '15000', '24000', '30000', '11', '58508', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Side Swipe'),
('3069501', '30695', '0', '0', '100', '3', '5000', '10000', '30000', '32000', '11', '58531', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Arcane Missiles'),
('3069502', '30695', '0', '0', '100', '1', '12000', '15000', '24000', '30000', '11', '58534', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Deep Freeze'),
('3069503', '30695', '0', '0', '100', '3', '12000', '15000', '24000', '30000', '11', '58532', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Frostbolt Volley'),
('3069504', '30695', '0', '0', '100', '5', '5000', '10000', '30000', '32000', '11', '61593', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Arcane Missiles'),
('3069505', '30695', '0', '0', '100', '5', '12000', '15000', '24000', '30000', '11', '61594', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Frostbolt Volley'),
('3066601', '30666', '0', '0', '100', '1', '12000', '15000', '24000', '30000', '11', '32736', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Mortal Strike'),
('3066602', '30666', '0', '0', '100', '3', '12000', '15000', '24000', '30000', '11', '41057', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Whirlwind'),
('3066603', '30666', '0', '0', '100', '5', '5000', '10000', '30000', '32000', '11', '41056', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Whirlwind'),
('3066801', '30668', '0', '0', '100', '1', '12000', '15000', '24000', '30000', '11', '60158', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Magic Reflection'),
('3066802', '30668', '0', '0', '100', '1', '12000', '15000', '24000', '30000', '11', '52719', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Concussion Blow'),
('3066701', '30667', '0', '0', '100', '3', '5000', '10000', '30000', '32000', '11', '60181', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Arcane Stream'),
('3066702', '30667', '0', '0', '100', '3', '12000', '15000', '24000', '30000', '11', '60182', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Mana Detonation'),
('3066703', '30667', '0', '0', '100', '5', '5000', '10000', '30000', '32000', '11', '60204', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Arcane Stream'),
('3066704', '30667', '0', '0', '100', '5', '12000', '15000', '24000', '30000', '11', '60205', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Mana Detonation'),
('3219101', '32191', '0', '0', '100', '1', '11000', '11000', '15000', '15000', '11', '58471', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Backstab'),
('3219102', '32191', '0', '0', '100', '1', '10000', '10000', '15000', '15000', '11', '58470', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Tactical Blink');
DELETE FROM `spell_script_target` WHERE `entry` in (54160,59474);
insert into spell_script_target values (54160, 1, 29266);
insert into spell_script_target values (59474, 1, 29266);