INSERT INTO `npc_gossip` (npc_guid,textid) VALUES (129939,13584);
DELETE FROM `creature_addon` WHERE `guid` = 127603;
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES
(127603, 0, 29262, 0, 1, 0, '63403 0 62852 0 64723 0');
DELETE FROM `creature_addon` WHERE `guid` = 127604;
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES
(127604, 0, 29262, 0, 1, 0, '63403 0 62852 0 64723 0');
DELETE FROM `creature_addon` WHERE `guid` = 127605;
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES
(127605, 0, 28571, 0, 1, 0, '63396 0 62852 0 64723 0');
DELETE FROM `creature_addon` WHERE `guid` = 127606;
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES
(127606, 0, 28571, 0, 1, 0, '63396 0 62852 0 64723 0');
DELETE FROM `creature_addon` WHERE `guid` = 127607;
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES
(127607, 0, 29258, 0, 1, 0, '63427 0 62852 0 64723 0');
DELETE FROM `creature_addon` WHERE `guid` = 127608;
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES
(127608, 0, 29258, 0, 1, 0, '63427 0 62852 0 64723 0');
DELETE FROM `creature_addon` WHERE `guid` = 127609;
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES
(127609, 0, 28912, 0, 1, 0, '62594 0 62852 0 64723 0');
DELETE FROM `creature_addon` WHERE `guid` = 127610;
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES
(127610, 0, 28912, 0, 1, 0, '62594 0 62852 0 64723 0');
DELETE FROM `creature_addon` WHERE `guid` = 127612;
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES
(127612, 0, 29256, 0, 1, 0, '63406 0 62852 0 64723 0');
DELETE FROM `creature_addon` WHERE `guid` = 127611;
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES
(127611, 0, 29256, 0, 1, 0, '63406 0 62852 0 64723 0');
DELETE FROM `creature_addon` WHERE `guid` = 127593;
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES
(127593, 0, 29255, 0, 1, 0, '63423 0 62852 0 64723 0');
DELETE FROM `creature_addon` WHERE `guid` = 127594;
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES
(127594, 0, 29255, 0, 1, 0, '63423 0 62852 0 64723 0');
DELETE FROM `creature_addon` WHERE `guid` = 127595;
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES
(127595, 0, 29257, 0, 1, 0, '63430 0 62852 0 64723 0');
DELETE FROM `creature_addon` WHERE `guid` = 127596;
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES
(127596, 0, 29257, 0, 1, 0, '63430 0 62852 0 64723 0');
DELETE FROM `creature_addon` WHERE `guid` = 127597;
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES
(127597, 0, 29261, 0, 1, 0, '63399 0 62852 0 64723 0');
DELETE FROM `creature_addon` WHERE `guid` = 127598;
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES
(127598, 0, 29261, 0, 1, 0, '63399 0 62852 0 64723 0');
DELETE FROM `creature_addon` WHERE `guid` = 127599;
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES
(127599, 0, 29260, 0, 1, 0, '63433 0 62852 0 64723 0');
DELETE FROM `creature_addon` WHERE `guid` = 127600;
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES
(127600, 0, 29260, 0, 1, 0, '63433 0 62852 0 64723 0');
DELETE FROM `creature_addon` WHERE `guid` = 127601;
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES
(127601, 0, 29259, 0, 1, 0, '63436 0 62852 0 64723 0');
DELETE FROM `creature_addon` WHERE `guid` = 127602;
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES
(127602, 0, 29259, 0, 1, 0, '63436 0 62852 0 64723 0');
UPDATE `creature_template` SET `InhabitType` = 3, `equipment_id` = 33698 WHERE `entry` = 33780 ;
DELETE FROM `creature` WHERE `guid` = 136670 ;
DELETE FROM `creature` WHERE `guid` = 136666 ;
DELETE FROM `creature` WHERE `guid` = 136671 ;
DELETE FROM `creature` WHERE `guid` = 136672 ;
DELETE FROM `creature` WHERE `guid` = 136665 ;
DELETE FROM `creature` WHERE `guid` = 136669 ;
DELETE FROM `creature` WHERE `guid` = 136667 ;
DELETE FROM `creature` WHERE `guid` = 136668 ;
UPDATE `gameobject_template` SET `flags` = 4 WHERE `entry` = 195597 ;
DELETE FROM `gameobject` WHERE `id`=70000;
INSERT INTO `gameobject` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecs`,`animprogress`,`state`) VALUES
(700010, 195597, 571, 1, 1, 8515.01, 831.332, 558.454, 1.5708, 0, 0, 0.707107, 0.707107, 180, 255, 1);
UPDATE `creature_template` SET `equipment_id` = 117 WHERE `entry` = 35467 ;
UPDATE `creature_template` SET `equipment_id` = 1026 WHERE `entry` = 35462 ;
UPDATE `creature_template` SET `equipment_id` = 106 WHERE `entry` = 33854 ;
UPDATE `gameobject_template` SET `flags` = 6553636 WHERE `entry` = 191364 ;
UPDATE `creature_template` SET `npcflag` = 1 WHERE `entry` = 33746 ;
UPDATE `creature_template` SET `npcflag` = 1 WHERE `entry` = 33740 ;
UPDATE `creature_template` SET `npcflag` = 1 WHERE `entry` = 33743 ;
UPDATE `creature_template` SET `npcflag` = 1 WHERE `entry` = 33747 ;
UPDATE `creature_template` SET `npcflag` = 1 WHERE `entry` = 33738 ;
UPDATE `creature_template` SET `npcflag` = 1 WHERE `entry` = 33739 ;
UPDATE `creature_template` SET `npcflag` = 1 WHERE `entry` = 33749 ;
UPDATE `creature_template` SET `npcflag` = 1 WHERE `entry` = 33745 ;
UPDATE `creature_template` SET `npcflag` = 1 WHERE `entry` = 33744 ;
UPDATE `creature_template` SET `npcflag` = 1 WHERE `entry` = 33748 ;
INSERT INTO `npc_gossip` (npc_guid,textid) VALUES (129929,14692);
INSERT INTO `npc_gossip` (npc_guid,textid) VALUES (129516,14692);
INSERT INTO `npc_gossip` (npc_guid,textid) VALUES (129928,14692);
INSERT INTO `npc_gossip` (npc_guid,textid) VALUES (127465,14761);
INSERT INTO `npc_gossip` (npc_guid,textid) VALUES (127586,14779);
INSERT INTO `npc_gossip` (npc_guid,textid) VALUES (127614,14751);
UPDATE `creature_template` SET `npcflag` = 1 WHERE `entry` = 33518 ;
INSERT INTO `npc_gossip` (npc_guid,textid) VALUES (127613,14335);
UPDATE `creature_template` SET `npcflag` = 1 WHERE `entry` = 33522 ;
INSERT INTO `npc_gossip` (npc_guid,textid) VALUES (127444,14409);
DELETE FROM `creature` WHERE `guid` = 129086 ;
DELETE FROM `creature` WHERE `guid` = 129084 ;
DELETE FROM `creature` WHERE `guid` = 129081 ;
DELETE FROM `creature` WHERE `guid` = 129082 ;
DELETE FROM `creature` WHERE `guid` = 129083 ;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`) VALUES
(129086, 33780, 571, 1, 1, 0, 33698, 8509.65, 1197.48, 604.339, 0.0895271, 300, 0, 0, 50400, 11982, 0, 0),
(129084, 33780, 571, 1, 1, 0, 33698, 8487.83, 1183.69, 604.339, 4.1414, 300, 0, 0, 50400, 11982, 0, 0),
(129081, 33780, 571, 1, 1, 0, 33698, 8506.62, 1184.83, 604.339, 5.24252, 300, 0, 0, 50400, 11982, 0, 0),
(129082, 33780, 571, 1, 1, 0, 33698, 8341.53, 839.959, 586.264, 5.51349, 300, 0, 0, 50400, 11982, 0, 0),
(129083, 33780, 571, 1, 1, 0, 33698, 8341.92, 853.067, 586.264, 0.187705, 300, 0, 0, 50400, 11982, 0, 0),
(136668, 33780, 571, 1, 1, 0, 33698, 8323.82, 835.368, 586.264, 4.40529, 300, 0, 0, 50400, 11982, 0, 0),
(136667, 33780, 571, 1, 1, 0, 33698, 8618.38, 577.4, 586.304, 2.4575, 300, 0, 0, 50400, 11982, 0, 0),
(136669, 33780, 571, 1, 1, 0, 33698, 8618.25, 564.399, 586.304, 3.51936, 300, 0, 0, 50400, 11982, 0, 0),
(136665, 33780, 571, 1, 1, 0, 33698, 8636.01, 583.496, 586.304, 1.4789, 300, 0, 0, 50400, 11982, 0, 0);
DELETE FROM `creature_addon` WHERE `guid` IN (136668,136667,136669,136665) ;
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES
(136668, 0, 22471, 0, 1, 0, ''),
(136667, 0, 22471, 0, 1, 0, ''),
(136669, 0, 22471, 0, 1, 0, ''),
(136665, 0, 22471, 0, 1, 0, '');
DELETE FROM `creature_addon` WHERE `guid` IN (136649,136650,136651,136652,136653,136654) ;
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES
(136649, 0, 0, 1, 0, 0, ''),
(136650, 0, 0, 1, 0, 0, ''),
(136651, 0, 0, 1, 0, 0, ''),
(136652, 0, 0, 1, 0, 0, ''),
(136653, 0, 0, 1, 0, 0, ''),
(136654, 0, 0, 1, 0, 0, '');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES 
(581340, 181273, 571, 1, 1, 8530.56, 647.24, 558.537, 0, 0, 0, 0, 1, 180, 255, 1);
UPDATE `creature_template` SET `IconName` = '' WHERE `entry` = 33788 ;
UPDATE `creature_template` SET `InhabitType` = 3 WHERE `entry` = 30281 ;
UPDATE `creature_template` SET `unit_flags` = 2 WHERE `entry` = 35467 ;
UPDATE `creature_template` SET `unit_flags` = 2 WHERE `entry` = 35462 ;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(741360, 8996, 571, 1, 1, 1132, 0, 8530.4, 654.056, 558.538, 4.73201, 180, 0, 0, 1, 0, 0, 0);
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(741761, 8996, 571, 1, 1, 1132, 0, 8525.75, 652.275, 558.538, 5.30849, 180, 0, 0, 1, 0, 0, 0);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES
('40000','0','0','0','0','0','850','0','850','0','Felhunter Minion','',NULL,'0','55','56','2','84','84','0','1.3','1','0','62','94','0','23','1.4','1500','1500','2','0','0','15','0','0','0','0','50','75','18','3','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','0','1','11970','0.77','1','0','0','0','0','0','0','0','121','1','0','0','0','','11403');
UPDATE `creature_template` SET `faction_A` = 1750, `faction_H` = 1750 WHERE `entry` = 40000 ;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(741765, 40000, 571, 1, 1, 0, 0, 8537.01, 649.717, 558.538, 3.52564, 300, 0, 0, 42, 0, 0, 0);
DELETE FROM `gameobject_template` WHERE `entry` = 799800 ;
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `faction`, `flags`, `size`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `ScriptName`) VALUES 
(799800, 5, 8050, 'Demonic Circle: Summon', '', '', '', 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES 
(741766, 799800, 571, 1, 1, 8530.6, 646.969, 558.537, 4.77442, 0, 0, 0.684841, -0.728693, 300, 0, 1);
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(7417653, 40000, 571, 1, 1, 0, 0, 8498.73, 658.712, 558.537, 4.69273, 300, 0, 0, 25029270, 1630, 0, 0);
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(741769, 8996, 571, 1, 1, 0, 0, 8503.98, 647.25, 558.537, 5.21345, 300, 0, 0, 1649, 0, 0, 0);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES
('40001','0','0','0','0','0','4162','0','4162','0','Succubus Minion','',NULL,'0','63','70','0','119','119','0','1','1','0','123','184','0','46','0.9','1500','1500','2','0','0','0','0','0','0','0','98','147','37','3','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','1600','1600','EventAI','0','1','0.7','0.87','1','0','0','0','0','0','0','0','121','1','0','0','0','','11403');
UPDATE `creature_template` SET `faction_A` = 1750, `faction_H` = 1750 WHERE `entry` = 40001 ;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`) VALUES
(741762, 40001, 571, 1, 1, 4162, 0, 8535.25, 652.452, 558.538, 4.09113, 180, 0, 0, 1, 0, 0, 0),
(741768, 40001, 571, 1, 1, 0, 0, 8507.79, 643.948, 558.537, 2.26349, 300, 0, 0, 1865, 2279, 0, 0);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES
('40002','0','0','0','0','0','4449','0','4449','0','Imp Minion','',NULL,'0','66','80','0','35','35','0','0.59','1','0','142','214','0','53','1','1500','1500','8','0','0','0','0','0','0','0','114','171','42','3','0','0','0','0','0','0','0','0','0','0','20801','0','0','0','0','0','0','0','0','0','0','0','EventAI','0','3','0.273068','0.33','1','0','0','0','0','0','0','0','121','1','0','0','2','','11403');
UPDATE `creature_template` SET `faction_A` = 1750, `faction_H` = 1750 WHERE `entry` = 40002 ;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`) VALUES
(741763, 12922, 571, 1, 1, 0, 0, 8524.78, 645.027, 558.538, 0.428812, 300, 0, 0, 1147, 2577, 0, 0),
(741764, 12922, 571, 1, 1, 0, 0, 8532.67, 642.594, 558.538, 1.71451, 300, 0, 0, 1281, 2791, 0, 0);
UPDATE quest_template SET RewRepValue1=6000 WHERE `entry`=13188; 
insert into `spell_script_target` (`entry`, `type`, `targetEntry`) values('52479','1','28819');
insert into `spell_script_target` (`entry`, `type`, `targetEntry`) values('52479','1','28822'); 
-- NPC: http://www.wowhead.com/?npc=29174
-- This NPC is on the world but need to be summoning by the event script
DELETE FROM `creature`WHERE `guid`=116851 AND `id`=29174;
DELETE FROM `creature`WHERE `guid`=116848 AND `id`=29174;
DELETE FROM `creature`WHERE `guid`=116850 AND `id`=29174;
DELETE FROM `creature`WHERE `guid`=116849 AND `id`=29174;
-- NPC: http://www.wowhead.com/?npc=29177
-- This NPC is on the world but need to be summoning by the event script
DELETE FROM `creature`WHERE `guid`=114625 AND `id`=29177;
-- NPC: http://www.wowhead.com/?npc=29178
-- This NPC is on the world but need to be summoning by the event script
DELETE FROM `creature`WHERE `guid`=116879 AND `id`=29178;
-- NPC: http://www.wowhead.com/?npc=29181
-- This NPC is on the world but need to be summoning by the event script
DELETE FROM `creature`WHERE `guid`=116884 AND `id`=29181;
-- NPC: http://www.wowhead.com/?npc=29176
-- This NPC is on the world but need to be summoning by the event script
DELETE FROM `creature`WHERE `guid`=116875 AND `id`=29176;
-- NPC: http://www.wowhead.com/?npc=29180
-- This NPC is on the world but need to be summoning by the event script
DELETE FROM `creature`WHERE `guid`=116854 AND `id`=29180;
-- NPC: http://www.wowhead.com/?npc=29177
-- This NPC is on the world but need to be summoning by the event script
DELETE FROM `creature`WHERE `guid`=116885 AND `id`=29182;
-- NPC: http://www.wowhead.com/?npc=29179
-- This NPC is on the world but need to be summoning by the event script
DELETE FROM `creature`WHERE `guid`=116878 AND `id`=29179;
-- NPC: http://www.wowhead.com/?npc=29175
-- This NPC is on the world but need to be summoning by the event script
DELETE FROM `creature`WHERE `guid`=116863 AND `id`=29175;
-- NPC: http://www.wowhead.com/?npc=29190
-- This NPC is on the world but need to be summoning by the event script
DELETE FROM `creature`WHERE `guid`=116858 AND `id`=29190; 
-- Fix NPC's Nazan and Vazruden
-- http://www.wowhead.com/?npc=17536
-- http://www.wowhead.com/?npc=17537
-- They can't be in world, because they spawned on script

