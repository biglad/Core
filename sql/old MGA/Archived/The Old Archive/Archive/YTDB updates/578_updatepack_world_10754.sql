# Y2kCat
ALTER TABLE db_version_ytdb CHANGE COLUMN 577_FIX_10658 578_FIX_10754 bit;
REPLACE INTO `db_version_ytdb` (`version`) VALUES ('578_FIX_10754');

# Lordronn
UPDATE `creature_template` SET `VehicleId` = 146 WHERE `entry` = 28875;

# Broad
UPDATE `waypoint_scripts` SET `datalong2`='4', `dataint`='25192', `x`='40' WHERE `datalong`=45223;

# NeatElves
UPDATE `quest_template` SET `SpecialFlags` = '1' WHERE `entry` = '2522';
UPDATE `quest_template` SET `PrevQuestId` = '2521' WHERE `entry` =2522;
UPDATE creature_loot_template SET ChanceOrQuestChance=-ABS(ChanceOrQuestChance) WHERE item in (8244,10593);
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '-1' WHERE `entry` =5974 AND `item` =8244;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '-1' WHERE `entry` =6009 AND `item` =8244;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '-1' WHERE `entry` =7668 AND `item` =8244;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '-3' WHERE `entry` =7664 AND `item` =8244;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '-3' WHERE `entry` in (7851,7665,8297) AND `item` =10593;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '-1' WHERE `entry` in (6010,8675) AND `item` =10593;
UPDATE `npc_text` SET `text0_0` = '' WHERE `ID` IN (13258,13259);
UPDATE `locales_npc_text` SET `Text0_0_loc8` = '' WHERE `entry` IN (13258,13259);
INSERT INTO gameobject VALUES ( 3720, 185861, 530, 1,1,1700.51, 7342.41, 369.97, 3.53702, 0, 0, 0.980519, -0.196426, 300, 100, 1);
INSERT INTO gameobject VALUES ( 3721, 185861, 530, 1,1,1637.44, 7238.61, 368.92, 2.43274, 0, 0, 0.937846, 0.347051, 300, 100, 1);
INSERT INTO gameobject VALUES ( 3723, 185861, 530, 1,1,1655.05, 7213.13, 369.019, 5.78168, 0, 0, 0.248134, -0.968726, 300, 100, 1);
INSERT INTO gameobject VALUES ( 3724, 185861, 530, 1,1,1502.52, 7223.93, 370.314, 4.88632, 0, 0, 0.643017, -0.765852, 300, 100, 1);
INSERT INTO gameobject VALUES ( 3725, 185861, 530, 1,1,1456.56, 7203.89, 369.286, 2.01962, 0, 0, 0.846731, 0.532022, 300, 100, 1);
INSERT INTO gameobject VALUES ( 3733, 185861, 530, 1,1,1524.29, 7310.46, 367.526, 4.31613, 0, 0, 0.832458, -0.554088, 300, 100, 1);
INSERT INTO gameobject VALUES ( 3736, 185861, 530, 1,1,1450.85, 7302.2, 373.374, 3.80719, 0, 0, 0.945132, -0.32669, 300, 100, 1);
INSERT INTO gameobject VALUES ( 3740, 185861, 530, 1,1,1412.71, 7359.56, 370.056, 3.31867, 0, 0, 0.996083, -0.0884247, 300, 100, 1);
INSERT INTO gameobject VALUES ( 3741, 185861, 530, 1,1,1338.13, 7370.69, 367.352, 2.87021, 0, 0, 0.990808, 0.135275, 300, 100, 1);
INSERT INTO gameobject VALUES ( 3742, 185861, 530, 1,1,1340.41, 7152.84, 370.863, 5.84686, 0, 0, 0.216434, -0.976297, 300, 100, 1);
INSERT INTO gameobject VALUES ( 3743, 185861, 530, 1,1,1600.35, 7213.37, 369.069, 5.18556, 0, 0, 0.521676, -0.853144, 300, 100, 1);

# FIX
UPDATE `gameobject` SET `spawntimesecs` = 300, `animprogress` = 100 WHERE `guid` = 49503;
DELETE FROM `gameobject` WHERE `id`=1607;
DELETE FROM `gameobject` WHERE `id`=178670;
DELETE FROM `gameobject_involvedrelation` WHERE `quest`=8788;
INSERT INTO `gameobject_involvedrelation` (`id`,`quest`) VALUES (180746,8788);
DELETE FROM `gameobject_questrelation` WHERE `quest`=8788;
INSERT INTO `gameobject_questrelation` (`id`,`quest`) VALUES (180746,8788);
UPDATE `creature_template` SET `faction_A` = 35, `faction_H` = 35 WHERE `entry` = 13433;
DELETE FROM `creature_questrelation` WHERE `quest` = 13966;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 13966;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 13966;
INSERT INTO `gameobject_questrelation` (`id`, `quest`) VALUES (187236, 13966);
DELETE FROM `creature_involvedrelation` WHERE `quest` = 13966;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 13966;
INSERT INTO `gameobject_involvedrelation` (`id`, `quest`) VALUES (187236, 13966);
UPDATE `creature` SET `spawntimesecs` = 60 WHERE `id` = 23119;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`) VALUES
(111352,33242,603,3,65535,0,0,2028.8219,-65.73573,411.442566,0,120,0,0,1,0,0,0),
(111353,33241,603,3,65535,0,0,1945.68225,33.3420143,411.440826,0,120,0,0,1,0,0,0),
(111354,33244,603,3,65535,0,0,2028.76563,17.42014,411.44458,0,120,0,0,1,0,0,0),
(111355,33213,603,3,65535,0,0,1945.76086,-81.5217056,411.4407,0,120,0,0,1,0,0,0),
(111356,33196,603,3,65535,0,0,2148.30054,-297.845276,438.33078,0,120,0,0,1,0,0,0);
UPDATE `creature_template` SET `npcflag`=`npcflag`|1 WHERE `entry` IN (33213,33241,33244,33242);
UPDATE `creature_template` SET `flags_extra`=`flags_extra`|130 WHERE `entry` IN (33213,33241,33242,33244);
DELETE FROM `quest_end_scripts` WHERE `id`=4461;
INSERT INTO `quest_end_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `dataint`, `x`, `y`, `z`, `o`) VALUES 
(4461, 5, 9, 3744, 175, '0', 0, 0, 0, 0);
DELETE FROM `quest_end_scripts` WHERE `id`=4462;
INSERT INTO `quest_end_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `dataint`, `x`, `y`, `z`, `o`) VALUES 
(4462, 5, 9, 3745, 175, '0', 0, 0, 0, 0);
INSERT IGNORE INTO `gameobject` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecs`,`animprogress`,`state`) VALUES
(3744, 174687, 1, 1, 1, 4824.34, -316.803, 358.791, -2.21657, 0, 0, 0.894934, -0.446198, -180, 100, 1);
INSERT IGNORE INTO `gameobject` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecs`,`animprogress`,`state`) VALUES
(3745, 174685, 1, 1, 1, 6599.99, -800.007, 479.249, 2.14675, 0, 0, 0.878817, 0.477159, -180, 100, 1);

# NeatElves
DELETE FROM gameobject WHERE guid = '47882';
DELETE FROM game_event_gameobject WHERE guid = '47882';
DELETE FROM gameobject WHERE guid = '47881';
DELETE FROM game_event_gameobject WHERE guid = '47881';
UPDATE creature SET position_x = '2776.778320', position_y = '7031.854492', position_z = '370.386993', orientation = '1.975617' WHERE guid = '102208';
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`) VALUES
(111357,23119,530,1,1,0,0,1700.51, 7342.41, 369.97, 3.53702, 60,0,0,25,0,0,0),
(111369,23119,530,1,1,0,0,1637.44, 7238.61, 368.92, 2.43274, 60,0,0,25,0,0,0),
(111370,23119,530,1,1,0,0,1655.05, 7213.13, 369.019, 5.78168, 60,0,0,25,0,0,0),
(111371,23119,530,1,1,0,0,1502.52, 7223.93, 370.314, 4.88632, 60,0,0,25,0,0,0),
(111372,23119,530,1,1,0,0,1456.56, 7203.89, 369.286, 2.01962, 60,0,0,25,0,0,0),
(111379,23119,530,1,1,0,0,1524.29, 7310.46, 367.526, 4.31613, 60,0,0,25,0,0,0),
(111402,23119,530,1,1,0,0,1450.85, 7302.2, 373.374, 3.80719, 60,0,0,25,0,0,0),
(111403,23119,530,1,1,0,0,1412.71, 7359.56, 370.056, 3.31867, 60,0,0,25,0,0,0),
(111404,23119,530,1,1,0,0,1338.13, 7370.69, 367.352, 2.87021, 60,0,0,25,0,0,0),
(111405,23119,530,1,1,0,0,1340.41, 7152.84, 370.863, 5.84686, 60,0,0,25,0,0,0),
(111406,23119,530,1,1,0,0,1600.35, 7213.37, 369.069, 5.18556, 60,0,0,25,0,0,0);
DELETE FROM `creature` WHERE `id` = 21847;
UPDATE `creature` SET `position_x` = '2929.44',`position_y` = '7100.34',`position_z` = '369.268',`orientation` = '1.79927' WHERE `guid` =82731;
DELETE FROM `creature_loot_template` WHERE `item` in (13363,13362,13364,13365,13366);
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance` = '0',`groupid` = '1' WHERE `entry` =176360;
DELETE FROM gameobject WHERE guid = '26936';
DELETE FROM game_event_gameobject WHERE guid = '26936';
UPDATE `item_loot_template` SET `ChanceOrQuestChance` = '0',`groupid` = '1' WHERE `entry` =21310;
UPDATE `item_loot_template` SET `ChanceOrQuestChance` = '1',`groupid` = '1' WHERE `entry` =21327 AND `item` =17706;
UPDATE `item_loot_template` SET `ChanceOrQuestChance` = '1',`groupid` = '1' WHERE `entry` =21327 AND `item` =17709;
UPDATE `item_loot_template` SET `ChanceOrQuestChance` = '1',`groupid` = '1' WHERE `entry` =21327 AND `item` =17720;
UPDATE `item_loot_template` SET `ChanceOrQuestChance` = '1',`groupid` = '1' WHERE `entry` =21327 AND `item` =17722;
UPDATE `item_loot_template` SET `ChanceOrQuestChance` = '1',`groupid` = '1' WHERE `entry` =21327 AND `item` =17724;
UPDATE `item_loot_template` SET `ChanceOrQuestChance` = '1',`groupid` = '1' WHERE `entry` =21327 AND `item` =17725;
UPDATE `item_loot_template` SET `ChanceOrQuestChance` = '0',`groupid` = '1' WHERE `entry` =21327 AND `item` =21213;
UPDATE `creature` SET `MovementType`=0, `spawndist`=0 WHERE `id` IN(33378,32879);
DELETE FROM `creature` WHERE `id` = 23173;
INSERT INTO `gameobject_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `dataint`, `x`, `y`, `z`, `o`) VALUES ('71535', '1', '9', '3746', '60', '0', '0', '0', '0', '0');
INSERT INTO `gameobject_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `dataint`, `x`, `y`, `z`, `o`) VALUES ('71536', '1', '9', '3747', '60', '0', '0', '0', '0', '0');
INSERT INTO `gameobject_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `dataint`, `x`, `y`, `z`, `o`) VALUES ('71539', '1', '9', '3749', '60', '0', '0', '0', '0', '0');
INSERT INTO `gameobject_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `dataint`, `x`, `y`, `z`, `o`) VALUES ('71537', '1', '9', '3750', '60', '0', '0', '0', '0', '0');
INSERT INTO `gameobject_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `dataint`, `x`, `y`, `z`, `o`) VALUES ('71540', '1', '9', '3751', '60', '0', '0', '0', '0', '0');
INSERT INTO `gameobject_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `dataint`, `x`, `y`, `z`, `o`) VALUES ('71538', '1', '9', '3753', '60', '0', '0', '0', '0', '0');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(3746, 176360, 329, 1, 1, 3500.51, -3294.78, 131.069, 4.42736, 0, 0, 0.800371, -0.599505, -60, 100, 1),
(3747, 176360, 329, 1, 1, 3567.98, -3352.63, 130.758, 2.26359, 0, 0, 0.905176, 0.425038, -60, 100, 1),
(3749, 176360, 329, 1, 1, 3681.53, -3402.24, 132.89, 0.533356, 0, 0, 0.263528, 0.964652, -60, 100, 1),
(3750, 176360, 329, 1, 1, 3662.1, -3630.24, 138.469, 0.628389, 0, 0, 0.309051, 0.951046, -60, 100, 1),
(3751, 176360, 329, 1, 1, 3660.13, -3475.38, 138.504, 4.80357, 0, 0, 0.674147, -0.738597, -60, 100, 1),
(3753, 176360, 329, 1, 1, 3651.17, -3164.62, 128.169, 5.38476, 0, 0, 0.434256, -0.90079, -60, 100, 1);
REPLACE INTO `achievement_criteria_data` (`criteria_id`, `type`, `value1`, `value2`) VALUES ('4230', '16', '141', '0');
REPLACE INTO `achievement_criteria_data` (`criteria_id`, `type`, `value1`, `value2`) VALUES ('3936', '16', '141', '0');
REPLACE INTO `achievement_criteria_data` (`criteria_id`, `type`, `value1`, `value2`) VALUES ('3937', '16', '141', '0');
REPLACE INTO `achievement_criteria_data` (`criteria_id`, `type`, `value1`, `value2`) VALUES ('3938', '16', '141', '0');
DELETE FROM `gameobject` WHERE `id` IN (180719,180742); 
INSERT INTO `gameobject` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecs`,`animprogress`,`state`) VALUES 
(3757,180719,1,1,1,-8089.22,-5275.14,1.23688,1.75167,0,0,0.768079,0.640355,300,0,1),
(3762,180742,0,1,1,-6606.33,-1860.82,244.459,6.27864,0,0,0.00227228,-0.999997,300,0,1),
(3764,180742,0,1,1,-6606.36,-1857.85,244.382,6.2433,0,0,0.0199423,-0.999801,300,0,1), 
(3767,180742,0,1,1,-6609.29,-1854.76,244.234,1.58196,0,0,0.711042,0.703149,300,0,1), 
(3768,180742,0,1,1,-6606.33,-1854.91,244.308,1.55211,0,0,0.700471,0.713681,300,0,1), 
(3771,180742,0,1,1,-6612.22,-1854.84,244.179,3.15825,0,0,0.999965,-0.00832624,300,0,1), 
(3773,180742,0,1,1,-6612.16,-1857.78,244.212,3.15432,0,0,0.99998,-0.00636482,300,0,1), 
(3777,180742,0,1,1,-6612.09,-1860.72,244.247,4.69763,0,0,0.712307,-0.701868,300,0,1), 
(3779,180742,0,1,1,-6609.11,-1860.79,244.347,4.73297,0,0,0.699791,-0.714347,300,0,1);
REPLACE INTO `game_event_gameobject` SELECT `guid`,'2' FROM `gameobject` WHERE `id`=180742;
REPLACE INTO `game_event_gameobject` SELECT `guid`,'2' FROM `gameobject` WHERE `id`=180719;
DELETE FROM gameobject WHERE guid = '47899';
DELETE FROM game_event_gameobject WHERE guid = '47899';
DELETE FROM gameobject WHERE guid = '47905';
DELETE FROM game_event_gameobject WHERE guid = '47905';
DELETE FROM gameobject WHERE guid = '47908';
DELETE FROM game_event_gameobject WHERE guid = '47908';
DELETE FROM gameobject WHERE guid = '47907';
DELETE FROM game_event_gameobject WHERE guid = '47907';
DELETE FROM gameobject WHERE guid = '47892';
DELETE FROM game_event_gameobject WHERE guid = '47892';
DELETE FROM gameobject WHERE guid = '47893';
DELETE FROM game_event_gameobject WHERE guid = '47893';
DELETE FROM gameobject WHERE guid = '47901';
DELETE FROM game_event_gameobject WHERE guid = '47901';
DELETE FROM gameobject WHERE guid = '47462';
DELETE FROM game_event_gameobject WHERE guid = '47462';
DELETE FROM gameobject WHERE guid = '47457';
DELETE FROM game_event_gameobject WHERE guid = '47457';
DELETE FROM gameobject WHERE guid = '47458';
DELETE FROM game_event_gameobject WHERE guid = '47458';
DELETE FROM gameobject WHERE guid = '47459';
DELETE FROM game_event_gameobject WHERE guid = '47459';
UPDATE `item_template` SET `maxMoneyLoot` = '500000' WHERE `entry` =52006;
UPDATE `item_loot_template` SET `ChanceOrQuestChance` = '1' WHERE `entry` =52006 AND `groupid` = '2';
UPDATE `item_loot_template` SET `ChanceOrQuestChance` = '5' WHERE `entry` =52006 AND `groupid` = '1';
DELETE FROM `gameobject_involvedrelation` WHERE `quest`=8788;
INSERT INTO `gameobject_involvedrelation` (`id`,`quest`) VALUES (180746,8788);
DELETE FROM `gameobject_questrelation` WHERE `quest`=8788;
INSERT INTO `gameobject_questrelation` (`id`,`quest`) VALUES (180746,8788);
UPDATE `quest_template` SET `SpecialFlags` = '1' WHERE `entry` =8799;

# Virusav
UPDATE `creature_ai_scripts` SET `creature_id`=25398 WHERE `id`=2539851;

# FIX
UPDATE `creature_template` SET `unit_flags` = 0 WHERE `entry` = 15664;
UPDATE `creature_template` SET `mingold` = 0, `maxgold` = 0 WHERE `entry` IN (30739,30740);
UPDATE `creature_template` SET `lootid` = '0' WHERE `entry` =30739;
DELETE FROM `creature_loot_template` WHERE `entry` = 30739;
UPDATE `creature_template` SET `faction_A` = 35, `faction_H` = 35 WHERE `entry` = 13433;
UPDATE `quest_template` SET `SpecialFlags` = 1 WHERE `entry` = 7025;
UPDATE `gameobject` SET `spawntimesecs` = 120 WHERE `guid` = 44614;
UPDATE `quest_template` SET `specialflags` = 0 WHERE `entry` = 5060;
UPDATE `quest_template` SET `SpecialFlags` = 0 WHERE `entry` = 5059;
UPDATE `gameobject` SET `spawntimesecs` = 60 WHERE `guid` = 19565;

# NeatElves
REPLACE INTO `achievement_criteria_data` (`criteria_id`, `type`, `value1`, `value2`) VALUES (3826,5,26157,0),(3827,5,26272,0),(3828,5,26273,0),(3829,5,26274,0),(3882,5,48890,0);
REPLACE INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(3782, 180796, 571, 1, 1, 5803.65, 659.725, 647.914, 4.82322, 0, 0, 0.666857, -0.745185, 300, 100, 1),
(3785, 180797, 571, 1, 1, 5803.65, 659.725, 647.914, 4.82322, 0, 0, 0.666857, -0.745185, 300, 100, 1);
REPLACE INTO `game_event_gameobject` SELECT `guid`,'2' FROM `gameobject` WHERE `id`=180796;
REPLACE INTO `game_event_gameobject` SELECT `guid`,'2' FROM `gameobject` WHERE `id`=180797;
UPDATE `item_loot_template` SET `ChanceOrQuestChance` = '35' WHERE `entry` =21327 AND `item` =21213;
UPDATE `item_loot_template` SET `ChanceOrQuestChance` = '0',`groupid` = '1' WHERE `entry` =21327 AND `item` =21325;
UPDATE `creature_ai_scripts` SET `action2_type` = '11',`action2_param1` = '61995',`action3_type` = '41',`action3_param1` = '3000' WHERE `id` =3283851;
UPDATE `creature` SET `spawntimesecs` = 60, `spawndist` = 4, `MovementType` = 1 WHERE `id` = 4834;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '100' WHERE `entry` =10816 AND `item` =12738;

