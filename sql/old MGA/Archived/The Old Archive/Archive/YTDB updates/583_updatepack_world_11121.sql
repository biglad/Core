# Y2kCat
ALTER TABLE db_version_ytdb CHANGE COLUMN 582_FIX_11043 583_FIX_11121 bit;
REPLACE INTO `db_version_ytdb` (`version`) VALUES ('583_FIX_11121');

# Easy
delete from gameobject where id=187983;

# Fix
# UPDATE `quest_template` SET `SpecialFlags` = 0 WHERE `entry` = 10162;
UPDATE `creature_template` SET `unit_flags` = 32768 WHERE `entry` = 26501;
UPDATE `creature_template` SET `flags_extra` = 2 WHERE `entry` = 26889;
UPDATE `creature_template` SET `flags_extra` = 2 WHERE `entry` = 26887;
UPDATE `creature_template` SET `flags_extra` = 2 WHERE `entry` = 26773;
UPDATE `gameobject_template` SET `flags` = 32 WHERE `entry` = 188474;
UPDATE `gameobject_template` SET `flags` = 32 WHERE `entry` = 188491;
DELETE FROM `gameobject` WHERE `id`=188474;

# NeatElves
UPDATE `quest_template` SET `RequiredRaces` = '1101' WHERE `entry` =12107;
DELETE FROM creature WHERE id = 5766;
UPDATE `creature` SET `spawntimesecs` = 300 WHERE `id` IN (669,781,783);
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(395, 669, 0, 1, 1, 0, 0, -12972.7, -710.152, 53.8719, 1.79807, 300, 0, 0, 1900, 0, 0, 0),
(405, 669, 0, 1, 1, 0, 0, -13021.1, -700.964, 55.3896, 4.64595, 300, 5, 0, 1900, 0, 0, 1),
(415, 669, 0, 1, 1, 0, 0, -12993.9, -673.287, 53.1074, 1.33225, 300, 5, 0, 1900, 0, 0, 1),
(454, 669, 0, 1, 1, 0, 0, -12943.5, -645.847, 53.0568, 4.75773, 300, 0, 0, 1900, 0, 0, 0),
(474, 669, 0, 1, 1, 0, 0, -12990.2, -659.665, 51.6074, 3.43563, 300, 5, 0, 1900, 0, 0, 1),
(34553, 669, 0, 1, 1, 0, 0, -13044.2, -653.226, 52.8061, 5.66157, 300, 5, 0, 1900, 0, 0, 1),
(34583, 669, 0, 1, 1, 0, 0, -13000.7, -713.202, 54.8471, 0.537549, 300, 0, 0, 1900, 0, 0, 0),
(34586, 669, 0, 1, 1, 0, 0, -12939.1, -716.33, 54.4169, 4.11228, 300, 0, 0, 1900, 0, 0, 0),
(34609, 669, 0, 1, 1, 0, 0, -12996.7, -724.834, 55.9969, 2.19947, 300, 0, 0, 1900, 0, 0, 0),
(351, 783, 0, 1, 1, 0, 0, -13027.4, -827.92, 70.783, 2.85613, 300, 3, 0, 2059, 0, 0, 1),
(365, 783, 0, 1, 1, 0, 0, -13054.2, -809.188, 71.4015, 4.83058, 300, 0, 0, 2059, 0, 0, 0),
(376, 783, 0, 1, 1, 0, 0, -13041.7, -792.05, 72.1446, 2.52068, 300, 3, 0, 2059, 0, 0, 1),
(34902, 783, 0, 1, 1, 0, 0, -13076.4, -602.553, 54.8787, 5.34071, 300, 0, 0, 2059, 0, 0, 0),
(34973, 783, 0, 1, 1, 0, 0, -13072.2, -749.43, 88.7466, 6.19499, 300, 5, 0, 2059, 0, 0, 1),
(35097, 783, 0, 1, 1, 0, 0, -12996.2, -832.353, 70.7177, 4.74729, 300, 3, 0, 2059, 0, 0, 1),
(35200, 783, 0, 1, 1, 0, 0, -13086.1, -773.296, 80.1471, 3.69939, 300, 5, 0, 2059, 0, 0, 1),
(35444, 783, 0, 1, 1, 0, 0, -13054.5, -843.752, 71.3439, 5.84718, 300, 0, 0, 2059, 0, 0, 0),
(35459, 783, 0, 1, 1, 0, 0, -13053.6, -820.605, 70.2765, 5.79449, 300, 5, 0, 2059, 0, 0, 1),
(35510, 783, 0, 1, 1, 0, 0, -13055, -536.844, 93.256, 1.93373, 300, 5, 0, 2059, 0, 0, 1);
UPDATE `quest_template` SET `RequiredRaces` = '1101' WHERE `entry` in (24745,24655,24656,24804,24657,24848,24849,24658,24659,24660,24662,24663,24664,24665,24666);
UPDATE `creature_template` SET `faction_A` = '1801',`faction_H` = '1801' WHERE `entry` in (37172,38328);
UPDATE `quest_template` SET `RequiredRaces` = '690' WHERE `entry` in (24638,24645,24647,24648,24649,24650,24651,24652,24850,24851);
UPDATE `creature_template` SET `faction_A` = '1802',`faction_H` = '1802' WHERE `entry` in (38325);
REPLACE INTO `creature_ai_scripts` VALUES ('2677351', '26773', '8', '0', '100', '1', '50546', '-1', '1000', '1000', '11', '47390', '6', '6', '0', '0', '0', '0', '0', '0', '0', '0', 'ytdb');
UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = '26773';
INSERT INTO `spell_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `dataint`, `x`, `y`, `z`, `o`) VALUES ('47393', '0', '14', '47391', '0', '0', '0', '0', '0', '0');
UPDATE `creature_ai_scripts` SET `action1_param2` = '-1',`action2_type` = '0',`action2_param1` = '0' WHERE `id` =2780851;
UPDATE `creature_ai_scripts` SET `action1_param2` = '-1',`action2_type` = '0',`action2_param1` = '0' WHERE `id` =2712251;
UPDATE `creature_ai_scripts` SET `action1_param2` = '-1',`action2_type` = '0',`action2_param1` = '0' WHERE `id` =2684151;
UPDATE `creature_ai_scripts` SET `action1_param2` = '-1',`action2_type` = '11',`action2_param1` = '3019',`action3_type` = '0',`action3_param1` = '0' WHERE `id` =2077451;
UPDATE `creature_template` SET `minlevel` = 58 WHERE `entry` = 16972;

# cyrex
INSERT IGNORE INTO fishing_loot_template (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (2597, 13889, 10, 0, 1, 1);
INSERT IGNORE INTO skill_fishing_base_level VALUES (2597, 330);

# FIX
UPDATE `creature` SET `id`=21224 WHERE `id`=212240;
UPDATE `creature` SET `id`=21225 WHERE `id`=212250;
UPDATE `creature` SET `id`=21226 WHERE `id`=212260;
UPDATE `creature` SET `id`=21227 WHERE `id`=212270;
UPDATE `creature` SET `id`=21228 WHERE `id`=212280;
UPDATE `creature_template` SET `lootid` = 21224 WHERE `entry` = 21224;
UPDATE `creature_template` SET `lootid` = 21225 WHERE `entry` = 21225;
UPDATE `creature_template` SET `lootid` = 21226 WHERE `entry` = 21226;
UPDATE `creature_template` SET `lootid` = 21227 WHERE `entry` = 21227;
UPDATE `creature_template` SET `lootid` = 21228 WHERE `entry` = 21228;
DELETE FROM `creature_template` WHERE (`entry`=212240);
DELETE FROM `creature_template` WHERE (`entry`=212250);
DELETE FROM `creature_template` WHERE (`entry`=212260);
DELETE FROM `creature_template` WHERE (`entry`=212270);
DELETE FROM `creature_template` WHERE (`entry`=212280);
UPDATE `creature_template` SET `npcflag` = 1 WHERE `entry` = 40405;

# NeatElves
UPDATE `creature_template` SET `gossip_menu_id` = 4665 WHERE `entry` = 375;
UPDATE gossip_menu SET entry = 4665 WHERE entry = 50219;
UPDATE gossip_menu_option SET menu_id = 4665 WHERE menu_id = 50219;
UPDATE locales_gossip_menu_option SET menu_id = 4665 WHERE `menu_id` =50219;
UPDATE `creature_template` SET `gossip_menu_id` = 4649 WHERE `entry` = 913;
DELETE FROM `gossip_menu` WHERE `entry` = 4649 AND `text_id` = 5721;
UPDATE gossip_menu SET entry = 4649 WHERE entry = 913;
DELETE FROM `gossip_menu_option` WHERE `menu_id` = 913;
DELETE FROM `locales_gossip_menu_option` WHERE `menu_id` = 913;
UPDATE `creature_template` SET `gossip_menu_id` = 4047 WHERE `entry` = 658;
INSERT IGNORE INTO `gossip_menu` (`entry`, `text_id`) VALUES (4047, 4937);
DELETE FROM `npc_gossip` WHERE `npc_guid` = 7754;
DELETE FROM `gossip_menu` WHERE `entry` = 4664 AND `text_id` = 3977;
UPDATE `creature_template` SET `gossip_menu_id` = 708 WHERE `entry` = 4974;
UPDATE gossip_menu SET entry = 708, text_id = 1260 WHERE entry = 50177;
UPDATE gossip_menu_option SET menu_id = 708 WHERE menu_id = 50177;
UPDATE locales_gossip_menu_option SET menu_id = 708 WHERE menu_id =50177;
UPDATE `creature_template` SET `gossip_menu_id` = 6821 WHERE `entry` = 15565;
UPDATE gossip_menu SET entry = 6821 WHERE entry = 15565;
UPDATE gossip_menu_option SET menu_id = 6821 WHERE menu_id =15565;
UPDATE locales_gossip_menu_option SET menu_id = 6821 WHERE menu_id =15565;
UPDATE `creature_template` SET `gossip_menu_id` = 6918 WHERE `entry` = 15895;
UPDATE gossip_menu SET entry = 6918 WHERE entry = 15895;
UPDATE gossip_menu_option SET menu_id = 6918 WHERE menu_id =15895;
UPDATE locales_gossip_menu_option SET menu_id = 6918 WHERE menu_id =15895;

# Fix
UPDATE `gameobject` SET `spawntimesecs` = 60 WHERE `guid` = 21671;
UPDATE `creature` SET `phaseMask` = 65535 WHERE `guid` = 131171;
DELETE FROM `creature` WHERE `id`=32498;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`) VALUES
(88280, 32498, 571, 1, 1, 0, 0, 8642.96, 1629.1, 612.451, 4.7822, 300, 0, 0, 42, 0, 0, 0),
(88281, 32498, 571, 1, 1, 0, 0, 8635.43, 1622.43, 615.361, 3.80482, 300, 0, 0, 42, 0, 0, 0),
(88282, 32498, 571, 1, 1, 0, 0, 8636.94, 1616.84, 614.659, 3.42085, 300, 0, 0, 42, 0, 0, 0),
(88283, 32498, 571, 1, 1, 0, 0, 8644.21, 1617.63, 612.057, 1.13446, 300, 0, 0, 42, 0, 0, 0),
(88284, 32498, 571, 1, 1, 0, 0, 8645.07, 1640.29, 611.783, 5.84685, 300, 0, 0, 42, 0, 0, 0),
(88285, 32498, 571, 1, 1, 0, 0, 8546.86, 1438.15, 617.656, 1.3126, 300, 5, 0, 42, 0, 0, 1),
(88286, 32498, 571, 1, 1, 0, 0, 8475.21, 1338.24, 625.365, 0.8012, 300, 5, 0, 42, 0, 0, 1),
(88287, 32498, 571, 1, 1, 0, 0, 8470.1, 1332.62, 625.746, 0.803677, 300, 5, 0, 42, 0, 0, 1),
(88288, 32498, 571, 1, 1, 0, 0, 8475.63, 1334.91, 625.615, 0.829659, 300, 5, 0, 42, 0, 0, 1),
(88289, 32498, 571, 1, 1, 0, 0, 8471.13, 1335.39, 625.615, 0.791092, 300, 5, 0, 42, 0, 0, 1),
(88290, 32498, 571, 1, 1, 0, 0, 8473.08, 1330.67, 625.996, 0.840023, 300, 5, 0, 42, 0, 0, 1),
(88291, 32498, 571, 1, 1, 0, 0, 8640.22, 1612.27, 613.915, 5.77637, 300, 5, 0, 42, 0, 0, 1),
(88292, 32498, 571, 1, 1, 0, 0, 8636.86, 1613.67, 614.54, 6.18542, 300, 5, 0, 42, 0, 0, 1),
(88293, 32498, 571, 1, 1, 0, 0, 8641.49, 1622.66, 613.04, 5.53435, 300, 5, 0, 42, 0, 0, 1),
(88294, 32498, 571, 1, 1, 0, 0, 8647.83, 1636.36, 611.804, 6.2148, 300, 5, 0, 42, 0, 0, 1),
(88295, 32498, 571, 1, 1, 0, 0, 8638.93, 1634.88, 613.804, 5.51188, 300, 5, 0, 42, 0, 0, 1),
(88296, 32498, 571, 1, 1, 0, 0, 8643.77, 1609.97, 614.415, 5.08462, 300, 5, 0, 42, 0, 0, 1),
(88301, 32498, 571, 1, 1, 0, 0, 8549.14, 1319.15, 618.945, 0.189784, 300, 5, 0, 42, 0, 0, 1),
(88302, 32498, 571, 1, 1, 0, 0, 8544.2, 1319.89, 620.32, 2.53498, 300, 5, 0, 42, 0, 0, 1),
(88303, 32498, 571, 1, 1, 0, 0, 8538.46, 1314.63, 621.32, 5.87422, 300, 5, 0, 42, 0, 0, 1),
(88304, 32498, 571, 1, 1, 0, 0, 8539.76, 1327.07, 620.945, 3.42248, 300, 5, 0, 42, 0, 0, 1),
(88305, 32498, 571, 1, 1, 0, 0, 8548.75, 1330.03, 620.195, 4.07015, 300, 5, 0, 42, 0, 0, 1),
(88306, 32498, 571, 1, 1, 0, 0, 8557.48, 1332.58, 619.57, 0.849407, 300, 5, 0, 42, 0, 0, 1),
(88307, 32498, 571, 1, 1, 0, 0, 8530.83, 1320.87, 622.573, 1.42001, 300, 5, 0, 42, 0, 0, 1),
(88308, 32498, 571, 1, 1, 0, 0, 8531.61, 1312.19, 623.059, 4.7822, 300, 0, 0, 42, 0, 0, 0),
(88309, 32498, 571, 1, 1, 0, 0, 8538.56, 1307.79, 620.498, 0.069813, 300, 0, 0, 42, 0, 0, 0),
(88310, 32498, 571, 1, 1, 0, 0, 8551.89, 1336.27, 620.368, 2.46091, 300, 0, 0, 42, 0, 0, 0),
(88311, 32498, 571, 1, 1, 0, 0, 8537.64, 1340.67, 619.616, 3.08923, 300, 0, 0, 42, 0, 0, 0),
(88312, 32498, 571, 1, 1, 0, 0, 8553.58, 1325.1, 618.844, 0.226893, 300, 0, 0, 42, 0, 0, 0),
(88313, 32498, 571, 1, 1, 0, 0, 8530.59, 1331.7, 621.181, 3.29867, 300, 0, 0, 42, 0, 0, 0),
(71588, 32498, 571, 1, 1, 0, 0, 8386.64, 564.169, 586.412, 3.72971, 180, 5, 0, 42, 0, 0, 1),
(71592, 32498, 571, 1, 1, 0, 0, 8382.54, 577.684, 582.168, 3.78736, 180, 0, 0, 42, 0, 0, 0),
(71602, 32498, 571, 1, 1, 0, 0, 8379.37, 573.745, 584.906, 6.17846, 180, 0, 0, 42, 0, 0, 0),
(71603, 32498, 571, 1, 1, 0, 0, 8379.25, 564.979, 588.973, 5.42797, 180, 0, 0, 42, 0, 0, 0),
(71604, 32498, 571, 1, 1, 0, 0, 8384.08, 560.905, 588.74, 1.18682, 180, 0, 0, 42, 0, 0, 0),
(71713, 32498, 571, 1, 1, 0, 0, 8389.61, 570.858, 583.317, 3.35103, 180, 0, 0, 42, 0, 0, 0),
(71715, 32498, 571, 1, 1, 0, 0, 8386.67, 578.415, 580.333, 0.226893, 180, 0, 0, 42, 0, 0, 0),
(71716, 32498, 571, 1, 1, 0, 0, 8383.41, 575.184, 582.557, 2.43528, 180, 5, 0, 42, 0, 0, 1),
(71759, 32498, 571, 1, 1, 0, 0, 8384.82, 569.1, 585.182, 4.67648, 180, 5, 0, 42, 0, 0, 1),
(71760, 32498, 571, 1, 1, 0, 0, 8380.8, 569.62, 586.557, 3.1921, 180, 5, 0, 42, 0, 0, 1),
(71761, 32498, 571, 1, 1, 0, 0, 8379.06, 559.81, 590.912, 1.31621, 180, 5, 0, 42, 0, 0, 1),
(71765, 32498, 571, 1, 1, 0, 0, 8386.66, 582.497, 577.682, 4.21491, 180, 5, 0, 42, 0, 0, 1),
(71768, 32498, 571, 1, 1, 0, 0, 8377.7, 580.162, 582.057, 4.00787, 180, 5, 0, 42, 0, 0, 1),
(71769, 32498, 571, 1, 1, 0, 0, 8377.12, 559.384, 591.412, 2.22013, 180, 5, 0, 42, 0, 0, 1),
(71770, 32498, 571, 1, 1, 0, 0, 8377.24, 563.136, 590.412, 5.31316, 180, 5, 0, 42, 0, 0, 1),
(71772, 32498, 571, 1, 1, 0, 0, 8385.63, 585.82, 576.057, 0.699627, 180, 5, 0, 42, 0, 0, 1),
(71774, 32498, 571, 1, 1, 0, 0, 8388.4, 587.454, 574.932, 2.99164, 180, 5, 0, 42, 0, 0, 1),
(71777, 32498, 571, 1, 1, 0, 0, 8385.06, 588.376, 574.932, 2.58604, 180, 5, 0, 42, 0, 0, 1),
(71781, 32498, 571, 1, 1, 0, 0, 8631.68, 1173.13, 573.39, 4.9001, 180, 5, 0, 42, 0, 0, 1),
(71782, 32498, 571, 1, 1, 0, 0, 8624.74, 1173.52, 570.265, 0.28376, 180, 5, 0, 42, 0, 0, 1),
(71783, 32498, 571, 1, 1, 0, 0, 8628.26, 1172.19, 572.39, 0.308635, 180, 5, 0, 42, 0, 0, 1),
(71784, 32498, 571, 1, 1, 0, 0, 8628.69, 1177.29, 572.64, 5.38471, 180, 5, 0, 42, 0, 0, 1),
(71785, 32498, 571, 1, 1, 0, 0, 8372.09, 1095.39, 583.698, 1.23918, 180, 0, 0, 42, 0, 0, 0),
(75372, 32498, 571, 1, 1, 0, 0, 8368.39, 1089.22, 585.682, 2.89725, 180, 0, 0, 42, 0, 0, 0),
(75373, 32498, 571, 1, 1, 0, 0, 8364.5, 1095.3, 588.201, 0.785398, 180, 0, 0, 42, 0, 0, 0),
(75374, 32498, 571, 1, 1, 0, 0, 8370, 1100.53, 585.695, 4.29351, 180, 0, 0, 42, 0, 0, 0),
(75375, 32498, 571, 1, 1, 0, 0, 8368.93, 1104.68, 586.896, 5.51524, 180, 0, 0, 42, 0, 0, 0),
(75376, 32498, 571, 1, 1, 0, 0, 8358.28, 1103.32, 591.282, 0.087266, 180, 0, 0, 42, 0, 0, 0),
(75384, 32498, 571, 1, 1, 0, 0, 8357.64, 1113.15, 592.535, 4.85769, 180, 5, 0, 42, 0, 0, 1),
(75385, 32498, 571, 1, 1, 0, 0, 8372.63, 1106.68, 585.296, 6.12005, 180, 5, 0, 42, 0, 0, 1),
(75387, 32498, 571, 1, 1, 0, 0, 8357.28, 1097.21, 591.179, 2.28797, 180, 5, 0, 42, 0, 0, 1),
(75399, 32498, 571, 1, 1, 0, 0, 8363.85, 1090.8, 588.304, 5.74558, 180, 5, 0, 42, 0, 0, 1),
(75400, 32498, 571, 1, 1, 0, 0, 8355.08, 1086.67, 590.804, 4.73687, 180, 5, 0, 42, 0, 0, 1),
(75401, 32498, 571, 1, 1, 0, 0, 8357.04, 1090.63, 590.929, 3.4497, 180, 5, 0, 42, 0, 0, 1),
(75402, 32498, 571, 1, 1, 0, 0, 8369.22, 1094.38, 585.332, 4.31629, 180, 5, 0, 42, 0, 0, 1),
(75403, 32498, 571, 1, 1, 0, 0, 8377.49, 1103.85, 581.796, 4.95078, 180, 5, 0, 42, 0, 0, 1),
(75415, 32498, 571, 1, 1, 0, 0, 8363.77, 1109.43, 590.035, 0.55532, 180, 5, 0, 42, 0, 0, 1),
(75420, 32498, 571, 1, 1, 0, 0, 8352.16, 1098.17, 592.179, 5.33992, 180, 5, 0, 42, 0, 0, 1),
(75421, 32498, 571, 1, 1, 0, 0, 8362.13, 1101.22, 589.785, 3.83602, 180, 5, 0, 42, 0, 0, 1),
(75422, 32498, 571, 1, 1, 0, 0, 8898.51, 1379.55, 41.1093, 4.7822, 180, 0, 0, 42, 0, 0, 0),
(75427, 32498, 571, 1, 1, 0, 0, 8905.74, 1375.35, 46.6496, 0.401426, 180, 0, 0, 42, 0, 0, 0),
(75428, 32498, 571, 1, 1, 0, 0, 8909.96, 1366.63, 56.1023, 5.044, 180, 0, 0, 42, 0, 0, 0),
(75429, 32498, 571, 1, 1, 0, 0, 8902.91, 1373.27, 49.4274, 2.28638, 180, 0, 0, 42, 0, 0, 0),
(75430, 32498, 571, 1, 1, 0, 0, 8916.59, 1359.54, 56.8697, 1.51844, 180, 0, 0, 42, 0, 0, 0),
(75431, 32498, 571, 1, 1, 0, 0, 8902.52, 1357.58, 69.8627, 4.60767, 180, 0, 0, 42, 0, 0, 0),
(75432, 32498, 571, 1, 1, 0, 0, 8901.32, 1375.92, 46.2913, 5.48604, 180, 5, 0, 42, 0, 0, 1),
(75433, 32498, 571, 1, 1, 0, 0, 8911.79, 1361.01, 59.6254, 4.94233, 180, 5, 0, 42, 0, 0, 1),
(75434, 32498, 571, 1, 1, 0, 0, 8904.95, 1356.16, 67.7504, 4.49959, 180, 5, 0, 42, 0, 0, 1),
(75435, 32498, 571, 1, 1, 0, 0, 8919.34, 1354.89, 57.3754, 4.37721, 180, 5, 0, 42, 0, 0, 1),
(75436, 32498, 571, 1, 1, 0, 0, 8913.78, 1359.25, 59.3754, 3.20687, 180, 5, 0, 42, 0, 0, 1),
(75437, 32498, 571, 1, 1, 0, 0, 8908.78, 1357.73, 63.8754, 1.46309, 180, 5, 0, 42, 0, 0, 1);