DELETE FROM `creature_template` WHERE `entry` IN (17536,17537,17307,18435,18432) ;
DELETE FROM `creature` WHERE `guid`= 2000040;
DELETE FROM `creature` WHERE `guid` IN ('53824', '53825');
DELETE FROM `creature_addon` WHERE `guid` IN ('53824', '53825');  
DELETE FROM `gameobject_template` WHERE `entry` IN (185169,185168) ;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Health_mod`, `Mana_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(17536, 18432, 0, 0, 0, 0, 18812, 0, 0, 0, 'Nazan', 'Vazruden\'s Mount', '', 0, 62, 62, 1, 14, 14, 0, 1.48, 1, 1, 1033, 1308, 0, 540, 1, 1318, 1551, 1, 1, 0, 0, 0, 0, 0, 0, 291.13, 405.862, 100, 2, 8, 17536, 0, 70065, 0, 0, 0, 0, 0, 0, 34653, 36920, 0, 0, 0, 0, 0, 0, 0, 0, 3885, 5078, '', 0, 7, 6.25, 1, 0, 23901, 0, 0, 0, 0, 0, 216, 1, 0, 805306367, 0, 'boss_nazan', 11403),
(17537, 18434, 0, 0, 0, 0, 18407, 0, 0, 0, 'Vazruden', '', '', 0, 62, 62, 1, 1662, 1662, 0, 1.48, 1, 1, 1118, 1416, 0, 585, 1, 1318, 1551, 1, 64, 0, 0, 0, 0, 0, 0, 291.13, 405.862, 100, 7, 8, 17537, 0, 0, 0, 0, 0, 0, 0, 0, 19130, 15655, 30689, 0, 0, 0, 0, 0, 0, 0, 2865, 3746, '', 1, 3, 3.6, 1, 0, 0, 0, 0, 0, 0, 0, 144, 1, 997, 805306367, 0, 'boss_vazruden', 11403),
(17307, 18435, 0, 0, 0, 0, 18944, 0, 0, 0, 'Vazruden the Herald', '', '', 0, 62, 62, 1, 40, 40, 0, 1.48, 1, 1, 172, 240, 0, 262, 4.6, 2000, 0, 1, 576, 0, 0, 0, 0, 0, 0, 139, 207, 30, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 1, 7, 6.25, 1, 0, 23901, 0, 0, 0, 0, 0, 216, 1, 0, 0, 0, 'boss_vazruden_the_herald', 11403);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Health_mod`, `Mana_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES 
(18435, 0, 0, 0, 0, 0, 18944, 0, 0, 0, 'Vazruden the Herald (1)', '', '', 0, 72, 72, 1, 40, 40, 0, 1.48, 1, 1, 307, 438, 0, 314, 5.9, 2000, 0, 1, 576, 0, 0, 0, 0, 0, 0, 270, 401, 53, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 36921, 33793, 39427, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 4, 12, 1, 0, 33833, 23901, 0, 0, 0, 0, 216, 1, 0, 0, 0, ''),
(18432, 0, 0, 0, 0, 0, 18812, 0, 0, 0, 'Nazan (1)', 'Vazruden\'s Mount', '', 0, 72, 72, 1, 14, 14, 0, 1.48, 1, 1, 2787, 3613, 0, 1477, 1, 1318, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 8, 18432, 0, 0, 0, 210, 210, 210, 210, 210, 36921, 33793, 39427, 0, 0, 0, 0, 0, 0, 0, 7770, 10156, '', 0, 3, 12, 1, 0, 33833, 23901, 0, 0, 0, 0, 216, 1, 0, 805306367, 0, '');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(2000040, 17307, 543, 3, 1, 0, 0, -1365.65, 1790.68, 106.545, 2.55632, 7200, 0, 0, 33381, 0, 0, 2); 
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `faction`, `flags`, `size`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `ScriptName`) VALUES 
(185169, 3, 5744, 'Reinforced Fel Iron Chest', '', '', '', 0, 6553616, 2, 0, 0, 0, 0, 0, 0, 1634, 185169, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(185168, 3, 5744, 'Reinforced Fel Iron Chest', '', '', '', 0, 0, 2, 0, 0, 0, 0, 0, 0, 1634, 185168, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `gameobject` SET `spawntimesecs`='-43200' WHERE `guid` IN ('40114', '26314');
UPDATE `creature_linked_respawn` SET `LinkedGuid` = 2000040 WHERE `guid` IN (53822, 53823, 75050, 75051);
DELETE from `creature_template` WHERE entry = 28817;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES
('28817','0','0','0','0','0','25703','25572','0','0','Mine Car','','','0','1','1','0','35','35','0','1','1','0','0','0','0','0','1','2000','0','1','0','0','0','0','0','0','0','0','0','0','10','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','87','0','0','','0','3','1','1','1','0','0','0','0','0','0','0','0','1','0','0','0','npc_scarlet_miner_cart','0');
DELETE FROM `creature_model_info` WHERE `modelid` = 25703;
INSERT INTO `creature_model_info` (`modelid`, `bounding_radius`, `combat_reach`, `gender`, `modelid_other_gender`) VALUES
('25703','0.65','0.65','2','0'); 
INSERT IGNORE INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES 
 (1929100,19291,8,0,100,0,33655,-1,0,0,33,19291,6,0,0,0,0,0,0,0,0,0, 'use eai to get credit from spell hit'),
 (1929200,19292,8,0,100,0,33655,-1,0,0,33,19292,6,0,0,0,0,0,0,0,0,0, 'use eai to get credit from spell hit');