# FIX
UPDATE `creature_template` SET `minlevel` = 79, `maxlevel` = 80 WHERE `entry` = 30141;
DELETE FROM `creature` WHERE `id`=30141;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`) VALUES
(111407, 30141, 571, 1, 4, 0, 0, 7746.72, -3299.38, 866.228, -2.92494, 180, 0, 0, 48700, 0, 0, 0),
(111408, 30141, 571, 1, 4, 0, 0, 7831.67, -3302.42, 862.667, 5.54811, 180, 0, 0, 48700, 0, 0, 0),
(111409, 30141, 571, 1, 4, 0, 0, 7852.77, -3393.34, 865.393, 2.47994, 180, 0, 0, 48700, 0, 0, 0),
(111410, 30141, 571, 1, 4, 0, 0, 7909, -3342.17, 860.523, 2.73811, 180, 0, 0, 48700, 0, 0, 0),
(111411, 30141, 571, 1, 4, 0, 0, 7882.14, -3416.18, 867.044, 0.742301, 180, 0, 0, 48700, 0, 0, 0),
(111412, 30141, 571, 1, 4, 0, 0, 7958.47, -3386.58, 869.611, 2.11656, 180, 0, 0, 48700, 0, 0, 0),
(111413, 30141, 571, 1, 4, 0, 0, 7945.13, -3242.08, 865.437, 4.6657, 180, 0, 0, 48700, 0, 0, 0),
(111414, 30141, 571, 1, 4, 0, 0, 7878.66, -3474.1, 868.407, 0.426391, 180, 0, 0, 48700, 0, 0, 0);
UPDATE `creature_template` SET `minlevel` = 79, `maxlevel` = 80, `faction_A` = 16, `faction_H` = 16, `flags_extra` = 2 WHERE `entry` = 30143;
DELETE FROM `creature` WHERE `id`=30143;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`) VALUES
(111415, 30143, 571, 1, 4, 0, 0, 7724.24, -3168.08, 869.933, 3.81515, 180, 0, 0, 48700, 0, 0, 0),
(111416, 30143, 571, 1, 4, 0, 0, 7694.6, -3218.19, 869.173, 3.06729, 180, 0, 0, 48700, 0, 0, 0),
(111417, 30143, 571, 1, 4, 0, 0, 7828.6, -3300.1, 862.792, 5.62456, 180, 0, 0, 48700, 0, 0, 0),
(111418, 30143, 571, 1, 4, 0, 0, 7892.34, -3331.96, 859.458, 1.36955, 180, 0, 0, 48700, 0, 0, 0),
(111419, 30143, 571, 1, 4, 0, 0, 7885.06, -3414.84, 867.044, -0.043572, 180, 0, 0, 48700, 0, 0, 0);
UPDATE `creature_template` SET `minlevel` = 79, `maxlevel` = 80, `faction_A` = 16, `faction_H` = 16, `flags_extra` = 2 WHERE `entry` = 30145;
DELETE FROM `creature` WHERE `id`=30145;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`) VALUES
(111420, 30145, 571, 1, 4, 0, 0, 7735.2, -3298.25, 865.978, 2.73822, 180, 0, 0, 48700, 0, 0, 0),
(111421, 30145, 571, 1, 4, 0, 0, 7739.87, -3303.93, 866.217, 4.72199, 180, 0, 0, 48700, 0, 0, 0),
(111422, 30145, 571, 1, 4, 0, 0, 7758.47, -3264.37, 865.683, 0.788749, 180, 0, 0, 48700, 0, 0, 0),
(111423, 30145, 571, 1, 4, 0, 0, 7836.42, -3374.78, 866.518, 2.4415, 180, 0, 0, 48700, 0, 0, 0),
(111424, 30145, 571, 1, 4, 0, 0, 7904.68, -3339.77, 860.023, -2.88554, 180, 0, 0, 48700, 0, 0, 0),
(111425, 30145, 571, 1, 4, 0, 0, 7931.51, -3219.34, 890.483, 6.03832, 180, 0, 0, 48700, 0, 0, 0);
DELETE FROM `creature` WHERE `id`=30340;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`) VALUES
(111426, 30340, 571, 1, 4, 0, 0, 7312.98, -2048.77, 761.426, 2.77507, 300, 5, 0, 12600, 0, 0, 1);
UPDATE quest_template SET RequestItemsText='Many brave fighters look up to you, $N.  You continue to be an example for all in the fight against the Alliance.  What news do you bring from your journeys?' WHERE entry=13475;
UPDATE quest_template SET CompleteEmote=6 WHERE entry=6;
UPDATE quest_template SET IncompleteEmote=6 WHERE entry=7;
UPDATE quest_template SET DetailsEmote1=5,IncompleteEmote=6,OfferRewardEmote1=21 WHERE entry=9;
UPDATE quest_template SET CompleteEmote=0,OfferRewardEmote1=66 WHERE entry=11;
UPDATE quest_template SET DetailsEmote1=1,IncompleteEmote=1,OfferRewardEmote1=21 WHERE entry=12;
UPDATE quest_template SET DetailsEmote1=1,IncompleteEmote=1,OfferRewardEmote1=1 WHERE entry=13;
UPDATE quest_template SET DetailsEmote1=1,IncompleteEmote=1 WHERE entry=14;
UPDATE quest_template SET IncompleteEmote=6 WHERE entry=15;
UPDATE quest_template SET CompleteEmote=0,OfferRewardEmote1=2 WHERE entry=16;
UPDATE quest_template SET IncompleteEmote=1 WHERE entry=21;
UPDATE quest_template SET DetailsEmote1=1,OfferRewardEmote1=4,OfferRewardEmote2=6 WHERE entry=22;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=6,CompleteEmote=6,OfferRewardEmote1=1 WHERE entry=36;
UPDATE quest_template SET DetailsEmote1=1,OfferRewardEmote1=1 WHERE entry=38;
UPDATE quest_template SET OfferRewardEmote1=1 WHERE entry=40;
UPDATE quest_template SET CompleteEmote=0 WHERE entry=47;
UPDATE quest_template SET OfferRewardEmote1=66 WHERE entry=52;
UPDATE quest_template SET OfferRewardEmote2=66,OfferRewardEmoteDelay2=1000 WHERE entry=54;
UPDATE quest_template SET CompleteEmote=0,OfferRewardEmote1=2 WHERE entry=60;
UPDATE quest_template SET CompleteEmote=0 WHERE entry=61;
UPDATE quest_template SET OfferRewardEmote1=1 WHERE entry=62;
UPDATE quest_template SET DetailsEmote1=5,DetailsEmote2=1,CompleteEmote=6,OfferRewardEmote1=4 WHERE entry=64;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=25 WHERE entry=65;
UPDATE quest_template SET CompleteEmote=0 WHERE entry=71;
UPDATE quest_template SET OfferRewardEmote1=5 WHERE entry=76;
UPDATE quest_template SET CompleteEmote=0 WHERE entry=83;
UPDATE quest_template SET CompleteEmote=0 WHERE entry=84;
UPDATE quest_template SET CompleteEmote=0 WHERE entry=86;
UPDATE quest_template SET CompleteEmote=0 WHERE entry=87;
UPDATE quest_template SET CompleteEmote=0 WHERE entry=88;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,CompleteEmote=6,OfferRewardEmote1=66 WHERE entry=102;
UPDATE quest_template SET CompleteEmote=0 WHERE entry=106;
UPDATE quest_template SET CompleteEmote=0,OfferRewardEmote1=1 WHERE entry=107;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=25,OfferRewardEmote1=1 WHERE entry=109;
UPDATE quest_template SET CompleteEmote=0,OfferRewardEmote1=4 WHERE entry=112;
UPDATE quest_template SET CompleteEmote=0,OfferRewardEmote1=4,OfferRewardEmote2=2 WHERE entry=114;
UPDATE quest_template SET DetailsEmote1=10,CompleteEmote=10,OfferRewardEmote1=10 WHERE entry=117;
UPDATE quest_template SET IncompleteEmote=25 WHERE entry=128;
UPDATE quest_template SET CompleteEmote=6,OfferRewardEmote1=1 WHERE entry=132;
UPDATE quest_template SET DetailsEmote1=6,DetailsEmote2=1,CompleteEmote=6,OfferRewardEmote1=1 WHERE entry=135;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1 WHERE entry=141;
UPDATE quest_template SET CompleteEmote=6,OfferRewardEmote1=1 WHERE entry=143;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=25,CompleteEmote=6,OfferRewardEmote1=1 WHERE entry=144;
UPDATE quest_template SET DetailsEmote1=1 WHERE entry=145;
UPDATE quest_template SET DetailsEmote1=5,DetailsEmote2=1,CompleteEmote=6,OfferRewardEmote1=21 WHERE entry=151;
UPDATE quest_template SET DetailsEmote1=1,OfferRewardEmote1=66 WHERE entry=153;
UPDATE quest_template SET CompleteEmote=0 WHERE entry=176;
UPDATE quest_template SET CompleteEmote=0 WHERE entry=184;
UPDATE quest_template SET DetailsEmote1=1 WHERE entry=1010;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1 WHERE entry=1685;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,OfferRewardEmote1=1,OfferRewardEmote2=1 WHERE entry=1688;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,IncompleteEmote=1,OfferRewardEmote1=1,OfferRewardEmote2=1 WHERE entry=1689;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1 WHERE entry=1716;
UPDATE quest_template SET CompleteEmote=6 WHERE entry=1738;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,IncompleteEmote=11,CompleteEmote=11,OfferRewardEmote1=21 WHERE entry=1739;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1 WHERE entry=1740;
UPDATE quest_template SET OfferRewardEmote2=1 WHERE entry=3105;
UPDATE quest_template SET CompleteEmote=0,OfferRewardEmote1=1 WHERE entry=3904;
UPDATE quest_template SET CompleteEmote=0,OfferRewardEmote1=1,OfferRewardEmote2=4 WHERE entry=3905;
UPDATE quest_template SET CompleteEmote=0,OfferRewardEmote1=1 WHERE entry=5545;
UPDATE quest_template SET DetailsEmote1=1,CompleteEmote=6,OfferRewardEmote1=1 WHERE entry=6181;
UPDATE quest_template SET DetailsEmote1=1,OfferRewardEmote1=1 WHERE entry=6261;
UPDATE quest_template SET DetailsEmote1=1,CompleteEmote=6,OfferRewardEmote1=1 WHERE entry=6281;
UPDATE quest_template SET DetailsEmote1=1,CompleteEmote=6,OfferRewardEmote1=4,OfferRewardEmote2=2,OfferRewardEmoteDelay2=1000 WHERE entry=6285;
UPDATE quest_template SET DetailsEmote1=0,IncompleteEmote=5 WHERE entry=10346;
UPDATE quest_template SET CompleteEmote=0 WHERE entry=10734;
UPDATE quest_template SET CompleteEmote=0 WHERE entry=10739;
UPDATE quest_template SET DetailsEmoteDelay2=500,DetailsEmoteDelay3=500,DetailsEmoteDelay4=500,OfferRewardEmoteDelay2=500 WHERE entry=11132;
UPDATE quest_template SET CompleteEmote=5,OfferRewardEmote1=273 WHERE entry=11164;
UPDATE quest_template SET DetailsEmote2=1,DetailsEmote3=1,DetailsEmoteDelay2=500,DetailsEmoteDelay3=500 WHERE entry=11165;
UPDATE quest_template SET IncompleteEmote=0 WHERE entry=11166;
UPDATE quest_template SET DetailsEmote2=1,DetailsEmote3=1,DetailsEmoteDelay2=500,DetailsEmoteDelay3=500,IncompleteEmote=0,OfferRewardEmote1=0 WHERE entry=11171;
UPDATE quest_template SET DetailsEmote1=0,OfferRewardEmote1=0 WHERE entry=11178;
UPDATE quest_template SET DetailsEmote2=1,DetailsEmote3=1,DetailsEmoteDelay2=500,DetailsEmoteDelay3=500,CompleteEmote=5,OfferRewardEmote1=6,OfferRewardEmote2=5,OfferRewardEmote3=1,OfferRewardEmoteDelay2=1000,OfferRewardEmoteDelay3=500 WHERE entry=11195;
UPDATE quest_template SET CompleteEmote=1,OfferRewardEmote1=21,OfferRewardEmote2=1,OfferRewardEmote3=1,OfferRewardEmote4=6 WHERE entry=11470;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1,IncompleteEmote=1 WHERE entry=11477;
UPDATE quest_template SET DetailsEmote1=1 WHERE entry=11971;
UPDATE quest_template SET IncompleteEmote=6 WHERE entry=12372;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1,DetailsEmote4=1 WHERE entry=12495;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1 WHERE entry=12512;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1 WHERE entry=12609;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1 WHERE entry=12610;
UPDATE quest_template SET DetailsEmote1=1 WHERE entry=12799;
UPDATE quest_template SET OfferRewardEmote1=1 WHERE entry=12898;
UPDATE quest_template SET IncompleteEmote=6 WHERE entry=12939;
UPDATE quest_template SET IncompleteEmote=25 WHERE entry=12955;
UPDATE quest_template SET DetailsEmote1=396,DetailsEmote2=396,DetailsEmote3=396 WHERE entry=12974;
UPDATE quest_template SET DetailsEmote1=1,CompleteEmote=1 WHERE entry=13156;
UPDATE quest_template SET IncompleteEmote=1,OfferRewardEmote1=66 WHERE entry=13177;
UPDATE quest_template SET IncompleteEmote=1 WHERE entry=13181;
UPDATE quest_template SET OfferRewardEmote1=66 WHERE entry=13186;
UPDATE quest_template SET OfferRewardEmote1=396,OfferRewardEmote2=396,OfferRewardEmote3=5 WHERE entry=13231;
UPDATE quest_template SET OfferRewardEmote1=396,OfferRewardEmote2=396 WHERE entry=13232;
UPDATE quest_template SET DetailsEmote1=25,DetailsEmote2=1,DetailsEmote3=1,IncompleteEmote=6,OfferRewardEmote1=71,OfferRewardEmote2=396,OfferRewardEmote3=6,OfferRewardEmoteDelay2=1000 WHERE entry=13280;
UPDATE quest_template SET DetailsEmote1=1 WHERE entry=13284;
UPDATE quest_template SET DetailsEmote1=396,DetailsEmote2=396,DetailsEmote3=5,OfferRewardEmote1=396 WHERE entry=13286;
UPDATE quest_template SET DetailsEmote1=396,DetailsEmote2=396,DetailsEmote3=396,OfferRewardEmote1=396 WHERE entry=13287;
UPDATE quest_template SET DetailsEmote1=396,DetailsEmote2=396,OfferRewardEmote1=396 WHERE entry=13288;
UPDATE quest_template SET DetailsEmote1=396,DetailsEmote2=396,OfferRewardEmote1=396 WHERE entry=13290;
UPDATE quest_template SET OfferRewardEmote1=5 WHERE entry=13291;
UPDATE quest_template SET DetailsEmote1=396,DetailsEmote2=396 WHERE entry=13292;
UPDATE quest_template SET DetailsEmote1=396,DetailsEmote2=396,DetailsEmote3=396,OfferRewardEmote1=396 WHERE entry=13294;
UPDATE quest_template SET OfferRewardEmote1=6 WHERE entry=13296;
UPDATE quest_template SET DetailsEmote1=396,DetailsEmote2=396,OfferRewardEmote1=396 WHERE entry=13298;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1 WHERE entry=13314;
UPDATE quest_template SET DetailsEmote1=396,DetailsEmote2=396,OfferRewardEmote1=396,OfferRewardEmote2=396 WHERE entry=13315;
UPDATE quest_template SET OfferRewardEmote1=396,OfferRewardEmote2=153 WHERE entry=13318;
UPDATE quest_template SET DetailsEmote1=396,DetailsEmote2=396,OfferRewardEmote1=396,OfferRewardEmote2=396 WHERE entry=13319;
UPDATE quest_template SET DetailsEmote1=396,DetailsEmote2=396,OfferRewardEmote1=396,OfferRewardEmote2=396 WHERE entry=13320;
UPDATE quest_template SET DetailsEmote1=396,DetailsEmote2=396,OfferRewardEmote1=396,OfferRewardEmote2=396 WHERE entry=13321;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,IncompleteEmote=1,OfferRewardEmote1=1,OfferRewardEmote2=1 WHERE entry=13332;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,IncompleteEmote=1 WHERE entry=13334;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,IncompleteEmote=1 WHERE entry=13337;
UPDATE quest_template SET DetailsEmote1=396,DetailsEmote2=396,OfferRewardEmote1=396,OfferRewardEmote2=396 WHERE entry=13342;
UPDATE quest_template SET DetailsEmote1=396,DetailsEmote2=396,OfferRewardEmote1=396 WHERE entry=13345;
UPDATE quest_template SET DetailsEmote1=5,DetailsEmote2=396,DetailsEmote3=5,OfferRewardEmote1=396 WHERE entry=13346;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1 WHERE entry=13347;
UPDATE quest_template SET OfferRewardEmote1=1 WHERE entry=13383;
UPDATE quest_template SET CompleteEmote=1 WHERE entry=13475;
UPDATE quest_template SET DetailsEmote1=1 WHERE entry=13478;
UPDATE quest_template SET IncompleteEmote=1 WHERE entry=13538;
UPDATE quest_template SET OfferRewardEmote1=66,OfferRewardEmote2=1 WHERE entry=13592;
UPDATE quest_template SET CompleteEmote=1,OfferRewardEmote1=1,OfferRewardEmote2=1 WHERE entry=13616;
UPDATE quest_template SET OfferRewardEmote1=1,OfferRewardEmote2=1 WHERE entry=13665;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,IncompleteEmote=1,OfferRewardEmote1=1,OfferRewardEmote2=1 WHERE entry=13682;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,CompleteEmote=1 WHERE entry=13718;
UPDATE quest_template SET IncompleteEmote=1,OfferRewardEmote1=66,OfferRewardEmote2=1 WHERE entry=13789;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,OfferRewardEmote1=1,OfferRewardEmote2=1 WHERE entry=13790;
UPDATE quest_template SET OfferRewardEmote1=1,OfferRewardEmote2=1 WHERE entry=13847;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,OfferRewardEmote1=1,OfferRewardEmote2=1 WHERE entry=13861;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,IncompleteEmote=1,OfferRewardEmote1=1,OfferRewardEmote2=1 WHERE entry=14105;
UPDATE quest_template SET IncompleteEmote=1,CompleteEmote=1,OfferRewardEmote1=396 WHERE entry=14108;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=25 WHERE entry=14409;
UPDATE `creature_template` SET `minlevel` = 19, `maxlevel` = 19, `unit_class` = 2 WHERE `entry` = 6246;
UPDATE creature_template SET speed_walk=1.0,speed_run=1.19048 WHERE entry=123;
UPDATE creature_template SET speed_walk=1.0,speed_run=0.857143 WHERE entry=171;
UPDATE creature_template SET speed_run=1.14286 WHERE entry=445;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=458;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=596;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=599;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=619;
UPDATE creature_template SET speed_walk=1.0,speed_run=1.19048 WHERE entry=1426;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=2156;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=2157;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=2192;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=3271;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=3725;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=3727;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=3728;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=3730;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=3737;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=3739;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=3740;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=3742;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=3815;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=3824;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=3891;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=4958;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=5097;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=5414;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=5676;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=5907;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=6244;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=6245;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=6246;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=6247;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=6250;
UPDATE creature_template SET speed_walk=1.6 WHERE entry=7369;
UPDATE creature_template SET speed_walk=1.6 WHERE entry=7372;
UPDATE creature_template SET speed_walk=1.6 WHERE entry=7379;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=9316;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=10159;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=10559;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=10643;
UPDATE creature_template SET speed_walk=1.11111 WHERE entry=12377;
UPDATE creature_template SET speed_walk=1.11111 WHERE entry=12378;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=12379;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=12380;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=14270;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=14715;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=14733;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=14753;
UPDATE creature_template SET speed_walk=1.0,speed_run=1.0 WHERE entry=14874;
UPDATE creature_template SET speed_walk=1.0,speed_run=1.0 WHERE entry=14908;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=14909;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=14963;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=15397;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=15417;
UPDATE creature_template SET speed_walk=1.0,speed_run=0.857143 WHERE entry=15657;
UPDATE creature_template SET speed_walk=0.777776,speed_run=0.857143 WHERE entry=15658;
UPDATE creature_template SET speed_walk=1.6,speed_run=2.0 WHERE entry=15687;
UPDATE creature_template SET speed_walk=1.6,speed_run=1.71429 WHERE entry=15688;
UPDATE creature_template SET speed_walk=1.6,speed_run=1.71429 WHERE entry=15689;
UPDATE creature_template SET speed_walk=2.0,speed_run=2.14286 WHERE entry=15690;
UPDATE creature_template SET speed_walk=2.0,speed_run=2.0 WHERE entry=15691;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=15939;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=15942;
UPDATE creature_template SET speed_run=1.71429 WHERE entry=16152;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=16153;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=16159;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=16169;
UPDATE creature_template SET speed_walk=1.0,speed_run=1.42857 WHERE entry=16170;
UPDATE creature_template SET speed_walk=1.0,speed_run=1.42857 WHERE entry=16171;
UPDATE creature_template SET speed_walk=2.4,speed_run=1.71429 WHERE entry=16173;
UPDATE creature_template SET speed_walk=2.4,speed_run=1.71429 WHERE entry=16174;
UPDATE creature_template SET speed_walk=2.4,speed_run=1.71429 WHERE entry=16175;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=16176;
UPDATE creature_template SET speed_walk=1.0,speed_run=1.42857 WHERE entry=16177;
UPDATE creature_template SET speed_walk=1.0,speed_run=1.42857 WHERE entry=16178;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=16183;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=16196;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=16210;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=16261;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=16333;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=16388;
UPDATE creature_template SET speed_walk=1.0,speed_run=1.42857 WHERE entry=16389;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=16397;
UPDATE creature_template SET speed_walk=1.0,speed_run=1.42857 WHERE entry=16406;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=16407;
UPDATE creature_template SET speed_walk=1.0,speed_run=1.42857 WHERE entry=16408;
UPDATE creature_template SET speed_walk=1.0,speed_run=1.42857 WHERE entry=16409;
UPDATE creature_template SET speed_walk=1.0,speed_run=1.42857 WHERE entry=16410;
UPDATE creature_template SET speed_walk=1.0,speed_run=1.42857 WHERE entry=16411;
UPDATE creature_template SET speed_walk=1.0,speed_run=1.42857 WHERE entry=16412;
UPDATE creature_template SET speed_walk=1.0,speed_run=1.42857 WHERE entry=16414;
UPDATE creature_template SET speed_walk=1.0,speed_run=1.42857 WHERE entry=16415;
UPDATE creature_template SET speed_walk=1.0,speed_run=1.42857 WHERE entry=16424;
UPDATE creature_template SET speed_walk=1.0,speed_run=1.42857 WHERE entry=16425;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=16426;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=16444;
UPDATE creature_template SET speed_walk=1.6,speed_run=1.71429 WHERE entry=16457;
UPDATE creature_template SET speed_walk=1.0,speed_run=1.42857 WHERE entry=16459;
UPDATE creature_template SET speed_walk=1.0,speed_run=1.42857 WHERE entry=16460;
UPDATE creature_template SET speed_walk=1.0,speed_run=1.42857 WHERE entry=16461;
UPDATE creature_template SET speed_walk=1.0,speed_run=1.42857 WHERE entry=16468;
UPDATE creature_template SET speed_walk=1.0,speed_run=1.42857 WHERE entry=16470;
UPDATE creature_template SET speed_walk=1.0,speed_run=1.42857 WHERE entry=16471;
UPDATE creature_template SET speed_run=1.42857 WHERE entry=16472;
UPDATE creature_template SET speed_walk=1.0,speed_run=1.42857 WHERE entry=16473;
UPDATE creature_template SET speed_walk=1.11111,speed_run=1.42857 WHERE entry=16481;
UPDATE creature_template SET speed_walk=1.11111,speed_run=1.42857 WHERE entry=16482;
UPDATE creature_template SET speed_walk=1.6,speed_run=1.71429 WHERE entry=16485;
UPDATE creature_template SET speed_walk=1.0,speed_run=1.42857 WHERE entry=16488;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=16489;
UPDATE creature_template SET speed_walk=1.0,speed_run=1.42857 WHERE entry=16491;
UPDATE creature_template SET speed_walk=1.0,speed_run=1.42857 WHERE entry=16492;
UPDATE creature_template SET speed_walk=1.6,speed_run=1.71429 WHERE entry=16504;
UPDATE creature_template SET speed_run=1.71429 WHERE entry=16524;
UPDATE creature_template SET speed_walk=1.0,speed_run=1.42857 WHERE entry=16525;
UPDATE creature_template SET speed_walk=1.0,speed_run=1.42857 WHERE entry=16526;
UPDATE creature_template SET speed_walk=1.0,speed_run=1.42857 WHERE entry=16529;
UPDATE creature_template SET speed_walk=1.0,speed_run=1.42857 WHERE entry=16530;
UPDATE creature_template SET speed_walk=1.0,speed_run=1.42857 WHERE entry=16539;
UPDATE creature_template SET speed_walk=1.0,speed_run=1.71429 WHERE entry=16540;
UPDATE creature_template SET speed_walk=1.2,speed_run=1.71429 WHERE entry=16544;
UPDATE creature_template SET speed_walk=1.2,speed_run=1.71429 WHERE entry=16545;
UPDATE creature_template SET speed_walk=1.6,speed_run=1.71429 WHERE entry=16595;
UPDATE creature_template SET speed_walk=1.6,speed_run=1.71429 WHERE entry=16596;
UPDATE creature_template SET speed_run=1.42857 WHERE entry=16697;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=16806;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=16811;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=16812;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=16813;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=16814;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=16815;
UPDATE creature_template SET speed_walk=1.0,speed_run=0.992063 WHERE entry=16816;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=16860;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=16915;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=17007;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=17067;
UPDATE creature_template SET speed_walk=3.2 WHERE entry=17096;
UPDATE creature_template SET speed_walk=1.8,speed_run=0.642857 WHERE entry=17161;
UPDATE creature_template SET speed_walk=1.0,speed_run=1.42857 WHERE entry=17167;
UPDATE creature_template SET speed_walk=1.0,speed_run=0.992063 WHERE entry=17168;
UPDATE creature_template SET speed_walk=1.0,speed_run=0.992063 WHERE entry=17169;
UPDATE creature_template SET speed_walk=1.0,speed_run=0.992063 WHERE entry=17170;
UPDATE creature_template SET speed_walk=1.0,speed_run=0.992063 WHERE entry=17171;
UPDATE creature_template SET speed_walk=1.0,speed_run=0.992063 WHERE entry=17172;
UPDATE creature_template SET speed_walk=1.0,speed_run=0.992063 WHERE entry=17173;
UPDATE creature_template SET speed_walk=1.0,speed_run=0.992063 WHERE entry=17174;
UPDATE creature_template SET speed_walk=1.0,speed_run=0.992063 WHERE entry=17175;
UPDATE creature_template SET speed_walk=1.0,speed_run=0.992063 WHERE entry=17176;
UPDATE creature_template SET speed_walk=1.0,speed_run=0.992063 WHERE entry=17208;
UPDATE creature_template SET speed_walk=2.0,speed_run=1.42857 WHERE entry=17211;
UPDATE creature_template SET speed_walk=5.6,speed_run=4.0 WHERE entry=17225;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=17229;
UPDATE creature_template SET speed_walk=1.0,speed_run=0.992063 WHERE entry=17260;
UPDATE creature_template SET speed_walk=1.0,speed_run=1.0 WHERE entry=17265;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=17267;
UPDATE creature_template SET speed_walk=1.0,speed_run=0.992063 WHERE entry=17305;
UPDATE creature_template SET speed_walk=1.0,speed_run=0.992063 WHERE entry=17316;
UPDATE creature_template SET speed_walk=1.0,speed_run=0.992063 WHERE entry=17317;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=17459;
UPDATE creature_template SET speed_walk=2.0,speed_run=1.42857 WHERE entry=17469;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=17518;
UPDATE creature_template SET speed_walk=1.6,speed_run=1.71429 WHERE entry=17535;
UPDATE creature_template SET speed_walk=1.6,speed_run=1.71429 WHERE entry=17543;
UPDATE creature_template SET speed_walk=1.6,speed_run=1.71429 WHERE entry=17546;
UPDATE creature_template SET speed_walk=1.6,speed_run=1.71429 WHERE entry=17547;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=17613;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=17644;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=17645;
UPDATE creature_template SET speed_run=2.14286 WHERE entry=17650;
UPDATE creature_template SET speed_walk=3.2,speed_run=4.28571 WHERE entry=17660;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=18162;
UPDATE creature_template SET speed_walk=1.6,speed_run=1.71429 WHERE entry=18168;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=18253;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=18255;
UPDATE creature_template SET speed_walk=0.4,speed_run=0.428571 WHERE entry=18412;
UPDATE creature_template SET speed_walk=1.2,speed_run=1.0 WHERE entry=18562;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=18654;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=19525;
UPDATE creature_template SET speed_walk=3.2 WHERE entry=19781;
UPDATE creature_template SET speed_walk=3.2 WHERE entry=19782;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=19873;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=19875;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=19876;
UPDATE creature_template SET speed_walk=1.0,speed_run=1.38571 WHERE entry=19908;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=19914;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=20195;
UPDATE creature_template SET speed_walk=2.0,speed_run=1.42857 WHERE entry=21160;
UPDATE creature_template SET speed_walk=2.0,speed_run=1.42857 WHERE entry=21664;
UPDATE creature_template SET speed_walk=2.0,speed_run=1.42857 WHERE entry=21682;
UPDATE creature_template SET speed_walk=2.0,speed_run=1.42857 WHERE entry=21683;
UPDATE creature_template SET speed_walk=2.0,speed_run=1.42857 WHERE entry=21684;
UPDATE creature_template SET speed_walk=2.0,speed_run=1.42857 WHERE entry=21726;
UPDATE creature_template SET speed_walk=2.0,speed_run=1.42857 WHERE entry=21747;
UPDATE creature_template SET speed_walk=2.0,speed_run=1.42857 WHERE entry=21748;
UPDATE creature_template SET speed_walk=2.0,speed_run=1.42857 WHERE entry=21750;
UPDATE creature_template SET speed_walk=2.0,speed_run=1.42857 WHERE entry=21752;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=21847;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=21921;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=22519;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=22520;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=22521;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=22523;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=22524;
UPDATE creature_template SET speed_walk=1.0,speed_run=1.71429 WHERE entry=23559;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=23560;
UPDATE creature_template SET speed_walk=1.2,speed_run=1.42857 WHERE entry=23575;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=23716;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=23718;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=23724;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=23748;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=23761;
UPDATE creature_template SET speed_run=1.14286 WHERE entry=23776;
UPDATE creature_template SET speed_walk=0.666668 WHERE entry=23836;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=23858;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=24365;
UPDATE creature_template SET speed_walk=0.777776 WHERE entry=25027;
UPDATE creature_template SET speed_walk=0.888888 WHERE entry=25028;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=25030;
UPDATE creature_template SET speed_walk=1.0,speed_run=1.38571 WHERE entry=25049;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=25157;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=25697;
UPDATE creature_template SET speed_walk=0.8 WHERE entry=25740;
UPDATE creature_template SET speed_run=1.0 WHERE entry=25754;
UPDATE creature_template SET speed_walk=1.55556 WHERE entry=25755;
UPDATE creature_template SET speed_run=1.28968 WHERE entry=25756;
UPDATE creature_template SET speed_walk=1.2,speed_run=3.0 WHERE entry=25765;
UPDATE creature_template SET speed_walk=0.8 WHERE entry=25865;
UPDATE creature_template SET speed_run=1.0 WHERE entry=25961;
UPDATE creature_template SET speed_walk=12.0,speed_run=1.28571 WHERE entry=25964;
UPDATE creature_template SET speed_walk=12.0,speed_run=1.71429 WHERE entry=25965;
UPDATE creature_template SET speed_walk=12.0,speed_run=2.14286 WHERE entry=25966;
UPDATE creature_template SET speed_run=1.28571 WHERE entry=25971;
UPDATE creature_template SET speed_run=1.28571 WHERE entry=25972;
UPDATE creature_template SET speed_run=1.28571 WHERE entry=25973;
UPDATE creature_template SET speed_walk=0.8 WHERE entry=26239;
UPDATE creature_template SET speed_run=1.14286 WHERE entry=26418;
UPDATE creature_template SET speed_run=1.14286 WHERE entry=26448;
UPDATE creature_template SET speed_run=1.6 WHERE entry=26725;
UPDATE creature_template SET speed_walk=0.666668,speed_run=0.992063 WHERE entry=26823;
UPDATE creature_template SET speed_walk=0.666668,speed_run=0.992063 WHERE entry=26825;
UPDATE creature_template SET speed_walk=0.666668,speed_run=0.992063 WHERE entry=26827;
UPDATE creature_template SET speed_run=1.38571 WHERE entry=27073;
UPDATE creature_template SET speed_run=1.38571 WHERE entry=27120;
UPDATE creature_template SET speed_run=1.14286 WHERE entry=27230;
UPDATE creature_template SET speed_run=1.42857 WHERE entry=27417;
UPDATE creature_template SET speed_run=0.992063 WHERE entry=28127;
UPDATE creature_template SET speed_run=1.28571 WHERE entry=28221;
UPDATE creature_template SET speed_run=0.992063 WHERE entry=28412;
UPDATE creature_template SET speed_run=1.0 WHERE entry=28413;
UPDATE creature_template SET speed_walk=2.4,speed_run=0.992063 WHERE entry=28666;
UPDATE creature_template SET speed_run=1.28968 WHERE entry=28793;
UPDATE creature_template SET speed_run=1.0 WHERE entry=29399;
UPDATE creature_template SET speed_run=0.952381 WHERE entry=29402;
UPDATE creature_template SET speed_run=1.19048 WHERE entry=29404;
UPDATE creature_template SET speed_run=1.19048 WHERE entry=29411;
UPDATE creature_template SET speed_run=1.19048 WHERE entry=29412;
UPDATE creature_template SET speed_run=1.19048 WHERE entry=29413;
UPDATE creature_template SET speed_run=0.992063 WHERE entry=29440;
UPDATE creature_template SET speed_run=1.0 WHERE entry=29475;
UPDATE creature_template SET speed_run=1.0 WHERE entry=29483;
UPDATE creature_template SET speed_run=1.19048 WHERE entry=29618;
UPDATE creature_template SET speed_run=1.42857 WHERE entry=29619;
UPDATE creature_template SET speed_run=1.11111 WHERE entry=29875;
UPDATE creature_template SET speed_run=1.42857 WHERE entry=29910;
UPDATE creature_template SET speed_run=1.5873 WHERE entry=29974;
UPDATE creature_template SET speed_walk=1.2,speed_run=1.0 WHERE entry=30005;
UPDATE creature_template SET speed_run=1.28571 WHERE entry=30040;
UPDATE creature_template SET speed_run=1.71429 WHERE entry=30105;
UPDATE creature_template SET speed_run=1.71429 WHERE entry=30127;
UPDATE creature_template SET speed_run=1.5873 WHERE entry=30141;
UPDATE creature_template SET speed_run=1.28571 WHERE entry=30160;
UPDATE creature_template SET speed_run=1.5873 WHERE entry=30163;
UPDATE creature_template SET speed_run=1.71429 WHERE entry=30252;
UPDATE creature_template SET speed_run=0.952381 WHERE entry=30260;
UPDATE creature_template SET speed_run=1.71429 WHERE entry=30262;
UPDATE creature_template SET speed_run=3.57143 WHERE entry=30275;
UPDATE creature_template SET speed_run=1.71429 WHERE entry=30294;
UPDATE creature_template SET speed_run=2.85714 WHERE entry=30302;
UPDATE creature_template SET speed_run=1.71429 WHERE entry=30320;
UPDATE creature_template SET speed_run=0.992063 WHERE entry=30422;
UPDATE creature_template SET speed_run=0.992063 WHERE entry=30423;
UPDATE creature_template SET speed_run=1.5873 WHERE entry=30425;
UPDATE creature_template SET speed_run=1.71429 WHERE entry=30455;
UPDATE creature_template SET speed_run=1.71429 WHERE entry=30456;
UPDATE creature_template SET speed_run=3.57143 WHERE entry=30466;
UPDATE creature_template SET speed_walk=6.0,speed_run=3.14286 WHERE entry=30749;
UPDATE creature_template SET speed_run=1.38571 WHERE entry=30864;
UPDATE creature_template SET speed_run=1.38571 WHERE entry=31033;
UPDATE creature_template SET speed_run=1.38571 WHERE entry=31036;
UPDATE creature_template SET speed_run=1.38571 WHERE entry=31153;
UPDATE creature_template SET speed_run=1.28968 WHERE entry=31198;
UPDATE creature_template SET speed_run=2.28571 WHERE entry=31233;
UPDATE creature_template SET speed_walk=6.0,speed_run=3.14286 WHERE entry=31246;
UPDATE creature_template SET speed_run=0.992063 WHERE entry=31262;
UPDATE creature_template SET speed_run=1.0 WHERE entry=31263;
UPDATE creature_template SET speed_run=0.992063 WHERE entry=31396;
UPDATE creature_template SET speed_run=1.42857 WHERE entry=31399;
UPDATE creature_template SET speed_run=1.28571 WHERE entry=31406;
UPDATE creature_template SET speed_run=1.0 WHERE entry=31407;
UPDATE creature_template SET speed_run=1.42857 WHERE entry=31583;
UPDATE creature_template SET speed_walk=2.0,speed_run=1.57143 WHERE entry=31721;
UPDATE creature_template SET speed_run=0.992063 WHERE entry=31736;
UPDATE creature_template SET speed_run=1.14286 WHERE entry=31768;
UPDATE creature_template SET speed_walk=1.2 WHERE entry=31868;
UPDATE creature_template SET speed_run=1.42857 WHERE entry=31892;
UPDATE creature_template SET speed_run=1.71429 WHERE entry=32179;
UPDATE creature_template SET speed_walk=0.8,speed_run=1.71429 WHERE entry=32182;
UPDATE creature_template SET speed_walk=4.0,speed_run=2.85714 WHERE entry=32186;
UPDATE creature_template SET speed_run=1.71429 WHERE entry=32188;
UPDATE creature_template SET speed_walk=1.0,speed_run=1.14286 WHERE entry=32321;
UPDATE creature_template SET speed_walk=1.0,speed_run=1.14286 WHERE entry=32322;
UPDATE creature_template SET speed_walk=1.0,speed_run=1.14286 WHERE entry=32324;
UPDATE creature_template SET speed_walk=1.0,speed_run=1.14286 WHERE entry=32325;
UPDATE creature_template SET speed_walk=1.0,speed_run=1.14286 WHERE entry=32340;
UPDATE creature_template SET speed_walk=1.0,speed_run=1.14286 WHERE entry=32341;
UPDATE creature_template SET speed_walk=1.0,speed_run=1.14286 WHERE entry=32342;
UPDATE creature_template SET speed_walk=0.4,speed_run=0.457143 WHERE entry=32343;
UPDATE creature_template SET speed_walk=1.2,speed_run=4.28571 WHERE entry=32344;
UPDATE creature_template SET speed_run=1.42857 WHERE entry=32523;
UPDATE creature_template SET speed_run=1.42857 WHERE entry=32524;
UPDATE creature_template SET speed_run=1.28571 WHERE entry=32525;
UPDATE creature_template SET speed_run=1.71429 WHERE entry=32540;
UPDATE creature_template SET speed_run=1.0 WHERE entry=32569;
UPDATE creature_template SET speed_run=1.71429 WHERE entry=32571;
UPDATE creature_template SET speed_run=1.71429 WHERE entry=32594;
UPDATE creature_template SET speed_run=1.14286 WHERE entry=32597;
UPDATE creature_template SET speed_run=1.14286 WHERE entry=32598;
UPDATE creature_template SET speed_run=1.14286 WHERE entry=32600;
UPDATE creature_template SET speed_run=1.14286 WHERE entry=32601;
UPDATE creature_template SET speed_run=1.14286 WHERE entry=32602;
UPDATE creature_template SET speed_run=2.0 WHERE entry=33429;
UPDATE creature_template SET speed_walk=0.888888 WHERE entry=33438;
UPDATE creature_template SET speed_run=1.38571 WHERE entry=34125;
UPDATE creature_template SET speed_run=1.38571 WHERE entry=34179;
UPDATE creature_template SET speed_run=0.857143 WHERE entry=34307;
UPDATE creature_template SET speed_run=1.14286 WHERE entry=34907;
UPDATE creature_template SET speed_run=1.14286 WHERE entry=35098;
UPDATE creature_template SET speed_run=1.0 WHERE entry=35320;
UPDATE creature_template SET speed_run=0.992063 WHERE entry=35321;
UPDATE creature_template SET speed_walk=0.6,speed_run=0.685714 WHERE entry=37016;
UPDATE creature_template SET speed_walk=0.5,speed_run=0.571429 WHERE entry=37017;
UPDATE creature_template SET speed_walk=2.0,speed_run=1.5873 WHERE entry=37230;
UPDATE creature_template SET speed_walk=0.4,speed_run=0.714286 WHERE entry=38229;
INSERT IGNORE INTO creature_equip_template VALUES (2258,14534,12980,0);
INSERT IGNORE INTO creature_equip_template VALUES (2259,14877,0,2551);
INSERT IGNORE INTO creature_equip_template VALUES (2292,2183,12981,0);
INSERT IGNORE INTO creature_equip_template VALUES (2293,23481,23481,6886);
INSERT IGNORE INTO creature_equip_template VALUES (2294,0,13609,0);
INSERT IGNORE INTO creature_equip_template VALUES (2295,13607,2081,0);
INSERT IGNORE INTO creature_equip_template VALUES (2296,1896,5281,2551);
INSERT IGNORE INTO creature_equip_template VALUES (2297,2809,1985,0);
INSERT IGNORE INTO creature_equip_template VALUES (2298,28067,0,0);
INSERT IGNORE INTO creature_equip_template VALUES (2299,28736,28737,0);
INSERT IGNORE INTO creature_equip_template VALUES (2300,23996,23996,0);
INSERT IGNORE INTO creature_equip_template VALUES (2301,13165,12893,0);
INSERT IGNORE INTO creature_equip_template VALUES (2302,18293,0,5258);
INSERT IGNORE INTO creature_equip_template VALUES (2303,11323,0,5856);
INSERT IGNORE INTO creature_equip_template VALUES (2304,33981,0,28972);
INSERT IGNORE INTO creature_equip_template VALUES (2305,0,33094,0);
INSERT IGNORE INTO creature_equip_template VALUES (2306,33982,33982,0);
INSERT IGNORE INTO creature_equip_template VALUES (2307,33980,33980,0);
INSERT IGNORE INTO creature_equip_template VALUES (2308,23743,23741,0);
INSERT IGNORE INTO creature_equip_template VALUES (2309,29362,0,0);
INSERT IGNORE INTO creature_equip_template VALUES (2310,43281,0,0);
INSERT IGNORE INTO creature_equip_template VALUES (2311,49802,0,0);
INSERT IGNORE INTO creature_equip_template VALUES (2312,34176,13524,0);
INSERT IGNORE INTO creature_equip_template VALUES (2313,27842,0,40020);
INSERT IGNORE INTO creature_equip_template VALUES (2314,45630,0,0);
INSERT IGNORE INTO creature_equip_template VALUES (2315,45918,0,0);
INSERT IGNORE INTO creature_equip_template VALUES (2316,46020,0,0);
INSERT IGNORE INTO creature_equip_template VALUES (2317,45925,32375,0);
INSERT IGNORE INTO creature_equip_template VALUES (2318,42544,45856,0);
INSERT IGNORE INTO creature_equip_template VALUES (2319,40595,40597,0);
INSERT IGNORE INTO creature_equip_template VALUES (2320,50290,46963,0);
INSERT IGNORE INTO creature_equip_template VALUES (2321,50051,51791,0);
INSERT IGNORE INTO creature_equip_template VALUES (2322,51881,0,0);
UPDATE creature_template SET equipment_id=93 WHERE entry=3725 AND equipment_id=0;
UPDATE creature_template SET equipment_id=9 WHERE entry=5907 AND equipment_id=0;
UPDATE creature_template SET equipment_id=117 WHERE entry=6245 AND equipment_id=0;
UPDATE creature_template SET equipment_id=33 WHERE entry=6246 AND equipment_id=0;
UPDATE creature_template SET equipment_id=558 WHERE entry=10643 AND equipment_id=0;
UPDATE creature_template SET equipment_id=2258 WHERE entry=13078 AND equipment_id=0;
UPDATE creature_template SET equipment_id=18 WHERE entry=13080 AND equipment_id=0;
UPDATE creature_template SET equipment_id=146 WHERE entry=13098 AND equipment_id=0;
UPDATE creature_template SET equipment_id=2259 WHERE entry=13180 AND equipment_id=0;
UPDATE creature_template SET equipment_id=2292 WHERE entry=13326 AND equipment_id=0;
UPDATE creature_template SET equipment_id=53 WHERE entry=13396 AND equipment_id=0;
UPDATE creature_template SET equipment_id=2178 WHERE entry=14765 AND equipment_id=0;
UPDATE creature_template SET equipment_id=137 WHERE entry=14874 AND equipment_id=0;
UPDATE creature_template SET equipment_id=2293 WHERE entry=15687 AND equipment_id=0;
UPDATE creature_template SET equipment_id=788 WHERE entry=16152 AND equipment_id=0;
UPDATE creature_template SET equipment_id=2294 WHERE entry=16159 AND equipment_id=0;
UPDATE creature_template SET equipment_id=2295 WHERE entry=16169 AND equipment_id=0;
UPDATE creature_template SET equipment_id=2 WHERE entry=16388 AND equipment_id=0;
UPDATE creature_template SET equipment_id=16 WHERE entry=16389 AND equipment_id=0;
UPDATE creature_template SET equipment_id=2112 WHERE entry=16409 AND equipment_id=0;
UPDATE creature_template SET equipment_id=8 WHERE entry=16410 AND equipment_id=0;
UPDATE creature_template SET equipment_id=62 WHERE entry=16411 AND equipment_id=0;
UPDATE creature_template SET equipment_id=91 WHERE entry=16412 AND equipment_id=0;
UPDATE creature_template SET equipment_id=26 WHERE entry=16414 AND equipment_id=0;
UPDATE creature_template SET equipment_id=2296 WHERE entry=16424 AND equipment_id=0;
UPDATE creature_template SET equipment_id=2297 WHERE entry=16425 AND equipment_id=0;
UPDATE creature_template SET equipment_id=16 WHERE entry=16472 AND equipment_id=0;
UPDATE creature_template SET equipment_id=9 WHERE entry=16524 AND equipment_id=0;
UPDATE creature_template SET equipment_id=2298 WHERE entry=16816 AND equipment_id=0;
UPDATE creature_template SET equipment_id=238 WHERE entry=16831 AND equipment_id=0;
UPDATE creature_template SET equipment_id=242 WHERE entry=16842 AND equipment_id=0;
UPDATE creature_template SET equipment_id=2 WHERE entry=16864 AND equipment_id=0;
UPDATE creature_template SET equipment_id=53 WHERE entry=16915 AND equipment_id=0;
UPDATE creature_template SET equipment_id=2299 WHERE entry=17007 AND equipment_id=0;
UPDATE creature_template SET equipment_id=107 WHERE entry=17211 AND equipment_id=0;
UPDATE creature_template SET equipment_id=295 WHERE entry=17469 AND equipment_id=0;
UPDATE creature_template SET equipment_id=295 WHERE entry=17547 AND equipment_id=0;
UPDATE creature_template SET equipment_id=2300 WHERE entry=17650 AND equipment_id=0;
UPDATE creature_template SET equipment_id=393 WHERE entry=18168 AND equipment_id=0;
UPDATE creature_template SET equipment_id=2301 WHERE entry=19873 AND equipment_id=0;
UPDATE creature_template SET equipment_id=1637 WHERE entry=19875 AND equipment_id=0;
UPDATE creature_template SET equipment_id=557 WHERE entry=19876 AND equipment_id=0;
UPDATE creature_template SET equipment_id=2302 WHERE entry=19908 AND equipment_id=0;
UPDATE creature_template SET equipment_id=71 WHERE entry=21682 AND equipment_id=0;
UPDATE creature_template SET equipment_id=97 WHERE entry=21683 AND equipment_id=0;
UPDATE creature_template SET equipment_id=305 WHERE entry=21684 AND equipment_id=0;
UPDATE creature_template SET equipment_id=295 WHERE entry=21726 AND equipment_id=0;
UPDATE creature_template SET equipment_id=310 WHERE entry=21747 AND equipment_id=0;
UPDATE creature_template SET equipment_id=295 WHERE entry=21748 AND equipment_id=0;
UPDATE creature_template SET equipment_id=321 WHERE entry=21750 AND equipment_id=0;
UPDATE creature_template SET equipment_id=2303 WHERE entry=21752 AND equipment_id=0;
UPDATE creature_template SET equipment_id=2304 WHERE entry=23542 AND equipment_id=0;
UPDATE creature_template SET equipment_id=275 WHERE entry=23560 AND equipment_id=0;
UPDATE creature_template SET equipment_id=2305 WHERE entry=23576 AND equipment_id=0;
UPDATE creature_template SET equipment_id=2306 WHERE entry=23580 AND equipment_id=0;
UPDATE creature_template SET equipment_id=2307 WHERE entry=23582 AND equipment_id=0;
UPDATE creature_template SET equipment_id=412 WHERE entry=23643 AND equipment_id=0;
UPDATE creature_template SET equipment_id=508 WHERE entry=23676 AND equipment_id=0;
UPDATE creature_template SET equipment_id=33 WHERE entry=23705 AND equipment_id=0;
UPDATE creature_template SET equipment_id=99 WHERE entry=23716 AND equipment_id=0;
UPDATE creature_template SET equipment_id=752 WHERE entry=23724 AND equipment_id=0;
UPDATE creature_template SET equipment_id=970 WHERE entry=23745 AND equipment_id=0;
UPDATE creature_template SET equipment_id=466 WHERE entry=23748 AND equipment_id=0;
UPDATE creature_template SET equipment_id=16 WHERE entry=23761 AND equipment_id=0;
UPDATE creature_template SET equipment_id=25 WHERE entry=23766 AND equipment_id=0;
UPDATE creature_template SET equipment_id=16 WHERE entry=23858 AND equipment_id=0;
UPDATE creature_template SET equipment_id=67 WHERE entry=23908 AND equipment_id=0;
UPDATE creature_template SET equipment_id=335 WHERE entry=24938 AND equipment_id=0;
UPDATE creature_template SET equipment_id=2308 WHERE entry=25030 AND equipment_id=0;
UPDATE creature_template SET equipment_id=1320 WHERE entry=25031 AND equipment_id=0;
UPDATE creature_template SET equipment_id=2309 WHERE entry=25033 AND equipment_id=0;
UPDATE creature_template SET equipment_id=361 WHERE entry=25101 AND equipment_id=0;
UPDATE creature_template SET equipment_id=338 WHERE entry=25115 AND equipment_id=0;
UPDATE creature_template SET equipment_id=632 WHERE entry=25242 AND equipment_id=0;
UPDATE creature_template SET equipment_id=845 WHERE entry=25962 AND equipment_id=0;
UPDATE creature_template SET equipment_id=25 WHERE entry=26112 AND equipment_id=0;
UPDATE creature_template SET equipment_id=645 WHERE entry=26565 AND equipment_id=0;
UPDATE creature_template SET equipment_id=663 WHERE entry=27160 AND equipment_id=0;
UPDATE creature_template SET equipment_id=596 WHERE entry=27260 AND equipment_id=0;
UPDATE creature_template SET equipment_id=68 WHERE entry=27290 AND equipment_id=0;
UPDATE creature_template SET equipment_id=2 WHERE entry=27361 AND equipment_id=0;
UPDATE creature_template SET equipment_id=580 WHERE entry=27500 AND equipment_id=0;
UPDATE creature_template SET equipment_id=703 WHERE entry=27953 AND equipment_id=0;
UPDATE creature_template SET equipment_id=54 WHERE entry=28044 AND equipment_id=0;
UPDATE creature_template SET equipment_id=54 WHERE entry=28125 AND equipment_id=0;
UPDATE creature_template SET equipment_id=1629 WHERE entry=28283 AND equipment_id=0;
UPDATE creature_template SET equipment_id=361 WHERE entry=28284 AND equipment_id=0;
UPDATE creature_template SET equipment_id=248 WHERE entry=28495 AND equipment_id=0;
UPDATE creature_template SET equipment_id=1047 WHERE entry=29413 AND equipment_id=0;
UPDATE creature_template SET equipment_id=865 WHERE entry=29451 AND equipment_id=0;
UPDATE creature_template SET equipment_id=2310 WHERE entry=30623 AND equipment_id=0;
UPDATE creature_template SET equipment_id=2311 WHERE entry=30625 AND equipment_id=0;
UPDATE creature_template SET equipment_id=326 WHERE entry=31578 AND equipment_id=0;
UPDATE creature_template SET equipment_id=2 WHERE entry=32164 AND equipment_id=0;
UPDATE creature_template SET equipment_id=2312 WHERE entry=32300 AND equipment_id=0;
UPDATE creature_template SET equipment_id=1832 WHERE entry=32594 AND equipment_id=0;
UPDATE creature_template SET equipment_id=256 WHERE entry=32658 AND equipment_id=0;
UPDATE creature_template SET equipment_id=256 WHERE entry=32660 AND equipment_id=0;
UPDATE creature_template SET equipment_id=1662 WHERE entry=32700 AND equipment_id=0;
UPDATE creature_template SET equipment_id=1661 WHERE entry=32702 AND equipment_id=0;
UPDATE creature_template SET equipment_id=1661 WHERE entry=32704 AND equipment_id=0;
UPDATE creature_template SET equipment_id=1662 WHERE entry=32706 AND equipment_id=0;
UPDATE creature_template SET equipment_id=1665 WHERE entry=32710 AND equipment_id=0;
UPDATE creature_template SET equipment_id=2313 WHERE entry=32712 AND equipment_id=0;
UPDATE creature_template SET equipment_id=2002 WHERE entry=32713 AND equipment_id=0;
UPDATE creature_template SET equipment_id=1842 WHERE entry=32715 AND equipment_id=0;
UPDATE creature_template SET equipment_id=1671 WHERE entry=32721 AND equipment_id=0;
UPDATE creature_template SET equipment_id=2314 WHERE entry=32930 AND equipment_id=0;
UPDATE creature_template SET equipment_id=1029 WHERE entry=33429 AND equipment_id=0;
UPDATE creature_template SET equipment_id=2315 WHERE entry=33438 AND equipment_id=0;
UPDATE creature_template SET equipment_id=2316 WHERE entry=33515 AND equipment_id=0;
UPDATE creature_template SET equipment_id=2317 WHERE entry=34127 AND equipment_id=0;
UPDATE creature_template SET equipment_id=2318 WHERE entry=34179 AND equipment_id=0;
UPDATE creature_template SET equipment_id=2319 WHERE entry=34180 AND equipment_id=0;
UPDATE creature_template SET equipment_id=721 WHERE entry=35045 AND equipment_id=0;
UPDATE creature_template SET equipment_id=1221 WHERE entry=35320 AND equipment_id=0;
UPDATE creature_template SET equipment_id=2136 WHERE entry=35321 AND equipment_id=0;
UPDATE creature_template SET equipment_id=3 WHERE entry=35322 AND equipment_id=0;
UPDATE creature_template SET equipment_id=547 WHERE entry=35361 AND equipment_id=0;
UPDATE creature_template SET equipment_id=1909 WHERE entry=35444 AND equipment_id=0;
UPDATE creature_template SET equipment_id=676 WHERE entry=36169 AND equipment_id=0;
UPDATE creature_template SET equipment_id=2320 WHERE entry=37068 AND equipment_id=0;
UPDATE creature_template SET equipment_id=2321 WHERE entry=37107 AND equipment_id=0;
UPDATE creature_template SET equipment_id=2322 WHERE entry=40446 AND equipment_id=0;
REPLACE INTO transports VALUES (28,195121,'IOC - Alliance Gunship',118797,'');
REPLACE INTO transports VALUES (27,195276,'IOC - Horde Gunship',115661,'');
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`) VALUES
(111427,21911,530,1,1,0,1794,-4179.24,3034.46,343.723,3.99674,25,0,0,5589,3155,0,2),
(111428,21911,530,1,1,0,1794,-4182.22,3057.57,344.151,2.29644,25,0,0,5744,3231,0,2),
(111429,21911,530,1,1,0,1794,-4125.02,3021.42,344.152,1.90767,25,0,0,5744,3231,0,2);
INSERT IGNORE INTO creature_addon VALUES (111427,111427,0,0,16,0,'37679 0');
INSERT IGNORE INTO creature_addon VALUES (111428,111427,0,0,16,0,'37679 0');
INSERT IGNORE INTO creature_addon VALUES (111429,111427,0,0,16,0,'37679 0');
INSERT INTO waypoint_data (id,point,position_x,position_y,position_z,delay) VALUES
('111427', '1', '-4187.76', '3029.87', '343.809', '0'),
('111427', '2', '-4198.59', '3033.03', '344.18', '0'),
('111427', '3', '-4203.05', '3044.17', '344.139', '0'),
('111427', '4', '-4198.76', '3055.04', '344.143', '0'),
('111427', '5', '-4184.49', '3058.53', '344.149', '0'),
('111427', '6', '-4183.9', '3062.2', '344.146', '0'),
('111427', '7', '-4179.43', '3089.63', '323.937', '4000'),
('111427', '8', '-4184.03', '3061.94', '344.147', '0'),
('111427', '9', '-4186.77', '3058.2', '344.148', '0'),
('111427', '10', '-4197.76', '3054.93', '344.14', '0'),
('111427', '11', '-4203.03', '3044.14', '344.139', '0'),
('111427', '12', '-4199.55', '3033.19', '344.178', '0'),
('111427', '13', '-4187.9', '3030.31', '343.84', '0'),
('111427', '14', '-4179.13', '3034.33', '343.706', '0'),
('111428', '1', '-4175.19', '3051.6', '344.04', '0'),
('111428', '2', '-4175.71', '3039.08', '343.678', '0'),
('111428', '3', '-4172.22', '3034.51', '343.149', '0'),
('111428', '4', '-4151.67', '3030.72', '336.914', '0'),
('111428', '5', '-4129.27', '3026.5', '343.926', '3000'),
('111428', '6', '-4147.08', '3030.19', '337.085', '0'),
('111428', '7', '-4172', '3034.67', '343.125', '0'),
('111428', '8', '-4174.44', '3037.84', '343.474', '0'),
('111428', '9', '-4173.65', '3046.8', '343.858', '0'),
('111428', '10', '-4181.41', '3057.53', '344.151', '4000'),
('111429', '1', '-4122.14', '3013.59', '344.146', '0'),
('111429', '2', '-4112.12', '3006.95', '344.147', '0'),
('111429', '3', '-4101.02', '3010.15', '344.151', '0'),
('111429', '4', '-4095.59', '3021.34', '343.977', '0'),
('111429', '5', '-4098.44', '3031.45', '344.016', '0'),
('111429', '6', '-4107.97', '3037.19', '344.105', '0'),
('111429', '7', '-4115.14', '3036.69', '344.029', '0'),
('111429', '8', '-4121.89', '3029.4', '344.145', '0'),
('111429', '9', '-4116.92', '3035.81', '344.027', '0'),
('111429', '10', '-4104.42', '3035.4', '344.102', '0'),
('111429', '11', '-4096.38', '3025.82', '344.046', '0'),
('111429', '12', '-4098.08', '3012.38', '344.168', '0'),
('111429', '13', '-4108.87', '3007.24', '344.145', '0'),
('111429', '14', '-4119.84', '3009.6', '344.15', '0'),
('111429', '15', '-4125.54', '3021.63', '344.151', '0');
INSERT INTO quest_end_scripts VALUES 
(10449,0,0,0,0,2000000437,0,0,0,0),
(10449,1,3,0,0,0,36.774345,2121.958252,126.820351,6.238914),
(10449,2,1,69,0,0,0,0,0,0),
(10449,5,0,0,0,2000000438,0,0,0,0),
(10449,7,0,0,0,2000000439,0,0,0,0),
(10449,9,1,0,0,0,0,0,0,0),
(10449,9,3,0,0,0,36.5121,2121.97,127.012,3.1765),
(10449,10,0,0,0,2000000440,0,0,0,0),
(10449,10,1,1,0,0,0,0,0,0),
(10449,13,1,274,0,0,0,0,0,0);
INSERT INTO db_script_string VALUES
(2000000437,'Thank you, $N. Now, to perform the test...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(2000000438,'Ah, I see...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(2000000439,'Yes, this is unfortunate.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(2000000440,'$N, I have confirmed that this blood is from the Bonechewer clan of orcs, tainted with demonic power. I\'m afraid, however, that my current equipment can delve no deeper into this mystery...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
UPDATE quest_template SET CompleteScript =10449 WHERE entry =10449;
INSERT INTO quest_end_scripts VALUES 
(10615,1,1,11,0,0,0,0,0,0);
UPDATE quest_template SET CompleteScript =10615 WHERE entry =10615;
INSERT INTO quest_end_scripts VALUES 
(9397,1,3,0,0,0,-597.805969,4110.678711,90.848030,2.021164),
(9397,3,1,16,0,0,0,0,0,0),
(9397,5,10,17262,20000,0,-597.244,4111.88,90.7789,0.805268),
(9397,6,0,0,0,2000000441,0,0,0,0),
(9397,10,3,0,0,0,-596.474976,4109.491211,90.884354,5.151758),
(9397,12,3,0,0,0,-596.346985,4108.470215,90.821068,4.934988);
INSERT INTO db_script_string VALUES
(2000000441,'Thank you, $N. It looks like they\'re going to get along just fine.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
UPDATE quest_template SET CompleteScript =9397 WHERE entry =9397;
DELETE FROM `gameobject` WHERE `id`=184450;
INSERT INTO `gameobject` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecs`,`animprogress`,`state`) VALUES
(3792, 184450, 530, 1, 1, -287.019, 4731.63, 18.217, 2.58308, 0, 0, 0, 1, -6, 255, 1);
INSERT INTO quest_end_scripts VALUES 
(10349,0,0,0,0,2000000442,0,0,0,0),
(10349,4,3,0,0,0,-287.691162,4730.497070,18.355309,1.186525),
(10349,12,1,16,0,0,0,0,0,0),
(10349,14,9,3792,5,0,0,0,0,0),
(10349,16,0,0,0,2000000443,0,0,0,0),
(10349,17,10,20599,120000,0,-287.019,4731.63,18.217,2.58308),
(10349,45,3,0,0,0,-295.947968,4714.562012,28.343580,4.081499),
(10349,53,3,0,0,0,-294.765991,4715.080078,28.186199,0.490660);
INSERT INTO db_script_string VALUES
(2000000442,'I have an idea. Let\'s plant this shard in the ground and see what happens.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(2000000443,'The evil emanating from the crystal shard has lured one of the colossi. Put it down quick!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
UPDATE quest_template SET CompleteScript =10349 WHERE entry =10349;
INSERT INTO quest_end_scripts VALUES 
(10715,1,3,0,0,0,2915.574951,5957.421387,3.274187,2.978744),
(10715,5,1,69,0,0,0,0,0,0),
(10715,12,1,0,0,0,0,0,0,0),
(10715,14,3,0,0,0,2918.795654,5955.879883,3.202166,0.803190),
(10715,16,3,0,0,0,2919.110107,5956.930176,3.137081,1.039334),
(10715,18,0,0,0,2000000444,0,0,0,0);
INSERT INTO db_script_string VALUES
(2000000444,'There, it is completed.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
UPDATE quest_template SET CompleteScript =10715 WHERE entry IN (10715,10799);
INSERT INTO quest_end_scripts VALUES 
(10719,1,0,21983,0x04,2000000445,0,0,0,0),
(10719,3,0,21983,0x00,2000000446,0,0,0,0);
INSERT INTO db_script_string VALUES
(2000000445,'$r, do you know who Kolphis Darkscale is?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(2000000446,'Yes, he\'s second-in-command of the wyrmcult at the Blackwing Coven to the west.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
UPDATE quest_template SET CompleteScript =10719 WHERE entry =10719;
INSERT INTO quest_start_scripts VALUES 
(11004,1,0,23038,0x02,2000000447,0,0,0,0),
(11004,7,1,16,0,0,0,0,0,0),
(11004,10,0,23036,0x02,2000000448,0,0,0,0);
INSERT INTO db_script_string VALUES
(2000000447,'The arakkoa are hidden... everywhere!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(2000000448,'Rest now, Adaris. You need to recover your strength.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
UPDATE quest_template SET StartScript =11004 WHERE entry =11004;
DELETE FROM `quest_end_scripts` WHERE `id`=10201;
INSERT INTO `quest_end_scripts` VALUES 
(10201, 8, 0, 0, 0, '2000001021', 0, 0, 0, 0),
(10201, 1, 0, 0, 0, '2000001020', 0, 0, 0, 0),
(10201, 2, 1, 11, 0, 0, 0, 0, 0, 0),
(10201, 7, 1, 25, 0, 0, 0, 0, 0, 0);
INSERT INTO `gameobject` VALUES ('3794', '201709', '668', '3', '1', '5215.89', '1626.08', '796.456', '-0.698132', '0', '0', '0', '1', '-86400', '255', '1');
INSERT INTO `gameobject` VALUES ('3799', '201709', '668', '3', '1', '5228.35', '1640.96', '783.731', '-0.698132', '0', '0', '0', '1', '-86400', '255', '1');
INSERT INTO `gameobject` VALUES ('3909', '178187', '409', '1', '1', '601.672', '-1174.61', '-196.072', '3.14159', '0', '0', '0', '1', '604800', '255', '1');
INSERT INTO `gameobject` VALUES ('3922', '178189', '409', '1', '1', '583.7', '-806.738', '-204.961', '3.14159', '0', '0', '0', '1', '604800', '255', '1');
INSERT INTO `gameobject` VALUES ('4789', '178190', '409', '1', '1', '795.536', '-974.253', '-207.788', '3.14159', '0', '0', '0', '1', '604800', '255', '1');
INSERT INTO `gameobject` VALUES ('4803', '178192', '409', '1', '1', '1132.11', '-1017.27', '-186.494', '3.14159', '0', '0', '0', '1', '604800', '255', '1');
INSERT INTO `gameobject` VALUES ('4804', '178107', '409', '1', '1', '838.951', '-830.383', '-230.206', '0.837757', '0', '0', '0', '1', '604800', '255', '1');
INSERT INTO `gameobject` VALUES ('4805', '178108', '409', '1', '1', '839.279', '-831.058', '-230.202', '-1.37881', '0', '0', '0', '1', '604800', '255', '1');
DELETE FROM `creature` WHERE `id`=28362;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`) VALUES
(111430, 28362, 571, 1, 1, 0, 0, 5551.06, 4750.33, -133.777, 1.81514, 180, 0, 0, 42, 0, 0, 0),
(111431, 28362, 571, 1, 1, 0, 0, 5607.36, 4355.13, -134.915, 4.45059, 180, 0, 0, 42, 0, 0, 0),
(111432, 28362, 571, 1, 1, 0, 0, 5726.51, 4370.49, -138.519, 3.10669, 180, 0, 0, 42, 0, 0, 0),
(111433, 28362, 571, 1, 1, 0, 0, 5606.67, 4545.54, -136.037, 4.95674, 180, 0, 0, 42, 0, 0, 0),
(111434, 28362, 571, 1, 1, 0, 0, 5693.35, 4629.68, -138.322, 4.92183, 180, 0, 0, 42, 0, 0, 0);
UPDATE `creature_template` SET `unit_flags` = 33554432 WHERE `entry` = 36736;
DELETE FROM `creature` WHERE `id`=36736;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`) VALUES
(111435, 36736, 668, 3, 1, 0, 0, 5412.49, 2150.63, 720.336, 4.50295, 300, 0, 0, 0, 0, 0, 0),
(111436, 36736, 668, 3, 1, 0, 0, 5449.62, 2117.59, 720.493, 3.1765, 300, 0, 0, 0, 0, 0, 0),
(111437, 36736, 668, 3, 1, 0, 0, 5395.38, 2146.63, 720.212, 5.3058, 300, 0, 0, 0, 0, 0, 0),
(111438, 36736, 668, 3, 1, 0, 0, 5445.53, 2099.37, 720.4, 2.60054, 300, 0, 0, 0, 0, 0, 0),
(111439, 36736, 668, 3, 1, 0, 0, 5431.74, 2087.5, 720.391, 2.07694, 300, 0, 0, 0, 0, 0, 0),
(111440, 36736, 668, 3, 1, 0, 0, 5415.33, 2080.36, 720.507, 1.64061, 300, 0, 0, 0, 0, 0, 0),
(111441, 36736, 668, 3, 1, 0, 0, 5380.97, 2134.46, 720.689, 5.63741, 300, 0, 0, 0, 0, 0, 0),
(111442, 36736, 668, 3, 1, 0, 0, 5376.91, 2115.43, 720.357, 6.12611, 300, 0, 0, 0, 0, 0, 0);
UPDATE `creature_template` SET `unit_flags` = 33554432 WHERE `entry` = 37071;
DELETE FROM `creature` WHERE `id`=37071;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`) VALUES
(111443, 37071, 668, 3, 1, 0, 0, 5408.36, 2110.33, 726.992, 3.63029, 300, 0, 0, 0, 0, 0, 0);
UPDATE `creature_template` SET `unit_flags` = 33554432, `flags_extra` = 2 WHERE `entry` = 37014;
DELETE FROM `creature` WHERE `id`=37014;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`) VALUES
(111444, 37014, 668, 3, 1, 0, 0, 5439.98, 1879.01, 752.705, 1.06465, 300, 0, 0, 0, 0, 0, 0),
(111445, 37014, 668, 3, 1, 0, 0, 5318.29, 1749.18, 771.942, 0.872665, 300, 0, 0, 0, 0, 0, 0),
(111446, 37014, 668, 3, 1, 0, 0, 5503.21, 1969.55, 737.025, 1.27409, 300, 0, 0, 0, 0, 0, 0),
(111447, 37014, 668, 3, 1, 0, 0, 5547.83, 2083.7, 731.433, 1.02974, 300, 0, 0, 0, 0, 0, 0);
INSERT INTO `game_event` (`entry`, `start_time`, `end_time`, `occurence`, `length`, `holiday`, `description`) VALUES (27, '2010-12-06 00:10:00', '2020-12-30 23:00:00', 30, 10, 0, 'Leader of Jin\'Alai, Kutube\'sa');
INSERT INTO `game_event` (`entry`, `start_time`, `end_time`, `occurence`, `length`, `holiday`, `description`) VALUES (33, '2010-12-06 00:20:00', '2020-12-30 23:00:00', 30, 10, 0, 'Leader of Jin\'Alai, Gawanil');
INSERT INTO `game_event` (`entry`, `start_time`, `end_time`, `occurence`, `length`, `holiday`, `description`) VALUES (39, '2010-12-06 00:30:00', '2020-12-30 23:00:00', 30, 10, 0, 'Leader of Jin\'Alai, Chulo');
REPLACE INTO game_event_creature VALUES (119182, 27);
REPLACE INTO game_event_creature VALUES (119183, 33);
REPLACE INTO game_event_creature VALUES (119184, 39);
UPDATE creature_template SET equipment_id =7 WHERE entry =20221;
REPLACE INTO `creature_model_info` VALUES ('201', '0.394', '1.5', '2', '0');
REPLACE INTO `creature_model_info` VALUES ('369', '0.3336', '1.2', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('1127', '0.5556', '0.6', '2', '0');
REPLACE INTO `creature_model_info` VALUES ('1454', '0.34', '2.125', '2', '0');
REPLACE INTO `creature_model_info` VALUES ('1533', '1.08', '1.575', '2', '0');
REPLACE INTO `creature_model_info` VALUES ('1862', '0.208', '1.5', '1', '1860');
REPLACE INTO `creature_model_info` VALUES ('1958', '1.32', '1.925', '2', '0');
REPLACE INTO `creature_model_info` VALUES ('1969', '0.347', '1.5', '1', '1968');
REPLACE INTO `creature_model_info` VALUES ('2001', '1.25', '1.5625', '2', '0');
REPLACE INTO `creature_model_info` VALUES ('2425', '1.5', '4', '2', '0');
REPLACE INTO `creature_model_info` VALUES ('2700', '1', '1', '2', '0');
REPLACE INTO `creature_model_info` VALUES ('2707', '1.15', '1.15', '2', '0');
REPLACE INTO `creature_model_info` VALUES ('2870', '0.372', '1.5', '0', '2869');
REPLACE INTO `creature_model_info` VALUES ('2871', '0.347', '1.5', '0', '2872');
REPLACE INTO `creature_model_info` VALUES ('2872', '0.3519', '1.725', '0', '2871');
REPLACE INTO `creature_model_info` VALUES ('2874', '0.383', '1.5', '1', '2873');
REPLACE INTO `creature_model_info` VALUES ('2877', '0.383', '1.5', '0', '2876');
REPLACE INTO `creature_model_info` VALUES ('2883', '0.306', '1.5', '1', '2882');
REPLACE INTO `creature_model_info` VALUES ('2884', '0.3519', '1.725', '1', '2885');
REPLACE INTO `creature_model_info` VALUES ('2887', '0.306', '1.5', '0', '2886');
REPLACE INTO `creature_model_info` VALUES ('2888', '0.306', '1.5', '0', '2889');
REPLACE INTO `creature_model_info` VALUES ('2889', '0.347', '1.5', '1', '2888');
REPLACE INTO `creature_model_info` VALUES ('2891', '0.3519', '1.725', '0', '2890');
REPLACE INTO `creature_model_info` VALUES ('2892', '0.9747', '4.05', '0', '2893');
REPLACE INTO `creature_model_info` VALUES ('2893', '0.347', '1.5', '1', '2892');
REPLACE INTO `creature_model_info` VALUES ('2895', '0.9747', '4.05', '0', '2894');
REPLACE INTO `creature_model_info` VALUES ('2897', '0.3519', '1.725', '0', '2896');
REPLACE INTO `creature_model_info` VALUES ('2899', '0.306', '1.5', '0', '2898');
REPLACE INTO `creature_model_info` VALUES ('2900', '0.372', '1.5', '0', '2901');
REPLACE INTO `creature_model_info` VALUES ('2901', '0.8725', '3.75', '1', '2900');
REPLACE INTO `creature_model_info` VALUES ('2981', '0.306', '1.5', '0', '2983');
REPLACE INTO `creature_model_info` VALUES ('3052', '0.3519', '1.725', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('3230', '0.208', '1.5', '1', '3229');
REPLACE INTO `creature_model_info` VALUES ('3560', '0.208', '1.5', '1', '3559');
REPLACE INTO `creature_model_info` VALUES ('3561', '0.3519', '1.725', '0', '3562');
REPLACE INTO `creature_model_info` VALUES ('3567', '0.208', '1.5', '1', '3566');
REPLACE INTO `creature_model_info` VALUES ('3568', '0.3519', '1.725', '0', '3569');
REPLACE INTO `creature_model_info` VALUES ('3583', '0.3519', '1.725', '0', '3584');
REPLACE INTO `creature_model_info` VALUES ('3584', '0.3519', '1.725', '1', '3583');
REPLACE INTO `creature_model_info` VALUES ('3586', '0.208', '1.5', '1', '3585');
REPLACE INTO `creature_model_info` VALUES ('3587', '0.3519', '1.725', '0', '3588');
REPLACE INTO `creature_model_info` VALUES ('3611', '0.208', '1.5', '1', '3610');
REPLACE INTO `creature_model_info` VALUES ('3634', '0.208', '1.5', '1', '3627');
REPLACE INTO `creature_model_info` VALUES ('3722', '0.208', '1.5', '1', '3721');
REPLACE INTO `creature_model_info` VALUES ('3726', '0.208', '1.5', '1', '3725');
REPLACE INTO `creature_model_info` VALUES ('3728', '0.208', '1.5', '1', '3727');
REPLACE INTO `creature_model_info` VALUES ('3730', '0.208', '1.5', '1', '3729');
REPLACE INTO `creature_model_info` VALUES ('3735', '0.208', '1.5', '1', '3734');
REPLACE INTO `creature_model_info` VALUES ('3764', '0.347', '1.5', '1', '3763');
REPLACE INTO `creature_model_info` VALUES ('3786', '0.347', '1.5', '1', '3785');
REPLACE INTO `creature_model_info` VALUES ('3788', '0.347', '1.5', '1', '3787');
REPLACE INTO `creature_model_info` VALUES ('3830', '0.208', '1.5', '1', '3829');
REPLACE INTO `creature_model_info` VALUES ('3838', '0.347', '1.5', '1', '3837');
REPLACE INTO `creature_model_info` VALUES ('3840', '0.347', '1.5', '1', '3839');
REPLACE INTO `creature_model_info` VALUES ('3871', '0.347', '1.5', '1', '3870');
REPLACE INTO `creature_model_info` VALUES ('3902', '0.347', '1.5', '0', '355');
REPLACE INTO `creature_model_info` VALUES ('3903', '0.347', '1.5', '0', '1122');
REPLACE INTO `creature_model_info` VALUES ('3904', '0.208', '1.5', '1', '7245');
REPLACE INTO `creature_model_info` VALUES ('3905', '0.306', '1.5', '0', '3906');
REPLACE INTO `creature_model_info` VALUES ('3906', '0.347', '1.5', '0', '3905');
REPLACE INTO `creature_model_info` VALUES ('3908', '0.347', '1.5', '0', '4099');
REPLACE INTO `creature_model_info` VALUES ('3909', '0.347', '1.5', '0', '355');
REPLACE INTO `creature_model_info` VALUES ('3910', '0.306', '1.5', '0', '7234');
REPLACE INTO `creature_model_info` VALUES ('3911', '0.347', '1.5', '0', '1122');
REPLACE INTO `creature_model_info` VALUES ('3912', '0.347', '1.5', '0', '4098');
REPLACE INTO `creature_model_info` VALUES ('3913', '0.306', '1.5', '0', '7238');
REPLACE INTO `creature_model_info` VALUES ('3915', '0.208', '1.5', '1', '0');
REPLACE INTO `creature_model_info` VALUES ('3917', '0.347', '1.5', '0', '355');
REPLACE INTO `creature_model_info` VALUES ('3919', '0.306', '1.5', '0', '3918');
REPLACE INTO `creature_model_info` VALUES ('3923', '0.347', '1.5', '0', '275');
REPLACE INTO `creature_model_info` VALUES ('3924', '0.306', '1.5', '0', '7226');
REPLACE INTO `creature_model_info` VALUES ('3925', '0.347', '1.5', '0', '275');
REPLACE INTO `creature_model_info` VALUES ('3928', '0.306', '1.5', '0', '7228');
REPLACE INTO `creature_model_info` VALUES ('3931', '0.208', '1.5', '1', '3933');
REPLACE INTO `creature_model_info` VALUES ('3934', '0.347', '1.5', '0', '3932');
REPLACE INTO `creature_model_info` VALUES ('3935', '0.208', '1.5', '1', '7230');
REPLACE INTO `creature_model_info` VALUES ('3936', '0.347', '1.5', '0', '4100');
REPLACE INTO `creature_model_info` VALUES ('3959', '0.306', '1.5', '0', '3958');
REPLACE INTO `creature_model_info` VALUES ('3961', '0.208', '1.5', '1', '3960');
REPLACE INTO `creature_model_info` VALUES ('3973', '0.306', '1.5', '0', '3974');
REPLACE INTO `creature_model_info` VALUES ('3974', '0.306', '1.5', '0', '3973');
REPLACE INTO `creature_model_info` VALUES ('3975', '0.306', '1.5', '0', '3976');
REPLACE INTO `creature_model_info` VALUES ('3977', '0.208', '1.5', '1', '3978');
REPLACE INTO `creature_model_info` VALUES ('3979', '0.208', '1.5', '1', '3980');
REPLACE INTO `creature_model_info` VALUES ('4017', '0.208', '1.5', '1', '4016');
REPLACE INTO `creature_model_info` VALUES ('4038', '0.383', '1.5', '1', '4037');
REPLACE INTO `creature_model_info` VALUES ('4084', '0.306', '1.5', '1', '4083');
REPLACE INTO `creature_model_info` VALUES ('4098', '0.306', '1.5', '0', '3912');
REPLACE INTO `creature_model_info` VALUES ('4099', '0.306', '1.5', '0', '3908');
REPLACE INTO `creature_model_info` VALUES ('4100', '0.306', '1.5', '0', '3936');
REPLACE INTO `creature_model_info` VALUES ('4118', '0.347', '1.5', '0', '4119');
REPLACE INTO `creature_model_info` VALUES ('4128', '0.383', '1.5', '1', '4127');
REPLACE INTO `creature_model_info` VALUES ('4130', '0.383', '1.5', '0', '4129');
REPLACE INTO `creature_model_info` VALUES ('4132', '0.383', '1.5', '0', '4131');
REPLACE INTO `creature_model_info` VALUES ('4134', '0.383', '1.5', '0', '4133');
REPLACE INTO `creature_model_info` VALUES ('4136', '0.383', '1.5', '0', '4135');
REPLACE INTO `creature_model_info` VALUES ('4140', '0.208', '1.5', '1', '4139');
REPLACE INTO `creature_model_info` VALUES ('4144', '0.208', '1.5', '1', '4143');
REPLACE INTO `creature_model_info` VALUES ('4152', '0.383', '1.5', '0', '4151');
REPLACE INTO `creature_model_info` VALUES ('4154', '0.383', '1.5', '0', '4153');
REPLACE INTO `creature_model_info` VALUES ('4158', '0.383', '1.5', '1', '4157');
REPLACE INTO `creature_model_info` VALUES ('4187', '0.236', '1.5', '1', '4186');
REPLACE INTO `creature_model_info` VALUES ('4189', '0.236', '1.5', '1', '4188');
REPLACE INTO `creature_model_info` VALUES ('4191', '0.236', '1.5', '1', '4190');
REPLACE INTO `creature_model_info` VALUES ('4193', '0.236', '1.5', '1', '4192');
REPLACE INTO `creature_model_info` VALUES ('4195', '0.236', '1.5', '1', '4194');
REPLACE INTO `creature_model_info` VALUES ('4197', '0.372', '1.5', '0', '4196');
REPLACE INTO `creature_model_info` VALUES ('4199', '0.372', '1.5', '0', '4198');
REPLACE INTO `creature_model_info` VALUES ('4219', '0.208', '1.5', '1', '0');
REPLACE INTO `creature_model_info` VALUES ('4221', '0.208', '1.5', '1', '825');
REPLACE INTO `creature_model_info` VALUES ('4223', '0.306', '1.5', '1', '4224');
REPLACE INTO `creature_model_info` VALUES ('4224', '0.347', '1.5', '0', '4223');
REPLACE INTO `creature_model_info` VALUES ('4248', '0.389', '1.5', '0', '4247');
REPLACE INTO `creature_model_info` VALUES ('4250', '0.306', '1.5', '1', '4249');
REPLACE INTO `creature_model_info` VALUES ('4254', '0.306', '1.5', '1', '4253');
REPLACE INTO `creature_model_info` VALUES ('4277', '0.208', '1.5', '1', '4275');
REPLACE INTO `creature_model_info` VALUES ('4278', '0.208', '1.5', '1', '4276');
REPLACE INTO `creature_model_info` VALUES ('4411', '0.208', '1.5', '1', '4217');
REPLACE INTO `creature_model_info` VALUES ('4412', '0.208', '1.5', '1', '4230');
REPLACE INTO `creature_model_info` VALUES ('4502', '0.236', '1.5', '1', '4501');
REPLACE INTO `creature_model_info` VALUES ('4637', '0.347', '1.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('4639', '0.306', '1.5', '0', '374');
REPLACE INTO `creature_model_info` VALUES ('4640', '0.347', '1.5', '0', '4638');
REPLACE INTO `creature_model_info` VALUES ('4670', '0.208', '1.5', '1', '0');
REPLACE INTO `creature_model_info` VALUES ('4676', '0.306', '1.5', '0', '4675');
REPLACE INTO `creature_model_info` VALUES ('4679', '0.306', '1.5', '0', '4677');
REPLACE INTO `creature_model_info` VALUES ('4698', '0.236', '1.5', '1', '4697');
REPLACE INTO `creature_model_info` VALUES ('4700', '0.236', '1.5', '1', '4699');
REPLACE INTO `creature_model_info` VALUES ('4702', '0.236', '1.5', '1', '4701');
REPLACE INTO `creature_model_info` VALUES ('4704', '0.236', '1.5', '1', '4703');
REPLACE INTO `creature_model_info` VALUES ('4706', '0.236', '1.5', '1', '4705');
REPLACE INTO `creature_model_info` VALUES ('4708', '0.236', '1.5', '1', '4707');
REPLACE INTO `creature_model_info` VALUES ('4710', '0.236', '1.5', '1', '4709');
REPLACE INTO `creature_model_info` VALUES ('4850', '0.306', '1.5', '1', '4849');
REPLACE INTO `creature_model_info` VALUES ('4852', '0.306', '1.5', '1', '4851');
REPLACE INTO `creature_model_info` VALUES ('4963', '0.389', '1.5', '0', '4962');
REPLACE INTO `creature_model_info` VALUES ('4966', '0.236', '1.5', '1', '4967');
REPLACE INTO `creature_model_info` VALUES ('4967', '0.347', '1.5', '1', '4966');
REPLACE INTO `creature_model_info` VALUES ('5306', '1.0425', '3.75', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('5436', '0.369495', '1.81125', '0', '5435');
REPLACE INTO `creature_model_info` VALUES ('5437', '0.334305', '1.63875', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('5531', '0.208', '1.5', '1', '5530');
REPLACE INTO `creature_model_info` VALUES ('5533', '0.208', '1.5', '1', '5532');
REPLACE INTO `creature_model_info` VALUES ('5569', '0.208', '1.5', '1', '5568');
REPLACE INTO `creature_model_info` VALUES ('5572', '0.208', '1.5', '1', '5571');
REPLACE INTO `creature_model_info` VALUES ('5574', '0.208', '1.5', '1', '5573');
REPLACE INTO `creature_model_info` VALUES ('5785', '0.208', '1.5', '0', '5786');
REPLACE INTO `creature_model_info` VALUES ('5786', '0.208', '1.5', '1', '5785');
REPLACE INTO `creature_model_info` VALUES ('5815', '0.208', '1.5', '1', '5814');
REPLACE INTO `creature_model_info` VALUES ('5817', '0.208', '1.5', '1', '5816');
REPLACE INTO `creature_model_info` VALUES ('5818', '0.347', '1.5', '0', '5819');
REPLACE INTO `creature_model_info` VALUES ('5819', '0.347', '1.5', '1', '5818');
REPLACE INTO `creature_model_info` VALUES ('5821', '0.208', '1.5', '1', '5820');
REPLACE INTO `creature_model_info` VALUES ('5823', '0.208', '1.5', '1', '5822');
REPLACE INTO `creature_model_info` VALUES ('5825', '0.208', '1.5', '1', '5824');
REPLACE INTO `creature_model_info` VALUES ('5826', '0.347', '1.5', '0', '5827');
REPLACE INTO `creature_model_info` VALUES ('5829', '0.208', '1.5', '1', '5828');
REPLACE INTO `creature_model_info` VALUES ('5909', '0.208', '1.5', '1', '5910');
REPLACE INTO `creature_model_info` VALUES ('5910', '0.208', '1.5', '1', '5909');
REPLACE INTO `creature_model_info` VALUES ('6079', '0.525', '2.25', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('6391', '0.236', '1.5', '1', '6390');
REPLACE INTO `creature_model_info` VALUES ('6392', '0.236', '1.5', '1', '6389');
REPLACE INTO `creature_model_info` VALUES ('6394', '0.236', '1.5', '1', '6393');
REPLACE INTO `creature_model_info` VALUES ('6400', '0.236', '1.5', '1', '6399');
REPLACE INTO `creature_model_info` VALUES ('6406', '0.236', '1.5', '1', '6405');
REPLACE INTO `creature_model_info` VALUES ('6609', '0.3519', '1.725', '1', '6608');
REPLACE INTO `creature_model_info` VALUES ('6611', '0.3519', '1.725', '1', '6610');
REPLACE INTO `creature_model_info` VALUES ('6629', '0.3519', '1.725', '1', '6628');
REPLACE INTO `creature_model_info` VALUES ('6725', '0.347', '1.5', '0', '6726');
REPLACE INTO `creature_model_info` VALUES ('6782', '0.214', '1.5', '1', '0');
REPLACE INTO `creature_model_info` VALUES ('6783', '0.383', '1.5', '1', '6784');
REPLACE INTO `creature_model_info` VALUES ('6786', '0.372', '1.5', '0', '6785');
REPLACE INTO `creature_model_info` VALUES ('6790', '0.383', '1.5', '1', '6789');
REPLACE INTO `creature_model_info` VALUES ('6832', '0.9747', '4.05', '0', '6831');
REPLACE INTO `creature_model_info` VALUES ('6870', '0.372', '1.5', '0', '6869');
REPLACE INTO `creature_model_info` VALUES ('6871', '0.383', '1.5', '0', '6872');
REPLACE INTO `creature_model_info` VALUES ('6872', '0.306', '1.5', '0', '6871');
REPLACE INTO `creature_model_info` VALUES ('6876', '0.383', '1.5', '0', '6877');
REPLACE INTO `creature_model_info` VALUES ('6877', '0.306', '1.5', '0', '6876');
REPLACE INTO `creature_model_info` VALUES ('6923', '0.3519', '1.725', '0', '6924');
REPLACE INTO `creature_model_info` VALUES ('6924', '0.3519', '1.725', '0', '6923');
REPLACE INTO `creature_model_info` VALUES ('6933', '0.3519', '1.725', '0', '6932');
REPLACE INTO `creature_model_info` VALUES ('6934', '0.3519', '1.725', '0', '6935');
REPLACE INTO `creature_model_info` VALUES ('6935', '0.3519', '1.725', '0', '6934');
REPLACE INTO `creature_model_info` VALUES ('6939', '0.347', '1.5', '0', '6938');
REPLACE INTO `creature_model_info` VALUES ('6940', '0.306', '1.5', '0', '6941');
REPLACE INTO `creature_model_info` VALUES ('6941', '0.306', '1.5', '1', '6940');
REPLACE INTO `creature_model_info` VALUES ('6945', '0.208', '1.5', '1', '6951');
REPLACE INTO `creature_model_info` VALUES ('6946', '0.306', '1.5', '0', '6947');
REPLACE INTO `creature_model_info` VALUES ('6947', '0.347', '1.5', '0', '6946');
REPLACE INTO `creature_model_info` VALUES ('6949', '0.347', '1.5', '0', '6948');
REPLACE INTO `creature_model_info` VALUES ('6951', '0.208', '1.5', '1', '6950');
REPLACE INTO `creature_model_info` VALUES ('6952', '0.306', '1.5', '0', '374');
REPLACE INTO `creature_model_info` VALUES ('6953', '0.347', '1.5', '0', '6954');
REPLACE INTO `creature_model_info` VALUES ('6954', '0.306', '1.5', '0', '6953');
REPLACE INTO `creature_model_info` VALUES ('6968', '0.3519', '1.725', '0', '6967');
REPLACE INTO `creature_model_info` VALUES ('6981', '0.38709', '1.8975', '0', '6982');
REPLACE INTO `creature_model_info` VALUES ('7116', '0.8725', '3.75', '1', '7115');
REPLACE INTO `creature_model_info` VALUES ('7193', '0.3213', '1.575', '0', '7192');
REPLACE INTO `creature_model_info` VALUES ('7194', '0.2907', '1.425', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('7233', '0.306', '1.5', '0', '355');
REPLACE INTO `creature_model_info` VALUES ('7236', '0.3213', '1.575', '0', '7235');
REPLACE INTO `creature_model_info` VALUES ('7240', '0.306', '1.5', '0', '7239');
REPLACE INTO `creature_model_info` VALUES ('7309', '0.208', '1.5', '1', '7308');
REPLACE INTO `creature_model_info` VALUES ('7364', '0.9747', '4.05', '0', '7363');
REPLACE INTO `creature_model_info` VALUES ('7365', '0.8725', '3.75', '1', '7366');
REPLACE INTO `creature_model_info` VALUES ('7366', '0.9747', '4.05', '0', '7365');
REPLACE INTO `creature_model_info` VALUES ('7377', '0.9747', '4.05', '0', '7378');
REPLACE INTO `creature_model_info` VALUES ('7596', '0.208', '1.5', '1', '7595');
REPLACE INTO `creature_model_info` VALUES ('7607', '0.306', '1.5', '0', '7608');
REPLACE INTO `creature_model_info` VALUES ('7608', '0.208', '1.5', '1', '7607');
REPLACE INTO `creature_model_info` VALUES ('7753', '0.347', '1.5', '0', '7751');
REPLACE INTO `creature_model_info` VALUES ('7754', '0.347', '1.5', '1', '7756');
REPLACE INTO `creature_model_info` VALUES ('7756', '0.347', '1.5', '1', '7754');
REPLACE INTO `creature_model_info` VALUES ('7811', '0.306', '1.5', '0', '7810');
REPLACE INTO `creature_model_info` VALUES ('7822', '0.306', '1.5', '0', '7821');
REPLACE INTO `creature_model_info` VALUES ('7823', '0.236', '1.5', '1', '7824');
REPLACE INTO `creature_model_info` VALUES ('7916', '0.347', '1.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('8572', '0.8725', '3.75', '1', '2141');
REPLACE INTO `creature_model_info` VALUES ('8663', '0.347', '1.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('8674', '0.347', '1.5', '0', '8673');
REPLACE INTO `creature_model_info` VALUES ('8675', '0.347', '1.5', '1', '8676');
REPLACE INTO `creature_model_info` VALUES ('8676', '0.347', '1.5', '1', '8675');
REPLACE INTO `creature_model_info` VALUES ('8679', '0.347', '1.5', '0', '8678');
REPLACE INTO `creature_model_info` VALUES ('8680', '0.347', '1.5', '1', '0');
REPLACE INTO `creature_model_info` VALUES ('8682', '0.4164', '1.8', '0', '8681');
REPLACE INTO `creature_model_info` VALUES ('8683', '0.4164', '1.8', '1', '8684');
REPLACE INTO `creature_model_info` VALUES ('8684', '0.4164', '1.8', '1', '8683');
REPLACE INTO `creature_model_info` VALUES ('8773', '0.9747', '4.05', '0', '9349');
REPLACE INTO `creature_model_info` VALUES ('8774', '0.208', '1.5', '1', '8772');
REPLACE INTO `creature_model_info` VALUES ('8777', '0.306', '1.5', '0', '8776');
REPLACE INTO `creature_model_info` VALUES ('8779', '0.208', '1.5', '1', '8778');
REPLACE INTO `creature_model_info` VALUES ('8780', '0.306', '1.5', '0', '9025');
REPLACE INTO `creature_model_info` VALUES ('8792', '0.9747', '4.05', '0', '9351');
REPLACE INTO `creature_model_info` VALUES ('8794', '0.347', '1.5', '0', '8793');
REPLACE INTO `creature_model_info` VALUES ('8795', '0.347', '1.5', '1', '8796');
REPLACE INTO `creature_model_info` VALUES ('8796', '0.347', '1.5', '1', '8795');
REPLACE INTO `creature_model_info` VALUES ('8799', '0.347', '1.5', '0', '8798');
REPLACE INTO `creature_model_info` VALUES ('8800', '0.347', '1.5', '1', '8801');
REPLACE INTO `creature_model_info` VALUES ('8801', '0.347', '1.5', '1', '8800');
REPLACE INTO `creature_model_info` VALUES ('8804', '0.347', '1.5', '0', '8803');
REPLACE INTO `creature_model_info` VALUES ('8805', '0.347', '1.5', '0', '8806');
REPLACE INTO `creature_model_info` VALUES ('8806', '0.347', '1.5', '0', '8805');
REPLACE INTO `creature_model_info` VALUES ('8813', '0.347', '1.5', '0', '8812');
REPLACE INTO `creature_model_info` VALUES ('8814', '0.347', '1.5', '0', '8815');
REPLACE INTO `creature_model_info` VALUES ('8815', '0.347', '1.5', '0', '8814');
REPLACE INTO `creature_model_info` VALUES ('8817', '0.175', '0.75', '2', '0');
REPLACE INTO `creature_model_info` VALUES ('8818', '0.175', '0.5', '2', '0');
REPLACE INTO `creature_model_info` VALUES ('8819', '0.175', '0.5', '2', '0');
REPLACE INTO `creature_model_info` VALUES ('8821', '0.347', '1.5', '0', '8820');
REPLACE INTO `creature_model_info` VALUES ('8822', '0.347', '1.5', '0', '8823');
REPLACE INTO `creature_model_info` VALUES ('8823', '0.347', '1.5', '0', '8822');
REPLACE INTO `creature_model_info` VALUES ('8826', '0.347', '1.5', '0', '8825');
REPLACE INTO `creature_model_info` VALUES ('8827', '0.347', '1.5', '0', '8828');
REPLACE INTO `creature_model_info` VALUES ('8828', '0.347', '1.5', '0', '8827');
REPLACE INTO `creature_model_info` VALUES ('8895', '0.3519', '1.725', '0', '8894');
REPLACE INTO `creature_model_info` VALUES ('8896', '0.3519', '1.725', '1', '8897');
REPLACE INTO `creature_model_info` VALUES ('8897', '0.3519', '1.725', '1', '8896');
REPLACE INTO `creature_model_info` VALUES ('9025', '0.8725', '3.75', '1', '8780');
REPLACE INTO `creature_model_info` VALUES ('9070', '0.208', '1.5', '1', '9069');
REPLACE INTO `creature_model_info` VALUES ('9071', '0.347', '1.5', '1', '9072');
REPLACE INTO `creature_model_info` VALUES ('9072', '0.347', '1.5', '0', '9071');
REPLACE INTO `creature_model_info` VALUES ('9234', '0.9747', '4.05', '0', '9233');
REPLACE INTO `creature_model_info` VALUES ('9235', '0.306', '1.5', '0', '9236');
REPLACE INTO `creature_model_info` VALUES ('9288', '0.347', '1.5', '0', '8755');
REPLACE INTO `creature_model_info` VALUES ('9289', '0.3123', '1.35', '0', '9290');
REPLACE INTO `creature_model_info` VALUES ('9290', '0.3123', '1.35', '1', '9289');
REPLACE INTO `creature_model_info` VALUES ('9332', '0.347', '1.5', '0', '9333');
REPLACE INTO `creature_model_info` VALUES ('9333', '0.306', '1.5', '0', '9332');
REPLACE INTO `creature_model_info` VALUES ('9334', '0.383', '1.5', '0', '7550');
REPLACE INTO `creature_model_info` VALUES ('9335', '0.383', '1.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('9347', '0.8725', '3.75', '1', '9346');
REPLACE INTO `creature_model_info` VALUES ('9349', '0.306', '1.5', '0', '8773');
REPLACE INTO `creature_model_info` VALUES ('9350', '0.306', '1.5', '1', '8790');
REPLACE INTO `creature_model_info` VALUES ('9351', '0.306', '1.5', '0', '8792');
REPLACE INTO `creature_model_info` VALUES ('9391', '0.9747', '4.05', '0', '9392');
REPLACE INTO `creature_model_info` VALUES ('9557', '0.0875', '0.25', '2', '0');
REPLACE INTO `creature_model_info` VALUES ('9795', '0.236', '1.5', '1', '9794');
REPLACE INTO `creature_model_info` VALUES ('9796', '0.236', '1.5', '1', '9797');
REPLACE INTO `creature_model_info` VALUES ('9797', '0.372', '1.5', '0', '9796');
REPLACE INTO `creature_model_info` VALUES ('9799', '0.372', '1.5', '0', '9801');
REPLACE INTO `creature_model_info` VALUES ('9800', '0.236', '1.5', '1', '9798');
REPLACE INTO `creature_model_info` VALUES ('9803', '0.372', '1.5', '0', '9805');
REPLACE INTO `creature_model_info` VALUES ('9804', '0.236', '1.5', '1', '9802');
REPLACE INTO `creature_model_info` VALUES ('10051', '0.8725', '3.75', '1', '10052');
REPLACE INTO `creature_model_info` VALUES ('10052', '0.8725', '3.75', '1', '10051');
REPLACE INTO `creature_model_info` VALUES ('10152', '0.9747', '4.05', '0', '10153');
REPLACE INTO `creature_model_info` VALUES ('10153', '0.8725', '3.75', '1', '10152');
REPLACE INTO `creature_model_info` VALUES ('10224', '0.8725', '3.75', '1', '10226');
REPLACE INTO `creature_model_info` VALUES ('10228', '0.8725', '3.75', '1', '10231');
REPLACE INTO `creature_model_info` VALUES ('10230', '0.9747', '4.05', '0', '10227');
REPLACE INTO `creature_model_info` VALUES ('10234', '0.8725', '3.75', '1', '10236');
REPLACE INTO `creature_model_info` VALUES ('10235', '0.9747', '4.05', '0', '10233');
REPLACE INTO `creature_model_info` VALUES ('10239', '0.8725', '3.75', '1', '10241');
REPLACE INTO `creature_model_info` VALUES ('10240', '0.9747', '4.05', '0', '10238');
REPLACE INTO `creature_model_info` VALUES ('10304', '0.306', '1.5', '0', '10306');
REPLACE INTO `creature_model_info` VALUES ('10305', '0.208', '1.5', '1', '10303');
REPLACE INTO `creature_model_info` VALUES ('10308', '0.306', '1.5', '0', '10307');
REPLACE INTO `creature_model_info` VALUES ('10325', '0.306', '1.5', '0', '10327');
REPLACE INTO `creature_model_info` VALUES ('10327', '0.208', '1.5', '1', '10325');
REPLACE INTO `creature_model_info` VALUES ('10329', '0.306', '1.5', '0', '10331');
REPLACE INTO `creature_model_info` VALUES ('10330', '0.208', '1.5', '1', '10328');
REPLACE INTO `creature_model_info` VALUES ('10333', '0.306', '1.5', '0', '10332');
REPLACE INTO `creature_model_info` VALUES ('10351', '0.306', '1.5', '0', '10350');
REPLACE INTO `creature_model_info` VALUES ('10353', '0.208', '1.5', '1', '10352');
REPLACE INTO `creature_model_info` VALUES ('10377', '0.306', '1.5', '0', '10380');
REPLACE INTO `creature_model_info` VALUES ('10378', '0.208', '1.5', '1', '10376');
REPLACE INTO `creature_model_info` VALUES ('10388', '0.306', '1.5', '0', '10390');
REPLACE INTO `creature_model_info` VALUES ('10389', '0.208', '1.5', '1', '10387');
REPLACE INTO `creature_model_info` VALUES ('10392', '0.306', '1.5', '0', '10394');
REPLACE INTO `creature_model_info` VALUES ('10396', '0.208', '1.5', '1', '10395');
REPLACE INTO `creature_model_info` VALUES ('10399', '0.306', '1.5', '0', '10398');
REPLACE INTO `creature_model_info` VALUES ('10400', '0.208', '1.5', '1', '10401');
REPLACE INTO `creature_model_info` VALUES ('10404', '0.306', '1.5', '0', '10406');
REPLACE INTO `creature_model_info` VALUES ('10405', '0.208', '1.5', '1', '10403');
REPLACE INTO `creature_model_info` VALUES ('10409', '0.306', '1.5', '0', '10408');
REPLACE INTO `creature_model_info` VALUES ('10414', '0.306', '1.5', '0', '10416');
REPLACE INTO `creature_model_info` VALUES ('10415', '0.208', '1.5', '1', '10413');
REPLACE INTO `creature_model_info` VALUES ('10422', '0.306', '1.5', '0', '10424');
REPLACE INTO `creature_model_info` VALUES ('10423', '0.208', '1.5', '1', '10421');
REPLACE INTO `creature_model_info` VALUES ('10429', '0.208', '1.5', '1', '10430');
REPLACE INTO `creature_model_info` VALUES ('10430', '0.208', '1.5', '1', '10429');
REPLACE INTO `creature_model_info` VALUES ('10435', '0.306', '1.5', '0', '10434');
REPLACE INTO `creature_model_info` VALUES ('10436', '0.306', '1.5', '1', '10437');
REPLACE INTO `creature_model_info` VALUES ('10437', '0.306', '1.5', '1', '10436');
REPLACE INTO `creature_model_info` VALUES ('10439', '0.306', '1.5', '1', '10438');
REPLACE INTO `creature_model_info` VALUES ('10440', '0.306', '1.5', '1', '10441');
REPLACE INTO `creature_model_info` VALUES ('10441', '0.306', '1.5', '0', '10440');
REPLACE INTO `creature_model_info` VALUES ('10444', '0.306', '1.5', '0', '10442');
REPLACE INTO `creature_model_info` VALUES ('10446', '0.306', '1.5', '1', '10447');
REPLACE INTO `creature_model_info` VALUES ('10447', '0.306', '1.5', '1', '10446');
REPLACE INTO `creature_model_info` VALUES ('10494', '0.208', '1.5', '1', '10492');
REPLACE INTO `creature_model_info` VALUES ('10735', '0.9747', '4.05', '0', '10734');
REPLACE INTO `creature_model_info` VALUES ('10736', '0.9747', '4.05', '0', '10737');
REPLACE INTO `creature_model_info` VALUES ('10737', '0.8725', '3.75', '1', '10736');
REPLACE INTO `creature_model_info` VALUES ('10908', '0.306', '1.5', '0', '10910');
REPLACE INTO `creature_model_info` VALUES ('10940', '0.306', '1.5', '0', '10939');
REPLACE INTO `creature_model_info` VALUES ('11110', '0.3672', '1.8', '0', '11112');
REPLACE INTO `creature_model_info` VALUES ('11112', '0.3672', '1.8', '1', '11110');
REPLACE INTO `creature_model_info` VALUES ('11122', '0.208', '1.5', '1', '11161');
REPLACE INTO `creature_model_info` VALUES ('11123', '0.306', '1.5', '0', '11124');
REPLACE INTO `creature_model_info` VALUES ('11124', '0.3519', '1.725', '0', '11123');
REPLACE INTO `creature_model_info` VALUES ('11125', '0.208', '1.5', '1', '11157');
REPLACE INTO `creature_model_info` VALUES ('11128', '0.208', '1.5', '1', '11163');
REPLACE INTO `creature_model_info` VALUES ('11129', '0.306', '1.5', '0', '11177');
REPLACE INTO `creature_model_info` VALUES ('11131', '0.208', '1.5', '1', '11164');
REPLACE INTO `creature_model_info` VALUES ('11132', '0.306', '1.5', '0', '11133');
REPLACE INTO `creature_model_info` VALUES ('11133', '0.3519', '1.725', '0', '11132');
REPLACE INTO `creature_model_info` VALUES ('11134', '0.208', '1.5', '1', '11161');
REPLACE INTO `creature_model_info` VALUES ('11135', '0.306', '1.5', '0', '11136');
REPLACE INTO `creature_model_info` VALUES ('11136', '0.3519', '1.725', '0', '11135');
REPLACE INTO `creature_model_info` VALUES ('11145', '0.208', '1.5', '1', '11157');
REPLACE INTO `creature_model_info` VALUES ('11146', '0.306', '1.5', '0', '11173');
REPLACE INTO `creature_model_info` VALUES ('11148', '0.208', '1.5', '1', '11161');
REPLACE INTO `creature_model_info` VALUES ('11149', '0.306', '1.5', '0', '11150');
REPLACE INTO `creature_model_info` VALUES ('11150', '0.3519', '1.725', '0', '11149');
REPLACE INTO `creature_model_info` VALUES ('11151', '0.208', '1.5', '1', '11161');
REPLACE INTO `creature_model_info` VALUES ('11152', '0.306', '1.5', '0', '11175');
REPLACE INTO `creature_model_info` VALUES ('11154', '0.208', '1.5', '1', '11163');
REPLACE INTO `creature_model_info` VALUES ('11155', '0.306', '1.5', '0', '11156');
REPLACE INTO `creature_model_info` VALUES ('11156', '0.3519', '1.725', '0', '11155');
REPLACE INTO `creature_model_info` VALUES ('11163', '0.214', '1.5', '1', '0');
REPLACE INTO `creature_model_info` VALUES ('11173', '0.3519', '1.725', '1', '11146');
REPLACE INTO `creature_model_info` VALUES ('11175', '0.3519', '1.725', '1', '11152');
REPLACE INTO `creature_model_info` VALUES ('11176', '0.3519', '1.725', '1', '11126');
REPLACE INTO `creature_model_info` VALUES ('11177', '0.3519', '1.725', '1', '11129');
REPLACE INTO `creature_model_info` VALUES ('11206', '0.3519', '1.725', '1', '11205');
REPLACE INTO `creature_model_info` VALUES ('11208', '0.3519', '1.725', '1', '11207');
REPLACE INTO `creature_model_info` VALUES ('11209', '0.389', '1.5', '0', '11210');
REPLACE INTO `creature_model_info` VALUES ('11210', '0.3519', '1.725', '1', '11209');
REPLACE INTO `creature_model_info` VALUES ('11211', '0.389', '1.5', '0', '11212');
REPLACE INTO `creature_model_info` VALUES ('11212', '0.3519', '1.725', '1', '11211');
REPLACE INTO `creature_model_info` VALUES ('11214', '0.3519', '1.725', '1', '11213');
REPLACE INTO `creature_model_info` VALUES ('11215', '0.44735', '1.725', '0', '11216');
REPLACE INTO `creature_model_info` VALUES ('11216', '0.3519', '1.725', '1', '11215');
REPLACE INTO `creature_model_info` VALUES ('11223', '0.3672', '1.8', '1', '11221');
REPLACE INTO `creature_model_info` VALUES ('11226', '0.3672', '1.8', '0', '11226');
REPLACE INTO `creature_model_info` VALUES ('11227', '0.3672', '1.8', '1', '11225');
REPLACE INTO `creature_model_info` VALUES ('11230', '0.3672', '1.8', '0', '11232');
REPLACE INTO `creature_model_info` VALUES ('11273', '0.383', '1.5', '1', '11272');
REPLACE INTO `creature_model_info` VALUES ('11274', '0.9747', '4.05', '0', '11275');
REPLACE INTO `creature_model_info` VALUES ('11275', '0.306', '1.5', '0', '11274');
REPLACE INTO `creature_model_info` VALUES ('11276', '0.3519', '1.725', '0', '11277');
REPLACE INTO `creature_model_info` VALUES ('11277', '0.383', '1.5', '0', '11276');
REPLACE INTO `creature_model_info` VALUES ('11281', '0.3519', '1.725', '1', '11282');
REPLACE INTO `creature_model_info` VALUES ('11282', '0.383', '1.5', '1', '11281');
REPLACE INTO `creature_model_info` VALUES ('11283', '0.383', '1.5', '0', '11279');
REPLACE INTO `creature_model_info` VALUES ('11291', '0.383', '1.5', '1', '11292');
REPLACE INTO `creature_model_info` VALUES ('11292', '0.3519', '1.725', '1', '11291');
REPLACE INTO `creature_model_info` VALUES ('11296', '0.383', '1.5', '0', '11297');
REPLACE INTO `creature_model_info` VALUES ('11297', '0.306', '1.5', '0', '11296');
REPLACE INTO `creature_model_info` VALUES ('11299', '0.383', '1.5', '0', '11300');
REPLACE INTO `creature_model_info` VALUES ('11301', '0.383', '1.5', '0', '11302');
REPLACE INTO `creature_model_info` VALUES ('11302', '0.306', '1.5', '0', '11301');
REPLACE INTO `creature_model_info` VALUES ('11305', '0.383', '1.5', '0', '11306');
REPLACE INTO `creature_model_info` VALUES ('11309', '0.383', '1.5', '0', '11310');
REPLACE INTO `creature_model_info` VALUES ('11426', '0.347', '1.5', '0', '11427');
REPLACE INTO `creature_model_info` VALUES ('11427', '0.347', '1.5', '0', '11426');
REPLACE INTO `creature_model_info` VALUES ('11466', '0.383', '1.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('11476', '0.306', '1.5', '0', '11475');
REPLACE INTO `creature_model_info` VALUES ('11478', '0.208', '1.5', '1', '11477');
REPLACE INTO `creature_model_info` VALUES ('11775', '0.8725', '3.75', '1', '11774');
REPLACE INTO `creature_model_info` VALUES ('11776', '0.389', '1.5', '0', '11777');
REPLACE INTO `creature_model_info` VALUES ('11812', '0.372', '1.5', '0', '11813');
REPLACE INTO `creature_model_info` VALUES ('11813', '0.347', '1.5', '1', '11812');
REPLACE INTO `creature_model_info` VALUES ('11816', '0.306', '1.5', '0', '11815');
REPLACE INTO `creature_model_info` VALUES ('11817', '0.306', '1.5', '0', '11818');
REPLACE INTO `creature_model_info` VALUES ('11821', '0.236', '1.5', '1', '11822');
REPLACE INTO `creature_model_info` VALUES ('11822', '0.347', '1.5', '0', '11821');
REPLACE INTO `creature_model_info` VALUES ('11825', '0.306', '1.5', '0', '11824');
REPLACE INTO `creature_model_info` VALUES ('11826', '0.383', '1.5', '0', '11827');
REPLACE INTO `creature_model_info` VALUES ('11854', '0.236', '1.5', '1', '11856');
REPLACE INTO `creature_model_info` VALUES ('11855', '0.372', '1.5', '0', '11853');
REPLACE INTO `creature_model_info` VALUES ('11860', '0.372', '1.5', '0', '11858');
REPLACE INTO `creature_model_info` VALUES ('11862', '0.236', '1.5', '1', '11864');
REPLACE INTO `creature_model_info` VALUES ('11863', '0.372', '1.5', '0', '11861');
REPLACE INTO `creature_model_info` VALUES ('11864', '0.372', '1.5', '0', '11862');
REPLACE INTO `creature_model_info` VALUES ('11866', '0.372', '1.5', '0', '11865');
REPLACE INTO `creature_model_info` VALUES ('11867', '0.236', '1.5', '1', '11868');
REPLACE INTO `creature_model_info` VALUES ('11868', '0.372', '1.5', '0', '11867');
REPLACE INTO `creature_model_info` VALUES ('11875', '0.8725', '3.75', '1', '11874');
REPLACE INTO `creature_model_info` VALUES ('11876', '0.9747', '4.05', '0', '11877');
REPLACE INTO `creature_model_info` VALUES ('11879', '0.8725', '3.75', '1', '11878');
REPLACE INTO `creature_model_info` VALUES ('11880', '0.9747', '4.05', '0', '11881');
REPLACE INTO `creature_model_info` VALUES ('11883', '0.8725', '3.75', '1', '11882');
REPLACE INTO `creature_model_info` VALUES ('11884', '0.9747', '4.05', '0', '11885');
REPLACE INTO `creature_model_info` VALUES ('11887', '0.9747', '4.05', '0', '11889');
REPLACE INTO `creature_model_info` VALUES ('11888', '0.8725', '3.75', '1', '11886');
REPLACE INTO `creature_model_info` VALUES ('12195', '0.85', '0.85', '2', '0');
REPLACE INTO `creature_model_info` VALUES ('12199', '0.6', '1.5', '2', '0');
REPLACE INTO `creature_model_info` VALUES ('12200', '0.6', '1.5', '2', '0');
REPLACE INTO `creature_model_info` VALUES ('12241', '0.24', '0.9', '2', '0');
REPLACE INTO `creature_model_info` VALUES ('12330', '0.383', '1.5', '0', '12329');
REPLACE INTO `creature_model_info` VALUES ('12331', '0.383', '1.5', '0', '12332');
REPLACE INTO `creature_model_info` VALUES ('12332', '0.383', '1.5', '0', '12331');
REPLACE INTO `creature_model_info` VALUES ('12811', '0.236', '1.5', '1', '12810');
REPLACE INTO `creature_model_info` VALUES ('12830', '0.306', '1.5', '1', '12829');
REPLACE INTO `creature_model_info` VALUES ('12832', '0.306', '1.5', '0', '12831');
REPLACE INTO `creature_model_info` VALUES ('12914', '0.306', '1.5', '1', '0');
REPLACE INTO `creature_model_info` VALUES ('12963', '0.75', '1.125', '2', '0');
REPLACE INTO `creature_model_info` VALUES ('12971', '0.372', '1.5', '0', '12972');
REPLACE INTO `creature_model_info` VALUES ('13097', '0.5', '1', '2', '0');
REPLACE INTO `creature_model_info` VALUES ('13130', '2.09855', '3.525', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('13132', '2.35', '3.525', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('13279', '0.236', '1.5', '1', '13278');
REPLACE INTO `creature_model_info` VALUES ('13311', '0.347', '1.5', '0', '13313');
REPLACE INTO `creature_model_info` VALUES ('13316', '0.347', '1.5', '0', '13318');
REPLACE INTO `creature_model_info` VALUES ('13317', '0.347', '1.5', '1', '13315');
REPLACE INTO `creature_model_info` VALUES ('13562', '0.8725', '3.75', '1', '13325');
REPLACE INTO `creature_model_info` VALUES ('14325', '0.383', '1.5', '1', '14323');
REPLACE INTO `creature_model_info` VALUES ('14361', '0.4092', '1.65', '0', '14363');
REPLACE INTO `creature_model_info` VALUES ('14362', '0.2596', '1.65', '1', '14360');
REPLACE INTO `creature_model_info` VALUES ('14363', '0.2596', '1.65', '1', '14361');
REPLACE INTO `creature_model_info` VALUES ('14369', '0.383', '1.5', '0', '14370');
REPLACE INTO `creature_model_info` VALUES ('14370', '0.383', '1.5', '1', '14369');
REPLACE INTO `creature_model_info` VALUES ('14409', '0.44735', '1.725', '0', '14411');
REPLACE INTO `creature_model_info` VALUES ('14410', '0.3519', '1.725', '1', '14408');
REPLACE INTO `creature_model_info` VALUES ('14411', '0.3519', '1.725', '1', '14409');
REPLACE INTO `creature_model_info` VALUES ('14713', '0.306', '1.5', '1', '14712');
REPLACE INTO `creature_model_info` VALUES ('14714', '0.306', '1.5', '1', '14715');
REPLACE INTO `creature_model_info` VALUES ('14715', '0.306', '1.5', '1', '14714');
REPLACE INTO `creature_model_info` VALUES ('14717', '0.236', '1.5', '1', '14719');
REPLACE INTO `creature_model_info` VALUES ('14718', '0.372', '1.5', '0', '14716');
REPLACE INTO `creature_model_info` VALUES ('14719', '0.372', '1.5', '0', '14717');
REPLACE INTO `creature_model_info` VALUES ('14912', '0.306', '1.5', '1', '21672');
REPLACE INTO `creature_model_info` VALUES ('14913', '0.383', '1.5', '0', '14914');
REPLACE INTO `creature_model_info` VALUES ('14941', '0.145', '1', '2', '0');
REPLACE INTO `creature_model_info` VALUES ('14942', '0.145', '1', '2', '0');
REPLACE INTO `creature_model_info` VALUES ('14974', '0.3519', '1.725', '1', '14973');
REPLACE INTO `creature_model_info` VALUES ('14975', '0.3519', '1.725', '1', '14976');
REPLACE INTO `creature_model_info` VALUES ('14976', '0.3519', '1.725', '1', '14975');
REPLACE INTO `creature_model_info` VALUES ('14978', '0.3672', '1.8', '1', '14977');
REPLACE INTO `creature_model_info` VALUES ('14979', '0.3672', '1.8', '1', '14980');
REPLACE INTO `creature_model_info` VALUES ('14980', '0.3672', '1.8', '1', '14979');
REPLACE INTO `creature_model_info` VALUES ('14982', '0.3672', '1.8', '1', '14981');
REPLACE INTO `creature_model_info` VALUES ('14983', '0.3672', '1.8', '1', '14984');
REPLACE INTO `creature_model_info` VALUES ('14984', '0.3672', '1.8', '1', '14983');
REPLACE INTO `creature_model_info` VALUES ('14999', '0.306', '1.5', '1', '14998');
REPLACE INTO `creature_model_info` VALUES ('15000', '0.306', '1.5', '0', '15001');
REPLACE INTO `creature_model_info` VALUES ('15202', '0.3213', '1.575', '0', '15201');
REPLACE INTO `creature_model_info` VALUES ('15203', '0.3213', '1.575', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('15285', '0.383', '1.5', '0', '15287');
REPLACE INTO `creature_model_info` VALUES ('15286', '0.383', '1.5', '1', '15284');
REPLACE INTO `creature_model_info` VALUES ('15287', '0.383', '1.5', '1', '15285');
REPLACE INTO `creature_model_info` VALUES ('15305', '0.389', '1.5', '0', '15304');
REPLACE INTO `creature_model_info` VALUES ('15307', '0.306', '1.5', '1', '15306');
REPLACE INTO `creature_model_info` VALUES ('15408', '0.306', '1.5', '0', '15407');
REPLACE INTO `creature_model_info` VALUES ('15409', '0.383', '1.5', '0', '15410');
REPLACE INTO `creature_model_info` VALUES ('15410', '0.236', '1.5', '1', '15409');
REPLACE INTO `creature_model_info` VALUES ('15558', '0.347', '1.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('15559', '0.306', '1.5', '0', '15560');
REPLACE INTO `creature_model_info` VALUES ('15572', '0.372', '1.5', '0', '15575');
REPLACE INTO `creature_model_info` VALUES ('15649', '0.5', '1.5', '2', '0');
REPLACE INTO `creature_model_info` VALUES ('15690', '0.389', '1.5', '0', '15689');
REPLACE INTO `creature_model_info` VALUES ('15691', '0.389', '1.5', '0', '15692');
REPLACE INTO `creature_model_info` VALUES ('15692', '0.389', '1.5', '0', '15691');
REPLACE INTO `creature_model_info` VALUES ('15767', '0.306', '1.5', '0', '15769');
REPLACE INTO `creature_model_info` VALUES ('15768', '0.208', '1.5', '1', '15766');
REPLACE INTO `creature_model_info` VALUES ('15769', '0.208', '1.5', '1', '15767');
REPLACE INTO `creature_model_info` VALUES ('15771', '0.9747', '4.05', '0', '15773');
REPLACE INTO `creature_model_info` VALUES ('15773', '0.8725', '3.75', '1', '15771');
REPLACE INTO `creature_model_info` VALUES ('15870', '0.389', '1.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('15871', '0.306', '1.5', '1', '0');
REPLACE INTO `creature_model_info` VALUES ('15872', '0.389', '1.5', '0', '15874');
REPLACE INTO `creature_model_info` VALUES ('15873', '0.306', '1.5', '1', '15864');
REPLACE INTO `creature_model_info` VALUES ('15874', '0.306', '1.5', '1', '15872');
REPLACE INTO `creature_model_info` VALUES ('15875', '0.9747', '4.05', '0', '15877');
REPLACE INTO `creature_model_info` VALUES ('15876', '0.8725', '3.75', '1', '15863');
REPLACE INTO `creature_model_info` VALUES ('15877', '0.8725', '3.75', '1', '15875');
REPLACE INTO `creature_model_info` VALUES ('15885', '0.306', '1.5', '1', '15883');
REPLACE INTO `creature_model_info` VALUES ('15886', '0.306', '1.5', '1', '15884');
REPLACE INTO `creature_model_info` VALUES ('15888', '0.347', '1.5', '1', '15887');
REPLACE INTO `creature_model_info` VALUES ('15889', '0.3519', '1.725', '0', '15890');
REPLACE INTO `creature_model_info` VALUES ('15890', '0.3519', '1.725', '1', '15889');
REPLACE INTO `creature_model_info` VALUES ('15893', '0.306', '1.5', '0', '15894');
REPLACE INTO `creature_model_info` VALUES ('15897', '0.383', '1.5', '1', '15895');
REPLACE INTO `creature_model_info` VALUES ('15920', '0.27825', '0.525', '2', '0');
REPLACE INTO `creature_model_info` VALUES ('16078', '0.208', '1.5', '1', '16077');
REPLACE INTO `creature_model_info` VALUES ('16094', '0.208', '1.5', '1', '16093');
REPLACE INTO `creature_model_info` VALUES ('16095', '0.236', '1.5', '1', '16096');
REPLACE INTO `creature_model_info` VALUES ('16107', '0.347', '1.5', '1', '16108');
REPLACE INTO `creature_model_info` VALUES ('16231', '0.208', '1.5', '1', '16233');
REPLACE INTO `creature_model_info` VALUES ('16288', '0.383', '1.5', '1', '16289');
REPLACE INTO `creature_model_info` VALUES ('16334', '0.8725', '3.75', '1', '16340');
REPLACE INTO `creature_model_info` VALUES ('16335', '0.306', '1.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('16341', '0.372', '1.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('16360', '0.730508', '0.730508', '2', '0');
REPLACE INTO `creature_model_info` VALUES ('16413', '0.347', '1.5', '0', '16434');
REPLACE INTO `creature_model_info` VALUES ('16431', '0.306', '1.5', '1', '16412');
REPLACE INTO `creature_model_info` VALUES ('16432', '0.9747', '4.05', '0', '16442');
REPLACE INTO `creature_model_info` VALUES ('16435', '0.389', '1.5', '0', '16414');
REPLACE INTO `creature_model_info` VALUES ('16438', '0.372', '1.5', '0', '16436');
REPLACE INTO `creature_model_info` VALUES ('16442', '0.8725', '3.75', '0', '16432');
REPLACE INTO `creature_model_info` VALUES ('16444', '0.383', '1.5', '0', '16443');
REPLACE INTO `creature_model_info` VALUES ('16446', '0.306', '1.5', '0', '16445');
REPLACE INTO `creature_model_info` VALUES ('16447', '0.3519', '1.725', '1', '16448');
REPLACE INTO `creature_model_info` VALUES ('16448', '0.3519', '1.725', '0', '16447');
REPLACE INTO `creature_model_info` VALUES ('16496', '0.2808', '2.025', '1', '16497');
REPLACE INTO `creature_model_info` VALUES ('16511', '0.2392', '1.725', '1', '16512');
REPLACE INTO `creature_model_info` VALUES ('16541', '0.347', '1.5', '1', '0');
REPLACE INTO `creature_model_info` VALUES ('16585', '0.236', '1.5', '1', '0');
REPLACE INTO `creature_model_info` VALUES ('16631', '0.305555', '1', '2', '0');
REPLACE INTO `creature_model_info` VALUES ('16905', '0.2832', '1.8', '1', '16903');
REPLACE INTO `creature_model_info` VALUES ('16906', '0.4596', '1.8', '0', '16907');
REPLACE INTO `creature_model_info` VALUES ('16973', '0.372', '1.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('17030', '0.5', '0.75', '0', '17031');
REPLACE INTO `creature_model_info` VALUES ('17196', '0.2754', '1.35', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('17268', '0.383', '1.5', '1', '17267');
REPLACE INTO `creature_model_info` VALUES ('17281', '1', '1.5', '0', '17280');
REPLACE INTO `creature_model_info` VALUES ('17282', '1', '1.5', '1', '0');
REPLACE INTO `creature_model_info` VALUES ('17552', '0.383', '1.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('17556', '0.247', '1.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('17622', '0.372', '1.5', '0', '17621');
REPLACE INTO `creature_model_info` VALUES ('17623', '0.236', '1.5', '1', '18500');
REPLACE INTO `creature_model_info` VALUES ('17665', '0.372', '1.5', '0', '17664');
REPLACE INTO `creature_model_info` VALUES ('17700', '0.31', '1', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('17701', '0.31', '1', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('17848', '0.9747', '4.05', '0', '17847');
REPLACE INTO `creature_model_info` VALUES ('17849', '0.306', '1.5', '1', '17850');
REPLACE INTO `creature_model_info` VALUES ('18506', '0.465', '1.875', '0', '18576');
REPLACE INTO `creature_model_info` VALUES ('18507', '0.465', '1.875', '0', '18508');
REPLACE INTO `creature_model_info` VALUES ('18572', '1', '1.5', '0', '18573');
REPLACE INTO `creature_model_info` VALUES ('18574', '1', '1.5', '1', '18575');
REPLACE INTO `creature_model_info` VALUES ('18841', '0.383', '1.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('18844', '0.347', '1.5', '1', '0');
REPLACE INTO `creature_model_info` VALUES ('18845', '0.347', '1.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('18846', '0.3519', '1.725', '1', '0');
REPLACE INTO `creature_model_info` VALUES ('18847', '0.3519', '1.725', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('18858', '0.208', '1.5', '1', '0');
REPLACE INTO `creature_model_info` VALUES ('18860', '0.306', '1.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('18869', '0.236', '1.5', '1', '0');
REPLACE INTO `creature_model_info` VALUES ('18870', '0.372', '1.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('18871', '0.8725', '3.75', '1', '0');
REPLACE INTO `creature_model_info` VALUES ('18872', '0.9747', '4.05', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('18873', '0.306', '1.5', '1', '0');
REPLACE INTO `creature_model_info` VALUES ('18875', '0.383', '1.5', '1', '0');
REPLACE INTO `creature_model_info` VALUES ('18876', '0.383', '1.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('18981', '0.383', '1.5', '1', '18980');
REPLACE INTO `creature_model_info` VALUES ('18983', '0.383', '1.5', '1', '18982');
REPLACE INTO `creature_model_info` VALUES ('19034', '0.7', '1.05', '2', '0');
REPLACE INTO `creature_model_info` VALUES ('19136', '1', '1.5', '0', '19134');
REPLACE INTO `creature_model_info` VALUES ('19172', '1', '1.5', '0', '19171');
REPLACE INTO `creature_model_info` VALUES ('19177', '0.208', '1.5', '1', '0');
REPLACE INTO `creature_model_info` VALUES ('19178', '0.306', '1.5', '0', '19177');
REPLACE INTO `creature_model_info` VALUES ('19179', '0.306', '1.5', '1', '0');
REPLACE INTO `creature_model_info` VALUES ('19180', '0.389', '1.5', '0', '19179');
REPLACE INTO `creature_model_info` VALUES ('19183', '0.8725', '3.75', '1', '0');
REPLACE INTO `creature_model_info` VALUES ('19184', '0.9747', '4.05', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('19294', '0.76389', '2.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('19341', '0.306', '1.5', '1', '0');
REPLACE INTO `creature_model_info` VALUES ('19611', '1', '2', '2', '0');
REPLACE INTO `creature_model_info` VALUES ('19618', '1', '2', '2', '0');
REPLACE INTO `creature_model_info` VALUES ('19828', '0.383', '1.5', '1', '19827');
REPLACE INTO `creature_model_info` VALUES ('19830', '0.383', '1.5', '1', '19831');
REPLACE INTO `creature_model_info` VALUES ('19833', '0.383', '1.5', '0', '19834');
REPLACE INTO `creature_model_info` VALUES ('19834', '0.383', '1.5', '1', '19833');
REPLACE INTO `creature_model_info` VALUES ('19835', '0.383', '1.5', '0', '19836');
REPLACE INTO `creature_model_info` VALUES ('19836', '0.383', '1.5', '1', '19835');
REPLACE INTO `creature_model_info` VALUES ('19926', '1', '1.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('20046', '0.75', '2.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('20184', '1', '1.5', '1', '20183');
REPLACE INTO `creature_model_info` VALUES ('20419', '0.375', '1.25', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('20708', '0.383', '1.5', '0', '20707');
REPLACE INTO `creature_model_info` VALUES ('20709', '0.383', '1.5', '1', '20710');
REPLACE INTO `creature_model_info` VALUES ('20710', '0.383', '1.5', '1', '20709');
REPLACE INTO `creature_model_info` VALUES ('20779', '0.383', '1.5', '0', '20778');
REPLACE INTO `creature_model_info` VALUES ('20907', '2.5', '5.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('20925', '0.558', '2.25', '0', '11660');
REPLACE INTO `creature_model_info` VALUES ('21017', '0.383', '1.5', '0', '21016');
REPLACE INTO `creature_model_info` VALUES ('21057', '1', '1.5', '0', '21056');
REPLACE INTO `creature_model_info` VALUES ('21067', '0.306', '1.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('21107', '0.389', '1.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('21108', '0.389', '1.5', '0', '21109');
REPLACE INTO `creature_model_info` VALUES ('21109', '0.9747', '4.05', '0', '21108');
REPLACE INTO `creature_model_info` VALUES ('21125', '0.2625', '1.125', '2', '0');
REPLACE INTO `creature_model_info` VALUES ('21126', '0.2625', '1.125', '2', '0');
REPLACE INTO `creature_model_info` VALUES ('21138', '1', '2', '2', '0');
REPLACE INTO `creature_model_info` VALUES ('21193', '1.3', '1.625', '2', '0');
REPLACE INTO `creature_model_info` VALUES ('21210', '1.3', '1.625', '2', '0');
REPLACE INTO `creature_model_info` VALUES ('21241', '0.6125', '2.625', '2', '0');
REPLACE INTO `creature_model_info` VALUES ('21256', '0.306', '1.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('21261', '0.64', '1.6', '2', '0');
REPLACE INTO `creature_model_info` VALUES ('21268', '1.1795', '2.625', '2', '0');
REPLACE INTO `creature_model_info` VALUES ('21300', '1.5', '2.25', '2', '0');
REPLACE INTO `creature_model_info` VALUES ('21318', '3', '3', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('21349', '3', '3', '1', '0');
REPLACE INTO `creature_model_info` VALUES ('21383', '0.46875', '2.025', '0', '21384');
REPLACE INTO `creature_model_info` VALUES ('21390', '0.236', '1.5', '1', '0');
REPLACE INTO `creature_model_info` VALUES ('21402', '1.5', '0', '0', '21593');
REPLACE INTO `creature_model_info` VALUES ('21420', '0.8043', '3.15', '1', '21419');
REPLACE INTO `creature_model_info` VALUES ('21431', '0.62', '10', '2', '0');
REPLACE INTO `creature_model_info` VALUES ('21530', '0.5745', '2.25', '0', '21531');
REPLACE INTO `creature_model_info` VALUES ('21531', '0.5745', '2.25', '0', '21530');
REPLACE INTO `creature_model_info` VALUES ('21566', '0.6894', '2.7', '1', '21567');
REPLACE INTO `creature_model_info` VALUES ('21568', '0.6894', '2.7', '0', '21569');
REPLACE INTO `creature_model_info` VALUES ('21583', '0.25', '0', '2', '0');
REPLACE INTO `creature_model_info` VALUES ('21591', '1.5', '0', '0', '21592');
REPLACE INTO `creature_model_info` VALUES ('21593', '1.5', '0', '0', '21402');
REPLACE INTO `creature_model_info` VALUES ('21595', '2', '0', '0', '21596');
REPLACE INTO `creature_model_info` VALUES ('21596', '2', '0', '0', '21595');
REPLACE INTO `creature_model_info` VALUES ('21606', '1.25', '0', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('21607', '1.15', '0', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('21641', '0.828495', '3.4425', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('21669', '0.347', '1.5', '1', '21668');
REPLACE INTO `creature_model_info` VALUES ('21769', '0.3336', '1.2', '2', '0');
REPLACE INTO `creature_model_info` VALUES ('21703', '0.383', '1.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('21824', '0.4511', '1.95', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('21827', '0.347', '1.5', '0', '21826');
REPLACE INTO `creature_model_info` VALUES ('21828', '0.347', '1.5', '1', '21829');
REPLACE INTO `creature_model_info` VALUES ('21829', '0.347', '1.5', '1', '21828');
REPLACE INTO `creature_model_info` VALUES ('21853', '0.3519', '1.725', '0', '21852');
REPLACE INTO `creature_model_info` VALUES ('21862', '0.306', '1.5', '1', '21863');
REPLACE INTO `creature_model_info` VALUES ('21863', '0.389', '1.5', '0', '21862');
REPLACE INTO `creature_model_info` VALUES ('21959', '0.383', '1.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('22352', '0.45', '1.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('22368', '0.306', '1.5', '1', '0');
REPLACE INTO `creature_model_info` VALUES ('22370', '0.208', '1.5', '1', '0');
REPLACE INTO `creature_model_info` VALUES ('22371', '0.306', '1.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('22394', '0.4164', '1.8', '0', '22395');
REPLACE INTO `creature_model_info` VALUES ('22476', '0.383', '1.5', '1', '0');
REPLACE INTO `creature_model_info` VALUES ('22504', '0.208', '1.5', '1', '0');
REPLACE INTO `creature_model_info` VALUES ('21702', '0.306', '1.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('21706', '0.306', '1.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('21818', '0.208', '1.5', '1', '0');
REPLACE INTO `creature_model_info` VALUES ('21887', '0.3519', '1.725', '1', '0');
REPLACE INTO `creature_model_info` VALUES ('22230', '0.6128', '2.4', '1', '0');
REPLACE INTO `creature_model_info` VALUES ('22264', '0.451389', '1.95', '0', '22263');
REPLACE INTO `creature_model_info` VALUES ('22272', '0.451389', '1.95', '0', '22271');
REPLACE INTO `creature_model_info` VALUES ('22273', '0.451389', '1.95', '0', '22274');
REPLACE INTO `creature_model_info` VALUES ('22274', '0.451389', '1.95', '0', '22273');
REPLACE INTO `creature_model_info` VALUES ('22275', '0.434027', '1.875', '0', '22276');
REPLACE INTO `creature_model_info` VALUES ('22277', '0.451389', '1.95', '0', '22278');
REPLACE INTO `creature_model_info` VALUES ('22278', '0.451389', '1.95', '0', '22277');
REPLACE INTO `creature_model_info` VALUES ('22340', '0.306', '1.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('22347', '0.306', '1.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('22399', '0.306', '1.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('22400', '0.9747', '4.05', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('22401', '0.383', '1.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('22402', '0.383', '1.5', '1', '0');
REPLACE INTO `creature_model_info` VALUES ('22404', '0.3519', '1.725', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('22405', '0.383', '1.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('22406', '0.306', '1.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('22414', '0.306', '1.5', '1', '0');
REPLACE INTO `creature_model_info` VALUES ('22427', '0.383', '1.5', '1', '22426');
REPLACE INTO `creature_model_info` VALUES ('22430', '0.383', '1.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('22438', '0.306', '1.5', '1', '0');
REPLACE INTO `creature_model_info` VALUES ('22602', '0.4596', '1.8', '1', '0');
REPLACE INTO `creature_model_info` VALUES ('22609', '0.306', '1.5', '1', '0');
REPLACE INTO `creature_model_info` VALUES ('22612', '0.306', '1.5', '1', '0');
REPLACE INTO `creature_model_info` VALUES ('22614', '0.389', '1.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('22615', '0.306', '1.5', '1', '0');
REPLACE INTO `creature_model_info` VALUES ('22616', '0.208', '1.5', '1', '0');
REPLACE INTO `creature_model_info` VALUES ('22617', '0.306', '1.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('22659', '0.306', '1.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('22665', '0.208', '1.5', '1', '0');
REPLACE INTO `creature_model_info` VALUES ('22723', '0.306', '1.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('22739', '0.306', '1.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('22740', '0.306', '1.5', '1', '0');
REPLACE INTO `creature_model_info` VALUES ('22743', '0.306', '1.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('22744', '0.306', '1.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('22745', '0.306', '1.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('22746', '0.306', '1.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('22808', '0.389', '1.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('22815', '0.208', '1.5', '1', '0');
REPLACE INTO `creature_model_info` VALUES ('22816', '0.3519', '1.725', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('22817', '0.383', '1.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('22818', '0.306', '1.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('22819', '0.306', '1.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('22820', '0.306', '1.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('22821', '0.208', '1.5', '1', '0');
REPLACE INTO `creature_model_info` VALUES ('22822', '0.347', '1.5', '1', '0');
REPLACE INTO `creature_model_info` VALUES ('22848', '0.389', '1.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('22849', '0.389', '1.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('22850', '0.306', '1.5', '1', '0');
REPLACE INTO `creature_model_info` VALUES ('22851', '0.306', '1.5', '1', '0');
REPLACE INTO `creature_model_info` VALUES ('22853', '0.306', '1.5', '1', '0');
REPLACE INTO `creature_model_info` VALUES ('22854', '0.306', '1.5', '1', '0');
REPLACE INTO `creature_model_info` VALUES ('22863', '0.306', '1.5', '1', '0');
REPLACE INTO `creature_model_info` VALUES ('22864', '0.306', '1.5', '1', '0');
REPLACE INTO `creature_model_info` VALUES ('22865', '0.306', '1.5', '1', '0');
REPLACE INTO `creature_model_info` VALUES ('22866', '0.306', '1.5', '1', '0');
REPLACE INTO `creature_model_info` VALUES ('22867', '0.306', '1.5', '1', '0');
REPLACE INTO `creature_model_info` VALUES ('22868', '0.306', '1.5', '1', '0');
REPLACE INTO `creature_model_info` VALUES ('22880', '0.306', '1.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('22881', '0.306', '1.5', '1', '0');
REPLACE INTO `creature_model_info` VALUES ('22882', '0.306', '1.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('22883', '0.306', '1.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('22884', '0.306', '1.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('22885', '0.306', '1.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('22894', '0.383', '1.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('22895', '0.306', '1.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('22896', '0.306', '1.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('22897', '0.306', '1.5', '1', '0');
REPLACE INTO `creature_model_info` VALUES ('22898', '0.306', '1.5', '1', '0');
REPLACE INTO `creature_model_info` VALUES ('22899', '0.306', '1.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('22900', '0.306', '1.5', '1', '0');
REPLACE INTO `creature_model_info` VALUES ('22946', '0.4092', '1.65', '0', '22945');
REPLACE INTO `creature_model_info` VALUES ('22948', '0.3366', '1.65', '0', '22950');
REPLACE INTO `creature_model_info` VALUES ('22960', '0.383', '1.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('22961', '0.9747', '4.05', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('22962', '0.306', '1.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('22963', '0.372', '1.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('22964', '0.383', '1.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('22978', '0.389', '1.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('21631', '0.9', '3', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('22327', '3.934', '3', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('22337', '0.875', '2.1875', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('22386', '0.45', '1.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('22387', '0.45834', '1.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('22425', '0.195', '0.65', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('22460', '2', '2', '2', '0');
REPLACE INTO `creature_model_info` VALUES ('22523', '1.55', '1.55', '2', '0');
REPLACE INTO `creature_model_info` VALUES ('22750', '0.552645', '0', '2', '0');
REPLACE INTO `creature_model_info` VALUES ('22873', '0.175831', '0', '2', '0');
REPLACE INTO `creature_model_info` VALUES ('22903', '0.2175', '1.5', '2', '0');
REPLACE INTO `creature_model_info` VALUES ('24043', '0.4164', '1.8', '1', '0');
REPLACE INTO `creature_model_info` VALUES ('24058', '0.46845', '2.025', '1', '0');
REPLACE INTO `creature_model_info` VALUES ('24419', '0.3519', '1.725', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('24730', '1', '1.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('24731', '1', '1.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('24735', '1.21837', '5.0625', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('24754', '0.383', '1.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('24755', '0.306', '1.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('24756', '0.4213', '1.65', '1', '0');
REPLACE INTO `creature_model_info` VALUES ('24761', '1', '1.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('24764', '0.3672', '1.8', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('24981', '0.306', '1.5', '1', '0');
REPLACE INTO `creature_model_info` VALUES ('24986', '0.306', '1.5', '1', '0');
REPLACE INTO `creature_model_info` VALUES ('24987', '0.306', '1.5', '1', '0');
REPLACE INTO `creature_model_info` VALUES ('24989', '0.306', '1.5', '1', '0');
REPLACE INTO `creature_model_info` VALUES ('24990', '0.306', '1.5', '1', '0');
REPLACE INTO `creature_model_info` VALUES ('24721', '0.5', '1', '2', '0');
REPLACE INTO `creature_model_info` VALUES ('24860', '0.9', '1.8', '2', '0');
REPLACE INTO `creature_model_info` VALUES ('25901', '0.306', '1.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('24935', '0.306', '1.5', '1', '0');
REPLACE INTO `creature_model_info` VALUES ('24937', '0.306', '1.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('25358', '0.389', '1.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('25359', '0.3519', '1.725', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('25362', '0.3519', '1.725', '1', '0');
REPLACE INTO `creature_model_info` VALUES ('25372', '0.383', '1.5', '1', '0');
REPLACE INTO `creature_model_info` VALUES ('25471', '1', '1.5', '0', '25472');
REPLACE INTO `creature_model_info` VALUES ('25477', '0.3519', '1.725', '0', '25478');
REPLACE INTO `creature_model_info` VALUES ('25481', '0.306', '1.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('25505', '0.208', '1.5', '1', '0');
REPLACE INTO `creature_model_info` VALUES ('25509', '0.208', '1.5', '1', '0');
REPLACE INTO `creature_model_info` VALUES ('25556', '0.1872', '1.35', '1', '0');
REPLACE INTO `creature_model_info` VALUES ('25560', '0.306', '1.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('25568', '0.306', '1.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('25746', '0.4092', '1.65', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('25847', '0.347', '1.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('26000', '1', '1.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('26455', '0.347', '1.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('26460', '0.347', '1.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('26853', '0.306', '1.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('26869', '0.3366', '1.65', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('27126', '0.306', '1.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('27127', '0.347', '1.5', '0', '27129');
REPLACE INTO `creature_model_info` VALUES ('27130', '0.372', '1.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('27131', '0.306', '1.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('27150', '0.45747', '2.2425', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('27151', '0.3978', '1.95', '1', '0');
REPLACE INTO `creature_model_info` VALUES ('27153', '0.4131', '2.025', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('27154', '0.3817', '1.65', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('27155', '0.383', '1.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('27156', '0.236', '1.5', '1', '0');
REPLACE INTO `creature_model_info` VALUES ('27166', '0.306', '1.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('27261', '0.208', '1.5', '1', '0');
REPLACE INTO `creature_model_info` VALUES ('27263', '0.389', '1.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('27274', '0.347', '1.5', '1', '0');
REPLACE INTO `creature_model_info` VALUES ('27284', '0.306', '1.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('27295', '0.306', '1.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('27296', '0.306', '1.5', '1', '0');
REPLACE INTO `creature_model_info` VALUES ('27298', '0.347', '1.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('27299', '0.208', '1.5', '1', '0');
REPLACE INTO `creature_model_info` VALUES ('27330', '0.347222', '1.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('27464', '0.277778', '1.2', '0', '27489');
REPLACE INTO `creature_model_info` VALUES ('27489', '0.2448', '1.2', '1', '0');
REPLACE INTO `creature_model_info` VALUES ('27490', '0.3125', '1.35', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('27491', '0.2754', '1.35', '1', '0');
REPLACE INTO `creature_model_info` VALUES ('27492', '0.260417', '1.125', '0', '27493');
REPLACE INTO `creature_model_info` VALUES ('27493', '0.2295', '1.125', '1', '0');
REPLACE INTO `creature_model_info` VALUES ('27494', '0.277778', '1.2', '0', '27495');
REPLACE INTO `creature_model_info` VALUES ('27495', '0.2448', '1.2', '1', '0');
REPLACE INTO `creature_model_info` VALUES ('27496', '0.3125', '1.35', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('27497', '0.2754', '1.35', '1', '0');
REPLACE INTO `creature_model_info` VALUES ('27498', '0.277778', '1.2', '0', '27499');
REPLACE INTO `creature_model_info` VALUES ('27499', '0.2448', '1.2', '1', '0');
REPLACE INTO `creature_model_info` VALUES ('27500', '0.277778', '1.2', '0', '27501');
REPLACE INTO `creature_model_info` VALUES ('27501', '0.2448', '1.2', '1', '0');
REPLACE INTO `creature_model_info` VALUES ('27502', '0.260417', '1.125', '0', '27503');
REPLACE INTO `creature_model_info` VALUES ('27503', '0.2295', '1.125', '1', '0');
REPLACE INTO `creature_model_info` VALUES ('27562', '0.4131', '2.025', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('27632', '0.306', '1.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('27651', '0.295139', '1.275', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('27663', '0.306', '1.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('27664', '0.306', '1.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('27684', '0.306', '1.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('27685', '0.306', '1.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('27686', '0.306', '1.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('27687', '0.306', '1.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('27704', '0.38709', '1.8975', '1', '0');
REPLACE INTO `creature_model_info` VALUES ('27712', '0.208', '1.5', '1', '0');
REPLACE INTO `creature_model_info` VALUES ('27713', '0.208', '1.5', '1', '0');
REPLACE INTO `creature_model_info` VALUES ('27714', '0.306', '1.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('27715', '0.208', '1.5', '1', '0');
REPLACE INTO `creature_model_info` VALUES ('27716', '0.306', '1.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('27717', '0.306', '1.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('27839', '0.364583', '1.575', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('27889', '0.208', '1.5', '1', '0');
REPLACE INTO `creature_model_info` VALUES ('27894', '0.3366', '1.65', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('27898', '1.224', '6', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('28058', '0.208', '1.5', '1', '0');
REPLACE INTO `creature_model_info` VALUES ('28128', '0.4213', '1.65', '1', '0');
REPLACE INTO `creature_model_info` VALUES ('28131', '0.3817', '1.65', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('28223', '0.347222', '1.5', '0', '3992');
REPLACE INTO `creature_model_info` VALUES ('28226', '0.347222', '1.5', '0', '3998');
REPLACE INTO `creature_model_info` VALUES ('28232', '0.347222', '1.5', '0', '3994');
REPLACE INTO `creature_model_info` VALUES ('28234', '0.347222', '1.5', '0', '3990');
REPLACE INTO `creature_model_info` VALUES ('28237', '0.347222', '1.5', '0', '3996');
REPLACE INTO `creature_model_info` VALUES ('28301', '0.389', '1.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('23257', '0.75', '1.5', '2', '0');
REPLACE INTO `creature_model_info` VALUES ('24707', '0.7', '0.7', '2', '0');
REPLACE INTO `creature_model_info` VALUES ('24995', '0.31', '1', '2', '0');
REPLACE INTO `creature_model_info` VALUES ('25013', '0.6', '6', '2', '0');
REPLACE INTO `creature_model_info` VALUES ('26003', '0.4797', '1.35', '2', '0');
REPLACE INTO `creature_model_info` VALUES ('26064', '0.75', '0.75', '2', '0');
REPLACE INTO `creature_model_info` VALUES ('26420', '0.75', '0.9375', '2', '0');
REPLACE INTO `creature_model_info` VALUES ('26535', '0.2015', '3.25', '2', '0');
REPLACE INTO `creature_model_info` VALUES ('26556', '0.3', '1', '2', '0');
REPLACE INTO `creature_model_info` VALUES ('26644', '3', '3', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('26756', '0.875', '1.25', '2', '0');
REPLACE INTO `creature_model_info` VALUES ('26942', '0.5333', '1.5', '2', '0');
REPLACE INTO `creature_model_info` VALUES ('27028', '0.718066', '2.35', '2', '0');
REPLACE INTO `creature_model_info` VALUES ('27072', '3.75', '3.75', '2', '0');
REPLACE INTO `creature_model_info` VALUES ('27108', '0.465', '7.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('27510', '0.75', '2.5', '2', '0');
REPLACE INTO `creature_model_info` VALUES ('27653', '10', '4', '2', '0');
REPLACE INTO `creature_model_info` VALUES ('27703', '1.085', '3.5', '2', '0');
REPLACE INTO `creature_model_info` VALUES ('27754', '0.155', '0.5', '2', '0');
REPLACE INTO `creature_model_info` VALUES ('27769', '1', '0', '2', '0');
REPLACE INTO `creature_model_info` VALUES ('27879', '1', '1', '2', '0');
REPLACE INTO `creature_model_info` VALUES ('28047', '0.375', '1.25', '2', '0');
REPLACE INTO `creature_model_info` VALUES ('28048', '0.525', '1.75', '2', '0');
REPLACE INTO `creature_model_info` VALUES ('28049', '0.9', '3', '2', '0');
REPLACE INTO `creature_model_info` VALUES ('28079', '0.3875', '1.875', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('29026', '0.383', '1.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('29130', '1', '2', '2', '0');
REPLACE INTO `creature_model_info` VALUES ('29354', '0.53358', '1.5', '1', '0');
REPLACE INTO `creature_model_info` VALUES ('29249', '1.00338', '4.3125', '1', '0');
REPLACE INTO `creature_model_info` VALUES ('29511', '0.3366', '1.65', '1', '0');
REPLACE INTO `creature_model_info` VALUES ('29867', '0.4213', '1.65', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('29510', '0.4279', '1.65', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('29755', '0.525', '2.25', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('29835', '0.306', '1.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('29830', '0.383', '1.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('29836', '0.306', '1.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('29832', '0.383', '1.5', '1', '0');
REPLACE INTO `creature_model_info` VALUES ('29921', '0.306', '1.5', '1', '0');
REPLACE INTO `creature_model_info` VALUES ('29834', '0.347', '1.5', '1', '0');
REPLACE INTO `creature_model_info` VALUES ('29833', '0.306', '1.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('30042', '0.383', '1.5', '1', '0');
REPLACE INTO `creature_model_info` VALUES ('29744', '1', '0', '2', '0');
REPLACE INTO `creature_model_info` VALUES ('29820', '0.9747', '4.05', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('29831', '0.383', '1.5', '1', '0');
REPLACE INTO `creature_model_info` VALUES ('29829', '0.383', '1.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('29860', '0.4131', '2.025', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('29763', '0.208', '1.5', '1', '0');
REPLACE INTO `creature_model_info` VALUES ('29759', '0.306', '1.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('29761', '0.208', '1.5', '1', '0');
REPLACE INTO `creature_model_info` VALUES ('29490', '0.364', '2.625', '1', '0');
REPLACE INTO `creature_model_info` VALUES ('29842', '2', '0', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('29837', '0.766', '3', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('29879', '0.35', '1.5', '2', '0');
REPLACE INTO `creature_model_info` VALUES ('29616', '0.5355', '2.625', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('29862', '0.434', '1.4', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('29573', '1', '0', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('29812', '0.383', '1.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('29735', '1', '1.5', '1', '0');
REPLACE INTO `creature_model_info` VALUES ('30120', '0.389', '1.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('29558', '0.62', '2', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('29524', '0.3875', '7.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('29569', '0.9747', '4.05', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('29506', '0.4213', '1.65', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('29507', '0.4213', '1.65', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('29872', '0.4213', '1.65', '1', '0');
REPLACE INTO `creature_model_info` VALUES ('29488', '0.31', '0', '2', '0');
REPLACE INTO `creature_model_info` VALUES ('30048', '0.306', '1.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('29492', '0.208', '1.5', '1', '0');
REPLACE INTO `creature_model_info` VALUES ('29204', '0.383', '1.5', '1', '0');
REPLACE INTO `creature_model_info` VALUES ('29203', '0.383', '1.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('29531', '0.3366', '1.65', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('29754', '0.35', '1.5', '2', '0');
REPLACE INTO `creature_model_info` VALUES ('29396', '0.306', '1.5', '1', '0');
REPLACE INTO `creature_model_info` VALUES ('29371', '0.306', '1.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('29367', '0.306', '1.5', '1', '0');
REPLACE INTO `creature_model_info` VALUES ('29370', '0.236', '1.5', '1', '0');
REPLACE INTO `creature_model_info` VALUES ('29366', '0.306', '1.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('29375', '0.306', '1.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('29369', '0.306', '1.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('29368', '0.306', '1.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('29398', '0.306', '1.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('29494', '0.236', '1.5', '1', '0');
REPLACE INTO `creature_model_info` VALUES ('29250', '0.9747', '4.05', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('29687', '0.383', '1.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('29689', '0.383', '1.5', '1', '0');
REPLACE INTO `creature_model_info` VALUES ('29679', '0.383', '1.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('29611', '0.383', '1.5', '1', '0');
REPLACE INTO `creature_model_info` VALUES ('29693', '0.383', '1.5', '1', '0');
REPLACE INTO `creature_model_info` VALUES ('29756', '1.2', '3', '2', '0');
REPLACE INTO `creature_model_info` VALUES ('29688', '0.383', '1.5', '1', '0');
REPLACE INTO `creature_model_info` VALUES ('29682', '0.383', '1.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('29692', '0.383', '1.5', '1', '0');
REPLACE INTO `creature_model_info` VALUES ('29690', '0.383', '1.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('29686', '0.416666', '1.8', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('29685', '0.416666', '1.8', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('29683', '0.416666', '1.8', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('29496', '0.4092', '1.65', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('29521', '0.3366', '1.65', '1', '0');
REPLACE INTO `creature_model_info` VALUES ('29795', '0.383', '1.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('29870', '0.4213', '1.65', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('29509', '1.1', '1.65', '1', '0');
REPLACE INTO `creature_model_info` VALUES ('29502', '1.07217', '4.455', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('29503', '0.95975', '4.125', '1', '0');
REPLACE INTO `creature_model_info` VALUES ('29871', '0.4213', '1.65', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('30064', '0.2596', '1.65', '1', '0');
REPLACE INTO `creature_model_info` VALUES ('30069', '0.4278', '1.725', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('30071', '0.44045', '1.725', '1', '0');
REPLACE INTO `creature_model_info` VALUES ('30072', '0.44045', '1.725', '1', '0');
REPLACE INTO `creature_model_info` VALUES ('30073', '0.44045', '1.725', '1', '0');
REPLACE INTO `creature_model_info` VALUES ('30075', '0.465', '1.875', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('30151', '0.52785', '2.5875', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('30163', '0.383', '1.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('30169', '1.5', '2.25', '1', '0');
REPLACE INTO `creature_model_info` VALUES ('30233', '0.5', '1', '2', '0');
REPLACE INTO `creature_model_info` VALUES ('30242', '0.312', '2.25', '1', '0');
REPLACE INTO `creature_model_info` VALUES ('30352', '0.347222', '1.5', '2', '0');
REPLACE INTO `creature_model_info` VALUES ('30357', '1.9494', '8.1', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('30359', '0.612', '3', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('30365', '0.520833', '2.25', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('30369', '0.347', '1.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('30373', '1', '1.5', '1', '0');
REPLACE INTO `creature_model_info` VALUES ('30377', '0.3519', '1.725', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('30381', '0.372', '1.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('30385', '0.8725', '3.75', '1', '0');
REPLACE INTO `creature_model_info` VALUES ('30387', '0.306', '1.5', '1', '0');
REPLACE INTO `creature_model_info` VALUES ('30457', '0.459', '2.25', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('30490', '0.5745', '2.25', '1', '0');
REPLACE INTO `creature_model_info` VALUES ('30528', '0.5205', '2.25', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('30534', '0.5745', '2.25', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('30607', '0.3672', '1.8', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('30632', '0.208', '1.5', '1', '0');
REPLACE INTO `creature_model_info` VALUES ('30634', '1', '1.5', '1', '0');
REPLACE INTO `creature_model_info` VALUES ('30637', '0.389', '1.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('30751', '0.372', '1.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('30799', '0.18', '1.8', '2', '0');
REPLACE INTO `creature_model_info` VALUES ('30806', '0.09', '1.5', '1', '0');
REPLACE INTO `creature_model_info` VALUES ('30808', '0.1085', '3.5', '2', '0');
REPLACE INTO `creature_model_info` VALUES ('30987', '0.306', '1.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('30996', '0.187', '0.15', '2', '0');
REPLACE INTO `creature_model_info` VALUES ('31022', '0.49266', '2.415', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('31026', '0.6128', '2.4', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('31029', '0.63195', '2.475', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('31031', '0.63195', '2.475', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('31034', '0.63195', '2.475', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('31346', '0.3366', '1.65', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('30488', '0.459', '2.25', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('30742', '0.67025', '2.625', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('30746', '0.520833', '2.25', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('30910', '0.383', '1.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('31089', '0.465', '9', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('31096', '0.4', '0.8', '2', '0');
REPLACE INTO `creature_model_info` VALUES ('29760', '0.208', '1.5', '1', '0');
REPLACE INTO `creature_model_info` VALUES ('30663', '1', '1.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('30666', '0.208', '1.5', '1', '0');
REPLACE INTO `creature_model_info` VALUES ('30668', '0.347', '1.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('30672', '0.3672', '1.8', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('31004', '1.125', '2.25', '2', '0');
REPLACE INTO `creature_model_info` VALUES ('30865', '0.372', '0', '1', '0');
REPLACE INTO `creature_model_info` VALUES ('30866', '0.93', '0', '1', '0');
REPLACE INTO `creature_model_info` VALUES ('29491', '0.306', '1.5', '0', '29492');
REPLACE INTO `creature_model_info` VALUES ('29493', '0.372', '1.5', '0', '29494');
REPLACE INTO `creature_model_info` VALUES ('29758', '0.306', '1.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('29762', '0.306', '1.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('30050', '0.208', '1.5', '1', '0');
REPLACE INTO `creature_model_info` VALUES ('30063', '0.2596', '1.65', '1', '0');
REPLACE INTO `creature_model_info` VALUES ('30065', '0.4092', '1.65', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('30066', '0.4092', '1.65', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('30178', '0.5205', '2.25', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('30268', '0.5745', '2.25', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('30370', '0.208', '1.5', '1', '0');
REPLACE INTO `creature_model_info` VALUES ('30371', '0.347', '1.5', '1', '0');
REPLACE INTO `creature_model_info` VALUES ('30378', '0.3519', '1.725', '1', '0');
REPLACE INTO `creature_model_info` VALUES ('30379', '0.208', '1.5', '1', '0');
REPLACE INTO `creature_model_info` VALUES ('30600', '1', '1.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('30606', '0.3978', '1.95', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('30608', '0.3825', '1.875', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('30635', '1', '1.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('30638', '0.347', '1.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('30662', '1', '1.5', '1', '0');
REPLACE INTO `creature_model_info` VALUES ('30664', '0.3519', '1.725', '1', '0');
REPLACE INTO `creature_model_info` VALUES ('30665', '0.3519', '1.725', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('30667', '0.306', '1.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('30669', '0.208', '1.5', '1', '0');
REPLACE INTO `creature_model_info` VALUES ('30670', '0.306', '1.5', '1', '0');
REPLACE INTO `creature_model_info` VALUES ('30671', '0.389', '1.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('30713', '0.6128', '2.4', '1', '0');
REPLACE INTO `creature_model_info` VALUES ('30739', '0.306', '1.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('30741', '0.67025', '2.625', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('30744', '0.67025', '2.625', '1', '0');
REPLACE INTO `creature_model_info` VALUES ('30747', '0.520833', '2.25', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('30748', '0.459', '2.25', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('30752', '0.236', '1.5', '1', '0');
REPLACE INTO `creature_model_info` VALUES ('30771', '1', '1.5', '1', '0');
REPLACE INTO `creature_model_info` VALUES ('30772', '1', '1.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('30773', '0.306', '1.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('30774', '0.208', '1.5', '1', '0');
REPLACE INTO `creature_model_info` VALUES ('30775', '0.3519', '1.725', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('31024', '0.6128', '2.4', '1', '0');
REPLACE INTO `creature_model_info` VALUES ('31025', '0.6128', '2.4', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('31035', '0.63195', '2.475', '1', '0');
REPLACE INTO `creature_model_info` VALUES ('31036', '0.63195', '2.475', '1', '0');
REPLACE INTO `creature_model_info` VALUES ('31037', '0.63195', '2.475', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('31044', '0.5', '1', '2', '0');
REPLACE INTO `creature_model_info` VALUES ('31953', '0.208', '1.5', '1', '0');
REPLACE INTO `creature_model_info` VALUES ('30792', '2', '2', '2', '0');
REPLACE INTO `creature_model_info` VALUES ('30826', '0.465', '1.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('30868', '0.520833', '2.25', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('31957', '1', '1', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('31958', '1', '1', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('29226', '1', '1.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('29228', '1', '1.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('29229', '1', '1.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('29230', '1', '1.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('29231', '1', '1.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('29232', '1', '1.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('29233', '1', '1.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('29234', '1', '1.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('29235', '1', '1.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('29236', '1', '1.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('29330', '1', '1.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('29338', '1', '1.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('29339', '1', '1.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('29340', '1', '1.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('29342', '1', '1.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('29365', '1', '1.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('29388', '1', '1.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('29391', '1', '1.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('29393', '1', '1.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('29395', '1', '1.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('29397', '1', '1.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('29399', '1', '1.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('29401', '1', '1.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('29403', '1', '1.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('29427', '1', '1.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('29428', '1', '1.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('29429', '1', '1.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('29430', '1', '1.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('29525', '1', '1.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('29527', '1', '1.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('29529', '1', '1.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('29535', '1', '1.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('29546', '1', '1.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('29551', '1', '1.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('29552', '1', '1.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('29553', '1', '1.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('29562', '1', '1.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('29696', '1', '1.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('29697', '1', '1.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('29699', '1', '1.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('29701', '1', '1.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('29704', '1', '1.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('29706', '1', '1.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('29708', '1', '1.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('29710', '1', '1.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('29712', '1', '1.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('29714', '1', '1.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('29716', '1', '1.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('29717', '1', '1.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('29719', '1', '1.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('29723', '1', '1.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('29728', '1', '1.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('29732', '1', '1.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('29733', '1', '1.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('29794', '1', '1.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('30346', '1', '1.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('30570', '1', '1.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('30581', '1', '1.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('30628', '1', '1.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('30645', '1', '1.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('30647', '1', '1.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('30651', '1', '1.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('30657', '1', '1.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('30659', '1', '1.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('30794', '1', '1.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('30797', '1', '1.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('30894', '1', '1.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('30898', '1', '1.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('30989', '1', '1.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('31007', '1', '1.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('31156', '1', '1.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('31722', '0.0775', '0.375', '2', '0');
REPLACE INTO `creature_model_info` VALUES ('31756', '1', '1.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('31833', '1', '1.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('31834', '1', '1.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('31952', '1', '1.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('31992', '1', '1.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('32754', '1', '1.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('29698', '1', '1.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('29700', '1', '1.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('29702', '1', '1.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('29703', '1', '1.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('29705', '1', '1.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('29707', '1', '1.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('29709', '1', '1.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('29711', '1', '1.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('29715', '1', '1.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('29718', '1', '1.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('30590', '1', '1.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('30629', '1', '1.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('30644', '1', '1.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('30648', '1', '1.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('30653', '1', '1.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('30822', '1', '1.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('30896', '1', '1.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('30899', '1', '1.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('29720', '1', '1.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('30591', '1', '1.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('30630', '1', '1.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('30643', '1', '1.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('30649', '1', '1.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('30654', '1', '1.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('30895', '1', '1.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('30900', '1', '1.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('29721', '1', '1.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('30592', '1', '1.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('30631', '1', '1.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('30646', '1', '1.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('30650', '1', '1.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('30897', '1', '1.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('30901', '1', '1.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('30243', '1', '1.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('31088', '1', '1.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('30793', '1', '1.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('30798', '1', '1.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('30986', '1', '1.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('31021', '1', '1.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('31125', '1', '1.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('31471', '1', '1.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('29528', '0.2596', '1.65', '1', '0');
REPLACE INTO `creature_model_info` VALUES ('29789', '0.5745', '2.25', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('30412', '0.045', '0', '2', '0');
REPLACE INTO `creature_model_info` VALUES ('30413', '0.06', '0', '2', '0');
REPLACE INTO `creature_model_info` VALUES ('30597', '0.155', '0.75', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('30640', '0.62', '2', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('30890', '7.5', '6', '2', '0');
REPLACE INTO `creature_model_info` VALUES ('32031', '0.3', '1', '2', '0');
REPLACE INTO `creature_model_info` VALUES ('29438', '1', '1.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('30864', '1', '1.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('29440', '1', '1.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('30059', '1', '1.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('30060', '1', '1.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('29205', '1', '1.5', '0', '0');
REPLACE INTO `creature_model_info` VALUES ('24471', '18', '6', '2', '0');
REPLACE INTO `creature_model_info` VALUES ('24826', '1.5', '0', '2', '0');
REPLACE INTO `creature_model_info` VALUES ('25870', '5', '1', '2', '0');
INSERT IGNORE INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`) VALUES
(111448, 28083, 571, 1, 65535, 0, 0, 4801.76, 4364.83, -56.6859, 2.42601, 300, 5, 0, 11770, 0, 0, 1);
INSERT INTO event_scripts (id, delay, command, datalong, datalong2) VALUES 
(19576, 0, 10, 30152, 600000),
(19576, 0, 10, 29801, 600000);
INSERT IGNORE INTO areatrigger_teleport (id,name,target_map,target_position_x,target_position_y,target_position_z,target_orientation) VALUES 
(5190,'Teleportation pad, K3 -> Garm\'s Rise',571,6313.438477,-1762.441772,457.644653,2.089172),
(5187,'Teleportation pad, Garm\'s Rise -> K3',571,6153.078613,-1074.071289,403.478119,2.049948);

# NeatElves
UPDATE creature_template_addon SET emote=0  WHERE entry IN (19610);
DELETE FROM `creature_loot_template` WHERE `entry` = 29932 AND `item` = 43228;
DELETE FROM `creature_loot_template` WHERE `entry` = 29932 AND `item` = 47241;
DELETE FROM `item_loot_template` WHERE `entry` = 43624 AND `item` = 36917;
DELETE FROM `item_loot_template` WHERE `entry` = 43624 AND `item` = 36920;
DELETE FROM `item_loot_template` WHERE `entry` = 43624 AND `item` = 36923;
DELETE FROM `item_loot_template` WHERE `entry` = 43624 AND `item` = 36926;
DELETE FROM `item_loot_template` WHERE `entry` = 43624 AND `item` = 36929;
DELETE FROM `item_loot_template` WHERE `entry` = 43624 AND `item` = 36932;
DELETE FROM `item_loot_template` WHERE `entry` = 43624 AND `item` = 36918;
DELETE FROM `item_loot_template` WHERE `entry` = 43624 AND `item` = 36921;
DELETE FROM `item_loot_template` WHERE `entry` = 43624 AND `item` = 36924;
DELETE FROM `item_loot_template` WHERE `entry` = 43624 AND `item` = 36927;
DELETE FROM `item_loot_template` WHERE `entry` = 43624 AND `item` = 36930;
DELETE FROM `item_loot_template` WHERE `entry` = 43624 AND `item` = 36933;
REPLACE INTO `item_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`) VALUES ('43624', '45912', '10', '0', '1', '1');
REPLACE INTO `item_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`) VALUES ('43624', '36918', '5', '0', '-36918', '1');
REPLACE INTO `item_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`) VALUES ('43624', '36917', '30', '0', '-36917', '1');
REPLACE INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
(36918, 36918, 0, 1, 1, 1),
(36918, 36921, 0, 1, 1, 1),
(36918, 36924, 0, 1, 1, 1),
(36918, 36927, 0, 1, 1, 1),
(36918, 36930, 0, 1, 1, 1),
(36918, 36933, 0, 1, 1, 1),
(36917, 36917, 0, 1, 1, 4),
(36917, 36920, 0, 1, 1, 4),
(36917, 36923, 0, 1, 1, 4),
(36917, 36926, 0, 1, 1, 4),
(36917, 36929, 0, 1, 1, 4),
(36917, 36932, 0, 1, 1, 4);
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '15' WHERE `entry` =29380 AND `item` =42203;
DELETE FROM event_scripts WHERE id=13891;
INSERT INTO event_scripts (id, delay, command, datalong, datalong2, dataint, x, y, z, o) VALUES 
(13891, 0, 10, 21217, 86400000, 0, 40.4058,-417.108,-21.5911,3.03312);
UPDATE creature_template SET gossip_menu_id=9417 WHERE entry = 26170;
INSERT IGNORE INTO gossip_menu (entry, text_id) VALUES (9417, 12663);
INSERT IGNORE INTO gossip_menu (entry, text_id) VALUES (9418, 12664);
DELETE FROM `npc_gossip` WHERE `npc_guid` = 117219;
UPDATE creature_loot_template SET ChanceOrQuestChance=10 WHERE item=39651;
DELETE FROM achievement_criteria_data WHERE criteria_id IN (5880, 9098, 9099, 9258, 9259, 9260, 9261);
INSERT INTO achievement_criteria_data VALUES
(5880, 12, 1, 0, ''),
(9098, 12, 0, 0, ''),
(9099, 12, 1, 0, ''),
(9258, 12, 0, 0, ''),
(9259, 12, 0, 0, ''),
(9260, 12, 1, 0, ''),
(9261, 12, 1, 0, '');
DELETE FROM achievement_criteria_data where criteria_id in (12318, 12319, 12320, 12321, 12322, 12323, 12324, 12439, 12310, 12311, 12312, 12313, 12314, 12315, 12316, 12317, 11789, 11858, 12302, 12303, 12304, 12305, 12306, 12307, 12308, 12309, 11420, 12298, 12299, 12300, 12301, 11559, 11560, 11561);
INSERT INTO achievement_criteria_data VALUES
(12318, 12, 1, 0, ''),
(12318, 14, 469, 0, ''),
(12319, 12, 1, 0, ''),
(12319, 14, 469, 0, ''),
(12320, 12, 1, 0, ''),
(12320, 14, 469, 0, ''),
(12321, 12, 1, 0, ''),
(12321, 14, 469, 0, ''),
(12322, 12, 1, 0, ''),
(12322, 14, 469, 0, ''),
(12323, 12, 1, 0, ''),
(12323, 14, 469, 0, ''),
(12324, 12, 1, 0, ''),
(12324, 14, 469, 0, ''),
(12439, 12, 1, 0, ''),
(12439, 14, 469, 0, ''),
(12310, 12, 1, 0, ''),
(12310, 14, 67, 0, ''),
(12311, 12, 1, 0, ''),
(12311, 14, 67, 0, ''),
(12312, 12, 1, 0, ''),
(12312, 14, 67, 0, ''),
(12313, 12, 1, 0, ''),
(12313, 14, 67, 0, ''),
(12314, 12, 1, 0, ''),
(12314, 14, 67, 0, ''),
(12315, 12, 1, 0, ''),
(12315, 14, 67, 0, ''),
(12316, 12, 1, 0, ''),
(12316, 14, 67, 0, ''),
(12317, 12, 1, 0, ''),
(12317, 14, 67, 0, ''),
(11789, 12, 1, 0, ''),
(11858, 12, 1, 0, ''),
(12302, 12, 0, 0, ''),
(12303, 12, 0, 0, ''),
(12304, 12, 0, 0, ''),
(12305, 12, 0, 0, ''),
(12306, 12, 0, 0, ''),
(12307, 12, 0, 0, ''),
(12308, 12, 0, 0, ''),
(12309, 12, 0, 0, ''),
(12302, 14, 469, 0, ''),
(12303, 14, 469, 0, ''),
(12304, 14, 469, 0, ''),
(12305, 14, 469, 0, ''),
(12306, 14, 469, 0, ''),
(12307, 14, 469, 0, ''),
(12308, 14, 469, 0, ''),
(12309, 14, 469, 0, ''),
(11420, 12, 0, 0, ''),
(12298, 12, 0, 0, ''),
(12299, 12, 0, 0, ''),
(12300, 12, 0, 0, ''),
(12301, 12, 0, 0, ''),
(11559, 12, 0, 0, ''),
(11560, 12, 0, 0, ''),
(11561, 12, 0, 0, ''),
(11420, 14, 67, 0, ''),
(12298, 14, 67, 0, ''),
(12299, 14, 67, 0, ''),
(12300, 14, 67, 0, ''),
(12301, 14, 67, 0, ''),
(11559, 14, 67, 0, ''),
(11560, 14, 67, 0, ''),
(11561, 14, 67, 0, '');
UPDATE `creature_template` SET `gossip_menu_id` = '18351' WHERE `entry` =18351;
INSERT IGNORE INTO gossip_menu (entry,text_id) VALUES 
(18351,9352),
(50000,9353),
(50001,9354),
(50002,9355),
(50008,9356);
DELETE FROM gossip_scripts WHERE id=18351;
INSERT INTO gossip_scripts (id, delay, command, datalong) VALUES 
(18351, 0, 8, 18354);
DELETE FROM `npc_gossip` WHERE `npc_guid` = 70898;
UPDATE creature_template_addon SET auras='50544 0' WHERE entry=27987;
REPLACE INTO `creature_template_addon` (`entry`, `mount`, `bytes1`, `emote`, `auras`) VALUES
(28496, 0, 0, 0, '15088 0'),
(29368,0,33554432,0,'56220 0 56220 1'),
(37906,0,50331648,0,'72611 0'),
(24198,0,0,0,'21862 0'),
(23564,0,0,0,'21862 0'),
(24199,0,0,0,'21862 0'),
(23667,0,0,0,'43085 0'),
(12099,0,0,0,'8876 0 15733 0'),
(11982, 0, 0, 0, '19449 0');
UPDATE `creature_template_addon` SET `auras` = '18950 0 18950 1 72712 0' WHERE `entry` =38113;
UPDATE `creature_template_addon` SET `auras` = '18950 0 18950 1 72712 0' WHERE `entry` =38112;
UPDATE `creature_template` SET `faction_A`=16, `faction_H`=16 WHERE `entry` IN (28695,30969);
UPDATE `creature_template` SET `faction_A`=16, `faction_H`=16, `unit_flags`=262146 WHERE `entry`=28681;
UPDATE `creature_template_addon` SET `emote` = '0' WHERE `entry` =27566;
UPDATE `creature_template_addon` SET `auras` = NULL WHERE `auras` = '';
UPDATE `creature_addon` SET `auras` = NULL WHERE `auras` = '';
DELETE FROM `creature_loot_template` WHERE `entry` = 485 AND `item` = 7906;
DELETE FROM `creature_loot_template` WHERE `entry` = 615 AND `item` = 7906;
DELETE FROM `creature_loot_template` WHERE `entry` = 4064 AND `item` = 7906;
DELETE FROM `creature_loot_template` WHERE `entry` = 4065 AND `item` = 7906;
DELETE FROM `creature_loot_template` WHERE `entry` = 4462 AND `item` = 7906;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES ('7009', '2358');
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES ('7009', '2358');
UPDATE `creature_template` SET `npcflag` = '2' WHERE `entry` =7009;
UPDATE `quest_template` SET `RequiredRaces` = '1101',`SpecialFlags` = '0' WHERE `entry` =2358;
DELETE FROM `creature` WHERE `guid` = 126599;
DELETE FROM `creature` WHERE `guid` = 126598;
UPDATE `creature_template` SET `npcflag` = '0',`faction_A` = '35',`faction_H` = '35' WHERE `entry` in (7389,7390);
DELETE FROM `creature` WHERE `guid` = 124232;
DELETE FROM `creature` WHERE `guid` = 53370;
UPDATE `creature_template` SET `faction_A` = '14',`faction_H` = '14' WHERE `entry` =7168;
UPDATE `creature_template` SET `minlevel` = '50',`maxlevel` = '50' WHERE `entry` =7167;
REPLACE INTO `creature_template_addon` (`entry`, `mount`, `bytes1`, `emote`, `auras`) VALUES ('7167', '0', '0', '0', '18950 0 18950 1');
REPLACE INTO `creature_ai_scripts` VALUES ('716702', '7167', '8', '0', '100', '1', '9976', '-1', '0', '0', '11', '9998', '0', '6', '41', '0', '0', '0', '0', '0', '0', '0', 'Polly - Change Template to Polly Jr. (Quest: 2381)');
UPDATE `event_scripts` SET `x` = '0',`y` = '0',`z` = '0',`o` = '0' WHERE `id` =2153 AND `delay` =5 AND `command` =10;
UPDATE `creature_template` SET `faction_A` = 2123, `faction_H` = 2123, `flags_extra` = 2 WHERE `entry` = 36776;
UPDATE `creature_template` SET `unit_flags` = 768 WHERE `entry` = 36776;
UPDATE `quest_template` SET `PrevQuestId` = '11014' WHERE `entry` in (11018,11017,11016);
UPDATE `quest_template` SET `PrevQuestId` = '11084' WHERE `entry` in (11086);

# virusav
UPDATE `creature_template` SET `ainame`='EventAI' WHERE `entry` IN (26498,26559,26700,26789,28015);
DELETE FROM `creature_ai_scripts` WHERE `creature_id` IN (26498,26559,26700,26789,28015);
INSERT INTO `creature_ai_scripts` SET `id`=2649851, `creature_id`=26498, `event_type`=8, `event_chance`=100, `event_flags`=1, `event_param1`=47110, `event_param2`=-1, `action1_type`=11, `action1_param1`=47117, `action1_param2`=6, `comment`='q11991';
INSERT INTO `creature_ai_scripts` SET `id`=2655951, `creature_id`=26559, `event_type`=8, `event_chance`=100, `event_flags`=1, `event_param1`=47110, `event_param2`=-1, `action1_type`=11, `action1_param1`=47149, `action1_param2`=6, `comment`='q12007';
INSERT INTO `creature_ai_scripts` SET `id`=2670051, `creature_id`=26700, `event_type`=8, `event_chance`=100, `event_flags`=1, `event_param1`=47110, `event_param2`=-1, `action1_type`=11, `action1_param1`=47316, `action1_param2`=6, `comment`='q12802';
INSERT INTO `creature_ai_scripts` SET `id`=2678951, `creature_id`=26789, `event_type`=8, `event_chance`=100, `event_flags`=1, `event_param1`=47110, `event_param2`=-1, `action1_type`=11, `action1_param1`=47405, `action1_param2`=6, `comment`='q12068';
INSERT INTO `creature_ai_scripts` SET `id`=2801551, `creature_id`=28015, `event_type`=8, `event_chance`=100, `event_flags`=7, `event_param1`=47110, `event_param2`=-1, `action1_type`=11, `action1_param1`=50439, `action1_param2`=6, `comment`='q12238';
INSERT INTO `creature_ai_scripts` SET `id`=2801552, `creature_id`=28015, `event_type`=8, `event_chance`=100, `event_flags`=7, `event_param1`=50440, `event_param2`=-1, `action1_type`=11, `action1_param1`=50446, `action1_param2`=6, `comment`='q12238';
DELETE FROM `spell_scripts` WHERE `id` IN (47117,47149,47316,47405,50439);
INSERT INTO `spell_scripts` SET `id`=47117, `delay`=0, `command`=7, `datalong`=11991, `datalong2`=10;
INSERT INTO `spell_scripts` SET `id`=47117, `delay`=1, `command`=15, `datalong`=47118, `datalong2`=2;
INSERT INTO `spell_scripts` SET `id`=47149, `delay`=0, `command`=15, `datalong`=47150, `datalong2`=2;
INSERT INTO `spell_scripts` SET `id`=47316, `delay`=0, `command`=7, `datalong`=12802, `datalong2`=10;
INSERT INTO `spell_scripts` SET `id`=47316, `delay`=1, `command`=15, `datalong`=47317, `datalong2`=2;
INSERT INTO `spell_scripts` SET `id`=47405, `delay`=0, `command`=15, `datalong`=47406, `datalong2`=2;
INSERT INTO `spell_scripts` SET `id`=50439, `delay`=0, `command`=15, `datalong`=50440, `datalong2`=3;
UPDATE `quest_template` SET `specialflags`=2 WHERE `entry` IN (11991,12802);
UPDATE `quest_template` SET `startscript`=0, `completescript`=0 WHERE `entry` IN (11991,12007,12802,12068,12238);
DELETE FROM `quest_start_scripts` WHERE `id` IN (11991,12007,12802,12068,12238);
DELETE FROM `quest_end_scripts` WHERE `id` IN (11991,12007,12802,12068,12238);
DELETE FROM `gameobject` WHERE `id`=300188;
INSERT INTO `gameobject` VALUES
(45036,300188,571,1,1,4242.92,-2036.32,237.852,1.43892,0,0,.65898,1,300,100,1),
(45037,300188,571,1,1,4524.08,-3472.94,227.389,.748555,0,0,.3656,1,300,100,1),
(45038,300188,571,1,1,4599.23,-4877.02,48.0633,6.27832,0,0,.922963,1,300,100,1),
(45039,300188,571,1,1,3386.26,-1805.32,114.166,1.79769,0,0,0,1,300,100,1),
(45238,300188,600,3,1,-236.766,-614.774,116.487,1.5708,0,0,0,1,300,100,1),
(45136,188287,571,1,1,3386.26,-1805.32,114.166,1.79769,0,0,.922963,1,1200,0,1);
UPDATE `gameobject` SET `position_x`=4599.23, `position_y`=-4877.02, `position_z`=48.0633, `orientation`=6.27832 WHERE `guid`=44674;
DELETE FROM `creature` WHERE `id` IN (26498,26559,26700,26789,28015);
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`) VALUES
(79337,28015,600,3,1,0,0,-236.636,-616.809,118.719,3.94444,7200,0,0,4979,0,0,0),
(108733,26789,571,1,1,0,0,4599.23,-4877.02,48.0633,6.27832,600,0,0,6986,0,0,0),
(108918,26498,571,1,1,0,0,3386.27,-1803.13,114.167,4.9842,600,0,0,6986,0,0,0),
(108673,26559,571,1,1,0,0,4242.88,-2036.47,238.595,1.40751,600,0,0,6986,0,0,0),
(108221,26700,571,1,1,0,0,4524.31,-3472.71,228.132,.776044,600,0,0,6986,0,0,0);
UPDATE `creature` SET `position_x`=4599.23, `position_y`=-4877.02, `position_z`=48.0633, `orientation`=6.27832 WHERE `guid`=118503;
UPDATE `creature_template` SET `equipment_id`=0 WHERE `entry` IN (26795,26797);

# NeatElves
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(119624, 26500, 571, 1, 1, 0, 0, 3386.21, -1805.46, 115.058, 4.96401, 600, 0, 0, 6986, 0, 0, 0);
DELETE FROM `gameobject` WHERE `guid` = 44786;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(44786, 188365, 571, 1, 1, 4383.61, -3050.55, 344.189, 1.09121, 0, 0, 0.518936, 0.854813, 1200, 100, 1);
DELETE FROM `creature` WHERE `id` = 10218;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance` = '5' WHERE `entry` =190586 AND `item` =42780;
UPDATE `creature_template` SET `faction_A`=35,`faction_H`=35,`unit_class`=8 WHERE `entry`=510;

# FIX
UPDATE `creature_template` SET `unit_flags` = 768 WHERE `entry` = 36776;
UPDATE `creature_template` SET `unit_flags` = 768 WHERE `entry` = 36774;
UPDATE creature_model_info SET modelid_other_gender=11227 WHERE modelid=11226;
UPDATE creature_model_info SET modelid_other_gender=15551 WHERE modelid=15552;
UPDATE creature_model_info SET modelid_other_gender=20286 WHERE modelid=20287;
UPDATE creature_model_info SET modelid_other_gender=0 WHERE modelid=22511;
UPDATE creature_model_info SET modelid_other_gender=0 WHERE modelid=22512;
UPDATE `quest_template` SET `SpecialFlags` = 0 WHERE `entry` = 5902;

# TC
UPDATE `creature_template` SET `exp` = 1 WHERE `entry` IN (28312, 32627);
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` IN (1820,1821,1822,1823,3826,3827,3828,3829,3882,5492,5493,5494,5495,5499,5500,5501,5502,5503,5507,5508,5509,5510,5511,12579,13260,13261) AND `type`!=11;
INSERT INTO `achievement_criteria_data` (`criteria_id`,`type`,`value1`,`value2`) VALUES
(1820,20,529,0), -- 30 hks in arathi
(1821,20,30,0), -- 30 hks in av
(1822,20,566,0), -- 30 hks in eots
(1823,20,489,0), -- 30 hks in wsg
(3826,5,26157,0), -- 26157
(3827,5,26272,0), -- 26272
(3828,5,26273,0), -- 26273
(3829,5,26274,0), -- 26274
(3882,5,48890,0), -- 50 Honorable Kills with the G.N.E.R.D. buff
(5492,20,0,0), -- Eastern Kingdoms
(5493,20,1,0), -- Kalimdor
(5494,20,530,0), -- Outland
(5495,20,571,0), -- Northrend
(5499,20,529,0), -- Arathi Basin
(5500,20,30,0), -- Alterac Valley
(5501,20,489,0), -- Warsong Gulch
(5502,20,566,0), -- Eye of the Storm
(5503,20,607,0), -- Strand of the Ancients
(5507,20,30,0), -- Alterac Valley Honorable Kills
(5508,20,529,0), -- Arathi Basin Honorable Kills
(5509,20,489,0), -- Warsong Gulch Honorable Kills
(5510,20,566,0), -- Eye of the Storm Honorable Kills
(5511,20,607,0), -- Strand of the Ancients Honorable Kills
(12579,20,628,0), -- 30 hks in ioc
(13260,20,628,0), -- Isle of Conquest
(13261,20,628,0); -- Isle of Conquest Honorable Kills

# Vendor
DELETE FROM `npc_vendor` WHERE (`entry`=35500);
INSERT INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES 
(35500, 45360, 0, 0, 2650),
(35500, 45361, 0, 0, 2658),
(35500, 45362, 0, 0, 2654),
(35500, 45363, 0, 0, 2652),
(35500, 45364, 0, 0, 2656),
(35500, 45401, 0, 0, 2650),
(35500, 45402, 0, 0, 2658),
(35500, 45403, 0, 0, 2654),
(35500, 45404, 0, 0, 2652),
(35500, 45405, 0, 0, 2656),
(35500, 45406, 0, 0, 2650),
(35500, 45408, 0, 0, 2658),
(35500, 45409, 0, 0, 2654),
(35500, 45410, 0, 0, 2652),
(35500, 45411, 0, 0, 2656),
(35500, 45412, 0, 0, 2658),
(35500, 45413, 0, 0, 2656),
(35500, 45414, 0, 0, 2650),
(35500, 45415, 0, 0, 2652),
(35500, 45416, 0, 0, 2654),
(35500, 45827, 0, 0, 2607),
(35500, 45828, 0, 0, 2607),
(35500, 45836, 0, 0, 2607),
(35500, 45837, 0, 0, 2607),
(35500, 45844, 0, 0, 2630),
(35500, 45845, 0, 0, 2630),
(35500, 46141, 0, 0, 2657),
(35500, 46142, 0, 0, 2651),
(35500, 46143, 0, 0, 2659),
(35500, 46144, 0, 0, 2655),
(35500, 46145, 0, 0, 2653),
(35500, 46198, 0, 0, 2657),
(35500, 46199, 0, 0, 2651),
(35500, 46200, 0, 0, 2651),
(35500, 46201, 0, 0, 2659),
(35500, 46202, 0, 0, 2655),
(35500, 46203, 0, 0, 2653),
(35500, 46204, 0, 0, 2653),
(35500, 46205, 0, 0, 2657),
(35500, 46206, 0, 0, 2657),
(35500, 46207, 0, 0, 2651),
(35500, 46208, 0, 0, 2655),
(35500, 46209, 0, 0, 2659),
(35500, 46210, 0, 0, 2655),
(35500, 46211, 0, 0, 2653),
(35500, 46212, 0, 0, 2659),
(35500, 48250, 0, 0, 2686),
(35500, 48251, 0, 0, 2686),
(35500, 48252, 0, 0, 2686),
(35500, 48253, 0, 0, 2687),
(35500, 48254, 0, 0, 2687),
(35500, 48275, 0, 0, 2686),
(35500, 48276, 0, 0, 2687),
(35500, 48277, 0, 0, 2686),
(35500, 48278, 0, 0, 2686),
(35500, 48279, 0, 0, 2687),
(35500, 48280, 0, 0, 2686),
(35500, 48281, 0, 0, 2686),
(35500, 48282, 0, 0, 2686),
(35500, 48283, 0, 0, 2687),
(35500, 48284, 0, 0, 2687),
(35500, 48295, 0, 0, 2686),
(35500, 48296, 0, 0, 2687),
(35500, 48297, 0, 0, 2686),
(35500, 48298, 0, 0, 2686),
(35500, 48299, 0, 0, 2687),
(35500, 48310, 0, 0, 2686),
(35500, 48312, 0, 0, 2687),
(35500, 48313, 0, 0, 2686),
(35500, 48314, 0, 0, 2686),
(35500, 48315, 0, 0, 2687),
(35500, 48336, 0, 0, 2686),
(35500, 48337, 0, 0, 2687),
(35500, 48338, 0, 0, 2686),
(35500, 48339, 0, 0, 2686),
(35500, 48340, 0, 0, 2687),
(35500, 48341, 0, 0, 2686),
(35500, 48342, 0, 0, 2687),
(35500, 48343, 0, 0, 2686),
(35500, 48344, 0, 0, 2686),
(35500, 48345, 0, 0, 2687),
(35500, 48366, 0, 0, 2686),
(35500, 48367, 0, 0, 2687),
(35500, 48368, 0, 0, 2686),
(35500, 48369, 0, 0, 2686),
(35500, 48370, 0, 0, 2687),
(35500, 50114, 0, 0, 2740),
(35500, 50115, 0, 0, 2742),
(35500, 50116, 0, 0, 2742),
(35500, 50117, 0, 0, 2740),
(35500, 50118, 0, 0, 2742),
(35500, 50830, 0, 0, 2742),
(35500, 50831, 0, 0, 2740),
(35500, 50832, 0, 0, 2742),
(35500, 50833, 0, 0, 2742),
(35500, 50834, 0, 0, 2740),
(35500, 50835, 0, 0, 2742),
(35500, 50836, 0, 0, 2740),
(35500, 50837, 0, 0, 2742),
(35500, 50838, 0, 0, 2742),
(35500, 50839, 0, 0, 2740),
(35500, 50841, 0, 0, 2742),
(35500, 50842, 0, 0, 2740),
(35500, 50843, 0, 0, 2742),
(35500, 50844, 0, 0, 2742),
(35500, 50845, 0, 0, 2740),
(35500, 51150, 0, 0, 2895),
(35500, 51151, 0, 0, 2896),
(35500, 51152, 0, 0, 2897),
(35500, 51153, 0, 0, 2898),
(35500, 51154, 0, 0, 2899),
(35500, 51190, 0, 0, 2905),
(35500, 51191, 0, 0, 2906),
(35500, 51192, 0, 0, 2907),
(35500, 51193, 0, 0, 2908),
(35500, 51194, 0, 0, 2909),
(35500, 51195, 0, 0, 2915),
(35500, 51196, 0, 0, 2916),
(35500, 51197, 0, 0, 2917),
(35500, 51198, 0, 0, 2918),
(35500, 51199, 0, 0, 2919),
(35500, 51200, 0, 0, 2925),
(35500, 51201, 0, 0, 2926),
(35500, 51202, 0, 0, 2927),
(35500, 51203, 0, 0, 2928),
(35500, 51204, 0, 0, 2929),
(35500, 51235, 0, 0, 2934),
(35500, 51236, 0, 0, 2933),
(35500, 51237, 0, 0, 2932),
(35500, 51238, 0, 0, 2931),
(35500, 51239, 0, 0, 2930),
(35500, 51240, 0, 0, 2935),
(35500, 51241, 0, 0, 2923),
(35500, 51242, 0, 0, 2922),
(35500, 51243, 0, 0, 2921),
(35500, 51244, 0, 0, 2920),
(35500, 51245, 0, 0, 2914),
(35500, 51246, 0, 0, 2913),
(35500, 51247, 0, 0, 2912),
(35500, 51248, 0, 0, 2911),
(35500, 51249, 0, 0, 2910),
(35500, 51285, 0, 0, 2900),
(35500, 51286, 0, 0, 2901),
(35500, 51287, 0, 0, 2902),
(35500, 51288, 0, 0, 2903),
(35500, 51289, 0, 0, 2904);
DELETE FROM `npc_vendor` WHERE (`entry`=35497);
INSERT INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES 
(35497, 48102, 0, 0, 2686),
(35497, 48129, 0, 0, 2686),
(35497, 48130, 0, 0, 2686),
(35497, 48131, 0, 0, 2687),
(35497, 48132, 0, 0, 2687),
(35497, 48153, 0, 0, 2687),
(35497, 48154, 0, 0, 2686),
(35497, 48155, 0, 0, 2686),
(35497, 48156, 0, 0, 2686),
(35497, 48157, 0, 0, 2687),
(35497, 48158, 0, 0, 2686),
(35497, 48159, 0, 0, 2686),
(35497, 48160, 0, 0, 2686),
(35497, 48161, 0, 0, 2687),
(35497, 48162, 0, 0, 2687),
(35497, 48183, 0, 0, 2687),
(35497, 48184, 0, 0, 2686),
(35497, 48185, 0, 0, 2686),
(35497, 48186, 0, 0, 2686),
(35497, 48187, 0, 0, 2687),
(35497, 48188, 0, 0, 2686),
(35497, 48189, 0, 0, 2686),
(35497, 48190, 0, 0, 2686),
(35497, 48191, 0, 0, 2687),
(35497, 48192, 0, 0, 2687),
(35497, 48213, 0, 0, 2687),
(35497, 48214, 0, 0, 2686),
(35497, 48215, 0, 0, 2686),
(35497, 48216, 0, 0, 2686),
(35497, 48217, 0, 0, 2687),
(35497, 48218, 0, 0, 2686),
(35497, 48219, 0, 0, 2686),
(35497, 48220, 0, 0, 2686),
(35497, 48221, 0, 0, 2687),
(35497, 48222, 0, 0, 2687),
(35497, 48243, 0, 0, 2686),
(35497, 48244, 0, 0, 2687),
(35497, 48245, 0, 0, 2686),
(35497, 48246, 0, 0, 2686),
(35497, 48247, 0, 0, 2687),
(35497, 50087, 0, 0, 2742),
(35497, 50088, 0, 0, 2740),
(35497, 50089, 0, 0, 2742),
(35497, 50090, 0, 0, 2742),
(35497, 50105, 0, 0, 2740),
(35497, 50106, 0, 0, 2742),
(35497, 50107, 0, 0, 2740),
(35497, 50108, 0, 0, 2742),
(35497, 50109, 0, 0, 2742),
(35497, 50113, 0, 0, 2740),
(35497, 50819, 0, 0, 2740),
(35497, 50820, 0, 0, 2742),
(35497, 50821, 0, 0, 2742),
(35497, 50822, 0, 0, 2740),
(35497, 50823, 0, 0, 2742),
(35497, 50824, 0, 0, 2740),
(35497, 50825, 0, 0, 2742),
(35497, 50826, 0, 0, 2742),
(35497, 50827, 0, 0, 2740),
(35497, 50828, 0, 0, 2742),
(35497, 51135, 0, 0, 2765),
(35497, 51136, 0, 0, 2766),
(35497, 51137, 0, 0, 2767),
(35497, 51138, 0, 0, 2768),
(35497, 51139, 0, 0, 2769),
(35497, 51140, 0, 0, 2785),
(35497, 51141, 0, 0, 2786),
(35497, 51142, 0, 0, 2787),
(35497, 51143, 0, 0, 2788),
(35497, 51144, 0, 0, 2789),
(35497, 51145, 0, 0, 2775),
(35497, 51146, 0, 0, 2776),
(35497, 51147, 0, 0, 2777),
(35497, 51148, 0, 0, 2778),
(35497, 51149, 0, 0, 2779),
(35497, 51185, 0, 0, 2755),
(35497, 51186, 0, 0, 2756),
(35497, 51187, 0, 0, 2757),
(35497, 51188, 0, 0, 2758),
(35497, 51189, 0, 0, 2759),
(35497, 51250, 0, 0, 2760),
(35497, 51251, 0, 0, 2761),
(35497, 51252, 0, 0, 2762),
(35497, 51253, 0, 0, 2763),
(35497, 51254, 0, 0, 2764),
(35497, 51290, 0, 0, 2780),
(35497, 51291, 0, 0, 2781),
(35497, 51292, 0, 0, 2782),
(35497, 51293, 0, 0, 2783),
(35497, 51294, 0, 0, 2784),
(35497, 51295, 0, 0, 2790),
(35497, 51296, 0, 0, 2791),
(35497, 51297, 0, 0, 2792),
(35497, 51298, 0, 0, 2793),
(35497, 51299, 0, 0, 2794),
(35497, 51300, 0, 0, 2770),
(35497, 51301, 0, 0, 2771),
(35497, 51302, 0, 0, 2772),
(35497, 51303, 0, 0, 2773),
(35497, 51304, 0, 0, 2774);

# Conditions
REPLACE INTO `gossip_menu_option` VALUES ('18351', '0', '0', 'I need answers, ogre!', '1', '1', '50000', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('50000', '0', '0', 'Why are Boulderfist out this far? You know that this is Kurenai territory.', '1', '1', '50001', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('50001', '0', '0', 'And you think you can just eat anything you want? You\'re obviously trying to eat the Broken of Telaar.', '1', '1', '50002', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('50002', '0', '0', 'This means war, Lump! War I say!', '1', '1', '50008', '0', '18351', '0', '0', null);
REPLACE INTO `conditions` VALUES ('13', '0', '6967', '0', '18', '1', '28028', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '6967', '0', '18', '1', '28029', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '10860', '0', '18', '1', '7732', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '12613', '0', '18', '1', '5843', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '13488', '0', '18', '1', '7033', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '13488', '0', '18', '1', '7034', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '13488', '0', '18', '1', '7035', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '26291', '0', '18', '0', '180771', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '26291', '0', '18', '0', '180850', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '26291', '0', '18', '0', '180868', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '26325', '0', '18', '0', '180772', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '26325', '0', '18', '0', '180859', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '26325', '0', '18', '0', '180869', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '26325', '0', '18', '0', '180874', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '28732', '0', '18', '1', '15953', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '29970', '0', '18', '1', '17161', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '30659', '0', '18', '1', '17281', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '30735', '0', '18', '1', '17083', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '31474', '0', '18', '1', '28028', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '31474', '0', '18', '1', '28029', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '32260', '0', '18', '1', '17208', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '32260', '0', '18', '1', '17305', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '37775', '0', '18', '1', '17211', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '37775', '0', '18', '1', '21664', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '37775', '0', '18', '1', '21684', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '39350', '0', '18', '1', '22519', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '39352', '0', '18', '1', '22519', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '39355', '0', '18', '1', '22519', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '39357', '0', '18', '1', '22519', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '39359', '0', '18', '1', '22519', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '39360', '0', '18', '1', '22519', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '39361', '0', '18', '1', '22519', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '42220', '0', '18', '1', '23597', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '42515', '0', '18', '1', '23868', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '42536', '0', '18', '1', '23685', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '42536', '0', '18', '1', '24492', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '42570', '0', '18', '1', '23746', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '42703', '0', '18', '0', '186403', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '42720', '0', '18', '1', '23559', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '43069', '0', '18', '1', '23667', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '43072', '0', '18', '1', '23667', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '43255', '0', '18', '1', '23746', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '43291', '0', '18', '1', '24221', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '43515', '0', '18', '1', '23746', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '43520', '0', '18', '1', '23746', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '43615', '0', '18', '1', '23577', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '43647', '0', '18', '1', '24358', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '43662', '0', '18', '1', '24468', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '43662', '0', '18', '1', '24510', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '44313', '0', '18', '1', '26363', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '44313', '0', '18', '1', '28129', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '44362', '0', '18', '1', '24766', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '44367', '0', '18', '1', '26363', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '44367', '0', '18', '1', '27230', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '44367', '0', '18', '1', '28129', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '45264', '0', '18', '1', '23837', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '45465', '0', '18', '1', '24862', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '45941', '0', '18', '1', '25746', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '46400', '0', '18', '1', '26043', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '46593', '0', '18', '1', '26120', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '46603', '0', '18', '1', '26121', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '46694', '0', '18', '1', '26159', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '46694', '0', '18', '1', '26160', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '47110', '0', '18', '1', '26498', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '47110', '0', '18', '1', '26559', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '47110', '0', '18', '1', '26700', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '47110', '0', '18', '1', '26789', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '47110', '0', '18', '1', '28015', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '47176', '0', '18', '1', '26570', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '47214', '0', '18', '1', '26570', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '47460', '0', '18', '1', '26817', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '48508', '0', '18', '1', '27369', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '48530', '0', '18', '1', '27268', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '48793', '0', '18', '1', '27452', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '49197', '0', '18', '1', '26286', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '49197', '0', '18', '1', '27531', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '49197', '0', '18', '1', '27685', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '49197', '0', '18', '1', '27686', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '49334', '0', '18', '1', '27530', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '49517', '0', '18', '1', '23033', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '49525', '0', '18', '1', '23033', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '49634', '0', '18', '1', '24087', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '49634', '0', '18', '1', '24092', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '49634', '0', '18', '1', '24093', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '49634', '0', '18', '1', '24094', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '49899', '0', '18', '1', '27852', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '49947', '0', '18', '1', '19871', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '50133', '0', '18', '1', '24464', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '50440', '0', '18', '1', '28015', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '51152', '0', '18', '1', '28260', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '51420', '0', '18', '1', '28362', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '51511', '0', '18', '1', '23837', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '52512', '0', '18', '1', '38028', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '54108', '0', '18', '1', '29254', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '54423', '0', '18', '1', '29416', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '54464', '0', '18', '1', '29424', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '54984', '0', '18', '1', '29692', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '55647', '0', '18', '0', '191840', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '56738', '0', '18', '1', '30422', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '57682', '0', '18', '1', '30672', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '58185', '0', '18', '1', '15214', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '58185', '0', '18', '1', '30868', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '59375', '0', '18', '1', '31630', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '59554', '0', '18', '1', '31690', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '60430', '0', '18', '1', '30643', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '60612', '0', '18', '1', '32328', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '60614', '0', '18', '1', '32328', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '60834', '0', '18', '1', '32347', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '60836', '0', '18', '1', '32347', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '60909', '0', '18', '1', '28714', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '60909', '0', '18', '1', '28715', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '60909', '0', '18', '1', '28718', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '60909', '0', '18', '1', '28721', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '60909', '0', '18', '1', '28722', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '60909', '0', '18', '1', '28723', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '60909', '0', '18', '1', '28725', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '60909', '0', '18', '1', '28726', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '60909', '0', '18', '1', '28727', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '60909', '0', '18', '1', '28728', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '60909', '0', '18', '1', '28776', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '60909', '0', '18', '1', '28951', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '60909', '0', '18', '1', '28989', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '60909', '0', '18', '1', '28994', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '60909', '0', '18', '1', '28997', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '60909', '0', '18', '1', '29478', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '60909', '0', '18', '1', '29491', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '60909', '0', '18', '1', '29497', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '60909', '0', '18', '1', '29523', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '60909', '0', '18', '1', '29528', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '60909', '0', '18', '1', '29714', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '60909', '0', '18', '1', '33027', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '61254', '0', '18', '1', '30449', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '61254', '0', '18', '1', '30451', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '61254', '0', '18', '1', '30452', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '61353', '0', '18', '1', '27047', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '61397', '0', '18', '1', '32606', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '61602', '0', '18', '1', '23033', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '61632', '0', '18', '1', '30449', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '61632', '0', '18', '1', '30451', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '61632', '0', '18', '1', '30452', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '61647', '0', '18', '1', '27047', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '62488', '0', '18', '1', '33121', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '62943', '0', '18', '0', '193963', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '66256', '0', '18', '1', '34810', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '66798', '0', '18', '1', '35005', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '67482', '0', '18', '1', '35451', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '67751', '0', '18', '1', '35590', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '69095', '0', '18', '1', '15214', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '69431', '0', '18', '1', '36848', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '69508', '0', '18', '1', '37986', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '69540', '0', '18', '1', '36897', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '69708', '0', '18', '1', '36954', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '69767', '0', '18', '1', '37014', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '69768', '0', '18', '1', '37014', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '69783', '0', '18', '1', '37013', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '69784', '0', '18', '1', '37014', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '69797', '0', '18', '1', '37013', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '69799', '0', '18', '1', '37013', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '69802', '0', '18', '1', '37013', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '69857', '0', '18', '1', '36954', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '70021', '0', '18', '1', '22515', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '70104', '0', '18', '1', '36957', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '70104', '0', '18', '1', '36960', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '70374', '0', '18', '1', '37540', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '70588', '0', '18', '1', '36789', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '70602', '0', '18', '1', '36789', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '70881', '0', '18', '1', '37986', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '71306', '0', '18', '1', '38125', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '71948', '0', '18', '1', '37950', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '72099', '0', '18', '1', '36934', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '18351', '0', '0', '9', '9918', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('18', '0', '35116', '0', '24', '2', '25752', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('18', '0', '35116', '0', '24', '2', '25753', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('18', '0', '35116', '0', '24', '2', '25758', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('18', '0', '35116', '0', '24', '2', '25792', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('18', '0', '35116', '0', '24', '2', '25793', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('18', '0', '36732', '0', '24', '1', '26293', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('18', '0', '39651', '0', '24', '2', '28877', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('18', '0', '40587', '0', '24', '2', '29329', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('18', '0', '40587', '0', '24', '2', '29330', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('18', '0', '40587', '0', '24', '2', '29338', '0', '0', '', null);

# FIX
DELETE FROM conditions WHERE SourceTypeOrReferenceId=1 AND SourceGroup=29932;
INSERT IGNORE INTO `achievement_criteria_data` VALUES ('12068', '0', '0', '0', '');
INSERT IGNORE INTO `achievement_criteria_data` VALUES ('12183', '0', '0', '0', '');
DELETE FROM `quest_start_scripts` WHERE `id`=11004;
INSERT INTO `quest_start_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `dataint`, `x`, `y`, `z`, `o`) VALUES 
(11004, 7, 1, 16, 0, '0', 0, 0, 0, 0),
(11004, 1, 0, 0, 23038, '2000000447', 0, 0, 0, 0),
(11004, 10, 0, 0, 23036, '2000000448', 0, 0, 0, 0);
DELETE FROM `quest_end_scripts` WHERE `id`=10719;
INSERT INTO `quest_end_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `dataint`, `x`, `y`, `z`, `o`) VALUES 
(10719, 1, 0, 0, 21983, '2000000445', 0, 0, 0, 0),
(10719, 3, 0, 0, 21983, '2000000446', 0, 0, 0, 0);



# FIX
# DELETE FROM conditions WHERE SourceTypeOrReferenceId=15 AND SourceGroup=50314;
# DELETE FROM conditions WHERE SourceTypeOrReferenceId=14 AND SourceGroup=50314;

# WDB_Check
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=1921;

# Temp_FIX
update gossip_scripts set datalong2=3 where datalong2=2 AND command=15;
update quest_start_scripts set datalong2=3 where datalong2=2 AND command=15;
update quest_end_scripts set datalong2=3 where datalong2=2 AND command=15;
DELETE FROM conditions WHERE ConditionTypeOrReference=14 AND ConditionValue1=0;
UPDATE conditions SET ConditionValue2=0 WHERE ConditionTypeOrReference=25 AND ConditionValue2=1;
UPDATE conditions SET ConditionValue2=0 WHERE ConditionTypeOrReference=17 AND ConditionValue2=1;
UPDATE `creature_template` SET `gossip_menu_id` = 0 WHERE `npcflag` = `npcflag`|32;
UPDATE `gossip_menu_option` SET `box_text`='Are you sure you wish to purchase a Dual Talent Specialization?' WHERE `option_id` =18;
UPDATE creature_template_addon SET path_id=0;

# NPC_FIX
UPDATE
`creature_template_addon`, `creature_template`
SET
`creature_template`.`unit_flags`=IF(`creature_template`.`unit_flags` &  33554432=33554432,570721024,537166592),
`creature_template`.`dynamicflags`=`creature_template`.`dynamicflags` | 32
WHERE
`creature_template`.`entry`=`creature_template_addon`.`entry`
AND `creature_template_addon`.`auras`='29266 0 29266 1';
UPDATE `creature_template` SET `faction_A` = '1802' WHERE `faction_A` = '1732';
UPDATE `creature_template` SET `faction_A` = '1802' WHERE `faction_A` = '1733';
UPDATE `creature_template` SET `faction_A` = '1802' WHERE `faction_A` = '84';
UPDATE `creature_template` SET `faction_H` = '1802' WHERE `faction_H` = '1732';
UPDATE `creature_template` SET `faction_H` = '1802' WHERE `faction_H` = '1733';
UPDATE `creature_template` SET `faction_H` = '1802' WHERE `faction_H` = '84';
UPDATE `creature_template` SET `faction_A` = '1801' WHERE `faction_A` = '1735';
UPDATE `creature_template` SET `faction_A` = '1801' WHERE `faction_A` = '1734';
UPDATE `creature_template` SET `faction_A` = '1801' WHERE `faction_A` = '83';
UPDATE `creature_template` SET `faction_H` = '1801' WHERE `faction_H` = '1735';
UPDATE `creature_template` SET `faction_H` = '1801' WHERE `faction_H` = '1734';
UPDATE `creature_template` SET `faction_H` = '1801' WHERE `faction_H` = '83';
UPDATE `gameobject_template` SET `faction` = '1801' WHERE `faction` = '1735';
UPDATE `gameobject_template` SET `faction` = '1801' WHERE `faction` = '1734';
UPDATE `gameobject_template` SET `faction` = '1801' WHERE `faction` = '83';
UPDATE `gameobject_template` SET `faction` = '1802' WHERE `faction` = '1732';
UPDATE `gameobject_template` SET `faction` = '1802' WHERE `faction` = '1733';
UPDATE `gameobject_template` SET `faction` = '1802' WHERE `faction` = '84';
UPDATE
`creature_template`, `creature_template` AS `copy`
SET
`copy`.`RegenHealth`=`creature_template`.`RegenHealth`,
`copy`.`unit_class`=`creature_template`.`unit_class`,
`copy`.`unit_flags`=`creature_template`.`unit_flags`,
`copy`.`npcflag`=`creature_template`.`npcflag`,
`copy`.`dynamicflags`=`creature_template`.`dynamicflags`,
`copy`.`equipment_id`=`creature_template`.`equipment_id`,
`copy`.`faction_A`=`creature_template`.`faction_A`,
`copy`.`faction_H`=`creature_template`.`faction_H`,
`copy`.`speed_run`=`creature_template`.`speed_run`,
`copy`.`speed_walk`=`creature_template`.`speed_walk`,
`copy`.`scale`=`creature_template`.`scale`,
`copy`.`dmgschool`=`creature_template`.`dmgschool`,
`copy`.`mingold`=`creature_template`.`mingold`,
`copy`.`maxgold`=`creature_template`.`maxgold`,
`copy`.`VehicleId`=`creature_template`.`VehicleId`,
`copy`.`mechanic_immune_mask`=`creature_template`.`mechanic_immune_mask`
WHERE
`copy`.`entry`=`creature_template`.`difficulty_entry_1`;
UPDATE
`creature_template`, `creature_template` AS `copy`
SET
`copy`.`RegenHealth`=`creature_template`.`RegenHealth`,
`copy`.`unit_class`=`creature_template`.`unit_class`,
`copy`.`unit_flags`=`creature_template`.`unit_flags`,
`copy`.`npcflag`=`creature_template`.`npcflag`,
`copy`.`dynamicflags`=`creature_template`.`dynamicflags`,
`copy`.`equipment_id`=`creature_template`.`equipment_id`,
`copy`.`faction_A`=`creature_template`.`faction_A`,
`copy`.`faction_H`=`creature_template`.`faction_H`,
`copy`.`speed_run`=`creature_template`.`speed_run`,
`copy`.`speed_walk`=`creature_template`.`speed_walk`,
`copy`.`scale`=`creature_template`.`scale`,
`copy`.`dmgschool`=`creature_template`.`dmgschool`,
`copy`.`mingold`=`creature_template`.`mingold`,
`copy`.`maxgold`=`creature_template`.`maxgold`,
`copy`.`VehicleId`=`creature_template`.`VehicleId`,
`copy`.`mechanic_immune_mask`=`creature_template`.`mechanic_immune_mask`
WHERE
`copy`.`entry`=`creature_template`.`difficulty_entry_2`;
UPDATE
`creature_template`, `creature_template` AS `copy`
SET
`copy`.`RegenHealth`=`creature_template`.`RegenHealth`,
`copy`.`unit_class`=`creature_template`.`unit_class`,
`copy`.`unit_flags`=`creature_template`.`unit_flags`,
`copy`.`npcflag`=`creature_template`.`npcflag`,
`copy`.`dynamicflags`=`creature_template`.`dynamicflags`,
`copy`.`equipment_id`=`creature_template`.`equipment_id`,
`copy`.`faction_A`=`creature_template`.`faction_A`,
`copy`.`faction_H`=`creature_template`.`faction_H`,
`copy`.`speed_run`=`creature_template`.`speed_run`,
`copy`.`speed_walk`=`creature_template`.`speed_walk`,
`copy`.`scale`=`creature_template`.`scale`,
`copy`.`dmgschool`=`creature_template`.`dmgschool`,
`copy`.`mingold`=`creature_template`.`mingold`,
`copy`.`maxgold`=`creature_template`.`maxgold`,
`copy`.`VehicleId`=`creature_template`.`VehicleId`,
`copy`.`mechanic_immune_mask`=`creature_template`.`mechanic_immune_mask`
WHERE
`copy`.`entry`=`creature_template`.`difficulty_entry_3`;

# FINAL_ITEM_FIX
UPDATE `item_template` SET `StatsCount`=1 WHERE `stat_type1`>0 AND `stat_value1`<>0; 
UPDATE `item_template` SET `StatsCount`=2 WHERE `stat_type2`>0 AND `stat_value2`<>0; 
UPDATE `item_template` SET `StatsCount`=3 WHERE `stat_type3`>0 AND `stat_value3`<>0; 
UPDATE `item_template` SET `StatsCount`=4 WHERE `stat_type4`>0 AND `stat_value4`<>0; 
UPDATE `item_template` SET `StatsCount`=5 WHERE `stat_type5`>0 AND `stat_value5`<>0; 
UPDATE `item_template` SET `StatsCount`=6 WHERE `stat_type6`>0 AND `stat_value6`<>0; 
UPDATE `item_template` SET `StatsCount`=7 WHERE `stat_type7`>0 AND `stat_value7`<>0; 
UPDATE `item_template` SET `StatsCount`=8 WHERE `stat_type8`>0 AND `stat_value8`<>0; 
UPDATE `item_template` SET `StatsCount`=9 WHERE `stat_type9`>0 AND `stat_value9`<>0; 
UPDATE `item_template` SET `StatsCount`=10 WHERE `stat_type10`>0 AND `stat_value10`<>0;
UPDATE `item_template` SET `DisenchantID` = 0 WHERE `RequiredDisenchantSkill` = -1;

# Final_FIX
UPDATE quest_template SET SpecialFlags=SpecialFlags|1 WHERE QuestFlags=QuestFlags|4096;
UPDATE quest_template SET SpecialFlags=SpecialFlags|1 WHERE QuestFlags=QuestFlags|32768;
DELETE FROM `creature_addon` WHERE `guid` NOT IN (SELECT `guid` FROM `creature`);
DELETE FROM `creature_linked_respawn` WHERE `guid` NOT IN (SELECT `guid` FROM `creature`);
DELETE FROM `creature_linked_respawn` WHERE `linkedGuid` NOT IN (SELECT `guid` FROM `creature`);
DELETE FROM `npc_gossip` WHERE `npc_guid` NOT IN (SELECT `guid` FROM `creature`);
DELETE FROM `game_event_gameobject` WHERE `guid` NOT IN (SELECT `guid` FROM `gameobject`);
DELETE FROM `game_event_creature` WHERE `guid` NOT IN (SELECT `guid` FROM `creature`);
UPDATE creature_template SET unit_flags=unit_flags&~2048 WHERE unit_flags&2048=2048;
UPDATE creature_template SET unit_flags=unit_flags&~524288 WHERE unit_flags&524288=524288;
UPDATE creature_template SET unit_flags=unit_flags&~67108864 WHERE unit_flags&67108864=67108864;
UPDATE creature_template SET unit_flags=unit_flags&~8388608 WHERE unit_flags&8388608=8388608;
UPDATE `creature` SET `MovementType` = 0 WHERE `spawndist` = 0 AND `MovementType`=1;
UPDATE `creature` SET `spawndist`=0 WHERE `MovementType`=0;
UPDATE `creature` SET `spawntimesecs` = 300 WHERE `spawntimesecs` = 25;
UPDATE `gameobject` SET `spawntimesecs` = 300 WHERE `spawntimesecs` = 25;
UPDATE `creature_template` SET `scale` = 1 WHERE `scale` = 0;
update gameobject_template, gameobject set gameobject.animprogress = 100 where gameobject_template.entry = gameobject.id and gameobject_template.type = 0;
update gameobject_template, gameobject set gameobject.animprogress = 100 where gameobject_template.entry = gameobject.id and gameobject_template.type = 3;
update gameobject_template, gameobject set gameobject.animprogress = 100 where gameobject_template.entry = gameobject.id and gameobject_template.type = 10;
update gameobject_template, gameobject set gameobject.animprogress = 100 where gameobject_template.entry = gameobject.id and gameobject_template.type = 25;
UPDATE `gameobject` SET `state`=1 WHERE `state`=0 AND `id` IN (SELECT entry FROM `gameobject_template` WHERE `type`=3);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` IN (SELECT `id` FROM `creature_questrelation`);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` IN (SELECT `id` FROM `creature_involvedrelation`);
# UPDATE `gameobject` SET `state` = 0 WHERE `id` IN (SELECT `entry` FROM `gameobject_template` WHERE `type` = 0 AND `data0` = 1);
UPDATE `gameobject_template` SET `flags`=`flags`&~4 WHERE `type` IN (2,19,17);
DELETE FROM `gameobject_scripts` WHERE `id` NOT IN (SELECT `guid` FROM `gameobject`);
DELETE FROM `gameobject_scripts` WHERE `command` in (11, 12) and `datalong` NOT IN (SELECT `guid` FROM `gameobject`);
DELETE FROM `creature_onkill_reputation` WHERE `creature_id` NOT IN (SELECT `entry` FROM `creature_template`);
UPDATE `item_template` SET `spelltrigger_2` = 0 WHERE `spellid_2` = 0 AND `spelltrigger_2` = 6;
UPDATE `creature_template` SET `ScriptName` = '' WHERE `AIName` = 'EventAI' AND `ScriptName` = 'generic_creature';
UPDATE `creature_template` SET npcflag = npcflag|1 WHERE `gossip_menu_id` > 0;

UPDATE
`creature`, `waypoint_data`
SET
`creature`.`spawndist`=0,
`creature`.`MovementType`=2
WHERE
`creature`.`guid`=`waypoint_data`.`id`;

DELETE
`waypoint_data`
FROM
`waypoint_data`
LEFT JOIN
(`creature`)
ON
(`creature`.`guid`=`waypoint_data`.`id`)
WHERE
`creature`.`guid` IS NULL;

ALTER TABLE `waypoint_data` ADD INDEX `temp_action` (`action`);
ALTER TABLE `waypoint_scripts` ADD INDEX `temp_id` (`id`);
DELETE
`waypoint_scripts`
FROM
`waypoint_scripts`
LEFT JOIN
(`waypoint_data`)
ON
(`waypoint_data`.`action`=`waypoint_scripts`.`id`)
WHERE
`waypoint_data`.`action` IS NULL;
ALTER TABLE `waypoint_data` DROP INDEX `temp_action`;
ALTER TABLE `waypoint_scripts` DROP INDEX `temp_id`;

update creature_addon set path_id=0;
UPDATE
`creature_addon`, `waypoint_data`
SET
`creature_addon`.`path_id`=`creature_addon`.`guid`
WHERE
`creature_addon`.`guid`=`waypoint_data`.`id`;

UPDATE version SET `cache_id`= '578';
UPDATE version SET `core_revision`= '10754';
UPDATE version SET `db_version`= 'YTDB_0.14.0_R578_TC_R10754_TDBAI_335.0.2_RuDB_R38.5';