# NeatElves
UPDATE `creature_template` SET `faction_A` = '1813',`faction_H` = '1813' WHERE `entry` =18695;
UPDATE `creature_template` SET `faction_A` = '1793',`faction_H` = '1793' WHERE `entry` =18697;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '0',`groupid` = '1' WHERE `entry` =18693 AND `item` =31163;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '0',`groupid` = '1' WHERE `entry` =18693 AND `item` =31164;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '0',`groupid` = '1' WHERE `entry` =18693 AND `item` =31165;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '0',`groupid` = '1' WHERE `entry` =18693 AND `item` =31166;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '0',`groupid` = '1' WHERE `entry` =17144 AND `item` =31188;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '0',`groupid` = '1' WHERE `entry` =17144 AND `item` =31189;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '0',`groupid` = '1' WHERE `entry` =17144 AND `item` =31191;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '0',`groupid` = '1' WHERE `entry` =17144 AND `item` =31192;

# Fix
DELETE FROM `gameobject` WHERE `id`=300236;
INSERT INTO `gameobject` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecs`,`animprogress`,`state`) VALUES
(36714, 300236, 571, 1, 1, 6373.68, 1660.33, 555.395, 5.43099, 0, 0, 0.413319, -0.910586, 30, 100, 1),
(4978, 300236, 571, 1, 1, 6317.47, 1815.91, 509.784, 1.2841, 0, 0, 0.598837, 0.800871, 30, 100, 1),
(4983, 300236, 571, 1, 1, 6426.2, 1721.81, 510.545, 0.75395, 0, 0, 0.36811, 0.929782, 30, 100, 1),
(4986, 300236, 571, 1, 1, 6473.61, 1801.44, 527.226, 2.78107, 0, 0, 0.983797, 0.179287, 30, 100, 1);
DELETE FROM creature_template_addon WHERE entry=30879;
INSERT INTO creature_template_addon (`entry`,`auras`) VALUES (30879,'57971 0');
UPDATE `creature_template` SET `InhabitType`=5 WHERE `entry`=30879;
UPDATE `creature_template` SET `spell1`=50232,`spell2`=50248,`spell3`=50240,`spell4`=50253 WHERE `entry`=27756;
UPDATE `creature_template` SET `spell1`=49840,`spell2`=49838,`spell3`=49592,`spell4`=0 WHERE `entry`=27755;
UPDATE `creature_template` SET `spell1`=50328,`spell2`=50341,`spell3`=50344 WHERE `entry`=27692;
UPDATE `creature_template` SET `InhabitType`=5,`speed_run`=1,`speed_walk`=1.2 WHERE `entry` IN (27756,27755,27692);

# WDB
INSERT IGNORE INTO `npc_text` SET `ID`=14563,`prob0`=1,`text0_0`='',`text0_1`='I know all is not well in Shadowglen, but coming back to these woods is always like coming back home.$B$BEver peaceful. Ever pure.',`lang0`=0,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=15460,`prob0`=1,`text0_0`='Have you come to join the hunt, $N?',`text0_1`='Have you come to join the hunt, $N?',`lang0`=0,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=15526,`prob0`=1,`text0_0`='',`text0_1`='Can I help you with something?',`lang0`=0,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=15531,`prob0`=1,`text0_0`='Simmer say Gordo got guts, but got no brains.  Why he mean?',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=1,`text1_0`='Gordo like picking flowers.  Pick flowers kind of like killing.',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=1,`text2_0`='It drafty out here.',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=1,`text3_0`='Johaan say Gordo need a tailor to fix Gordo tummy.',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=15669,`prob0`=1,`text0_0`='Lok''tar, $c.',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=1,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=16215,`prob0`=1,`text0_0`='Operation: Gnomeregan was a success. Sure, that dastardly Thermaplugg had an unforseen trick up his sleeve, but we have him on the run! It''s only a matter of time before Gnomeregan is cleaned up and in our hands again!',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=5,`em0_2`=0,`em0_3`=1,`em0_4`=0,`em0_5`=1,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=16218,`prob0`=1,`text0_0`='',`text0_1`='The end of Operaton: Gnomeregan meant a chance to rest for most people. However, my assistants and I have been caring for the wounded and for the survivors that the S.A.F.E. teams rescue from inside the city.',`lang0`=0,`em0_0`=0,`em0_1`=1,`em0_2`=0,`em0_3`=1,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=16230,`prob0`=1,`text0_0`='',`text0_1`='I''m sorry, I can''t offer you training. You''ll have to find someone more familiar with your skills.',`lang0`=0,`em0_0`=0,`em0_1`=274,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=16509,`prob0`=1,`text0_0`='If you want to hire a gryphon, you''ve come to the right place.',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=1,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=16559,`prob0`=1,`text0_0`='Hello, $c!$B$BOrgrimmar''s skyway is the center of the world. The north zeppelin tower will take you to Stranglethorn or Undercity. The south tower wll take you to Thunderbluff or all the way to Northrend.$B$BFlight Master Doras can send you all over Kalimdor - at least, anyplace you''ve already explored.',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=5,`em0_2`=0,`em0_3`=1,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=16570,`prob0`=1,`text0_0`='Are you here to train, hunter?',`text0_1`='Are you here to train, hunter?',`lang0`=0,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=16583,`prob0`=1,`text0_0`='I must have lived a charmed life, $N.  To return to the world as a member of the Forsaken and the Apothecary Society... I couldn''t have asked for a more suitable fate.',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=16641,`prob0`=1,`text0_0`='Welcome to Stormwind, $c.',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=1,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=16787,`prob0`=1,`text0_0`='I''ve heard much about you, $N.  The world needs people like you now more than ever.',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=1,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=16981,`prob0`=1,`text0_0`='With Stormwind''s park district destroyed by Deathwing''s pass over the city, we''re returning to Darnassus for a time.',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=16995,`prob0`=1,`text0_0`='Torben Zapblast, teleportation solutions engineer at your service!',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=5,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=16998,`prob0`=1,`text0_0`='There will be more time to talk once we get back to the surface safely.',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=1,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=17035,`prob0`=1,`text0_0`='',`text0_1`='Are you here to help the cause? Mount Hyjal burns!',`lang0`=0,`em0_0`=0,`em0_1`=6,`em0_2`=0,`em0_3`=5,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=17128,`prob0`=1,`text0_0`='Herbalism allows you to locate and gather herbs from the wild. These can be sold at the auction house or used to support the Alchemy or Inscription professions.
\

\
Skilled herbalists can also use their knowledge of the earth to heal themselves.',`text0_1`='Herbalism allows you to locate and gather herbs from the wild. These can be sold at the auction house or used to support the Alchemy or Inscription professions.
\

\
Skilled herbalists can also use their knowledge of the earth to heal themselves.',`lang0`=0,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=17131,`prob0`=1,`text0_0`='Alchemy allows you to use herbs and other materials to create a wide variety of useful elixirs, potions, oils, flasks and cauldrons. You''ll also gain greater, longer-lasting benefits when using your own elixirs and flasks.
\

\
Highly skilled alchemists may also transmute elemental materials and certain minerals for use by other production professions.
\

\
Alchemy pairs well with Herbalism as it allows you to gather your own herbs.',`text0_1`='Alchemy allows you to use herbs and other materials to create a wide variety of useful elixirs, potions, oils, flasks and cauldrons. You''ll also gain greater, longer-lasting benefits when using your own elixirs and flasks.
\

\
Highly skilled alchemists may also transmute elemental materials and certain minerals for use by other production professions.
\

\
Alchemy pairs well with Herbalism as it allows you to gather your own herbs.',`lang0`=0,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=17133,`prob0`=1,`text0_0`='Enchanting allows you to enchant items with a wide variety of beneficial effects, as well as disenchant items and create magical wands and oils.
\

\
Highly skilled enchanters can even enchant their own rings, which no one else may do.
\

\
Most raw materials for Enchanting must be gathered via disenchanting, a process which destroys the disenchanted item. For this reason the profession pairs well with Tailoring, as you can disenchant the magical Tailoring items you create for raw materials.
\

\
Enchanters may also place enchantments upon vellum, which allows the enchantment to be sold or saved for later use. Vellum and other useful Enchanting materials may be purchased from Enchanting vendors.',`text0_1`='Enchanting allows you to enchant items with a wide variety of beneficial effects, as well as disenchant items and create magical wands and oils.
\

\
Highly skilled enchanters can even enchant their own rings, which no one else may do.
\

\
Most raw materials for Enchanting must be gathered via disenchanting, a process which destroys the disenchanted item. For this reason the profession pairs well with Tailoring, as you can disenchant the magical Tailoring items you create for raw materials.
\

\
Enchanters may also place enchantments upon vellum, which allows the enchantment to be sold or saved for later use. Vellum and other useful Enchanting materials may be purchased from Enchanting vendors.',`lang0`=0,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=17134,`prob0`=1,`text0_0`='Engineering allows you to construct a wide variety of useful, amazing, and just plain weird items like rifles and scopes, motorcycles, and mechanical squirrels. However, many of these are only usable by yourself or other engineers, such as special goggles, mechanical additions to belts, boots, gloves and cloaks, and flying machines.
\

\
Most raw Engineering materials are metals gathered by Mining, so the two professions pair well.
\

\
Many creations require the use of a Blacksmith Hammer; this and other necessary materials, such as gun stocks or flux, may be purchased from trade or Engineering vendors.',`text0_1`='Engineering allows you to construct a wide variety of useful, amazing, and just plain weird items like rifles and scopes, motorcycles, and mechanical squirrels. However, many of these are only usable by yourself or other engineers, such as special goggles, mechanical additions to belts, boots, gloves and cloaks, and flying machines.
\

\
Most raw Engineering materials are metals gathered by Mining, so the two professions pair well.
\

\
Many creations require the use of a Blacksmith Hammer; this and other necessary materials, such as gun stocks or flux, may be purchased from trade or Engineering vendors.',`lang0`=0,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=17135,`prob0`=1,`text0_0`='Inscription allows you to create magical scrolls, glyphs, off-hand tomes, Darkmoon cards, and even recipes for other professions.
\

\
Many raw materials for Inscription come from milling herbs gathered by Herbalism, so the two professions pair well.
\

\
You''ll need to a Virtuoso Inking Set for inscribing things; this and other necessary materials, such as parchment, may be purchased from Inscription vendors.',`text0_1`='Inscription allows you to create magical scrolls, glyphs, off-hand tomes, Darkmoon cards, and even recipes for other professions.
\

\
Many raw materials for Inscription come from milling herbs gathered by Herbalism, so the two professions pair well.
\

\
You''ll need to a Virtuoso Inking Set for inscribing things; this and other necessary materials, such as parchment, may be purchased from Inscription vendors.',`lang0`=0,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=17136,`prob0`=1,`text0_0`='Jewelcrafting allows you to fashion magical rings, amulets, and trinkets as well as cut gems.
\

\
The gems used in Jewelcrafting may be purchased or acquired via Prospecting from ore gathered by Mining; for this reason the two professions pair well.
\

\
Most Jewelcrafting designs also require a Jeweler''s Kit while more advanced creations require a Simple Grinder; these may be purchased from Jewelcrafting vendors.',`text0_1`='Jewelcrafting allows you to fashion magical rings, amulets, and trinkets as well as cut gems.
\

\
The gems used in Jewelcrafting may be purchased or acquired via Prospecting from ore gathered by Mining; for this reason the two professions pair well.
\

\
Most Jewelcrafting designs also require a Jeweler''s Kit while more advanced creations require a Simple Grinder; these may be purchased from Jewelcrafting vendors.',`lang0`=0,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=17138,`prob0`=1,`text0_0`='Tailoring allows you to fashion armor, cloaks, clothing, bags, spellthread, and other similar items from various types of cloth, which can be purchased or taken from slain humanoid enemies. Additional necessary materials such as threads and dyes can be purchased from trade or Tailoring vendors.
\

\
Highly skilled tailors can also upgrade their cloaks with magical embroidery.
\

\
Enchanters are often tailors as well, since they can disenchant the magical items they create.',`text0_1`='Tailoring allows you to fashion armor, cloaks, clothing, bags, spellthread, and other similar items from various types of cloth, which can be purchased or taken from slain humanoid enemies. Additional necessary materials such as threads and dyes can be purchased from trade or Tailoring vendors.
\

\
Highly skilled tailors can also upgrade their cloaks with magical embroidery.
\

\
Enchanters are often tailors as well, since they can disenchant the magical items they create.',`lang0`=0,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=17176,`prob0`=1,`text0_0`='For too long we have ignored the secrets of the Arcane.$B$BSadly, they will remain a secret to you.',`text0_1`='For too long we have ignored the secrets of the Arcane.$B$BSadly, they will remain a secret to you.',`lang0`=1,`em0_0`=0,`em0_1`=274,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=17180,`prob0`=1,`text0_0`='Sorry, $c. $B$BYour grasp of the arcane isn''t strong enough to understand portal magic.',`text0_1`='Sorry, $c. $B$BYour grasp of the arcane isn''t strong enough to understand portal magic.',`lang0`=0,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=17194,`prob0`=1,`text0_0`='Through this portal, Tol Barad awaits.',`text0_1`='Through this portal, Tol Barad awaits.',`lang0`=0,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=17266,`prob0`=1,`text0_0`='Have you come for training, hunter?',`text0_1`='Have you come for training, hunter?',`lang0`=0,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=17349,`prob0`=1,`text0_0`='',`text0_1`='This is where we gather the surivors to prepare them for decontamination. From there, it''s just a short trip to the surface!',`lang0`=0,`em0_0`=0,`em0_1`=1,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=17350,`prob0`=1,`text0_0`='I''m sure I don''t need to remind you to stay alert down here.',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=1,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=17630,`prob0`=1,`text0_0`='',`text0_1`='Ya, mon, for now. Dey not be too keen on teachin'' many more o'' our kind, but dey be helpin'' us ''long as we be keepin'' de life o'' de isles flourishin''. When Gonk left after de fall o'' Zalazane, he be tellin'' us how ta contact him if de other loa don''t keep dey end o'' de bargain.$B$BI be hopin'' it never come ta dat... but just in case, we be openin'' up channels wit dat Cenarion Circle group. $B$B<Zen''tabra cackles madly.>$B$BOh, ya shoulda seen de look on dat night elf''s face....',`lang0`=0,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=17631,`prob0`=1,`text0_0`='',`text0_1`='We been workin'' wit de spirits for many moons now, mon, but many o'' us already knew de forms o'' de loa we served before. It not be easy, but de Emerald Dream be a powerful teacher by itself-havin'' de spirits demselves also teachin'' ya... it hurries tings along.$B$BDat don''t mean ''twas easy keepin'' safe from Zalazane. Even wit our new tricks combined wit de loa givin'' what help dey could, we lost a few bruddas and sistas over de years ta his voodoo and mindless servants. But we kept de life o'' de isles alive, and when Vol''jin and de Darkspears returned, we knew just how ta take Zalazane down.',`lang0`=0,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=17632,`prob0`=1,`text0_0`='',`text0_1`='<Zen''tabra laughs.>$B$BDe other loa, ''specially Shirvallah, did not much care for dis plan. Dey still be wantin'' us ta work just for one o'' dem at a time, not wit all de spirits at once. But Gonk had forced dere hands, and dey knew it was de only way ta save de isles while Zalazane still ruled.$B$BI be tinkin'' dat Gonk did not care for de other loa much either. He be teasin'' de other loa all de time while we be learnin'' from dem.',`lang0`=0,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=17633,`prob0`=1,`text0_0`='',`text0_1`='Zalazane''s mindless servants were killin'' all de beasts o'' de isles, burnin'' up de trees and plants too. Gonk needed us ta save de life on de isles. But since we not be able ta draw upon de power o'' de loa wit Zalazane in power, Gonk be showin'' us a new way ta connect wit ALL de spirits o'' nature, ta work WIT de spirits, not just be servin'' a single loa at a time. $B$BIt be difficult at first, ya, mon, but Gonk be showin'' us how ta also reach inta de Emerald Dream ta speak wit de spirits and learn from dem directly!',`lang0`=0,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=17634,`prob0`=1,`text0_0`='',`text0_1`='<Zen''tabra''s head snaps back to you, her eyes bright and her smile wide around her tusks.>$B$B''Twas a jungle bigger and wilder dan I ever seen! And before me, de ancient raptor loa only talked about in Zandalari tales-Gonk, de Great Hunter! $B$BDe raptor spirit spoke ta me, told me he had brought me spirit to a place called de Emerald Dream. De spirit had been trapped, like de other loa on de Echo Isles, by Zalazane''s magic. But Gonk, bein'' an ancient spirit, was able ta reach across and bring me spirit ta him, even through Zalazane''s voodoo. ',`lang0`=0,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=17635,`prob0`=1,`text0_0`='',`text0_1`='<Zen''tabra closes her eyes and shakes her head.>$B$BWhen Vol''jin called for everyone ta flee, we... we couldn''t face de tribe after failing dem so badly. So, we fled south, ta de untamed jungle islands.$B$BDe wilds claimed a few o'' us dat first night. We found safety in a deep cave in de center o'' de isle, but me dreams dere were not peaceful: I be havin'' a vision!',`lang0`=0,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=17636,`prob0`=1,`text0_0`='',`text0_1`='Some o'' us be loa priests, witch doctors before. Like Zalazane...$B$B<Zen''tabra''s face grows hard as her gaze drifts south.>$B$BWe thought de spirits be angry wit us; we did not suspect it be Zalazane slowly cuttin'' us off from dem. We knew he be strong, but not dat strong... and by de time his voodoo had reached de other isles, we was powerless ta stop ''im. ',`lang0`=0,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=17637,`prob0`=1,`text0_0`='',`text0_1`='<Zen''tabra laughs.>$B$BWe spread dose rumors, mon. Keep''n Zalazane and others off our tails. Don''t be believin'' everyting ya hear.$B$BNo, we be new ta de craft, only learnin'' a few years ago. But in some ways, we spent our lives preparin'' ta answer de call....',`lang0`=0,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=17733,`prob0`=1,`text0_0`='',`text0_1`='That statue''s provin'' ta be quite the pain.  I thought we could lift it up an'' outta the water with a crane an'' some well timed explosives.  But Wick thought we''d be safer an'' do less damage by rolling it up this ramp.$B$BNow look at it...  We''ve got it angled all wrong.  An'' once we get it to the top, then what?$B$BI''ve gotta bad feeling we''re gonna to be here a long time.  A real long time...',`lang0`=7,`em0_0`=0,`em0_1`=1,`em0_2`=3,`em0_3`=5,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=17735,`prob0`=1,`text0_0`='You think after doing such good work on Stormwind Harbor I''d get a bit of slack from this dwarf...$B$BI just want to get this statue up the ramp and back in place as fast as possible.  But she''s got a complaint every step of the way.  Her solution to every problem is to blow it up.  It feels like I''m working with a gnome or a goblin.  But at least they''d be sober.$B$BLook at our work crew, no discipline.  You know why?  Because she undermines me!$B$BA bad attitude, a lazy crew... This isn''t going to be a quick fix at all.',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=1,`em0_2`=3,`em0_3`=5,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `page_text` VALUES ('3715', 'Tiffin Ellerian Wrynn \r\nQueen of Stormwind \r\nFair and just, a wit as quick as her smile. \r\nMay the Light inherit your warmth, for our world grows cold in your absence. ', '0',13329);

# Fix
UPDATE `creature` SET `map` = 0 WHERE `guid` = 19173;
UPDATE `creature` SET `phaseMask` = 65535 WHERE `guid` = 131171;
UPDATE `quest_template` SET `ReqCreatureOrGOId1` = '34956',`ReqCreatureOrGOId2` = '34716',`ReqSpellCast1` = '0' WHERE `entry` =14096;

# NeatElves
REPLACE INTO `db_script_string` (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`) VALUES
(2000000449, 'I yield to you.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2000000450, 'Prepare yourself!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2000000451, 'Let it begin!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
REPLACE INTO `creature_ai_scripts` VALUES ('3356251', '33562', '8', '0', '100', '1', '39996', '-1', '5000', '5000', '13', '100', '6', '0', '2', '14', '0', '0', '0', '0', '0', '0', 'ytdb');
UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = '33562';
REPLACE INTO `creature_ai_scripts` VALUES ('3356151', '33561', '8', '0', '100', '1', '39996', '-1', '5000', '5000', '13', '100', '6', '0', '2', '14', '0', '0', '0', '0', '0', '0', 'ytdb');
UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = '33561';
REPLACE INTO `creature_ai_scripts` VALUES ('3356451', '33564', '8', '0', '100', '1', '39996', '-1', '5000', '5000', '13', '100', '6', '0', '2', '14', '0', '0', '0', '0', '0', '0', 'ytdb');
UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = '33564';
REPLACE INTO `creature_ai_scripts` VALUES ('3355851', '33558', '8', '0', '100', '1', '39996', '-1', '5000', '5000', '13', '100', '6', '0', '2', '14', '0', '0', '0', '0', '0', '0', 'ytdb');
UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = '33558';
REPLACE INTO `creature_ai_scripts` VALUES ('3355951', '33559', '8', '0', '100', '1', '39996', '-1', '5000', '5000', '13', '100', '6', '0', '2', '14', '0', '0', '0', '0', '0', '0', 'ytdb');
UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = '33559';
REPLACE INTO `creature_ai_scripts` VALUES ('3338451', '33384', '8', '0', '100', '1', '39996', '-1', '5000', '5000', '13', '100', '6', '0', '2', '14', '0', '0', '0', '0', '0', '0', 'ytdb');
UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = '33384';
REPLACE INTO `creature_ai_scripts` VALUES ('3338351', '33383', '8', '0', '100', '1', '39996', '-1', '5000', '5000', '13', '100', '6', '0', '2', '14', '0', '0', '0', '0', '0', '0', 'ytdb');
UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = '33383';
REPLACE INTO `creature_ai_scripts` VALUES ('3338251', '33382', '8', '0', '100', '1', '39996', '-1', '5000', '5000', '13', '100', '6', '0', '2', '14', '0', '0', '0', '0', '0', '0', 'ytdb');
UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = '33382';
REPLACE INTO `creature_ai_scripts` VALUES ('3328551', '33285', '8', '0', '100', '1', '39996', '-1', '5000', '5000', '13', '100', '6', '0', '2', '14', '0', '0', '0', '0', '0', '0', 'ytdb');
UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = '33285';
REPLACE INTO `creature_ai_scripts` VALUES ('3330651', '33306', '8', '0', '100', '1', '39996', '-1', '5000', '5000', '13', '100', '6', '0', '2', '14', '0', '0', '0', '0', '0', '0', 'ytdb');
UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = '33306';
REPLACE INTO `creature_ai_texts` VALUES ('-335621', 'I have been defeated. Good fight!', '', '', '', '', '', '', '', '', '0', '0', '0', '0', 'ytdb');
REPLACE INTO `creature_ai_scripts` VALUES ('3356252', '33562', '2', '0', '100', '1', '2', '1', '5000', '5000', '1', '-335621', '0', '0', '2', '35', '0', '0', '11', '62724', '6', '6', 'ytdb');
REPLACE INTO `creature_ai_scripts` VALUES ('3356152', '33561', '2', '0', '100', '1', '2', '1', '5000', '5000', '1', '-335621', '0', '0', '2', '35', '0', '0', '11', '62724', '6', '6', 'ytdb');
REPLACE INTO `creature_ai_scripts` VALUES ('3356452', '33564', '2', '0', '100', '1', '2', '1', '5000', '5000', '1', '-335621', '0', '0', '2', '35', '0', '0', '11', '62724', '6', '6', 'ytdb');
REPLACE INTO `creature_ai_scripts` VALUES ('3355852', '33558', '2', '0', '100', '1', '2', '1', '5000', '5000', '1', '-335621', '0', '0', '2', '35', '0', '0', '11', '62724', '6', '6', 'ytdb');
REPLACE INTO `creature_ai_scripts` VALUES ('3355952', '33559', '2', '0', '100', '1', '2', '1', '5000', '5000', '1', '-335621', '0', '0', '2', '35', '0', '0', '11', '62724', '6', '6', 'ytdb');
REPLACE INTO `creature_ai_scripts` VALUES ('3338452', '33384', '2', '0', '100', '1', '2', '1', '5000', '5000', '1', '-335621', '0', '0', '2', '35', '0', '0', '11', '62724', '6', '6', 'ytdb');
REPLACE INTO `creature_ai_scripts` VALUES ('3338352', '33383', '2', '0', '100', '1', '2', '1', '5000', '5000', '1', '-335621', '0', '0', '2', '35', '0', '0', '11', '62724', '6', '6', 'ytdb');
REPLACE INTO `creature_ai_scripts` VALUES ('3338252', '33382', '2', '0', '100', '1', '2', '1', '5000', '5000', '1', '-335621', '0', '0', '2', '35', '0', '0', '11', '62724', '6', '6', 'ytdb');
REPLACE INTO `creature_ai_scripts` VALUES ('3328552', '33285', '2', '0', '100', '1', '2', '1', '5000', '5000', '1', '-335621', '0', '0', '2', '35', '0', '0', '11', '62724', '6', '6', 'ytdb');
REPLACE INTO `creature_ai_scripts` VALUES ('3330652', '33306', '2', '0', '100', '1', '2', '1', '5000', '5000', '1', '-335621', '0', '0', '2', '35', '0', '0', '11', '62724', '6', '6', 'ytdb');
UPDATE `creature_template` SET `gossip_menu_id` = '10472' WHERE `entry` =33383;
DELETE FROM `gossip_menu` WHERE `entry` = 10471 AND `text_id` = 14492;

# TC
INSERT IGNORE INTO `conditions` (SourceTypeOrReferenceId, SourceGroup, SourceEntry, ElseGroup, ConditionTypeOrReference, ConditionValue1, ConditionValue2, ConditionValue3, ErrorTextId, ScriptName, COMMENT) VALUES 
(13,0,57963,0,18,1,27656,0,0,'',NULL);
INSERT IGNORE INTO `conditions` (SourceTypeOrReferenceId,SourceGroup,SourceEntry,ConditionTypeOrReference,ConditionValue1,ConditionValue2) VALUES
(21,27756,50253,13,2,3), -- Ruby Drake
(21,27755,49592,13,2,3), -- Amber Drake
(21,27692,50344,13,2,3); -- Esmerald Drake

DELETE FROM `creature_text` WHERE `entry`=27656;
INSERT INTO `creature_text` (entry,groupid,id,text,type,comment) VALUES
(27656,0,0,'You brash interlopers are out of your element! I will ground you!',1,'Boss Eregos - Aggro'),
(27656,1,0,'Such insolence... such arrogance... must be PUNISHED!',1,'Boss Eregos - Enrage'),
(27656,2,0,'Savor this small victory, foolish little creatures. You and your dragon allies have won this battle. But we will win... the Nexus War.',1,'Boss Eregos - Death');
UPDATE `creature_template` SET `AIName`= 'SmartAI' WHERE `entry`=27990;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (27990,2799000,2799001);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(27990,0,0,0,62,0,100,0,10199,0,0,0,80,2799000,0,0,0,0,0,1,0,0,0,0,0,0,0, 'On gossip option select run script'),
(27990,0,1,0,62,0,100,0,10199,1,0,0,80,2799001,0,0,0,0,0,1,0,0,0,0,0,0,0, 'On gossip option select run script'),
-- horde quest script
(2799000,9,0,0,0,0,100,0,0,0,0,0,81,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Turn off Gossip & Questgiver flags'),
(2799000,9,1,0,0,0,100,0,0,0,0,0,81,0,0,0,0,0,0,9,26917,0,10,0,0,0,0, 'Turn of Gossip & Questgiver flags for Alexstrasza'),
(2799000,9,2,0,0,0,100,0,2000,2000,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Say text 0'),
(2799000,9,3,0,0,0,100,0,4000,4000,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Say text 1'),
-- load waypoint to kalecgos (4)
(2799000,9,5,0,0,0,100,0,4000,4000,0,0,1,2,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Say text 2'),
(2799000,9,6,0,0,0,100,0,4000,4000,0,0,1,3,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Say text 3'),
(2799000,9,7,0,0,0,100,0,4000,4000,0,0,1,0,0,0,0,0,0,9,38017,0,30,0,0,0,0, 'Kalecgos Say text 0'),
(2799000,9,8,0,0,0,100,0,4000,4000,0,0,1,1,0,0,0,0,0,9,38017,0,30,0,0,0,0, 'Kalecgos Say text 1'),
(2799000,9,9,0,0,0,100,0,4000,4000,0,0,1,4,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Say text 4'),
(2799000,9,10,0,0,0,100,0,4000,4000,0,0,1,2,0,0,0,0,0,9,38017,0,30,0,0,0,0, 'Kalecgos Say text 2'),
(2799000,9,11,0,0,0,100,0,4000,4000,0,0,1,0,0,0,0,0,0,9,26917,0,10,0,0,0,0, 'Alexstrasza Say text 0'),
(2799000,9,12,0,0,0,100,0,4000,4000,0,0,1,3,0,0,0,0,0,9,38017,0,30,0,0,0,0, 'Kalecgos Say text 3'),
-- load waypoint home to kalecgos (13)
(2799000,9,14,0,0,0,100,0,4000,4000,0,0,1,5,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Say text 5'),
(2799000,9,15,0,0,0,100,0,4000,4000,0,0,1,6,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Say text 6'),
(2799000,9,16,0,0,0,100,0,4000,4000,0,0,33,36715,0,0,0,0,0,7,0,0,0,0,0,0,0, 'Give quest credit'),
(2799000,9,17,0,0,0,100,0,4000,4000,0,0,81,3,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Turn on Gossip & Questgiver flags'),
(2799000,9,18,0,0,0,100,0,0,0,0,0,81,3,0,0,0,0,0,9,26917,0,10,0,0,0,0, 'Turn on Gossip & Questgiver flags for Alexstrasza'),
-- alliance quest script
(2799001,9,0,0,0,0,100,0,0,0,0,0,81,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Turn off Gossip & Questgiver flags'),
(2799001,9,1,0,0,0,100,0,0,0,0,0,81,0,0,0,0,0,0,9,26917,0,10,0,0,0,0, 'Turn of Gossip & Questgiver flags for Alexstrasza'),
(2799001,9,2,0,0,0,100,0,2000,2000,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Say text 0'),
(2799001,9,3,0,0,0,100,0,4000,4000,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Say text 1'),
-- load waypoint to kalecgos (4)
(2799001,9,5,0,0,0,100,0,4000,4000,0,0,1,2,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Say text 2'),
(2799001,9,6,0,0,0,100,0,4000,4000,0,0,1,3,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Say text 3'),
(2799001,9,7,0,0,0,100,0,4000,4000,0,0,1,0,0,0,0,0,0,9,38017,0,30,0,0,0,0, 'Kalecgos Say text 0'),
(2799001,9,8,0,0,0,100,0,4000,4000,0,0,1,1,0,0,0,0,0,9,38017,0,30,0,0,0,0, 'Kalecgos Say text 1'),
(2799001,9,9,0,0,0,100,0,4000,4000,0,0,1,4,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Say text 4'),
(2799001,9,10,0,0,0,100,0,4000,4000,0,0,1,2,0,0,0,0,0,9,38017,0,30,0,0,0,0, 'Kalecgos Say text 2'),
(2799001,9,11,0,0,0,100,0,4000,4000,0,0,1,0,0,0,0,0,0,9,26917,0,10,0,0,0,0, 'Alexstrasza Say text 0'),
(2799001,9,12,0,0,0,100,0,4000,4000,0,0,1,3,0,0,0,0,0,9,38017,0,30,0,0,0,0, 'Kalecgos Say text 3'),
-- load waypoint home to kalecgos (13)
(2799001,9,14,0,0,0,100,0,4000,4000,0,0,1,5,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Say text 5'),
(2799001,9,15,0,0,0,100,0,4000,4000,0,0,1,7,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Say text 7'),
(2799001,9,16,0,0,0,100,0,4000,4000,0,0,33,36715,0,0,0,0,0,7,0,0,0,0,0,0,0, 'Give quest credit'),
(2799001,9,17,0,0,0,100,0,4000,4000,0,0,81,3,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Turn on Gossip & Questgiver flags'),
(2799001,9,18,0,0,0,100,0,0,0,0,0,81,3,0,0,0,0,0,9,26917,0,10,0,0,0,0, 'Turn on Gossip & Questgiver flags for Alexstrasza');
DELETE FROM `creature_text` WHERE `entry` IN (26917,27990,38017);
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(26917,0,0,'Mortal champions have long used these weapons to combat evil. I see no reason to keep the swords from them in this battle.',0,0,100,1,0,0,'Alexstrasza the Life-Binder'),
(27990,0,0,'You\'re too late, $n. Another visitor from Dalaran came asking after information about the same prismatic dragon blades.',0,0,100,1,0,0,'Krasus'),
(27990,1,0,'From your description, I\'m certain the book I loaned our visitor could allow you to easily identify the weapon.',0,0,100,25,0,0,'Krasus'),
(27990,2,0,'I\'m afraid you\'ll have to ask the -- Well, perhaps Kalecgos can help.',0,0,100,1,0,0,'Krasus'),
(27990,3,0,'$n may have found the remains of a prismatic blade, Kalecgos. Will you offer your help to our visitor?',0,0,100,1,0,0,'Krasus'),
(27990,4,0,'You believe our allies will not be able to control the power of the swords?',0,0,100,1,0,0,'Krasus'),
(27990,5,0,'As will we all.',0,0,100,25,0,0,'Krasus'),
(27990,6,0,'Please, mortal, speak with Arcanist Tybalin in Dalaran. He may be able to negotiate with the Sunreavers for access to the book.',0,0,100,1,0,0,'Krasus'),
(27990,7,0,'Please, mortal, seek out Magister Hathorel in Dalaran. He might be able to negotiate with the Silver Covenant for access to the book.',0,0,100,1,0,0,'Krasus'),
(38017,0,0,'Are you certain you should be helping these mortals in their quest for the sword?',0,0,100,1,0,0,'Kalecgos'),
(38017,1,0,'These blades, Krasus... They were made long ago, when things were... different.',0,0,100,1,0,0,'Kalecgos'),
(38017,2,0,'Our enemies once turned our strongest weapon against us. What makes you think the prismatic blades will be any different?',0,0,100,1,0,0,'Kalecgos'),
(38017,3,0,'As you wish, my queen. I will not stand in their way, but I will keep a close watch.',0,0,100,16,0,0,'Kalecgos');
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=32739; -- Baroness Zildjia
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=32736; -- Scribe Whitman
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=32741; -- Conjurer Weinhaus
DELETE FROM `creature_text` WHERE `entry` IN (32739,32736,32741) AND `groupid`=0;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(32739,0,0, 'The view up here is amazing!',0,0,0,5,0,0, 'Baroness Zildjia'), -- Baroness Zildjia
(32739,0,1, 'Too bad I left my light feathers at home... Slow Fall would work perfect here!',0,0,0,1,0,0, 'Baroness Zildjia'), -- Baroness Zildjia
(32736,0,0, 'The view up here is amazing!',0,0,0,5,0,0, 'Scribe Whitman'), -- Scribe Whitman
(32736,0,1, 'Too bad I left my light feathers at home... Slow Fall would work perfect here!',0,0,0,1,0,0, 'Scribe Whitman'), -- Scribe Whitman
(32741,0,0, 'The view up here is amazing!',0,0,0,5,0,0, 'Conjurer Weinhaus'), -- Conjurer Weinhaus
(32741,0,1, 'Too bad I left my light feathers at home... Slow Fall would work perfect here!',0,0,0,1,0,0, 'Conjurer Weinhaus'); -- Conjurer Weinhaus
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (32739,32736,32741,32734,32735) AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(32739,0,0,0,1,0,100,0,0,0,420000,840000,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Baroness Zildjia: Say rand text every 7-14 minutes'), -- Baroness Zildjia
(32736,0,0,0,1,0,100,0,0,0,300000,840000,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Scribe Whitman: Say rand text every 5-14 minutes'), -- Scribe Whitman
(32741,0,0,0,1,0,100,0,0,0,300000,420000,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Conjurer Weinhaus: Say rand text every 5-7 minutes'); -- Conjurer Weinhaus

# Conditions
INSERT IGNORE INTO `quest_start_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `dataint`, `x`, `y`, `z`, `o`) VALUES 
(1, 35, 0, 0, 0, '2000000450', 0, 0, 0, 0),
(1, 36, 0, 0, 0, '2000000451', 0, 0, 0, 0);
UPDATE IGNORE conditions SET SourceGroup=4665 WHERE SourceTypeOrReferenceId=15 AND SourceGroup=50219;
UPDATE IGNORE conditions SET SourceGroup=4665 WHERE SourceTypeOrReferenceId=14 AND SourceGroup=50219;
UPDATE IGNORE conditions SET SourceGroup=6821 WHERE SourceTypeOrReferenceId=15 AND SourceGroup=15565;
UPDATE IGNORE conditions SET SourceGroup=6821 WHERE SourceTypeOrReferenceId=14 AND SourceGroup=15565;
UPDATE IGNORE conditions SET SourceGroup=4649 WHERE SourceTypeOrReferenceId=15 AND SourceGroup=913;
UPDATE IGNORE conditions SET SourceGroup=4649 WHERE SourceTypeOrReferenceId=14 AND SourceGroup=913;
REPLACE INTO `conditions` VALUES ('13', '0', '56567', '0', '18', '1', '30121', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4660', '539', '0', '27', '1407', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4650', '5721', '0', '27', '1534', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4649', '5721', '0', '27', '1534', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4684', '5724', '0', '27', '1534', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4675', '5000', '0', '27', '1531', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4676', '4833', '0', '27', '1527', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10464', '0', '0', '1', '62853', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10465', '0', '0', '1', '62853', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10466', '0', '0', '1', '62853', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10467', '0', '0', '1', '62853', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10468', '0', '0', '1', '62853', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10469', '0', '0', '1', '62853', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10470', '0', '0', '1', '62853', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10471', '0', '0', '1', '62853', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10472', '0', '0', '1', '62853', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10473', '0', '0', '1', '62853', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10340', '0', '0', '9', '13679', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10343', '0', '0', '9', '13699', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10343', '1', '0', '9', '13725', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10340', '2', '0', '9', '13680', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10343', '2', '0', '9', '13727', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10343', '3', '0', '9', '13731', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10343', '4', '0', '9', '13713', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10343', '5', '0', '9', '13724', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10343', '6', '0', '9', '13723', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10343', '7', '0', '9', '13729', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10343', '8', '0', '9', '13728', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10343', '9', '0', '9', '13726', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10383', '0', '0', '9', '13664', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10383', '1', '0', '9', '13664', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10340', '0', '0', '1', '62853', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10343', '0', '0', '1', '62853', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10343', '1', '0', '1', '62853', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10340', '2', '0', '1', '62853', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10343', '2', '0', '1', '62853', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10343', '3', '0', '1', '62853', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10343', '4', '0', '1', '62853', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10343', '5', '0', '1', '62853', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10343', '6', '0', '1', '62853', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10343', '7', '0', '1', '62853', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10343', '8', '0', '1', '62853', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10343', '9', '0', '1', '62853', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10383', '0', '0', '1', '62853', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10383', '1', '0', '1', '62853', '0', '0', '0', '', null);
REPLACE INTO `gossip_menu` VALUES ('4649', '5721');
REPLACE INTO `gossip_menu` VALUES ('4650', '5721');
REPLACE INTO `gossip_menu` VALUES ('4660', '539');
REPLACE INTO `gossip_menu` VALUES ('4675', '5000');
REPLACE INTO `gossip_menu` VALUES ('4676', '4833');
REPLACE INTO `gossip_menu` VALUES ('4684', '5724');
REPLACE INTO `gossip_menu_option` VALUES ('10464', '0', '0', 'I am ready to fight!', '1', '1', '1', '0', '10464', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('10465', '0', '0', 'I am ready to fight!', '1', '1', '1', '0', '10465', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('10466', '0', '0', 'I am ready to fight!', '1', '1', '1', '0', '10466', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('10467', '0', '0', 'I am ready to fight!', '1', '1', '1', '0', '10467', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('10468', '0', '0', 'I am ready to fight!', '1', '1', '1', '0', '10468', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('10469', '0', '0', 'I am ready to fight!', '1', '1', '1', '0', '10469', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('10470', '0', '0', 'I am ready to fight!', '1', '1', '1', '0', '10470', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('10471', '0', '0', 'I am ready to fight!', '1', '1', '1', '0', '10471', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('10472', '0', '0', 'I am ready to fight!', '1', '1', '1', '0', '10472', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('10473', '0', '0', 'I am ready to fight!', '1', '1', '1', '0', '10473', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('10340', '0', '0', 'I am ready to fight!', '1', '1', '1', '0', '33447', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('10343', '0', '0', 'I am ready to fight!', '1', '1', '1', '0', '50102', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('10343', '1', '0', 'I am ready to fight!', '1', '1', '1', '0', '50102', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('10340', '2', '0', 'I am ready to fight!', '1', '1', '1', '0', '33447', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('10343', '2', '0', 'I am ready to fight!', '1', '1', '1', '0', '33518', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('10343', '3', '0', 'I am ready to fight!', '1', '1', '1', '0', '33518', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('10343', '4', '0', 'I am ready to fight!', '1', '1', '1', '0', '50102', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('10343', '5', '0', 'I am ready to fight!', '1', '1', '1', '0', '50102', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('10343', '6', '0', 'I am ready to fight!', '1', '1', '1', '0', '50102', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('10343', '7', '0', 'I am ready to fight!', '1', '1', '1', '0', '33518', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('10343', '8', '0', 'I am ready to fight!', '1', '1', '1', '0', '33518', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('10343', '9', '0', 'I am ready to fight!', '1', '1', '1', '0', '33518', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('10383', '0', '0', 'Ask Cavin to summon the Black Knight.', '1', '1', '1', '0', '33522', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('10383', '1', '0', 'Ask Cavin to summon the Black Knight.', '1', '1', '1', '0', '33522', '0', '0', null);
REPLACE INTO `gossip_scripts` VALUES ('10464', '0', '0', '0', '0', '2000000449', '0', '0', '0', '0');
REPLACE INTO `gossip_scripts` VALUES ('10464', '1', '15', '39996', '0', '0', '0', '0', '0', '0');
REPLACE INTO `gossip_scripts` VALUES ('10465', '0', '0', '0', '0', '2000000449', '0', '0', '0', '0');
REPLACE INTO `gossip_scripts` VALUES ('10465', '1', '15', '39996', '0', '0', '0', '0', '0', '0');
REPLACE INTO `gossip_scripts` VALUES ('10466', '0', '0', '0', '0', '2000000449', '0', '0', '0', '0');
REPLACE INTO `gossip_scripts` VALUES ('10466', '1', '15', '39996', '0', '0', '0', '0', '0', '0');
REPLACE INTO `gossip_scripts` VALUES ('10467', '0', '0', '0', '0', '2000000449', '0', '0', '0', '0');
REPLACE INTO `gossip_scripts` VALUES ('10467', '1', '15', '39996', '0', '0', '0', '0', '0', '0');
REPLACE INTO `gossip_scripts` VALUES ('10468', '0', '0', '0', '0', '2000000449', '0', '0', '0', '0');
REPLACE INTO `gossip_scripts` VALUES ('10468', '1', '15', '39996', '0', '0', '0', '0', '0', '0');
REPLACE INTO `gossip_scripts` VALUES ('10469', '0', '0', '0', '0', '2000000449', '0', '0', '0', '0');
REPLACE INTO `gossip_scripts` VALUES ('10469', '1', '15', '39996', '0', '0', '0', '0', '0', '0');
REPLACE INTO `gossip_scripts` VALUES ('10470', '0', '0', '0', '0', '2000000449', '0', '0', '0', '0');
REPLACE INTO `gossip_scripts` VALUES ('10470', '1', '15', '39996', '0', '0', '0', '0', '0', '0');
REPLACE INTO `gossip_scripts` VALUES ('10471', '0', '0', '0', '0', '2000000449', '0', '0', '0', '0');
REPLACE INTO `gossip_scripts` VALUES ('10471', '1', '15', '39996', '0', '0', '0', '0', '0', '0');
REPLACE INTO `gossip_scripts` VALUES ('10472', '0', '0', '0', '0', '2000000449', '0', '0', '0', '0');
REPLACE INTO `gossip_scripts` VALUES ('10472', '1', '15', '39996', '0', '0', '0', '0', '0', '0');
REPLACE INTO `gossip_scripts` VALUES ('10473', '0', '0', '0', '0', '2000000449', '0', '0', '0', '0');
REPLACE INTO `gossip_scripts` VALUES ('10473', '1', '15', '39996', '0', '0', '0', '0', '0', '0');
DELETE FROM conditions WHERE SourceTypeOrReferenceId=15 AND SourceGroup=913;
DELETE FROM conditions WHERE SourceTypeOrReferenceId=14 AND SourceGroup=913;


# FIX
# DELETE FROM conditions WHERE SourceTypeOrReferenceId=15 AND SourceGroup=50314;
# DELETE FROM conditions WHERE SourceTypeOrReferenceId=14 AND SourceGroup=50314;
# UPDATE IGNORE conditions SET SourceGroup=9732 WHERE SourceTypeOrReferenceId=15 AND SourceGroup=28666;
# UPDATE IGNORE conditions SET SourceGroup=9732 WHERE SourceTypeOrReferenceId=14 AND SourceGroup=28666;

# WDB_Check
UPDATE `npc_text` SET `WDBVerified`=1 WHERE `ID` IN (9516,14330,15608,15609,9842,9704,9708,6520,14451,14452,10955);

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
DELETE FROM `linked_respawn` WHERE `guid` NOT IN (SELECT `guid` FROM `creature`);
DELETE FROM `linked_respawn` WHERE `linkedGuid` NOT IN (SELECT `guid` FROM `creature`);
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
UPDATE `gameobject` SET `state` = 0 WHERE `id` IN (SELECT `entry` FROM `gameobject_template` WHERE `type` = 0 AND `data0` = 1);
UPDATE `gameobject_template` SET `flags`=`flags`&~4 WHERE `type` IN (2,19,17);
DELETE FROM `gameobject_scripts` WHERE `id` NOT IN (SELECT `guid` FROM `gameobject`);
DELETE FROM `gameobject_scripts` WHERE `command` in (11, 12) and `datalong` NOT IN (SELECT `guid` FROM `gameobject`);
DELETE FROM `creature_onkill_reputation` WHERE `creature_id` NOT IN (SELECT `entry` FROM `creature_template`);
UPDATE `item_template` SET `spelltrigger_2` = 0 WHERE `spellid_2` = 0 AND `spelltrigger_2` = 6;
UPDATE `creature_template` SET npcflag = npcflag|1 WHERE `gossip_menu_id` > 0;
UPDATE `creature_template` SET `ScriptName` = '' WHERE `AIName` = 'EventAI' AND `ScriptName` = 'generic_creature';
UPDATE `creature_template` SET `ScriptName` = '' WHERE `AIName` = 'SmartAI' AND `ScriptName` = 'generic_creature';

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

UPDATE version SET `cache_id`= '583';
UPDATE version SET `core_revision`= '11121';
UPDATE version SET `db_version`= 'YTDB_0.14.1_R583_TC_R11121_TDBAI_335.0.3_RuDB_R38.6';
