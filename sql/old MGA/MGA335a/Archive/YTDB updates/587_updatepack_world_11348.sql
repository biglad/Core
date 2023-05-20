# Y2kCat
ALTER TABLE db_version_ytdb CHANGE COLUMN 586_FIX_11285 587_FIX_11348 bit;
REPLACE INTO `db_version_ytdb` (`version`) VALUES ('587_FIX_11348');

# telsamat
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`IN (65686, 65684);
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES 
(65686, -65684, 2, 'Remove Dark Essence'), 
(65684, -65686, 2, 'Remove Light Essence');
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`IN (67176, 67222);
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES 
(67176, -67222, 0, 'Remove Dark Essence'), 
(67222, -67176, 0, 'Remove Light Essence');
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`IN (67177, 67223);
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES 
(67177, -67223, 0, 'Remove Dark Essence'), 
(67223, -67177, 0, 'Remove Light Essence');
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`IN (67178, 67224);
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES 
(67178, -67224, 0, 'Remove Dark Essence'), 
(67224, -67178, 0, 'Remove Light Essence');

# NeatElves
UPDATE `creature_template` SET `npcflag` = '80' WHERE `entry` in (18990,18991);
DELETE FROM `npc_vendor` WHERE `entry` in (18990,18991);
DELETE FROM `npc_vendor` WHERE `entry` = 18911 AND `item` = 27532;
DELETE FROM `npc_vendor` WHERE `entry` = 26947;
UPDATE `creature_template` SET `npcflag` = '0' WHERE `entry` =26947;
DELETE FROM `creature` WHERE `guid` = 95325;
UPDATE `creature_template` SET `lootid` = '0' WHERE `entry` =18846;
DELETE FROM `creature_loot_template` WHERE `entry` = 18846;
UPDATE `npc_vendor` SET `incrtime` = '3600' WHERE `entry` =31247 AND `item` =44500;
REPLACE INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(68743, 184794, 530, 1, 1, -2081.66, 4164.89, 7.72282, 0.917785, 0, 0, 0.199368, 0.979925, 120, 100, 1);
UPDATE `creature_template` SET `faction_A` = '14',`faction_H` = '14' WHERE `entry` =18548;
UPDATE `creature` SET `spawndist` = '0',`MovementType` = '0' WHERE `guid` =65212;
UPDATE `quest_template` SET `RequiredRaces` = '1101' WHERE `entry` in (10014);
UPDATE creature SET position_x = '-2265.229980', position_y = '3090.989990', position_z = '13.828700', orientation = '2.866695' WHERE guid = '78273';
UPDATE creature SET position_x = '124.794930', position_y = '4834.489746', position_z = '75.952240', orientation = '0.093501' WHERE guid = '125181';
UPDATE `creature` SET `spawndist` = '0',`MovementType` = '0' WHERE `guid` =65124;
DELETE FROM `npc_spellclick_spells` WHERE `npc_entry` = 27629;
REPLACE INTO gossip_scripts (id,command,datalong,datalong2) VALUES (9568,15,49256,0);
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(65130, 18424, 530, 1, 1, 0, 0, -1761.48, 4629.77, 12.593, 0.390275, 600, 0, 0, 4572, 2705, 0, 2);
UPDATE creature_template SET faction_A = '1660', faction_H = '1660' WHERE entry = '18424';
UPDATE creature SET position_x = '-1882.024170', position_y = '4690.065918', position_z = '3.277742', orientation = '3.209065' WHERE guid = '65131';
UPDATE creature SET position_x = '-1801.484375', position_y = '4601.479492', position_z = '11.318174', orientation = '0.135804' WHERE guid = '65097';
UPDATE creature SET position_x = '-1715.815308', position_y = '4675.083496', position_z = '10.152217', orientation = '2.498281' WHERE guid = '65118';
UPDATE creature SET position_x = '-1856.664551', position_y = '4730.132324', position_z = '3.421243', orientation = '5.516566' WHERE guid = '65146';
UPDATE creature SET position_x = '-1911.145386', position_y = '4668.880859', position_z = '0.392216', orientation = '3.050418' WHERE guid = '65148';
UPDATE creature SET position_x = '-1831.350586', position_y = '4754.187988', position_z = '18.206627', orientation = '4.574091' WHERE guid = '65119';
UPDATE creature SET position_x = '-1690.645264', position_y = '4697.857422', position_z = '3.683002', orientation = '1.865249' WHERE guid = '65112';
INSERT IGNORE INTO `creature_addon` SET `guid`= 65130, `path_id`= 65130;
REPLACE INTO waypoint_data (id, point, position_x, position_y, position_z) VALUES
(65130, 1, -1752.25, 4635.69, 11.533),
(65130, 2, -1746.64, 4645.75, 11.3127),
(65130, 3, -1751.94, 4658.46, 11.8555),
(65130, 4, -1768.23, 4661.45, 14.3806),
(65130, 5, -1782.78, 4662.78, 14.6295),
(65130, 6, -1784.96, 4681.46, 12.9184),
(65130, 7, -1796.13, 4701.18, 12.2963),
(65130, 8, -1814.54, 4711.28, 10.2627),
(65130, 9, -1829.76, 4719.64, 9.95255),
(65130, 10, -1837.85, 4709.81, 9.47789),
(65130, 11, -1849.29, 4691.27, 8.41246),
(65130, 12, -1857.34, 4678.23, 9.90554),
(65130, 13, -1878.54, 4661.68, 10.9944),
(65130, 14, -1864.05, 4673.75, 10.1702),
(65130, 15, -1843.07, 4689.86, 9.03344),
(65130, 16, -1827.66, 4685.66, 10.6003),
(65130, 17, -1806.08, 4698.2, 11.2338),
(65130, 18, -1793.55, 4698.56, 12.2215),
(65130, 19, -1786.34, 4684.55, 12.3392),
(65130, 20, -1786.82, 4675.53, 14.4041),
(65130, 21, -1788.39, 4646.16, 14.6371),
(65130, 22, -1794.72, 4645.91, 17.1211),
(65130, 23, -1803.4, 4646.52, 19.7327),
(65130, 24, -1813.86, 4652.63, 19.739),
(65130, 25, -1804.03, 4647.48, 19.7336),
(65130, 26, -1796.94, 4645.66, 18.1106),
(65130, 27, -1788.94, 4643.6, 14.6374),
(65130, 28, -1792.08, 4621.82, 14.5427),
(65130, 29, -1789.77, 4635.92, 14.64),
(65130, 30, -1777.81, 4630.22, 14.9004),
(65130, 31, -1765.68, 4629.39, 12.733);
UPDATE `locales_creature` SET `entry` = '99100' WHERE `entry` =880001;
UPDATE `locales_creature` SET `entry` = '99101' WHERE `entry` =880002;
UPDATE `locales_creature` SET `entry` = '99102' WHERE `entry` =4455458;
UPDATE `locales_creature` SET `entry` = '99103' WHERE `entry` =4455459;
UPDATE `locales_creature` SET `entry` = '99104' WHERE `entry` =4455460;
DELETE FROM `locales_creature` WHERE `entry` = 212240;
DELETE FROM `locales_creature` WHERE `entry` = 212250;
DELETE FROM `locales_creature` WHERE `entry` = 212260;
DELETE FROM `locales_creature` WHERE `entry` = 212270;
DELETE FROM `locales_creature` WHERE `entry` = 212280;
INSERT IGNORE INTO `creature_template_addon` (`entry`, `emote`) VALUES ('37638', '233'),('37647', '233'),('37648', '233'),('37649', '233'),('37645', '233');
UPDATE `creature_template` SET `equipment_id` = '281' WHERE `entry` in (36830,37638);
DELETE FROM `creature_equip_template` WHERE `entry` in (36830,4788);
UPDATE `quest_template` SET `RequiredRaces` = '690' WHERE `entry` in (5406,5503);
UPDATE `quest_template` SET `RequiredRaces` = '1101' WHERE `entry` in (5401,5404);
UPDATE `quest_template` SET `SpecialFlags` = '0' WHERE `entry` =5503;
UPDATE `quest_template` SET `PrevQuestId` = '6028' WHERE `entry` in (5407,5404,5408);
UPDATE `quest_template` SET `PrevQuestId` = '6029' WHERE `entry` in (5406,5403,5402);
UPDATE `quest_template` SET `PrevQuestId` = '6030' WHERE `entry` in (5509,5508,5510);
UPDATE `quest_template` SET `ExclusiveGroup` = '5508' WHERE `entry` in (5509,5508,5510);
UPDATE `quest_template` SET `ExclusiveGroup` = '5404' WHERE `entry` in (5407,5404,5408);
UPDATE `quest_template` SET `ExclusiveGroup` = '5402' WHERE `entry` in (5406,5403,5402);
UPDATE `quest_template` SET `ExclusiveGroup` = '6028' WHERE `entry` in (6029,6028,6030);
UPDATE `quest_template` SET `PrevQuestId` = '12938' WHERE `entry` =12955;
DELETE FROM `creature_loot_template` WHERE `item` in (44128,33567,33568);
UPDATE `skinning_loot_template` SET `ChanceOrQuestChance` = '1' WHERE `item` =44128;
UPDATE `creature_template` SET `flags_extra` = '128' WHERE `entry` =30996;
UPDATE `item_loot_template` SET `ChanceOrQuestChance` = '0',`groupid` = '1' WHERE `entry` =44475;
UPDATE `quest_template` SET `ReqSpellCast1` = '0' WHERE `entry` =13149;
DELETE FROM `creature` WHERE `guid` = 63723;
DELETE FROM `creature` WHERE `guid` = 63191;

# VENOM
UPDATE creature_template SET spell1=48766,spell2=54469,spell3=54467,spell4=55214,InhabitType=3 WHERE entry=29414;
REPLACE INTO creature_template_addon (entry,auras) VALUES (29414,'57403 0 57403 1 57403 2');
UPDATE creature_template SET spell1=49161,spell2=49243,spell3=49263,spell4=49264,unit_flags=0,InhabitType=3 WHERE entry=27629;
REPLACE INTO creature_template_addon (entry,bytes1,auras) VALUES (27629,33554432,'50069 0 50069 1 50069 2');

# Lightunit
UPDATE `quest_template` SET `SpecialFlags` = '1' WHERE `entry` = 13845;

# Lordronn
UPDATE `creature_template` SET `faction_A` = '35', `faction_H` = '35' WHERE entry = 385;
# UPDATE `creature_template` SET `unit_flags` = '2056' WHERE entry = 2630;
# UPDATE `creature_template` SET `unit_flags` = '2060' WHERE entry = 5925;
# UPDATE `creature_template` SET `unit_flags` = '526344' WHERE entry = 5950;
# UPDATE `creature_template` SET `unit_flags` = '2048' WHERE entry = 10218;
UPDATE `creature_template` SET `faction_A` = '37', `faction_H` = '37' WHERE entry = 10218;
UPDATE `creature_template` SET `baseattacktime` = '2000' WHERE entry = 10218;
UPDATE `creature_template` SET `speed_walk` = '0.5' WHERE entry = 12922;
# UPDATE `creature_template` SET `unit_flags` = '526336' WHERE entry = 12922;
UPDATE `creature_template` SET `faction_A` = '90', `faction_H` = '90' WHERE entry = 12922;
# UPDATE `creature_template` SET `dynamicflags` = '4' WHERE entry = 12922;
UPDATE `creature_template` SET `speed_run` = '0.857143' WHERE entry = 14881;
UPDATE `creature_template` SET `faction_A` = '1802', `faction_H` = '1802' WHERE entry = 15241;
UPDATE `creature_template` SET `faction_A` = '85', `faction_H` = '85' WHERE entry = 15242;
UPDATE `creature_template` SET `faction_A` = '834', `faction_H` = '834' WHERE entry = 16570;
# UPDATE `creature_template` SET `dynamicflags` = '13' WHERE entry = 16570;
UPDATE `creature_template` SET `faction_A` = '1668', `faction_H` = '1668' WHERE entry = 16580;
UPDATE `creature_template` SET `faction_A` = '1729', `faction_H` = '1729' WHERE entry = 16587;
UPDATE `creature_template` SET `baseattacktime` = '2000' WHERE entry = 16587;
UPDATE `creature_template` SET `speed_run` = '1.14286' WHERE entry = 16831;
# UPDATE `creature_template` SET `unit_flags` = '832' WHERE entry = 16831;
UPDATE `creature_template` SET `faction_A` = '1756', `faction_H` = '1756' WHERE entry = 16831;
UPDATE `creature_template` SET `faction_A` = '1671', `faction_H` = '1671' WHERE entry = 16850;
UPDATE `creature_template` SET `baseattacktime` = '2000' WHERE entry = 16850;
UPDATE `creature_template` SET `faction_A` = '1671', `faction_H` = '1671' WHERE entry = 16851;
UPDATE `creature_template` SET `baseattacktime` = '2000' WHERE entry = 16851;
UPDATE `creature_template` SET `faction_A` = '954', `faction_H` = '954' WHERE entry = 16863;
# UPDATE `creature_template` SET `dynamicflags` = '4' WHERE entry = 16863;
UPDATE `creature_template` SET `faction_A` = '954', `faction_H` = '954' WHERE entry = 16879;
UPDATE `creature_template` SET `faction_A` = '954', `faction_H` = '954' WHERE entry = 16880;
# UPDATE `creature_template` SET `dynamicflags` = '4' WHERE entry = 16880;
# UPDATE `creature_template` SET `dynamicflags` = '4' WHERE entry = 16903;
UPDATE `creature_template` SET `faction_A` = '1651', `faction_H` = '1651' WHERE entry = 16911;
UPDATE `creature_template` SET `faction_A` = '90', `faction_H` = '90' WHERE entry = 16946;
UPDATE `creature_template` SET `faction_A` = '90', `faction_H` = '90' WHERE entry = 16947;
# UPDATE `creature_template` SET `dynamicflags` = '4' WHERE entry = 16947;
UPDATE `creature_template` SET `faction_A` = '1752', `faction_H` = '1752' WHERE entry = 16950;
UPDATE `creature_template` SET `baseattacktime` = '2000' WHERE entry = 16950;
UPDATE `creature_template` SET `faction_A` = '90', `faction_H` = '90' WHERE entry = 16951;
UPDATE `creature_template` SET `faction_A` = '90', `faction_H` = '90' WHERE entry = 16954;
# UPDATE `creature_template` SET `dynamicflags` = '4' WHERE entry = 16954;
UPDATE `creature_template` SET `faction_A` = '1752', `faction_H` = '1752' WHERE entry = 16959;
UPDATE `creature_template` SET `faction_A` = '90', `faction_H` = '90' WHERE entry = 16960;
UPDATE `creature_template` SET `faction_A` = '73', `faction_H` = '73' WHERE entry = 17035;
UPDATE `creature_template` SET `faction_A` = '1738', `faction_H` = '1738' WHERE entry = 17053;
UPDATE `creature_template` SET `speed_run` = '0.214286' WHERE entry = 17407;
UPDATE `creature_template` SET `speed_walk` = '0.6' WHERE entry = 17407;
UPDATE `creature_template` SET `faction_A` = '1738', `faction_H` = '1738' WHERE entry = 18449;
# UPDATE `creature_template` SET `dynamicflags` = '4' WHERE entry = 18449;
UPDATE `creature_template` SET `baseattacktime` = '3000' WHERE entry = 18449;
UPDATE `creature_template` SET `faction_A` = '1738', `faction_H` = '1738' WHERE entry = 18450;
UPDATE `creature_template` SET `faction_A` = '1738', `faction_H` = '1738' WHERE entry = 18451;
UPDATE `creature_template` SET `baseattacktime` = '3000' WHERE entry = 18451;
UPDATE `creature_template` SET `faction_A` = '49', `faction_H` = '49' WHERE entry = 18463;
UPDATE `creature_template` SET `speed_run` = '1.42857' WHERE entry = 18469;
UPDATE `creature_template` SET `faction_A` = '38', `faction_H` = '38' WHERE entry = 18477;
UPDATE `creature_template` SET `speed_run` = '1.42857' WHERE entry = 18528;
# UPDATE `creature_template` SET `unit_flags` = '256' WHERE entry = 18528;
UPDATE `creature_template` SET `faction_A` = '1738', `faction_H` = '1738' WHERE entry = 18540;
UPDATE `creature_template` SET `baseattacktime` = '3000' WHERE entry = 18540;
UPDATE `creature_template` SET `speed_run` = '0.857143' WHERE entry = 18595;
UPDATE `creature_template` SET `faction_A` = '16', `faction_H` = '16' WHERE entry = 18595;
UPDATE `creature_template` SET `baseattacktime` = '2000' WHERE entry = 18595;
# UPDATE `creature_template` SET `unit_flags` = '559169' WHERE entry = 18733;
UPDATE `creature_template` SET `faction_A` = '954', `faction_H` = '954' WHERE entry = 18733;
# UPDATE `creature_template` SET `dynamicflags` = '4' WHERE entry = 18733;
UPDATE `creature_template` SET `faction_A` = '90', `faction_H` = '90' WHERE entry = 18827;
UPDATE `creature_template` SET `faction_A` = '1760', `faction_H` = '1760' WHERE entry = 18930;
UPDATE `creature_template` SET `faction_A` = '1756', `faction_H` = '1756' WHERE entry = 18931;
UPDATE `creature_template` SET `faction_A` = '694', `faction_H` = '694' WHERE entry = 18939;
UPDATE `creature_template` SET `baseattacktime` = '2000' WHERE entry = 18939;
# UPDATE `creature_template` SET `unit_flags` = '559104' WHERE entry = 18944;
UPDATE `creature_template` SET `faction_A` = '1752', `faction_H` = '1752' WHERE entry = 18944;
UPDATE `creature_template` SET `faction_A` = '1754', `faction_H` = '1754' WHERE entry = 18945;
# UPDATE `creature_template` SET `dynamicflags` = '4' WHERE entry = 18945;
# UPDATE `creature_template` SET `unit_flags` = '559360' WHERE entry = 18948;
# UPDATE `creature_template` SET `unit_flags` = '559361' WHERE entry = 18949;
UPDATE `creature_template` SET `faction_A` = '1755', `faction_H` = '1755' WHERE entry = 18949;
# UPDATE `creature_template` SET `unit_flags` = '559376' WHERE entry = 18950;
# UPDATE `creature_template` SET `unit_flags` = '559360' WHERE entry = 18965;
# UPDATE `creature_template` SET `unit_flags` = '35073' WHERE entry = 18966;
UPDATE `creature_template` SET `faction_A` = '1757', `faction_H` = '1757' WHERE entry = 18966;
UPDATE `creature_template` SET `faction_A` = '1759', `faction_H` = '1759' WHERE entry = 18969;
# UPDATE `creature_template` SET `unit_flags` = '559360' WHERE entry = 18970;
# UPDATE `creature_template` SET `unit_flags` = '35072' WHERE entry = 18971;
# UPDATE `creature_template` SET `unit_flags` = '559361' WHERE entry = 18972;
UPDATE `creature_template` SET `faction_A` = '1752', `faction_H` = '1752' WHERE entry = 18975;
UPDATE `creature_template` SET `faction_A` = '90', `faction_H` = '90' WHERE entry = 18977;
UPDATE `creature_template` SET `faction_A` = '90', `faction_H` = '90' WHERE entry = 18978;
# UPDATE `creature_template` SET `dynamicflags` = '4' WHERE entry = 18978;
UPDATE `creature_template` SET `faction_A` = '90', `faction_H` = '90' WHERE entry = 18981;
# UPDATE `creature_template` SET `unit_flags` = '559360' WHERE entry = 18986;
# UPDATE `creature_template` SET `unit_flags` = '526336' WHERE entry = 19005;
UPDATE `creature_template` SET `faction_A` = '90', `faction_H` = '90' WHERE entry = 19136;
# UPDATE `creature_template` SET `dynamicflags` = '4' WHERE entry = 19136;
UPDATE `creature_template` SET `speed_run` = '2' WHERE entry = 19189;
UPDATE `creature_template` SET `speed_walk` = '3.2' WHERE entry = 19189;
UPDATE `creature_template` SET `faction_A` = '1752', `faction_H` = '1752' WHERE entry = 19190;
# UPDATE `creature_template` SET `unit_flags` = '526400' WHERE entry = 19191;
UPDATE `creature_template` SET `faction_A` = '90', `faction_H` = '90' WHERE entry = 19191;
# UPDATE `creature_template` SET `dynamicflags` = '4' WHERE entry = 19191;
UPDATE `creature_template` SET `speed_walk` = '0.5' WHERE entry = 19192;
# UPDATE `creature_template` SET `unit_flags` = '526336' WHERE entry = 19192;
UPDATE `creature_template` SET `faction_A` = '90', `faction_H` = '90' WHERE entry = 19192;
# UPDATE `creature_template` SET `dynamicflags` = '4' WHERE entry = 19192;
UPDATE `creature_template` SET `faction_A` = '90', `faction_H` = '90' WHERE entry = 19261;
# UPDATE `creature_template` SET `unit_flags` = '33555200' WHERE entry = 19277;
UPDATE `creature_template` SET `faction_A` = '35', `faction_H` = '35' WHERE entry = 19277;
UPDATE `creature_template` SET `faction_A` = '90', `faction_H` = '90' WHERE entry = 19282;
UPDATE `creature_template` SET `faction_A` = '90', `faction_H` = '90' WHERE entry = 19298;
UPDATE `creature_template` SET `faction_A` = '1752', `faction_H` = '1752' WHERE entry = 19299;
UPDATE `creature_template` SET `baseattacktime` = '2000' WHERE entry = 19317;
UPDATE `creature_template` SET `faction_A` = '1735', `faction_H` = '1735' WHERE entry = 19319;
UPDATE `creature_template` SET `faction_A` = '1735', `faction_H` = '1735' WHERE entry = 19333;
# UPDATE `creature_template` SET `unit_flags` = '4608' WHERE entry = 19339;
UPDATE `creature_template` SET `faction_A` = '1735', `faction_H` = '1735' WHERE entry = 19339;
UPDATE `creature_template` SET `faction_A` = '1735', `faction_H` = '1735' WHERE entry = 19341;
# UPDATE `creature_template` SET `unit_flags` = '4608' WHERE entry = 19342;
UPDATE `creature_template` SET `faction_A` = '1735', `faction_H` = '1735' WHERE entry = 19342;
UPDATE `creature_template` SET `faction_A` = '1735', `faction_H` = '1735' WHERE entry = 19343;
UPDATE `creature_template` SET `faction_A` = '1735', `faction_H` = '1735' WHERE entry = 19345;
UPDATE `creature_template` SET `faction_A` = '1735', `faction_H` = '1735' WHERE entry = 19348;
UPDATE `creature_template` SET `faction_A` = '1732', `faction_H` = '1732' WHERE entry = 19351;
# UPDATE `creature_template` SET `unit_flags` = '36864' WHERE entry = 19352;
UPDATE `creature_template` SET `faction_A` = '1732', `faction_H` = '1732' WHERE entry = 19352;
UPDATE `creature_template` SET `faction_A` = '84', `faction_H` = '84' WHERE entry = 19353;
UPDATE `creature_template` SET `faction_A` = '1735', `faction_H` = '1735' WHERE entry = 19355;
UPDATE `creature_template` SET `baseattacktime` = '2000' WHERE entry = 19362;
UPDATE `creature_template` SET `faction_A` = '1735', `faction_H` = '1735' WHERE entry = 19364;
UPDATE `creature_template` SET `faction_A` = '1732', `faction_H` = '1732' WHERE entry = 19368;
# UPDATE `creature_template` SET `unit_flags` = '36864' WHERE entry = 19369;
UPDATE `creature_template` SET `faction_A` = '1732', `faction_H` = '1732' WHERE entry = 19369;
UPDATE `creature_template` SET `faction_A` = '1732', `faction_H` = '1732' WHERE entry = 19370;
# UPDATE `creature_template` SET `unit_flags` = '36864' WHERE entry = 19371;
UPDATE `creature_template` SET `faction_A` = '1732', `faction_H` = '1732' WHERE entry = 19371;
UPDATE `creature_template` SET `faction_A` = '1732', `faction_H` = '1732' WHERE entry = 19372;
UPDATE `creature_template` SET `faction_A` = '1732', `faction_H` = '1732' WHERE entry = 19373;
UPDATE `creature_template` SET `baseattacktime` = '2000' WHERE entry = 19373;
UPDATE `creature_template` SET `faction_A` = '1732', `faction_H` = '1732' WHERE entry = 19374;
UPDATE `creature_template` SET `faction_A` = '1732', `faction_H` = '1732' WHERE entry = 19375;
UPDATE `creature_template` SET `speed_run` = '1.38571' WHERE entry = 19379;
UPDATE `creature_template` SET `faction_A` = '1732', `faction_H` = '1732' WHERE entry = 19379;
UPDATE `creature_template` SET `baseattacktime` = '2000' WHERE entry = 19379;
UPDATE `creature_template` SET `speed_run` = '2.85714' WHERE entry = 19382;
# UPDATE `creature_template` SET `unit_flags` = '33555200' WHERE entry = 19382;
UPDATE `creature_template` SET `faction_A` = '1732', `faction_H` = '1732' WHERE entry = 19382;
UPDATE `creature_template` SET `faction_A` = '1732', `faction_H` = '1732' WHERE entry = 19384;
# UPDATE `creature_template` SET `unit_flags` = '33554688' WHERE entry = 19387;
UPDATE `creature_template` SET `baseattacktime` = '2000' WHERE entry = 19387;
# UPDATE `creature_template` SET `unit_flags` = '33554688' WHERE entry = 19388;
UPDATE `creature_template` SET `baseattacktime` = '2000' WHERE entry = 19388;
UPDATE `creature_template` SET `faction_A` = '1732', `faction_H` = '1732' WHERE entry = 19394;
UPDATE `creature_template` SET `faction_A` = '1732', `faction_H` = '1732' WHERE entry = 19395;
UPDATE `creature_template` SET `faction_A` = '1760', `faction_H` = '1760' WHERE entry = 19425;
UPDATE `creature_template` SET `faction_A` = '1760', `faction_H` = '1760' WHERE entry = 19426;
UPDATE `creature_template` SET `faction_A` = '90', `faction_H` = '90' WHERE entry = 19434;
UPDATE `creature_template` SET `faction_A` = '1756', `faction_H` = '1756' WHERE entry = 19444;
UPDATE `creature_template` SET `faction_A` = '1838', `faction_H` = '1838' WHERE entry = 19504;
UPDATE `creature_template` SET `baseattacktime` = '2000' WHERE entry = 19504;
# UPDATE `creature_template` SET `unit_flags` = '33024' WHERE entry = 19517;
UPDATE `creature_template` SET `baseattacktime` = '2000' WHERE entry = 19517;
# UPDATE `creature_template` SET `unit_flags` = '33024' WHERE entry = 19518;
UPDATE `creature_template` SET `baseattacktime` = '2000' WHERE entry = 19518;
# UPDATE `creature_template` SET `unit_flags` = '33024' WHERE entry = 19520;
UPDATE `creature_template` SET `baseattacktime` = '2000' WHERE entry = 19520;
# UPDATE `creature_template` SET `unit_flags` = '33024' WHERE entry = 19521;
UPDATE `creature_template` SET `baseattacktime` = '2000' WHERE entry = 19521;
UPDATE `creature_template` SET `baseattacktime` = '2000' WHERE entry = 19625;
UPDATE `creature_template` SET `baseattacktime` = '2000' WHERE entry = 19627;
# UPDATE `creature_template` SET `unit_flags` = '33555200' WHERE entry = 19717;
UPDATE `creature_template` SET `baseattacktime` = '2000' WHERE entry = 19740;
# UPDATE `creature_template` SET `dynamicflags` = '4' WHERE entry = 19754;
UPDATE `creature_template` SET `speed_run` = '0.952381' WHERE entry = 19755;
UPDATE `creature_template` SET `speed_walk` = '0.944444' WHERE entry = 19755;
UPDATE `creature_template` SET `speed_walk` = '1.6' WHERE entry = 19757;
# UPDATE `creature_template` SET `unit_flags` = '32768' WHERE entry = 19757;
# UPDATE `creature_template` SET `dynamicflags` = '4' WHERE entry = 19759;
# UPDATE `creature_template` SET `dynamicflags` = '4' WHERE entry = 19760;
UPDATE `creature_template` SET `faction_A` = '1701', `faction_H` = '1701' WHERE entry = 19792;
UPDATE `creature_template` SET `faction_A` = '1701', `faction_H` = '1701' WHERE entry = 19796;
UPDATE `creature_template` SET `speed_run` = '1.38571' WHERE entry = 19806;
UPDATE `creature_template` SET `faction_A` = '1701', `faction_H` = '1701' WHERE entry = 19806;
UPDATE `creature_template` SET `speed_run` = '0.992063' WHERE entry = 19824;
# UPDATE `creature_template` SET `unit_flags` = '64' WHERE entry = 19824;
UPDATE `creature_template` SET `faction_A` = '1701', `faction_H` = '1701' WHERE entry = 19824;
UPDATE `creature_template` SET `faction_A` = '1738', `faction_H` = '1738' WHERE entry = 19825;
UPDATE `creature_template` SET `baseattacktime` = '2000' WHERE entry = 19825;
# UPDATE `creature_template` SET `dynamicflags` = '32' WHERE entry = 20158;
# UPDATE `creature_template` SET `unit_flags` = '33555200' WHERE entry = 20431;
UPDATE `creature_template` SET `faction_A` = '35', `faction_H` = '35' WHERE entry = 20490;
UPDATE `creature_template` SET `faction_A` = '35', `faction_H` = '35' WHERE entry = 20491;
UPDATE `creature_template` SET `faction_A` = '35', `faction_H` = '35' WHERE entry = 20492;
UPDATE `creature_template` SET `faction_A` = '35', `faction_H` = '35' WHERE entry = 20493;
UPDATE `creature_template` SET `faction_A` = '1735', `faction_H` = '1735' WHERE entry = 20494;
UPDATE `creature_template` SET `faction_A` = '1735', `faction_H` = '1735' WHERE entry = 20500;
UPDATE `creature_template` SET `faction_A` = '16', `faction_H` = '16' WHERE entry = 20502;
UPDATE `creature_template` SET `speed_run` = '1.38571' WHERE entry = 20503;
UPDATE `creature_template` SET `faction_A` = '35', `faction_H` = '35' WHERE entry = 20503;
UPDATE `creature_template` SET `speed_run` = '1.38571' WHERE entry = 20504;
UPDATE `creature_template` SET `faction_A` = '35', `faction_H` = '35' WHERE entry = 20504;
UPDATE `creature_template` SET `speed_run` = '1.38571' WHERE entry = 20505;
UPDATE `creature_template` SET `faction_A` = '35', `faction_H` = '35' WHERE entry = 20505;
UPDATE `creature_template` SET `speed_run` = '1.38571' WHERE entry = 20506;
UPDATE `creature_template` SET `faction_A` = '35', `faction_H` = '35' WHERE entry = 20506;
UPDATE `creature_template` SET `speed_run` = '1.38571' WHERE entry = 20507;
UPDATE `creature_template` SET `faction_A` = '35', `faction_H` = '35' WHERE entry = 20507;
UPDATE `creature_template` SET `speed_run` = '1.38571' WHERE entry = 20508;
UPDATE `creature_template` SET `faction_A` = '35', `faction_H` = '35' WHERE entry = 20508;
UPDATE `creature_template` SET `speed_run` = '1.38571' WHERE entry = 20509;
UPDATE `creature_template` SET `faction_A` = '35', `faction_H` = '35' WHERE entry = 20509;
UPDATE `creature_template` SET `faction_A` = '1732', `faction_H` = '1732' WHERE entry = 20510;
UPDATE `creature_template` SET `faction_A` = '1732', `faction_H` = '1732' WHERE entry = 20511;
UPDATE `creature_template` SET `faction_A` = '90', `faction_H` = '90' WHERE entry = 20683;
UPDATE `creature_template` SET `baseattacktime` = '2000' WHERE entry = 20683;
UPDATE `creature_template` SET `faction_A` = '1813', `faction_H` = '1813' WHERE entry = 20684;
UPDATE `creature_template` SET `faction_A` = '90', `faction_H` = '90' WHERE entry = 20798;
UPDATE `creature_template` SET `faction_A` = '90', `faction_H` = '90' WHERE entry = 20872;
# UPDATE `creature_template` SET `dynamicflags` = '4' WHERE entry = 20872;
UPDATE `creature_template` SET `faction_A` = '90', `faction_H` = '90' WHERE entry = 20878;
# UPDATE `creature_template` SET `dynamicflags` = '4' WHERE entry = 20878;
UPDATE `creature_template` SET `speed_walk` = '1.6' WHERE entry = 20887;
UPDATE `creature_template` SET `faction_A` = '90', `faction_H` = '90' WHERE entry = 20887;
# UPDATE `creature_template` SET `dynamicflags` = '4' WHERE entry = 20887;
UPDATE `creature_template` SET `speed_walk` = '1.55556' WHERE entry = 21050;
UPDATE `creature_template` SET `speed_run` = '1.28968' WHERE entry = 21059;
UPDATE `creature_template` SET `faction_A` = '16', `faction_H` = '16' WHERE entry = 21059;
UPDATE `creature_template` SET `faction_A` = '16', `faction_H` = '16' WHERE entry = 21060;
UPDATE `creature_template` SET `faction_A` = '16', `faction_H` = '16' WHERE entry = 21061;
# UPDATE `creature_template` SET `unit_flags` = '33555200' WHERE entry = 21095;
UPDATE `creature_template` SET `speed_run` = '0.992063' WHERE entry = 21108;
UPDATE `creature_template` SET `faction_A` = '16', `faction_H` = '16' WHERE entry = 21108;
UPDATE `creature_template` SET `speed_run` = '2.28571' WHERE entry = 21153;
UPDATE `creature_template` SET `faction_A` = '1735', `faction_H` = '1735' WHERE entry = 21153;
UPDATE `creature_template` SET `speed_run` = '1.42857' WHERE entry = 21166;
UPDATE `creature_template` SET `speed_walk` = '2' WHERE entry = 21166;
# UPDATE `creature_template` SET `unit_flags` = '32768' WHERE entry = 21207;
UPDATE `creature_template` SET `faction_A` = '90', `faction_H` = '90' WHERE entry = 21207;
# UPDATE `creature_template` SET `unit_flags` = '33555200' WHERE entry = 21210;
# UPDATE `creature_template` SET `unit_flags` = '33555200' WHERE entry = 21211;
UPDATE `creature_template` SET `speed_run` = '0.992063' WHERE entry = 21233;
UPDATE `creature_template` SET `faction_A` = '90', `faction_H` = '90' WHERE entry = 21233;
UPDATE `creature_template` SET `faction_A` = '68', `faction_H` = '68' WHERE entry = 21257;
UPDATE `creature_template` SET `speed_run` = '0.912699' WHERE entry = 21287;
UPDATE `creature_template` SET `speed_walk` = '0.888888' WHERE entry = 21287;
UPDATE `creature_template` SET `faction_A` = '954', `faction_H` = '954' WHERE entry = 21287;
# UPDATE `creature_template` SET `dynamicflags` = '4' WHERE entry = 21287;
# UPDATE `creature_template` SET `unit_flags` = '32768' WHERE entry = 21293;
UPDATE `creature_template` SET `faction_A` = '35', `faction_H` = '35' WHERE entry = 21293;
UPDATE `creature_template` SET `faction_A` = '90', `faction_H` = '90' WHERE entry = 21302;
UPDATE `creature_template` SET `speed_run` = '1.38889' WHERE entry = 21314;
UPDATE `creature_template` SET `faction_A` = '90', `faction_H` = '90' WHERE entry = 21314;
UPDATE `creature_template` SET `speed_run` = '0.357143' WHERE entry = 21316;
# UPDATE `creature_template` SET `unit_flags` = '33026' WHERE entry = 21316;
UPDATE `creature_template` SET `faction_A` = '114', `faction_H` = '114' WHERE entry = 21316;
UPDATE `creature_template` SET `faction_A` = '1732', `faction_H` = '1732' WHERE entry = 21330;
UPDATE `creature_template` SET `baseattacktime` = '2000' WHERE entry = 21330;
# UPDATE `creature_template` SET `unit_flags` = '37376' WHERE entry = 21336;
UPDATE `creature_template` SET `faction_A` = '1734', `faction_H` = '1734' WHERE entry = 21336;
# UPDATE `creature_template` SET `unit_flags` = '37376' WHERE entry = 21340;
UPDATE `creature_template` SET `faction_A` = '1734', `faction_H` = '1734' WHERE entry = 21340;
UPDATE `creature_template` SET `faction_A` = '1732', `faction_H` = '1732' WHERE entry = 21357;
UPDATE `creature_template` SET `faction_A` = '1735', `faction_H` = '1735' WHERE entry = 21359;
UPDATE `creature_template` SET `faction_A` = '1738', `faction_H` = '1738' WHERE entry = 21384;
UPDATE `creature_template` SET `faction_A` = '1738', `faction_H` = '1738' WHERE entry = 21385;
# UPDATE `creature_template` SET `unit_flags` = '33555200' WHERE entry = 21403;
# UPDATE `creature_template` SET `unit_flags` = '33600' WHERE entry = 21404;
UPDATE `creature_template` SET `faction_A` = '954', `faction_H` = '954' WHERE entry = 21404;
UPDATE `creature_template` SET `baseattacktime` = '2000' WHERE entry = 21404;
UPDATE `creature_template` SET `scale` = '0.5' WHERE entry = 21417;
UPDATE `creature_template` SET `speed_walk` = '0.5' WHERE entry = 21419;
# UPDATE `creature_template` SET `unit_flags` = '571083008' WHERE entry = 21419;
UPDATE `creature_template` SET `faction_A` = '90', `faction_H` = '90' WHERE entry = 21419;
UPDATE `creature_template` SET `faction_A` = '1738', `faction_H` = '1738' WHERE entry = 21450;
UPDATE `creature_template` SET `faction_A` = '1732', `faction_H` = '1732' WHERE entry = 21471;
# UPDATE `creature_template` SET `unit_flags` = '36864' WHERE entry = 21472;
UPDATE `creature_template` SET `faction_A` = '1732', `faction_H` = '1732' WHERE entry = 21472;
UPDATE `creature_template` SET `faction_A` = '29', `faction_H` = '29' WHERE entry = 21475;
UPDATE `creature_template` SET `faction_A` = '29', `faction_H` = '29' WHERE entry = 21476;
UPDATE `creature_template` SET `faction_A` = '1839', `faction_H` = '1839' WHERE entry = 21477;
UPDATE `creature_template` SET `baseattacktime` = '4000' WHERE entry = 21477;
UPDATE `creature_template` SET `speed_run` = '0.992063' WHERE entry = 21478;
UPDATE `creature_template` SET `faction_A` = '1839', `faction_H` = '1839' WHERE entry = 21478;
UPDATE `creature_template` SET `baseattacktime` = '1500' WHERE entry = 21478;
UPDATE `creature_template` SET `speed_run` = '0.952381' WHERE entry = 21499;
UPDATE `creature_template` SET `speed_walk` = '0.944444' WHERE entry = 21499;
UPDATE `creature_template` SET `faction_A` = '90', `faction_H` = '90' WHERE entry = 21499;
UPDATE `creature_template` SET `speed_run` = '0.992063' WHERE entry = 21500;
UPDATE `creature_template` SET `speed_walk` = '0.777776' WHERE entry = 21500;
# UPDATE `creature_template` SET `unit_flags` = '64' WHERE entry = 21500;
UPDATE `creature_template` SET `faction_A` = '90', `faction_H` = '90' WHERE entry = 21500;
# UPDATE `creature_template` SET `unit_flags` = '64' WHERE entry = 21501;
UPDATE `creature_template` SET `baseattacktime` = '2000' WHERE entry = 21501;
# UPDATE `creature_template` SET `unit_flags` = '33555200' WHERE entry = 21512;
UPDATE `creature_template` SET `speed_run` = '1.38571' WHERE entry = 21627;
UPDATE `creature_template` SET `faction_A` = '1793', `faction_H` = '1793' WHERE entry = 21627;
# UPDATE `creature_template` SET `dynamicflags` = '4' WHERE entry = 21627;
UPDATE `creature_template` SET `speed_run` = '2.28571' WHERE entry = 21648;
UPDATE `creature_template` SET `speed_walk` = '0.666668' WHERE entry = 21648;
# UPDATE `creature_template` SET `unit_flags` = '33344' WHERE entry = 21648;
UPDATE `creature_template` SET `baseattacktime` = '2000' WHERE entry = 21648;
UPDATE `creature_template` SET `speed_run` = '2.85714' WHERE entry = 21657;
UPDATE `creature_template` SET `baseattacktime` = '2000' WHERE entry = 21657;
UPDATE `creature_template` SET `faction_A` = '1858', `faction_H` = '1858' WHERE entry = 21701;
UPDATE `creature_template` SET `faction_A` = '29', `faction_H` = '29' WHERE entry = 21725;
UPDATE `creature_template` SET `faction_A` = '1732', `faction_H` = '1732' WHERE entry = 21727;
# UPDATE `creature_template` SET `unit_flags` = '563200' WHERE entry = 21736;
UPDATE `creature_template` SET `faction_A` = '1819', `faction_H` = '1819' WHERE entry = 21736;
UPDATE `creature_template` SET `baseattacktime` = '2000' WHERE entry = 21736;
UPDATE `creature_template` SET `faction_A` = '1701', `faction_H` = '1701' WHERE entry = 21742;
# UPDATE `creature_template` SET `unit_flags` = '33536' WHERE entry = 21744;
UPDATE `creature_template` SET `faction_A` = '1744', `faction_H` = '1744' WHERE entry = 21744;
# UPDATE `creature_template` SET `unit_flags` = '563200' WHERE entry = 21749;
UPDATE `creature_template` SET `faction_A` = '1835', `faction_H` = '1835' WHERE entry = 21749;
UPDATE `creature_template` SET `baseattacktime` = '2000' WHERE entry = 21766;
UPDATE `creature_template` SET `faction_A` = '1734', `faction_H` = '1734' WHERE entry = 21769;
UPDATE `creature_template` SET `baseattacktime` = '2000' WHERE entry = 21769;
UPDATE `creature_template` SET `faction_A` = '1734', `faction_H` = '1734' WHERE entry = 21770;
UPDATE `creature_template` SET `baseattacktime` = '2000' WHERE entry = 21770;
UPDATE `creature_template` SET `faction_A` = '1734', `faction_H` = '1734' WHERE entry = 21771;
UPDATE `creature_template` SET `baseattacktime` = '2000' WHERE entry = 21771;
UPDATE `creature_template` SET `faction_A` = '1734', `faction_H` = '1734' WHERE entry = 21772;
UPDATE `creature_template` SET `baseattacktime` = '2000' WHERE entry = 21772;
UPDATE `creature_template` SET `faction_A` = '1733', `faction_H` = '1733' WHERE entry = 21773;
UPDATE `creature_template` SET `baseattacktime` = '2000' WHERE entry = 21773;
UPDATE `creature_template` SET `faction_A` = '1733', `faction_H` = '1733' WHERE entry = 21774;
UPDATE `creature_template` SET `baseattacktime` = '2000' WHERE entry = 21774;
UPDATE `creature_template` SET `faction_A` = '1733', `faction_H` = '1733' WHERE entry = 21775;
UPDATE `creature_template` SET `baseattacktime` = '2000' WHERE entry = 21775;
UPDATE `creature_template` SET `faction_A` = '1733', `faction_H` = '1733' WHERE entry = 21777;
UPDATE `creature_template` SET `baseattacktime` = '2000' WHERE entry = 21777;
UPDATE `creature_template` SET `faction_A` = '1813', `faction_H` = '1813' WHERE entry = 21802;
UPDATE `creature_template` SET `baseattacktime` = '2000' WHERE entry = 21803;
# UPDATE `creature_template` SET `unit_flags` = '33555200' WHERE entry = 21807;
UPDATE `creature_template` SET `baseattacktime` = '2000' WHERE entry = 21808;
UPDATE `creature_template` SET `speed_run` = '1.19048' WHERE entry = 21878;
UPDATE `creature_template` SET `faction_A` = '35', `faction_H` = '35' WHERE entry = 21909;
# UPDATE `creature_template` SET `unit_flags` = '33555200' WHERE entry = 21924;
# UPDATE `creature_template` SET `unit_flags` = '33536' WHERE entry = 21937;
UPDATE `creature_template` SET `faction_A` = '1727', `faction_H` = '1727' WHERE entry = 21937;
# UPDATE `creature_template` SET `unit_flags` = '33536' WHERE entry = 21938;
UPDATE `creature_template` SET `baseattacktime` = '2000' WHERE entry = 21938;
# UPDATE `creature_template` SET `unit_flags` = '33536' WHERE entry = 21953;
UPDATE `creature_template` SET `faction_A` = '1744', `faction_H` = '1744' WHERE entry = 21953;
UPDATE `creature_template` SET `baseattacktime` = '2000' WHERE entry = 21953;
# UPDATE `creature_template` SET `unit_flags` = '33536' WHERE entry = 21954;
UPDATE `creature_template` SET `faction_A` = '1744', `faction_H` = '1744' WHERE entry = 21954;
UPDATE `creature_template` SET `baseattacktime` = '2000' WHERE entry = 21954;
# UPDATE `creature_template` SET `unit_flags` = '33536' WHERE entry = 21955;
UPDATE `creature_template` SET `faction_A` = '1744', `faction_H` = '1744' WHERE entry = 21955;
UPDATE `creature_template` SET `baseattacktime` = '2000' WHERE entry = 21955;
# UPDATE `creature_template` SET `unit_flags` = '33555200' WHERE entry = 22002;
UPDATE `creature_template` SET `faction_A` = '35', `faction_H` = '35' WHERE entry = 22008;
UPDATE `creature_template` SET `faction_A` = '1701', `faction_H` = '1701' WHERE entry = 22016;
# UPDATE `creature_template` SET `dynamicflags` = '4' WHERE entry = 22016;
UPDATE `creature_template` SET `baseattacktime` = '2000' WHERE entry = 22016;
UPDATE `creature_template` SET `faction_A` = '1701', `faction_H` = '1701' WHERE entry = 22017;
# UPDATE `creature_template` SET `dynamicflags` = '4' WHERE entry = 22017;
UPDATE `creature_template` SET `faction_A` = '1701', `faction_H` = '1701' WHERE entry = 22018;
# UPDATE `creature_template` SET `dynamicflags` = '4' WHERE entry = 22018;
UPDATE `creature_template` SET `faction_A` = '1732', `faction_H` = '1732' WHERE entry = 22042;
UPDATE `creature_template` SET `faction_A` = '1735', `faction_H` = '1735' WHERE entry = 22043;
# UPDATE `creature_template` SET `unit_flags` = '33555200' WHERE entry = 22070;
# UPDATE `creature_template` SET `unit_flags` = '32832' WHERE entry = 22072;
UPDATE `creature_template` SET `baseattacktime` = '2000' WHERE entry = 22082;
UPDATE `creature_template` SET `faction_A` = '1813', `faction_H` = '1813' WHERE entry = 22134;
UPDATE `creature_template` SET `baseattacktime` = '10000' WHERE entry = 22134;
# UPDATE `creature_template` SET `unit_flags` = '33536' WHERE entry = 22211;
UPDATE `creature_template` SET `faction_A` = '1845', `faction_H` = '1845' WHERE entry = 22211;
UPDATE `creature_template` SET `baseattacktime` = '2000' WHERE entry = 22211;
UPDATE `creature_template` SET `faction_A` = '32', `faction_H` = '32' WHERE entry = 22265;
UPDATE `creature_template` SET `faction_A` = '90', `faction_H` = '90' WHERE entry = 22323;
UPDATE `creature_template` SET `speed_run` = '0.857143' WHERE entry = 22445;
# UPDATE `creature_template` SET `unit_flags` = '776' WHERE entry = 22445;
UPDATE `creature_template` SET `faction_A` = '90', `faction_H` = '90' WHERE entry = 22461;
# UPDATE `creature_template` SET `dynamicflags` = '4' WHERE entry = 22461;
# UPDATE `creature_template` SET `unit_flags` = '537430016' WHERE entry = 22857;
# UPDATE `creature_template` SET `unit_flags` = '559104' WHERE entry = 22858;
UPDATE `creature_template` SET `faction_A` = '1843', `faction_H` = '1843' WHERE entry = 22858;
# UPDATE `creature_template` SET `unit_flags` = '537166592' WHERE entry = 22859;
UPDATE `creature_template` SET `faction_A` = '1843', `faction_H` = '1843' WHERE entry = 22859;
# UPDATE `creature_template` SET `dynamicflags` = '32' WHERE entry = 22859;
# UPDATE `creature_template` SET `unit_flags` = '559104' WHERE entry = 22860;
UPDATE `creature_template` SET `faction_A` = '1843', `faction_H` = '1843' WHERE entry = 22860;
# UPDATE `creature_template` SET `unit_flags` = '559360' WHERE entry = 22861;
UPDATE `creature_template` SET `faction_A` = '1854', `faction_H` = '1854' WHERE entry = 22861;
# UPDATE `creature_template` SET `unit_flags` = '559360' WHERE entry = 22862;
UPDATE `creature_template` SET `faction_A` = '1854', `faction_H` = '1854' WHERE entry = 22862;
# UPDATE `creature_template` SET `unit_flags` = '559360' WHERE entry = 22863;
UPDATE `creature_template` SET `faction_A` = '1855', `faction_H` = '1855' WHERE entry = 22863;
# UPDATE `creature_template` SET `unit_flags` = '559360' WHERE entry = 22864;
UPDATE `creature_template` SET `faction_A` = '1855', `faction_H` = '1855' WHERE entry = 22864;
UPDATE `creature_template` SET `speed_run` = '1.38571' WHERE entry = 22966;
# UPDATE `creature_template` SET `unit_flags` = '33024' WHERE entry = 22966;
UPDATE `creature_template` SET `speed_run` = '1.38571' WHERE entry = 22967;
# UPDATE `creature_template` SET `unit_flags` = '33024' WHERE entry = 22967;
UPDATE `creature_template` SET `faction_A` = '1855', `faction_H` = '1855' WHERE entry = 22967;
UPDATE `creature_template` SET `faction_A` = '1876', `faction_H` = '1876' WHERE entry = 23434;
UPDATE `creature_template` SET `baseattacktime` = '2000' WHERE entry = 23434;
# UPDATE `creature_template` SET `unit_flags` = '33587968' WHERE entry = 23443;
UPDATE `creature_template` SET `speed_run` = '0.992063' WHERE entry = 23472;
UPDATE `creature_template` SET `speed_run` = '0.992063' WHERE entry = 23725;
# UPDATE `creature_template` SET `unit_flags` = '64' WHERE entry = 23725;
UPDATE `creature_template` SET `faction_A` = '634', `faction_H` = '634' WHERE entry = 23725;
UPDATE `creature_template` SET `speed_run` = '1.38571' WHERE entry = 23740;
# UPDATE `creature_template` SET `unit_flags` = '67108864' WHERE entry = 23740;
UPDATE `creature_template` SET `faction_A` = '634', `faction_H` = '634' WHERE entry = 23740;
# UPDATE `creature_template` SET `dynamicflags` = '4' WHERE entry = 23740;
UPDATE `creature_template` SET `speed_run` = '1.11111' WHERE entry = 23744;
# UPDATE `creature_template` SET `unit_flags` = '32768' WHERE entry = 23744;
UPDATE `creature_template` SET `speed_run` = '2.14286' WHERE entry = 23772;
UPDATE `creature_template` SET `speed_walk` = '2' WHERE entry = 23772;
UPDATE `creature_template` SET `faction_A` = '634', `faction_H` = '634' WHERE entry = 23772;
UPDATE `creature_template` SET `speed_run` = '0.992063' WHERE entry = 23796;
# UPDATE `creature_template` SET `unit_flags` = '32768' WHERE entry = 23796;
UPDATE `creature_template` SET `faction_A` = '16', `faction_H` = '16' WHERE entry = 23796;
UPDATE `creature_template` SET `speed_walk` = '0.666668' WHERE entry = 23874;
UPDATE `creature_template` SET `speed_walk` = '1.11111' WHERE entry = 23875;
# UPDATE `creature_template` SET `unit_flags` = '32768' WHERE entry = 23875;
UPDATE `creature_template` SET `faction_A` = '16', `faction_H` = '16' WHERE entry = 23875;
UPDATE `creature_template` SET `speed_walk` = '0.8' WHERE entry = 23876;
# UPDATE `creature_template` SET `unit_flags` = '32768' WHERE entry = 23989;
UPDATE `creature_template` SET `faction_A` = '1885', `faction_H` = '1885' WHERE entry = 23989;
# UPDATE `creature_template` SET `unit_flags` = '32768' WHERE entry = 23990;
UPDATE `creature_template` SET `faction_A` = '1885', `faction_H` = '1885' WHERE entry = 23990;
UPDATE `creature_template` SET `speed_run` = '1.14286' WHERE entry = 23991;
# UPDATE `creature_template` SET `unit_flags` = '32768' WHERE entry = 23991;
UPDATE `creature_template` SET `faction_A` = '1885', `faction_H` = '1885' WHERE entry = 23991;
UPDATE `creature_template` SET `speed_walk` = '0.8' WHERE entry = 23992;
# UPDATE `creature_template` SET `unit_flags` = '32768' WHERE entry = 23992;
UPDATE `creature_template` SET `faction_A` = '21', `faction_H` = '21' WHERE entry = 23992;
UPDATE `creature_template` SET `speed_run` = '2.28571' WHERE entry = 23993;
UPDATE `creature_template` SET `speed_walk` = '1.6' WHERE entry = 23993;
# UPDATE `creature_template` SET `unit_flags` = '64' WHERE entry = 23993;
UPDATE `creature_template` SET `faction_A` = '21', `faction_H` = '21' WHERE entry = 23993;
UPDATE `creature_template` SET `speed_run` = '1.28571' WHERE entry = 24013;
UPDATE `creature_template` SET `speed_walk` = '2' WHERE entry = 24013;
UPDATE `creature_template` SET `faction_A` = '21', `faction_H` = '21' WHERE entry = 24013;
UPDATE `creature_template` SET `baseattacktime` = '3000' WHERE entry = 24013;
# UPDATE `creature_template` SET `unit_flags` = '33024' WHERE entry = 24014;
UPDATE `creature_template` SET `faction_A` = '21', `faction_H` = '21' WHERE entry = 24014;
# UPDATE `creature_template` SET `unit_flags` = '32768' WHERE entry = 24018;
UPDATE `creature_template` SET `faction_A` = '21', `faction_H` = '21' WHERE entry = 24018;
UPDATE `creature_template` SET `baseattacktime` = '2500' WHERE entry = 24018;
UPDATE `creature_template` SET `speed_run` = '2.85714' WHERE entry = 24019;
UPDATE `creature_template` SET `speed_walk` = '4' WHERE entry = 24019;
UPDATE `creature_template` SET `faction_A` = '21', `faction_H` = '21' WHERE entry = 24019;
UPDATE `creature_template` SET `baseattacktime` = '1800' WHERE entry = 24019;
UPDATE `creature_template` SET `speed_walk` = '1.2' WHERE entry = 24026;
# UPDATE `creature_template` SET `dynamicflags` = '4' WHERE entry = 24026;
# UPDATE `creature_template` SET `unit_flags` = '512' WHERE entry = 24028;
UPDATE `creature_template` SET `speed_run` = '1.07143' WHERE entry = 24029;
# UPDATE `creature_template` SET `unit_flags` = '32768' WHERE entry = 24029;
UPDATE `creature_template` SET `faction_A` = '21', `faction_H` = '21' WHERE entry = 24029;
UPDATE `creature_template` SET `baseattacktime` = '2500' WHERE entry = 24029;
UPDATE `creature_template` SET `speed_run` = '0.992063' WHERE entry = 24030;
# UPDATE `creature_template` SET `unit_flags` = '32768' WHERE entry = 24030;
UPDATE `creature_template` SET `faction_A` = '16', `faction_H` = '16' WHERE entry = 24030;
# UPDATE `creature_template` SET `unit_flags` = '32768' WHERE entry = 24031;
# UPDATE `creature_template` SET `unit_flags` = '512' WHERE entry = 24033;
# UPDATE `creature_template` SET `unit_flags` = '32768' WHERE entry = 24035;
# UPDATE `creature_template` SET `unit_flags` = '32768' WHERE entry = 24050;
# UPDATE `creature_template` SET `unit_flags` = '32768' WHERE entry = 24052;
# UPDATE `creature_template` SET `unit_flags` = '32768' WHERE entry = 24053;
# UPDATE `creature_template` SET `unit_flags` = '32768' WHERE entry = 24054;
# UPDATE `creature_template` SET `unit_flags` = '32768' WHERE entry = 24055;
# UPDATE `creature_template` SET `unit_flags` = '32768' WHERE entry = 24056;
# UPDATE `creature_template` SET `unit_flags` = '32768' WHERE entry = 24057;
# UPDATE `creature_template` SET `unit_flags` = '32768' WHERE entry = 24058;
# UPDATE `creature_template` SET `unit_flags` = '32768' WHERE entry = 24061;
# UPDATE `creature_template` SET `unit_flags` = '32768' WHERE entry = 24062;
# UPDATE `creature_template` SET `unit_flags` = '32768' WHERE entry = 24066;
# UPDATE `creature_template` SET `unit_flags` = '512' WHERE entry = 24067;
UPDATE `creature_template` SET `speed_run` = '1.28968' WHERE entry = 24073;
# UPDATE `creature_template` SET `unit_flags` = '33024' WHERE entry = 24073;
UPDATE `creature_template` SET `faction_A` = '21', `faction_H` = '21' WHERE entry = 24073;
# UPDATE `creature_template` SET `unit_flags` = '32768' WHERE entry = 24129;
# UPDATE `creature_template` SET `unit_flags` = '32768' WHERE entry = 24135;
UPDATE `creature_template` SET `speed_run` = '1.85714' WHERE entry = 24142;
# UPDATE `creature_template` SET `unit_flags` = '32768' WHERE entry = 24142;
UPDATE `creature_template` SET `speed_run` = '0.714286' WHERE entry = 24174;
# UPDATE `creature_template` SET `unit_flags` = '32768' WHERE entry = 24176;
UPDATE `creature_template` SET `speed_run` = '1.11111' WHERE entry = 24178;
# UPDATE `creature_template` SET `unit_flags` = '33536' WHERE entry = 24178;
UPDATE `creature_template` SET `speed_walk` = '1.2' WHERE entry = 24196;
# UPDATE `creature_template` SET `unit_flags` = '537166080' WHERE entry = 24196;
# UPDATE `creature_template` SET `dynamicflags` = '32' WHERE entry = 24196;
UPDATE `creature_template` SET `speed_walk` = '1.2' WHERE entry = 24206;
# UPDATE `creature_template` SET `unit_flags` = '67108864' WHERE entry = 24206;
# UPDATE `creature_template` SET `dynamicflags` = '4' WHERE entry = 24206;
UPDATE `creature_template` SET `speed_run` = '0.992063' WHERE entry = 24212;
# UPDATE `creature_template` SET `unit_flags` = '32768' WHERE entry = 24212;
UPDATE `creature_template` SET `scale` = '1.5' WHERE entry = 24212;
UPDATE `creature_template` SET `speed_walk` = '1.55556' WHERE entry = 24228;
UPDATE `creature_template` SET `faction_A` = '91', `faction_H` = '91' WHERE entry = 24228;
# UPDATE `creature_template` SET `unit_flags` = '770' WHERE entry = 24235;
UPDATE `creature_template` SET `faction_A` = '91', `faction_H` = '91' WHERE entry = 24235;
UPDATE `creature_template` SET `speed_walk` = '1.2' WHERE entry = 24261;
# UPDATE `creature_template` SET `unit_flags` = '33024' WHERE entry = 24261;
# UPDATE `creature_template` SET `unit_flags` = '32768' WHERE entry = 24262;
UPDATE `creature_template` SET `faction_A` = '21', `faction_H` = '21' WHERE entry = 24262;
# UPDATE `creature_template` SET `unit_flags` = '32768' WHERE entry = 24316;
UPDATE `creature_template` SET `speed_run` = '0.992063' WHERE entry = 24329;
# UPDATE `creature_template` SET `unit_flags` = '64' WHERE entry = 24329;
UPDATE `creature_template` SET `faction_A` = '778', `faction_H` = '778' WHERE entry = 24329;
UPDATE `creature_template` SET `speed_run` = '0.992063' WHERE entry = 24334;
# UPDATE `creature_template` SET `unit_flags` = '32768' WHERE entry = 24334;
UPDATE `creature_template` SET `faction_A` = '16', `faction_H` = '16' WHERE entry = 24334;
# UPDATE `creature_template` SET `unit_flags` = '33555200' WHERE entry = 24335;
UPDATE `creature_template` SET `speed_walk` = '0.777776' WHERE entry = 24371;
# UPDATE `creature_template` SET `unit_flags` = '32832' WHERE entry = 24371;
UPDATE `creature_template` SET `faction_A` = '778', `faction_H` = '778' WHERE entry = 24371;
UPDATE `creature_template` SET `speed_run` = '2.28571' WHERE entry = 24514;
UPDATE `creature_template` SET `speed_walk` = '2' WHERE entry = 24514;
UPDATE `creature_template` SET `speed_run` = '0.857143' WHERE entry = 24515;
# UPDATE `creature_template` SET `unit_flags` = '768' WHERE entry = 24515;
UPDATE `creature_template` SET `speed_run` = '1.42857' WHERE entry = 24524;
# UPDATE `creature_template` SET `unit_flags` = '768' WHERE entry = 24524;
UPDATE `creature_template` SET `faction_A` = '35', `faction_H` = '35' WHERE entry = 24524;
UPDATE `creature_template` SET `speed_walk` = '1.11111' WHERE entry = 24638;
# UPDATE `creature_template` SET `unit_flags` = '32768' WHERE entry = 24638;
UPDATE `creature_template` SET `faction_A` = '16', `faction_H` = '16' WHERE entry = 24638;
# UPDATE `creature_template` SET `unit_flags` = '33024' WHERE entry = 24669;
UPDATE `creature_template` SET `speed_run` = '1.57143' WHERE entry = 24812;
UPDATE `creature_template` SET `speed_walk` = '2.4' WHERE entry = 24812;
UPDATE `creature_template` SET `speed_run` = '1.38571' WHERE entry = 24863;
# UPDATE `creature_template` SET `unit_flags` = '67108864' WHERE entry = 24863;
UPDATE `creature_template` SET `faction_A` = '634', `faction_H` = '634' WHERE entry = 24863;
# UPDATE `creature_template` SET `dynamicflags` = '4' WHERE entry = 24863;
UPDATE `creature_template` SET `speed_run` = '1.38571' WHERE entry = 24901;
# UPDATE `creature_template` SET `unit_flags` = '526352' WHERE entry = 24901;
UPDATE `creature_template` SET `faction_A` = '1693', `faction_H` = '1693' WHERE entry = 24901;
# UPDATE `creature_template` SET `unit_flags` = '32832' WHERE entry = 24918;
UPDATE `creature_template` SET `faction_A` = '1793', `faction_H` = '1793' WHERE entry = 24918;
UPDATE `creature_template` SET `faction_A` = '90', `faction_H` = '90' WHERE entry = 24919;
UPDATE `creature_template` SET `baseattacktime` = '2000' WHERE entry = 24919;
UPDATE `creature_template` SET `speed_run` = '0.992063' WHERE entry = 24920;
UPDATE `creature_template` SET `faction_A` = '1873', `faction_H` = '1873' WHERE entry = 24920;
UPDATE `creature_template` SET `baseattacktime` = '1500' WHERE entry = 24920;
UPDATE `creature_template` SET `speed_run` = '0.992063' WHERE entry = 24922;
UPDATE `creature_template` SET `faction_A` = '16', `faction_H` = '16' WHERE entry = 24922;
UPDATE `creature_template` SET `speed_walk` = '1.2' WHERE entry = 24925;
# UPDATE `creature_template` SET `unit_flags` = '33026' WHERE entry = 24933;
UPDATE `creature_template` SET `faction_A` = '190', `faction_H` = '190' WHERE entry = 24933;
# UPDATE `creature_template` SET `unit_flags` = '33536' WHERE entry = 24937;
UPDATE `creature_template` SET `baseattacktime` = '2000' WHERE entry = 24937;
UPDATE `creature_template` SET `faction_A` = '714', `faction_H` = '714' WHERE entry = 25099;
# UPDATE `creature_template` SET `unit_flags` = '33817344' WHERE entry = 26298;
# UPDATE `creature_template` SET `unit_flags` = '32768' WHERE entry = 26347;
UPDATE `creature_template` SET `speed_run` = '0.992063' WHERE entry = 26356;
UPDATE `creature_template` SET `speed_walk` = '0.666668' WHERE entry = 26356;
# UPDATE `creature_template` SET `unit_flags` = '559104' WHERE entry = 26356;
UPDATE `creature_template` SET `speed_run` = '0.992063' WHERE entry = 26357;
UPDATE `creature_template` SET `speed_walk` = '0.666668' WHERE entry = 26357;
# UPDATE `creature_template` SET `unit_flags` = '559104' WHERE entry = 26357;
# UPDATE `creature_template` SET `unit_flags` = '537692928' WHERE entry = 26363;
# UPDATE `creature_template` SET `dynamicflags` = '32' WHERE entry = 26363;
UPDATE `creature_template` SET `speed_run` = '0.857143' WHERE entry = 26366;
# UPDATE `creature_template` SET `dynamicflags` = '13' WHERE entry = 26366;
UPDATE `creature_template` SET `speed_run` = '1.57143' WHERE entry = 26369;
# UPDATE `creature_template` SET `dynamicflags` = '13' WHERE entry = 26369;
UPDATE `creature_template` SET `speed_run` = '0.992063' WHERE entry = 26408;
# UPDATE `creature_template` SET `unit_flags` = '32768' WHERE entry = 26408;
UPDATE `creature_template` SET `speed_run` = '0.992063' WHERE entry = 26414;
# UPDATE `creature_template` SET `unit_flags` = '32768' WHERE entry = 26414;
UPDATE `creature_template` SET `baseattacktime` = '3000' WHERE entry = 26414;
UPDATE `creature_template` SET `speed_run` = '0.992063' WHERE entry = 26417;
# UPDATE `creature_template` SET `unit_flags` = '64' WHERE entry = 26417;
UPDATE `creature_template` SET `faction_A` = '1771', `faction_H` = '1771' WHERE entry = 26417;
UPDATE `creature_template` SET `faction_A` = '1999', `faction_H` = '1999' WHERE entry = 26418;
UPDATE `creature_template` SET `faction_A` = '190', `faction_H` = '190' WHERE entry = 26423;
UPDATE `creature_template` SET `faction_A` = '37', `faction_H` = '37' WHERE entry = 26425;
UPDATE `creature_template` SET `speed_run` = '0.992063' WHERE entry = 26434;
UPDATE `creature_template` SET `speed_walk` = '0.666668' WHERE entry = 26434;
# UPDATE `creature_template` SET `unit_flags` = '32768' WHERE entry = 26434;
UPDATE `creature_template` SET `speed_run` = '0.992063' WHERE entry = 26436;
UPDATE `creature_template` SET `speed_walk` = '0.666668' WHERE entry = 26436;
# UPDATE `creature_template` SET `unit_flags` = '559104' WHERE entry = 26436;
UPDATE `creature_template` SET `faction_A` = '16', `faction_H` = '16' WHERE entry = 26446;
UPDATE `creature_template` SET `faction_A` = '37', `faction_H` = '37' WHERE entry = 26447;
UPDATE `creature_template` SET `speed_walk` = '0.666668' WHERE entry = 26458;
UPDATE `creature_template` SET `faction_A` = '37', `faction_H` = '37' WHERE entry = 26458;
UPDATE `creature_template` SET `baseattacktime` = '1500' WHERE entry = 26458;
# UPDATE `creature_template` SET `unit_flags` = '559104' WHERE entry = 26461;
UPDATE `creature_template` SET `speed_run` = '1.28571' WHERE entry = 26472;
UPDATE `creature_template` SET `faction_A` = '2000', `faction_H` = '2000' WHERE entry = 26472;
# UPDATE `creature_template` SET `unit_flags` = '33024' WHERE entry = 26500;
UPDATE `creature_template` SET `faction_A` = '190', `faction_H` = '190' WHERE entry = 26500;
UPDATE `creature_template` SET `faction_A` = '37', `faction_H` = '37' WHERE entry = 26513;
# UPDATE `creature_template` SET `dynamicflags` = '32' WHERE entry = 26513;
UPDATE `creature_template` SET `faction_A` = '37', `faction_H` = '37' WHERE entry = 26516;
# UPDATE `creature_template` SET `dynamicflags` = '32' WHERE entry = 26516;
# UPDATE `creature_template` SET `unit_flags` = '33024' WHERE entry = 26543;
UPDATE `creature_template` SET `faction_A` = '190', `faction_H` = '190' WHERE entry = 26543;
UPDATE `creature_template` SET `faction_A` = '37', `faction_H` = '37' WHERE entry = 26544;
UPDATE `creature_template` SET `speed_run` = '0.992063' WHERE entry = 26570;
UPDATE `creature_template` SET `faction_A` = '37', `faction_H` = '37' WHERE entry = 26570;
UPDATE `creature_template` SET `baseattacktime` = '1500' WHERE entry = 26570;
UPDATE `creature_template` SET `faction_A` = '37', `faction_H` = '37' WHERE entry = 26582;
UPDATE `creature_template` SET `baseattacktime` = '1500' WHERE entry = 26582;
UPDATE `creature_template` SET `faction_A` = '37', `faction_H` = '37' WHERE entry = 26583;
UPDATE `creature_template` SET `baseattacktime` = '1500' WHERE entry = 26583;
UPDATE `creature_template` SET `speed_run` = '0.928571' WHERE entry = 26588;
# UPDATE `creature_template` SET `unit_flags` = '768' WHERE entry = 26588;
UPDATE `creature_template` SET `speed_run` = '0.928571' WHERE entry = 26589;
# UPDATE `creature_template` SET `unit_flags` = '256' WHERE entry = 26589;
# UPDATE `creature_template` SET `unit_flags` = '526336' WHERE entry = 26592;
UPDATE `creature_template` SET `speed_run` = '0.857143' WHERE entry = 26646;
UPDATE `creature_template` SET `speed_walk` = '0.666668' WHERE entry = 26646;
UPDATE `creature_template` SET `faction_A` = '16', `faction_H` = '16' WHERE entry = 26646;
# UPDATE `creature_template` SET `dynamicflags` = '13' WHERE entry = 26646;
UPDATE `creature_template` SET `speed_run` = '0.992063' WHERE entry = 26681;
UPDATE `creature_template` SET `speed_walk` = '0.666668' WHERE entry = 26681;
# UPDATE `creature_template` SET `unit_flags` = '32768' WHERE entry = 26681;
UPDATE `creature_template` SET `faction_A` = '2001', `faction_H` = '2001' WHERE entry = 26681;
# UPDATE `creature_template` SET `unit_flags` = '33554688' WHERE entry = 26700;
# UPDATE `creature_template` SET `unit_flags` = '33024' WHERE entry = 26701;
UPDATE `creature_template` SET `faction_A` = '190', `faction_H` = '190' WHERE entry = 26701;
# UPDATE `creature_template` SET `unit_flags` = '559120' WHERE entry = 26704;
UPDATE `creature_template` SET `faction_A` = '1693', `faction_H` = '1693' WHERE entry = 26704;
UPDATE `creature_template` SET `faction_A` = '44', `faction_H` = '44' WHERE entry = 26706;
UPDATE `creature_template` SET `faction_A` = '2032', `faction_H` = '2032' WHERE entry = 26708;
UPDATE `creature_template` SET `faction_A` = '1979', `faction_H` = '1979' WHERE entry = 26864;
# UPDATE `creature_template` SET `unit_flags` = '768' WHERE entry = 26883;
# UPDATE `creature_template` SET `unit_flags` = '768' WHERE entry = 26885;
UPDATE `creature_template` SET `baseattacktime` = '1500' WHERE entry = 26935;
# UPDATE `creature_template` SET `unit_flags` = '33024' WHERE entry = 27062;
# UPDATE `creature_template` SET `unit_flags` = '32768' WHERE entry = 27072;
UPDATE `creature_template` SET `baseattacktime` = '1500' WHERE entry = 27072;
# UPDATE `creature_template` SET `unit_flags` = '559104' WHERE entry = 27117;
UPDATE `creature_template` SET `faction_A` = '1315', `faction_H` = '1315' WHERE entry = 27117;
# UPDATE `creature_template` SET `unit_flags` = '563200' WHERE entry = 27118;
UPDATE `creature_template` SET `faction_A` = '1314', `faction_H` = '1314' WHERE entry = 27118;
UPDATE `creature_template` SET `speed_walk` = '0.8' WHERE entry = 27230;
# UPDATE `creature_template` SET `unit_flags` = '33555200' WHERE entry = 27263;
# UPDATE `creature_template` SET `unit_flags` = '33555200' WHERE entry = 27264;
# UPDATE `creature_template` SET `unit_flags` = '33555200' WHERE entry = 27265;
UPDATE `creature_template` SET `faction_A` = '35', `faction_H` = '35' WHERE entry = 27274;
UPDATE `creature_template` SET `baseattacktime` = '1500' WHERE entry = 27293;
# UPDATE `creature_template` SET `unit_flags` = '33555200' WHERE entry = 27322;
# UPDATE `creature_template` SET `unit_flags` = '33554688' WHERE entry = 27326;
UPDATE `creature_template` SET `speed_run` = '0.857143' WHERE entry = 27408;
UPDATE `creature_template` SET `speed_walk` = '1.2' WHERE entry = 27408;
UPDATE `creature_template` SET `faction_A` = '1892', `faction_H` = '1892' WHERE entry = 27414;
UPDATE `creature_template` SET `speed_run` = '0.857143' WHERE entry = 27421;
# UPDATE `creature_template` SET `unit_flags` = '559104' WHERE entry = 27424;
UPDATE `creature_template` SET `faction_A` = '1314', `faction_H` = '1314' WHERE entry = 27424;
# UPDATE `creature_template` SET `unit_flags` = '559104' WHERE entry = 27456;
# UPDATE `creature_template` SET `dynamicflags` = '32' WHERE entry = 27457;
UPDATE `creature_template` SET `faction_A` = '35', `faction_H` = '35' WHERE entry = 27469;
# UPDATE `creature_template` SET `unit_flags` = '526336' WHERE entry = 27475;
# UPDATE `creature_template` SET `dynamicflags` = '32' WHERE entry = 27479;
# UPDATE `creature_template` SET `dynamicflags` = '32' WHERE entry = 27481;
UPDATE `creature_template` SET `faction_A` = '35', `faction_H` = '35' WHERE entry = 27486;
# UPDATE `creature_template` SET `unit_flags` = '32768' WHERE entry = 27493;
UPDATE `creature_template` SET `faction_A` = '1314', `faction_H` = '1314' WHERE entry = 27493;
UPDATE `creature_template` SET `faction_A` = '35', `faction_H` = '35' WHERE entry = 27497;
UPDATE `creature_template` SET `baseattacktime` = '1500' WHERE entry = 27497;
UPDATE `creature_template` SET `speed_run` = '0.857143' WHERE entry = 27523;
UPDATE `creature_template` SET `speed_walk` = '1.2' WHERE entry = 27523;
# UPDATE `creature_template` SET `unit_flags` = '32768' WHERE entry = 27523;
UPDATE `creature_template` SET `faction_A` = '1953', `faction_H` = '1953' WHERE entry = 27523;
UPDATE `creature_template` SET `faction_A` = '2032', `faction_H` = '2032' WHERE entry = 27545;
# UPDATE `creature_template` SET `unit_flags` = '32768' WHERE entry = 27554;
UPDATE `creature_template` SET `faction_A` = '1693', `faction_H` = '1693' WHERE entry = 27554;
UPDATE `creature_template` SET `baseattacktime` = '1500' WHERE entry = 27554;
# UPDATE `creature_template` SET `unit_flags` = '32768' WHERE entry = 27555;
UPDATE `creature_template` SET `faction_A` = '37', `faction_H` = '37' WHERE entry = 27555;
UPDATE `creature_template` SET `baseattacktime` = '1500' WHERE entry = 27555;
# UPDATE `creature_template` SET `unit_flags` = '512' WHERE entry = 27581;
UPDATE `creature_template` SET `baseattacktime` = '1500' WHERE entry = 27581;
# UPDATE `creature_template` SET `unit_flags` = '559104' WHERE entry = 27676;
# UPDATE `creature_template` SET `dynamicflags` = '12' WHERE entry = 27676;
UPDATE `creature_template` SET `speed_run` = '1.19048' WHERE entry = 27699;
# UPDATE `creature_template` SET `unit_flags` = '32768' WHERE entry = 27699;
UPDATE `creature_template` SET `faction_A` = '16', `faction_H` = '16' WHERE entry = 27699;
UPDATE `creature_template` SET `speed_run` = '1.19048' WHERE entry = 27701;
# UPDATE `creature_template` SET `unit_flags` = '32768' WHERE entry = 27701;
UPDATE `creature_template` SET `faction_A` = '16', `faction_H` = '16' WHERE entry = 27701;
UPDATE `creature_template` SET `speed_run` = '1.38571' WHERE entry = 27783;
UPDATE `creature_template` SET `speed_run` = '3' WHERE entry = 27869;
UPDATE `creature_template` SET `speed_walk` = '8' WHERE entry = 27869;
UPDATE `creature_template` SET `baseattacktime` = '10000' WHERE entry = 27869;
# UPDATE `creature_template` SET `unit_flags` = '33024' WHERE entry = 27986;
# UPDATE `creature_template` SET `unit_flags` = '559104' WHERE entry = 28001;
# UPDATE `creature_template` SET `unit_flags` = '67108864' WHERE entry = 28003;
# UPDATE `creature_template` SET `dynamicflags` = '4' WHERE entry = 28003;
# UPDATE `creature_template` SET `dynamicflags` = '4' WHERE entry = 28004;
# UPDATE `creature_template` SET `dynamicflags` = '4' WHERE entry = 28009;
# UPDATE `creature_template` SET `dynamicflags` = '4' WHERE entry = 28011;
# UPDATE `creature_template` SET `unit_flags` = '526336' WHERE entry = 28022;
# UPDATE `creature_template` SET `unit_flags` = '526336' WHERE entry = 28023;
UPDATE `creature_template` SET `speed_run` = '1.19048' WHERE entry = 28024;
# UPDATE `creature_template` SET `unit_flags` = '294912' WHERE entry = 28024;
UPDATE `creature_template` SET `speed_run` = '1.19048' WHERE entry = 28025;
# UPDATE `creature_template` SET `unit_flags` = '294912' WHERE entry = 28025;
# UPDATE `creature_template` SET `unit_flags` = '8947712' WHERE entry = 28026;
UPDATE `creature_template` SET `speed_run` = '1.19048' WHERE entry = 28027;
# UPDATE `creature_template` SET `unit_flags` = '559632' WHERE entry = 28028;
UPDATE `creature_template` SET `faction_A` = '2138', `faction_H` = '2138' WHERE entry = 28028;
# UPDATE `creature_template` SET `unit_flags` = '559616' WHERE entry = 28029;
UPDATE `creature_template` SET `faction_A` = '2070', `faction_H` = '2070' WHERE entry = 28029;
# UPDATE `creature_template` SET `unit_flags` = '33536' WHERE entry = 28030;
UPDATE `creature_template` SET `faction_A` = '190', `faction_H` = '190' WHERE entry = 28030;
# UPDATE `creature_template` SET `unit_flags` = '559104' WHERE entry = 28034;
UPDATE `creature_template` SET `faction_A` = '2069', `faction_H` = '2069' WHERE entry = 28034;
# UPDATE `creature_template` SET `dynamicflags` = '4' WHERE entry = 28034;
# UPDATE `creature_template` SET `unit_flags` = '559104' WHERE entry = 28035;
UPDATE `creature_template` SET `faction_A` = '2069', `faction_H` = '2069' WHERE entry = 28035;
# UPDATE `creature_template` SET `dynamicflags` = '4' WHERE entry = 28035;
# UPDATE `creature_template` SET `unit_flags` = '559104' WHERE entry = 28036;
UPDATE `creature_template` SET `faction_A` = '2069', `faction_H` = '2069' WHERE entry = 28036;
UPDATE `creature_template` SET `speed_run` = '1.38571' WHERE entry = 28037;
# UPDATE `creature_template` SET `unit_flags` = '559104' WHERE entry = 28041;
UPDATE `creature_template` SET `baseattacktime` = '1500' WHERE entry = 28043;
UPDATE `creature_template` SET `faction_A` = '2069', `faction_H` = '2069' WHERE entry = 28068;
# UPDATE `creature_template` SET `dynamicflags` = '13' WHERE entry = 28068;
UPDATE `creature_template` SET `speed_run` = '0.992063' WHERE entry = 28076;
UPDATE `creature_template` SET `speed_walk` = '0.666668' WHERE entry = 28076;
UPDATE `creature_template` SET `speed_run` = '0.992063' WHERE entry = 28077;
UPDATE `creature_template` SET `speed_walk` = '0.666668' WHERE entry = 28077;
UPDATE `creature_template` SET `speed_run` = '0.992063' WHERE entry = 28078;
UPDATE `creature_template` SET `speed_walk` = '0.666668' WHERE entry = 28078;
# UPDATE `creature_template` SET `unit_flags` = '559104' WHERE entry = 28078;
UPDATE `creature_template` SET `scale` = '1.3' WHERE entry = 28078;
UPDATE `creature_template` SET `baseattacktime` = '2000' WHERE entry = 28078;
UPDATE `creature_template` SET `speed_run` = '0.992063' WHERE entry = 28079;
UPDATE `creature_template` SET `speed_walk` = '0.666668' WHERE entry = 28079;
# UPDATE `creature_template` SET `unit_flags` = '559120' WHERE entry = 28079;
UPDATE `creature_template` SET `baseattacktime` = '2000' WHERE entry = 28079;
UPDATE `creature_template` SET `speed_run` = '0.992063' WHERE entry = 28080;
UPDATE `creature_template` SET `speed_walk` = '0.666668' WHERE entry = 28080;
# UPDATE `creature_template` SET `unit_flags` = '294912' WHERE entry = 28080;
UPDATE `creature_template` SET `speed_run` = '0.992063' WHERE entry = 28081;
UPDATE `creature_template` SET `speed_walk` = '0.666668' WHERE entry = 28081;
# UPDATE `creature_template` SET `unit_flags` = '294912' WHERE entry = 28081;
# UPDATE `creature_template` SET `dynamicflags` = '4' WHERE entry = 28081;
UPDATE `creature_template` SET `speed_run` = '0.992063' WHERE entry = 28082;
UPDATE `creature_template` SET `speed_walk` = '0.666668' WHERE entry = 28082;
# UPDATE `creature_template` SET `unit_flags` = '537166592' WHERE entry = 28086;
# UPDATE `creature_template` SET `dynamicflags` = '32' WHERE entry = 28086;
# UPDATE `creature_template` SET `unit_flags` = '537166592' WHERE entry = 28089;
UPDATE `creature_template` SET `faction_A` = '190', `faction_H` = '190' WHERE entry = 28089;
# UPDATE `creature_template` SET `dynamicflags` = '32' WHERE entry = 28089;
UPDATE `creature_template` SET `speed_run` = '0.992063' WHERE entry = 28095;
UPDATE `creature_template` SET `speed_walk` = '0.666668' WHERE entry = 28095;
UPDATE `creature_template` SET `faction_A` = '16', `faction_H` = '16' WHERE entry = 28096;
UPDATE `creature_template` SET `faction_A` = '16', `faction_H` = '16' WHERE entry = 28097;
UPDATE `creature_template` SET `faction_A` = '189', `faction_H` = '189' WHERE entry = 28098;
UPDATE `creature_template` SET `baseattacktime` = '2000' WHERE entry = 28098;
UPDATE `creature_template` SET `speed_run` = '1.19048' WHERE entry = 28107;
# UPDATE `creature_template` SET `unit_flags` = '33536' WHERE entry = 28107;
# UPDATE `creature_template` SET `dynamicflags` = '12' WHERE entry = 28108;
UPDATE `creature_template` SET `speed_run` = '1.19048' WHERE entry = 28111;
# UPDATE `creature_template` SET `unit_flags` = '559104' WHERE entry = 28111;
UPDATE `creature_template` SET `speed_run` = '1.19048' WHERE entry = 28112;
# UPDATE `creature_template` SET `unit_flags` = '559104' WHERE entry = 28112;
UPDATE `creature_template` SET `speed_run` = '1.19048' WHERE entry = 28113;
UPDATE `creature_template` SET `speed_walk` = '1.11111' WHERE entry = 28113;
# UPDATE `creature_template` SET `unit_flags` = '570721024' WHERE entry = 28113;
# UPDATE `creature_template` SET `dynamicflags` = '32' WHERE entry = 28113;
# UPDATE `creature_template` SET `unit_flags` = '33536' WHERE entry = 28114;
# UPDATE `creature_template` SET `unit_flags` = '33024' WHERE entry = 28118;
UPDATE `creature_template` SET `faction_A` = '834', `faction_H` = '834' WHERE entry = 28118;
# UPDATE `creature_template` SET `dynamicflags` = '13' WHERE entry = 28118;
UPDATE `creature_template` SET `speed_run` = '1.19048' WHERE entry = 28120;
# UPDATE `creature_template` SET `unit_flags` = '32776' WHERE entry = 28120;
UPDATE `creature_template` SET `speed_run` = '1.19048' WHERE entry = 28121;
# UPDATE `creature_template` SET `unit_flags` = '32776' WHERE entry = 28121;
UPDATE `creature_template` SET `speed_run` = '1.19048' WHERE entry = 28122;
# UPDATE `creature_template` SET `unit_flags` = '32776' WHERE entry = 28122;
# UPDATE `creature_template` SET `dynamicflags` = '4' WHERE entry = 28123;
# UPDATE `creature_template` SET `dynamicflags` = '4' WHERE entry = 28124;
UPDATE `creature_template` SET `speed_run` = '1.71429' WHERE entry = 28129;
# UPDATE `creature_template` SET `unit_flags` = '526336' WHERE entry = 28129;
UPDATE `creature_template` SET `faction_A` = '1999', `faction_H` = '1999' WHERE entry = 28129;
UPDATE `creature_template` SET `speed_run` = '0.992063' WHERE entry = 28138;
UPDATE `creature_template` SET `speed_walk` = '0.666668' WHERE entry = 28138;
UPDATE `creature_template` SET `speed_run` = '0.992063' WHERE entry = 28139;
UPDATE `creature_template` SET `speed_walk` = '0.666668' WHERE entry = 28139;
UPDATE `creature_template` SET `speed_run` = '1.19048' WHERE entry = 28140;
UPDATE `creature_template` SET `faction_A` = '16', `faction_H` = '16' WHERE entry = 28145;
# UPDATE `creature_template` SET `dynamicflags` = '32' WHERE entry = 28156;
# UPDATE `creature_template` SET `dynamicflags` = '32' WHERE entry = 28162;
# UPDATE `creature_template` SET `dynamicflags` = '4' WHERE entry = 28170;
UPDATE `creature_template` SET `speed_walk` = '1.11111' WHERE entry = 28203;
# UPDATE `creature_template` SET `unit_flags` = '294912' WHERE entry = 28203;
UPDATE `creature_template` SET `faction_A` = '190', `faction_H` = '190' WHERE entry = 28203;
# UPDATE `creature_template` SET `unit_flags` = '32768' WHERE entry = 28204;
# UPDATE `creature_template` SET `dynamicflags` = '4' WHERE entry = 28208;
UPDATE `creature_template` SET `speed_run` = '0.857143' WHERE entry = 28217;
# UPDATE `creature_template` SET `dynamicflags` = '4' WHERE entry = 28218;
# UPDATE `creature_template` SET `dynamicflags` = '4' WHERE entry = 28220;
UPDATE `creature_template` SET `speed_run` = '1.14286' WHERE entry = 28221;
# UPDATE `creature_template` SET `unit_flags` = '100696064' WHERE entry = 28221;
UPDATE `creature_template` SET `faction_A` = '16', `faction_H` = '16' WHERE entry = 28221;
# UPDATE `creature_template` SET `dynamicflags` = '4' WHERE entry = 28221;
UPDATE `creature_template` SET `speed_walk` = '1.5' WHERE entry = 28222;
# UPDATE `creature_template` SET `unit_flags` = '16777224' WHERE entry = 28222;
UPDATE `creature_template` SET `baseattacktime` = '3000' WHERE entry = 28222;
# UPDATE `creature_template` SET `unit_flags` = '67141632' WHERE entry = 28233;
UPDATE `creature_template` SET `faction_A` = '190', `faction_H` = '190' WHERE entry = 28233;
# UPDATE `creature_template` SET `dynamicflags` = '4' WHERE entry = 28233;
# UPDATE `creature_template` SET `dynamicflags` = '4' WHERE entry = 28242;
# UPDATE `creature_template` SET `unit_flags` = '512' WHERE entry = 28246;
UPDATE `creature_template` SET `faction_A` = '14', `faction_H` = '14' WHERE entry = 28246;
# UPDATE `creature_template` SET `dynamicflags` = '4' WHERE entry = 28246;
# UPDATE `creature_template` SET `unit_flags` = '64' WHERE entry = 28255;
UPDATE `creature_template` SET `speed_run` = '0.992063' WHERE entry = 28257;
# UPDATE `creature_template` SET `unit_flags` = '32768' WHERE entry = 28257;
UPDATE `creature_template` SET `speed_run` = '0.992063' WHERE entry = 28258;
UPDATE `creature_template` SET `speed_walk` = '0.833332' WHERE entry = 28258;
UPDATE `creature_template` SET `speed_run` = '0.992063' WHERE entry = 28268;
UPDATE `creature_template` SET `speed_walk` = '0.8' WHERE entry = 28268;
# UPDATE `creature_template` SET `unit_flags` = '32768' WHERE entry = 28268;
# UPDATE `creature_template` SET `dynamicflags` = '132' WHERE entry = 28274;
UPDATE `creature_template` SET `speed_run` = '1.38571' WHERE entry = 28297;
# UPDATE `creature_template` SET `unit_flags` = '32768' WHERE entry = 28297;
UPDATE `creature_template` SET `faction_A` = '2030', `faction_H` = '2030' WHERE entry = 28297;
# UPDATE `creature_template` SET `unit_flags` = '33555200' WHERE entry = 28300;
UPDATE `creature_template` SET `faction_A` = '2069', `faction_H` = '2069' WHERE entry = 28303;
# UPDATE `creature_template` SET `dynamicflags` = '13' WHERE entry = 28303;
UPDATE `creature_template` SET `speed_walk` = '0.666668' WHERE entry = 28315;
# UPDATE `creature_template` SET `unit_flags` = '33536' WHERE entry = 28315;
UPDATE `creature_template` SET `faction_A` = '16', `faction_H` = '16' WHERE entry = 28323;
# UPDATE `creature_template` SET `dynamicflags` = '13' WHERE entry = 28323;
UPDATE `creature_template` SET `baseattacktime` = '1500' WHERE entry = 28324;
# UPDATE `creature_template` SET `unit_flags` = '33555200' WHERE entry = 28333;
UPDATE `creature_template` SET `speed_run` = '0.992063' WHERE entry = 28346;
UPDATE `creature_template` SET `speed_walk` = '0.8' WHERE entry = 28362;
# UPDATE `creature_template` SET `unit_flags` = '33555200' WHERE entry = 28362;
UPDATE `creature_template` SET `speed_run` = '1.5873' WHERE entry = 28378;
UPDATE `creature_template` SET `speed_walk` = '1.44444' WHERE entry = 28378;
# UPDATE `creature_template` SET `unit_flags` = '526336' WHERE entry = 28378;
# UPDATE `creature_template` SET `dynamicflags` = '4' WHERE entry = 28378;
# UPDATE `creature_template` SET `unit_flags` = '537166592' WHERE entry = 28380;
# UPDATE `creature_template` SET `dynamicflags` = '32' WHERE entry = 28380;
# UPDATE `creature_template` SET `unit_flags` = '559104' WHERE entry = 28387;
# UPDATE `creature_template` SET `unit_flags` = '559104' WHERE entry = 28388;
UPDATE `creature_template` SET `faction_A` = '1771', `faction_H` = '1771' WHERE entry = 28388;
# UPDATE `creature_template` SET `dynamicflags` = '12' WHERE entry = 28388;
UPDATE `creature_template` SET `speed_run` = '1.5873' WHERE entry = 28389;
UPDATE `creature_template` SET `speed_walk` = '1.44444' WHERE entry = 28389;
UPDATE `creature_template` SET `faction_A` = '2069', `faction_H` = '2069' WHERE entry = 28396;
UPDATE `creature_template` SET `speed_run` = '0.992063' WHERE entry = 28401;
# UPDATE `creature_template` SET `unit_flags` = '295680' WHERE entry = 28401;
UPDATE `creature_template` SET `faction_A` = '190', `faction_H` = '190' WHERE entry = 28401;
UPDATE `creature_template` SET `scale` = '0.75' WHERE entry = 28401;
# UPDATE `creature_template` SET `dynamicflags` = '4' WHERE entry = 28402;
UPDATE `creature_template` SET `faction_A` = '2069', `faction_H` = '2069' WHERE entry = 28403;
# UPDATE `creature_template` SET `dynamicflags` = '4' WHERE entry = 28403;
# UPDATE `creature_template` SET `unit_flags` = '67141632' WHERE entry = 28404;
UPDATE `creature_template` SET `faction_A` = '2069', `faction_H` = '2069' WHERE entry = 28404;
# UPDATE `creature_template` SET `dynamicflags` = '4' WHERE entry = 28404;
UPDATE `creature_template` SET `faction_A` = '834', `faction_H` = '834' WHERE entry = 28411;
# UPDATE `creature_template` SET `dynamicflags` = '13' WHERE entry = 28411;
# UPDATE `creature_template` SET `unit_flags` = '33538' WHERE entry = 28416;
UPDATE `creature_template` SET `faction_A` = '2069', `faction_H` = '2069' WHERE entry = 28417;
# UPDATE `creature_template` SET `dynamicflags` = '13' WHERE entry = 28417;
# UPDATE `creature_template` SET `unit_flags` = '32768' WHERE entry = 28418;
UPDATE `creature_template` SET `faction_A` = '2069', `faction_H` = '2069' WHERE entry = 28418;
# UPDATE `creature_template` SET `dynamicflags` = '4' WHERE entry = 28418;
UPDATE `creature_template` SET `faction_A` = '2069', `faction_H` = '2069' WHERE entry = 28442;
# UPDATE `creature_template` SET `dynamicflags` = '13' WHERE entry = 28442;
UPDATE `creature_template` SET `faction_A` = '91', `faction_H` = '91' WHERE entry = 28452;
# UPDATE `creature_template` SET `unit_flags` = '33555200' WHERE entry = 28454;
# UPDATE `creature_template` SET `unit_flags` = '33555200' WHERE entry = 28455;
# UPDATE `creature_template` SET `unit_flags` = '33555200' WHERE entry = 28456;
# UPDATE `creature_template` SET `unit_flags` = '33555200' WHERE entry = 28457;
# UPDATE `creature_template` SET `unit_flags` = '33555200' WHERE entry = 28458;
# UPDATE `creature_template` SET `unit_flags` = '33555200' WHERE entry = 28459;
# UPDATE `creature_template` SET `unit_flags` = '33555200' WHERE entry = 28460;
# UPDATE `creature_template` SET `unit_flags` = '33555200' WHERE entry = 28461;
# UPDATE `creature_template` SET `unit_flags` = '33555200' WHERE entry = 28462;
# UPDATE `creature_template` SET `unit_flags` = '33555200' WHERE entry = 28463;
UPDATE `creature_template` SET `speed_run` = '1.57143' WHERE entry = 28465;
# UPDATE `creature_template` SET `unit_flags` = '32768' WHERE entry = 28465;
UPDATE `creature_template` SET `faction_A` = '2069', `faction_H` = '2069' WHERE entry = 28465;
# UPDATE `creature_template` SET `dynamicflags` = '13' WHERE entry = 28465;
UPDATE `creature_template` SET `speed_run` = '1.5873' WHERE entry = 28467;
UPDATE `creature_template` SET `speed_walk` = '1.44444' WHERE entry = 28467;
UPDATE `creature_template` SET `baseattacktime` = '3000' WHERE entry = 28467;
# UPDATE `creature_template` SET `unit_flags` = '33555200' WHERE entry = 28473;
# UPDATE `creature_template` SET `unit_flags` = '32768' WHERE entry = 28479;
# UPDATE `creature_template` SET `unit_flags` = '32768' WHERE entry = 28494;
UPDATE `creature_template` SET `faction_A` = '2069', `faction_H` = '2069' WHERE entry = 28494;
# UPDATE `creature_template` SET `unit_flags` = '32768' WHERE entry = 28495;
UPDATE `creature_template` SET `faction_A` = '2069', `faction_H` = '2069' WHERE entry = 28495;
# UPDATE `creature_template` SET `unit_flags` = '32768' WHERE entry = 28496;
UPDATE `creature_template` SET `faction_A` = '2069', `faction_H` = '2069' WHERE entry = 28496;
# UPDATE `creature_template` SET `unit_flags` = '32768' WHERE entry = 28504;
UPDATE `creature_template` SET `faction_A` = '1771', `faction_H` = '1771' WHERE entry = 28504;
# UPDATE `creature_template` SET `dynamicflags` = '13' WHERE entry = 28504;
# UPDATE `creature_template` SET `unit_flags` = '776' WHERE entry = 28514;
# UPDATE `creature_template` SET `unit_flags` = '776' WHERE entry = 28515;
UPDATE `creature_template` SET `speed_run` = '1.42857' WHERE entry = 28516;
# UPDATE `creature_template` SET `unit_flags` = '776' WHERE entry = 28516;
UPDATE `creature_template` SET `speed_run` = '0.992063' WHERE entry = 28517;
# UPDATE `creature_template` SET `unit_flags` = '776' WHERE entry = 28517;
UPDATE `creature_template` SET `speed_run` = '2' WHERE entry = 28526;
# UPDATE `creature_template` SET `unit_flags` = '33587200' WHERE entry = 28526;
# UPDATE `creature_template` SET `unit_flags` = '32768' WHERE entry = 28527;
UPDATE `creature_template` SET `faction_A` = '2080', `faction_H` = '2080' WHERE entry = 28538;
UPDATE `creature_template` SET `faction_A` = '2069', `faction_H` = '2069' WHERE entry = 28541;
# UPDATE `creature_template` SET `unit_flags` = '32768' WHERE entry = 28575;
UPDATE `creature_template` SET `faction_A` = '2069', `faction_H` = '2069' WHERE entry = 28575;
# UPDATE `creature_template` SET `unit_flags` = '768' WHERE entry = 28589;
UPDATE `creature_template` SET `baseattacktime` = '1500' WHERE entry = 28589;
UPDATE `creature_template` SET `faction_A` = '16', `faction_H` = '16' WHERE entry = 28597;
# UPDATE `creature_template` SET `unit_flags` = '559104' WHERE entry = 28600;
UPDATE `creature_template` SET `faction_A` = '1771', `faction_H` = '1771' WHERE entry = 28600;
# UPDATE `creature_template` SET `dynamicflags` = '12' WHERE entry = 28600;
UPDATE `creature_template` SET `faction_A` = '35', `faction_H` = '35' WHERE entry = 28617;
UPDATE `creature_template` SET `speed_run` = '0.857143' WHERE entry = 28636;
# UPDATE `creature_template` SET `unit_flags` = '33024' WHERE entry = 28636;
UPDATE `creature_template` SET `faction_A` = '16', `faction_H` = '16' WHERE entry = 28636;
UPDATE `creature_template` SET `speed_run` = '2' WHERE entry = 28639;
# UPDATE `creature_template` SET `unit_flags` = '256' WHERE entry = 28639;
UPDATE `creature_template` SET `faction_A` = '16', `faction_H` = '16' WHERE entry = 28639;
UPDATE `creature_template` SET `speed_run` = '1.28968' WHERE entry = 28641;
# UPDATE `creature_template` SET `dynamicflags` = '12' WHERE entry = 28641;
# UPDATE `creature_template` SET `unit_flags` = '32832' WHERE entry = 28659;
UPDATE `creature_template` SET `faction_A` = '21', `faction_H` = '21' WHERE entry = 28659;
UPDATE `creature_template` SET `speed_run` = '2.57143' WHERE entry = 28665;
# UPDATE `creature_template` SET `unit_flags` = '33288' WHERE entry = 28665;
UPDATE `creature_template` SET `speed_run` = '1.30952' WHERE entry = 28667;
# UPDATE `creature_template` SET `unit_flags` = '2147779136' WHERE entry = 28667;
UPDATE `creature_template` SET `speed_run` = '0.992063' WHERE entry = 28668;
UPDATE `creature_template` SET `speed_walk` = '0.666668' WHERE entry = 28668;
# UPDATE `creature_template` SET `unit_flags` = '2147779136' WHERE entry = 28668;
# UPDATE `creature_template` SET `unit_flags` = '33088' WHERE entry = 28671;
UPDATE `creature_template` SET `faction_A` = '2069', `faction_H` = '2069' WHERE entry = 28671;
# UPDATE `creature_template` SET `dynamicflags` = '32' WHERE entry = 28672;
# UPDATE `creature_template` SET `unit_flags` = '34081024' WHERE entry = 28717;
UPDATE `creature_template` SET `faction_A` = '2073', `faction_H` = '2073' WHERE entry = 28719;
# UPDATE `creature_template` SET `unit_flags` = '33554432' WHERE entry = 28724;
# UPDATE `creature_template` SET `dynamicflags` = '4' WHERE entry = 28745;
# UPDATE `creature_template` SET `unit_flags` = '32768' WHERE entry = 28747;
UPDATE `creature_template` SET `faction_A` = '2069', `faction_H` = '2069' WHERE entry = 28747;
# UPDATE `creature_template` SET `dynamicflags` = '12' WHERE entry = 28747;
UPDATE `creature_template` SET `speed_walk` = '0.666668' WHERE entry = 28748;
# UPDATE `creature_template` SET `unit_flags` = '32768' WHERE entry = 28748;
UPDATE `creature_template` SET `faction_A` = '2069', `faction_H` = '2069' WHERE entry = 28748;
# UPDATE `creature_template` SET `dynamicflags` = '13' WHERE entry = 28748;
# UPDATE `creature_template` SET `dynamicflags` = '4' WHERE entry = 28750;
# UPDATE `creature_template` SET `unit_flags` = '32768' WHERE entry = 28752;
UPDATE `creature_template` SET `faction_A` = '2069', `faction_H` = '2069' WHERE entry = 28752;
# UPDATE `creature_template` SET `dynamicflags` = '12' WHERE entry = 28752;
# UPDATE `creature_template` SET `unit_flags` = '32768' WHERE entry = 28754;
UPDATE `creature_template` SET `faction_A` = '2069', `faction_H` = '2069' WHERE entry = 28754;
# UPDATE `creature_template` SET `dynamicflags` = '12' WHERE entry = 28754;
UPDATE `creature_template` SET `speed_walk` = '0.666668' WHERE entry = 28756;
# UPDATE `creature_template` SET `unit_flags` = '32768' WHERE entry = 28756;
UPDATE `creature_template` SET `faction_A` = '2069', `faction_H` = '2069' WHERE entry = 28756;
# UPDATE `creature_template` SET `unit_flags` = '768' WHERE entry = 28759;
# UPDATE `creature_template` SET `dynamicflags` = '4' WHERE entry = 28759;
# UPDATE `creature_template` SET `dynamicflags` = '13' WHERE entry = 28779;
# UPDATE `creature_template` SET `dynamicflags` = '13' WHERE entry = 28784;
# UPDATE `creature_template` SET `unit_flags` = '33536' WHERE entry = 28785;
UPDATE `creature_template` SET `faction_A` = '190', `faction_H` = '190' WHERE entry = 28785;
# UPDATE `creature_template` SET `unit_flags` = '32768' WHERE entry = 28792;
# UPDATE `creature_template` SET `unit_flags` = '788544' WHERE entry = 28793;
# UPDATE `creature_template` SET `unit_flags` = '32768' WHERE entry = 28796;
# UPDATE `creature_template` SET `unit_flags` = '32768' WHERE entry = 28797;
# UPDATE `creature_template` SET `unit_flags` = '32768' WHERE entry = 28799;
# UPDATE `creature_template` SET `unit_flags` = '32768' WHERE entry = 28800;
# UPDATE `creature_template` SET `dynamicflags` = '4' WHERE entry = 28802;
# UPDATE `creature_template` SET `dynamicflags` = '4' WHERE entry = 28803;
# UPDATE `creature_template` SET `unit_flags` = '32768' WHERE entry = 28827;
# UPDATE `creature_template` SET `unit_flags` = '32768' WHERE entry = 28829;
# UPDATE `creature_template` SET `unit_flags` = '32768' WHERE entry = 28830;
# UPDATE `creature_template` SET `unit_flags` = '32768' WHERE entry = 28831;
# UPDATE `creature_template` SET `unit_flags` = '32768' WHERE entry = 28832;
# UPDATE `creature_template` SET `unit_flags` = '526336' WHERE entry = 28843;
UPDATE `creature_template` SET `speed_walk` = '0.5' WHERE entry = 28844;
# UPDATE `creature_template` SET `unit_flags` = '537692416' WHERE entry = 28844;
UPDATE `creature_template` SET `faction_A` = '2069', `faction_H` = '2069' WHERE entry = 28844;
# UPDATE `creature_template` SET `dynamicflags` = '32' WHERE entry = 28844;
UPDATE `creature_template` SET `faction_A` = '2069', `faction_H` = '2069' WHERE entry = 28848;
UPDATE `creature_template` SET `faction_A` = '16', `faction_H` = '16' WHERE entry = 28852;
# UPDATE `creature_template` SET `dynamicflags` = '32' WHERE entry = 28852;
UPDATE `creature_template` SET `speed_run` = '0.595239' WHERE entry = 28858;
# UPDATE `creature_template` SET `unit_flags` = '526336' WHERE entry = 28858;
UPDATE `creature_template` SET `faction_A` = '2098', `faction_H` = '2098' WHERE entry = 28858;
UPDATE `creature_template` SET `faction_A` = '16', `faction_H` = '16' WHERE entry = 28861;
# UPDATE `creature_template` SET `dynamicflags` = '12' WHERE entry = 28861;
UPDATE `creature_template` SET `speed_run` = '1.28968' WHERE entry = 28862;
UPDATE `creature_template` SET `faction_A` = '2099', `faction_H` = '2099' WHERE entry = 28862;
# UPDATE `creature_template` SET `dynamicflags` = '4' WHERE entry = 28879;
UPDATE `creature_template` SET `faction_A` = '2069', `faction_H` = '2069' WHERE entry = 28882;
# UPDATE `creature_template` SET `dynamicflags` = '13' WHERE entry = 28882;
UPDATE `creature_template` SET `faction_A` = '2069', `faction_H` = '2069' WHERE entry = 28902;
UPDATE `creature_template` SET `faction_A` = '2069', `faction_H` = '2069' WHERE entry = 28916;
UPDATE `creature_template` SET `faction_A` = '2069', `faction_H` = '2069' WHERE entry = 28917;
UPDATE `creature_template` SET `faction_A` = '2069', `faction_H` = '2069' WHERE entry = 28918;
# UPDATE `creature_template` SET `dynamicflags` = '12' WHERE entry = 28918;
UPDATE `creature_template` SET `unit_class` = '2' WHERE entry = 28927;
# UPDATE `creature_template` SET `unit_flags` = '32776' WHERE entry = 28927;
UPDATE `creature_template` SET `speed_run` = '2.57143' WHERE entry = 28952;
# UPDATE `creature_template` SET `unit_flags` = '295680' WHERE entry = 28952;
UPDATE `creature_template` SET `baseattacktime` = '1000' WHERE entry = 28952;
# UPDATE `creature_template` SET `unit_flags` = '32768' WHERE entry = 28988;
UPDATE `creature_template` SET `faction_A` = '1771', `faction_H` = '1771' WHERE entry = 28988;
UPDATE `creature_template` SET `speed_run` = '1.19048' WHERE entry = 29006;
# UPDATE `creature_template` SET `dynamicflags` = '13' WHERE entry = 29013;
UPDATE `creature_template` SET `speed_run` = '0.992063' WHERE entry = 29015;
UPDATE `creature_template` SET `speed_walk` = '0.666668' WHERE entry = 29015;
UPDATE `creature_template` SET `speed_run` = '1.42857' WHERE entry = 29021;
# UPDATE `creature_template` SET `unit_flags` = '776' WHERE entry = 29021;
UPDATE `creature_template` SET `speed_run` = '0.992063' WHERE entry = 29022;
# UPDATE `creature_template` SET `unit_flags` = '776' WHERE entry = 29022;
# UPDATE `creature_template` SET `unit_flags` = '776' WHERE entry = 29023;
# UPDATE `creature_template` SET `unit_flags` = '776' WHERE entry = 29024;
# UPDATE `creature_template` SET `unit_flags` = '33536' WHERE entry = 29028;
UPDATE `creature_template` SET `faction_A` = '2102', `faction_H` = '2102' WHERE entry = 29028;
UPDATE `creature_template` SET `speed_run` = '1.19048' WHERE entry = 29035;
UPDATE `creature_template` SET `speed_run` = '1.19048' WHERE entry = 29037;
UPDATE `creature_template` SET `speed_run` = '0.992063' WHERE entry = 29043;
UPDATE `creature_template` SET `speed_walk` = '0.666668' WHERE entry = 29043;
UPDATE `creature_template` SET `speed_run` = '3.57143' WHERE entry = 29050;
# UPDATE `creature_template` SET `unit_flags` = '33536' WHERE entry = 29050;
UPDATE `creature_template` SET `baseattacktime` = '1500' WHERE entry = 29050;
# UPDATE `creature_template` SET `unit_flags` = '33555200' WHERE entry = 29058;
UPDATE `creature_template` SET `speed_walk` = '0.8' WHERE entry = 29066;
# UPDATE `creature_template` SET `unit_flags` = '256' WHERE entry = 29066;
# UPDATE `creature_template` SET `unit_flags` = '33555200' WHERE entry = 29069;
UPDATE `creature_template` SET `speed_run` = '1.19048' WHERE entry = 29121;
UPDATE `creature_template` SET `speed_run` = '0.992063' WHERE entry = 29122;
UPDATE `creature_template` SET `speed_walk` = '0.666668' WHERE entry = 29122;
# UPDATE `creature_template` SET `unit_flags` = '32768' WHERE entry = 29122;
UPDATE `creature_template` SET `speed_walk` = '1.55556' WHERE entry = 29124;
UPDATE `creature_template` SET `faction_A` = '634', `faction_H` = '634' WHERE entry = 29129;
UPDATE `creature_template` SET `faction_A` = '21', `faction_H` = '21' WHERE entry = 29133;
UPDATE `creature_template` SET `speed_run` = '0.992063' WHERE entry = 29146;
UPDATE `creature_template` SET `speed_walk` = '0.666668' WHERE entry = 29146;
UPDATE `creature_template` SET `speed_run` = '1.19048' WHERE entry = 29149;
# UPDATE `creature_template` SET `unit_flags` = '33536' WHERE entry = 29149;
UPDATE `creature_template` SET `baseattacktime` = '1500' WHERE entry = 29157;
UPDATE `creature_template` SET `faction_A` = '2069', `faction_H` = '2069' WHERE entry = 29211;
UPDATE `creature_template` SET `faction_A` = '2069', `faction_H` = '2069' WHERE entry = 29235;
# UPDATE `creature_template` SET `unit_flags` = '559104' WHERE entry = 29236;
UPDATE `creature_template` SET `faction_A` = '2069', `faction_H` = '2069' WHERE entry = 29236;
UPDATE `creature_template` SET `faction_A` = '2069', `faction_H` = '2069' WHERE entry = 29237;
# UPDATE `creature_template` SET `unit_flags` = '33538' WHERE entry = 29255;
# UPDATE `creature_template` SET `unit_flags` = '32768' WHERE entry = 29269;
# UPDATE `creature_template` SET `unit_flags` = '32768' WHERE entry = 29270;
# UPDATE `creature_template` SET `unit_flags` = '32768' WHERE entry = 29275;
# UPDATE `creature_template` SET `unit_flags` = '559104' WHERE entry = 29319;
UPDATE `creature_template` SET `faction_A` = '1990', `faction_H` = '1990' WHERE entry = 29319;
# UPDATE `creature_template` SET `dynamicflags` = '4' WHERE entry = 29319;
# UPDATE `creature_template` SET `unit_flags` = '67108864' WHERE entry = 29327;
UPDATE `creature_template` SET `faction_A` = '1990', `faction_H` = '1990' WHERE entry = 29327;
# UPDATE `creature_template` SET `dynamicflags` = '13' WHERE entry = 29327;
# UPDATE `creature_template` SET `unit_flags` = '16' WHERE entry = 29328;
UPDATE `creature_template` SET `faction_A` = '2069', `faction_H` = '2069' WHERE entry = 29332;
UPDATE `creature_template` SET `faction_A` = '2069', `faction_H` = '2069' WHERE entry = 29334;
UPDATE `creature_template` SET `speed_run` = '1.71429' WHERE entry = 29351;
UPDATE `creature_template` SET `speed_walk` = '2.8' WHERE entry = 29351;
UPDATE `creature_template` SET `speed_run` = '1.71429' WHERE entry = 29358;
UPDATE `creature_template` SET `speed_walk` = '2.8' WHERE entry = 29358;
UPDATE `creature_template` SET `faction_A` = '14', `faction_H` = '14' WHERE entry = 29397;
# UPDATE `creature_template` SET `unit_flags` = '2181038080' WHERE entry = 29399;
UPDATE `creature_template` SET `speed_walk` = '0.666668' WHERE entry = 29402;
UPDATE `creature_template` SET `faction_A` = '190', `faction_H` = '190' WHERE entry = 29402;
# UPDATE `creature_template` SET `unit_flags` = '571246848' WHERE entry = 29404;
UPDATE `creature_template` SET `faction_A` = '16', `faction_H` = '16' WHERE entry = 29404;
# UPDATE `creature_template` SET `dynamicflags` = '32' WHERE entry = 29404;
UPDATE `creature_template` SET `faction_A` = '1692', `faction_H` = '1692' WHERE entry = 29411;
UPDATE `creature_template` SET `faction_A` = '1693', `faction_H` = '1693' WHERE entry = 29413;
UPDATE `creature_template` SET `faction_A` = '834', `faction_H` = '834' WHERE entry = 29436;
# UPDATE `creature_template` SET `unit_flags` = '559104' WHERE entry = 29437;
# UPDATE `creature_template` SET `unit_flags` = '559104' WHERE entry = 29438;
UPDATE `creature_template` SET `faction_A` = '2115', `faction_H` = '2115' WHERE entry = 29438;
# UPDATE `creature_template` SET `unit_flags` = '559104' WHERE entry = 29439;
# UPDATE `creature_template` SET `unit_flags` = '34816' WHERE entry = 29444;
UPDATE `creature_template` SET `faction_A` = '2069', `faction_H` = '2069' WHERE entry = 29444;
UPDATE `creature_template` SET `baseattacktime` = '1869' WHERE entry = 29444;
# UPDATE `creature_template` SET `dynamicflags` = '4' WHERE entry = 29449;
# UPDATE `creature_template` SET `dynamicflags` = '4' WHERE entry = 29450;
# UPDATE `creature_template` SET `dynamicflags` = '4' WHERE entry = 29451;
# UPDATE `creature_template` SET `unit_flags` = '537166592' WHERE entry = 29454;
# UPDATE `creature_template` SET `dynamicflags` = '32' WHERE entry = 29454;
UPDATE `creature_template` SET `speed_run` = '0.992063' WHERE entry = 29458;
UPDATE `creature_template` SET `speed_run` = '1.42857' WHERE entry = 29459;
UPDATE `creature_template` SET `speed_walk` = '2' WHERE entry = 29459;
UPDATE `creature_template` SET `speed_run` = '1.42857' WHERE entry = 29460;
UPDATE `creature_template` SET `speed_walk` = '3.2' WHERE entry = 29460;
# UPDATE `creature_template` SET `unit_flags` = '33554432' WHERE entry = 29475;
# UPDATE `creature_template` SET `unit_flags` = '32768' WHERE entry = 29479;
UPDATE `creature_template` SET `faction_A` = '634', `faction_H` = '634' WHERE entry = 29479;
# UPDATE `creature_template` SET `unit_flags` = '32768' WHERE entry = 29492;
UPDATE `creature_template` SET `faction_A` = '2032', `faction_H` = '2032' WHERE entry = 29492;
UPDATE `creature_template` SET `speed_run` = '1.28571' WHERE entry = 29498;
UPDATE `creature_template` SET `speed_run` = '1.71429' WHERE entry = 29500;
UPDATE `creature_template` SET `speed_run` = '1.5873' WHERE entry = 29544;
UPDATE `creature_template` SET `speed_walk` = '2.8' WHERE entry = 29544;
# UPDATE `creature_template` SET `dynamicflags` = '32' WHERE entry = 29544;
UPDATE `creature_template` SET `speed_run` = '1.42857' WHERE entry = 29545;
UPDATE `creature_template` SET `speed_walk` = '3.2' WHERE entry = 29545;
# UPDATE `creature_template` SET `dynamicflags` = '32' WHERE entry = 29545;
UPDATE `creature_template` SET `speed_run` = '0.992063' WHERE entry = 29571;
# UPDATE `creature_template` SET `dynamicflags` = '32' WHERE entry = 29571;
# UPDATE `creature_template` SET `unit_flags` = '32768' WHERE entry = 29583;
UPDATE `creature_template` SET `speed_run` = '0.992063' WHERE entry = 29584;
# UPDATE `creature_template` SET `unit_flags` = '537133824' WHERE entry = 29584;
# UPDATE `creature_template` SET `dynamicflags` = '32' WHERE entry = 29584;
UPDATE `creature_template` SET `speed_run` = '1.71429' WHERE entry = 29585;
# UPDATE `creature_template` SET `unit_flags` = '537133824' WHERE entry = 29585;
UPDATE `creature_template` SET `faction_A` = '2113', `faction_H` = '2113' WHERE entry = 29585;
# UPDATE `creature_template` SET `dynamicflags` = '32' WHERE entry = 29585;
UPDATE `creature_template` SET `speed_run` = '1.28571' WHERE entry = 29592;
UPDATE `creature_template` SET `speed_run` = '1.71429' WHERE entry = 29598;
UPDATE `creature_template` SET `speed_run` = '0.992063' WHERE entry = 29605;
UPDATE `creature_template` SET `faction_A` = '16', `faction_H` = '16' WHERE entry = 29618;
UPDATE `creature_template` SET `speed_walk` = '1.6' WHERE entry = 29619;
UPDATE `creature_template` SET `faction_A` = '16', `faction_H` = '16' WHERE entry = 29619;
UPDATE `creature_template` SET `speed_walk` = '1.2' WHERE entry = 29623;
UPDATE `creature_template` SET `faction_A` = '16', `faction_H` = '16' WHERE entry = 29623;
# UPDATE `creature_template` SET `dynamicflags` = '4' WHERE entry = 29646;
# UPDATE `creature_template` SET `unit_flags` = '559104' WHERE entry = 29654;
# UPDATE `creature_template` SET `dynamicflags` = '4' WHERE entry = 29654;
# UPDATE `creature_template` SET `unit_flags` = '559104' WHERE entry = 29656;
# UPDATE `creature_template` SET `dynamicflags` = '4' WHERE entry = 29656;
UPDATE `creature_template` SET `speed_run` = '2' WHERE entry = 29664;
UPDATE `creature_template` SET `speed_walk` = '2.4' WHERE entry = 29664;
# UPDATE `creature_template` SET `unit_flags` = '32832' WHERE entry = 29664;
UPDATE `creature_template` SET `faction_A` = '2068', `faction_H` = '2068' WHERE entry = 29664;
# UPDATE `creature_template` SET `unit_flags` = '2147750658' WHERE entry = 29672;
UPDATE `creature_template` SET `faction_A` = '714', `faction_H` = '714' WHERE entry = 29672;
# UPDATE `creature_template` SET `unit_flags` = '2147750658' WHERE entry = 29674;
UPDATE `creature_template` SET `faction_A` = '714', `faction_H` = '714' WHERE entry = 29674;
# UPDATE `creature_template` SET `unit_flags` = '2147750658' WHERE entry = 29676;
UPDATE `creature_template` SET `faction_A` = '714', `faction_H` = '714' WHERE entry = 29676;
UPDATE `creature_template` SET `speed_run` = '2.85714' WHERE entry = 29679;
UPDATE `creature_template` SET `speed_walk` = '1.44444' WHERE entry = 29679;
# UPDATE `creature_template` SET `unit_flags` = '8' WHERE entry = 29679;
# UPDATE `creature_template` SET `dynamicflags` = '4' WHERE entry = 29692;
UPDATE `creature_template` SET `scale` = '0.5' WHERE entry = 29692;
UPDATE `creature_template` SET `faction_A` = '16', `faction_H` = '16' WHERE entry = 29693;
UPDATE `creature_template` SET `speed_run` = '0.992063' WHERE entry = 29699;
# UPDATE `creature_template` SET `unit_flags` = '32768' WHERE entry = 29699;
# UPDATE `creature_template` SET `unit_flags` = '768' WHERE entry = 29721;
# UPDATE `creature_template` SET `unit_flags` = '256' WHERE entry = 29856;
UPDATE `creature_template` SET `faction_A` = '190', `faction_H` = '190' WHERE entry = 29856;
UPDATE `creature_template` SET `speed_walk` = '0.666668' WHERE entry = 29917;
# UPDATE `creature_template` SET `unit_flags` = '33536' WHERE entry = 30007;
# UPDATE `creature_template` SET `unit_flags` = '32768' WHERE entry = 30009;
# UPDATE `creature_template` SET `unit_flags` = '768' WHERE entry = 30098;
UPDATE `creature_template` SET `faction_A` = '35', `faction_H` = '35' WHERE entry = 30102;
# UPDATE `creature_template` SET `unit_flags` = '526336' WHERE entry = 30174;
UPDATE `creature_template` SET `speed_run` = '1.38571' WHERE entry = 30265;
UPDATE `creature_template` SET `speed_walk` = '10' WHERE entry = 30466;
UPDATE `creature_template` SET `speed_walk` = '1.2' WHERE entry = 30560;
# UPDATE `creature_template` SET `unit_flags` = '32768' WHERE entry = 30671;
# UPDATE `creature_template` SET `unit_flags` = '32768' WHERE entry = 30676;
UPDATE `creature_template` SET `speed_run` = '1.42857' WHERE entry = 30737;
UPDATE `creature_template` SET `speed_run` = '1.28968' WHERE entry = 30846;
UPDATE `creature_template` SET `speed_walk` = '1.55556' WHERE entry = 30849;
UPDATE `creature_template` SET `speed_run` = '0.992063' WHERE entry = 30856;
UPDATE `creature_template` SET `faction_A` = '16', `faction_H` = '16' WHERE entry = 30856;
UPDATE `creature_template` SET `scale` = '1.2' WHERE entry = 30856;
UPDATE `creature_template` SET `speed_run` = '0.992063' WHERE entry = 30860;
UPDATE `creature_template` SET `faction_A` = '16', `faction_H` = '16' WHERE entry = 30860;
UPDATE `creature_template` SET `speed_run` = '1.71429' WHERE entry = 30861;
UPDATE `creature_template` SET `speed_walk` = '1.6' WHERE entry = 30861;
# UPDATE `creature_template` SET `unit_flags` = '32832' WHERE entry = 30861;
UPDATE `creature_template` SET `faction_A` = '16', `faction_H` = '16' WHERE entry = 30861;
UPDATE `creature_template` SET `faction_A` = '16', `faction_H` = '16' WHERE entry = 30862;
UPDATE `creature_template` SET `faction_A` = '16', `faction_H` = '16' WHERE entry = 30863;
UPDATE `creature_template` SET `faction_A` = '16', `faction_H` = '16' WHERE entry = 30864;
UPDATE `creature_template` SET `faction_A` = '16', `faction_H` = '16' WHERE entry = 30865;
UPDATE `creature_template` SET `speed_run` = '0.992063' WHERE entry = 30868;
UPDATE `creature_template` SET `faction_A` = '16', `faction_H` = '16' WHERE entry = 30868;
UPDATE `creature_template` SET `scale` = '1.2' WHERE entry = 30868;
UPDATE `creature_template` SET `baseattacktime` = '1538' WHERE entry = 30868;
UPDATE `creature_template` SET `faction_A` = '16', `faction_H` = '16' WHERE entry = 30876;
UPDATE `creature_template` SET `faction_A` = '634', `faction_H` = '634' WHERE entry = 31041;
# UPDATE `creature_template` SET `unit_flags` = '64' WHERE entry = 31106;
# UPDATE `creature_template` SET `unit_flags` = '64' WHERE entry = 31107;
UPDATE `creature_template` SET `baseattacktime` = '1500' WHERE entry = 31109;
UPDATE `creature_template` SET `faction_A` = '16', `faction_H` = '16' WHERE entry = 31123;
UPDATE `creature_template` SET `speed_walk` = '1.11111' WHERE entry = 31229;
# UPDATE `creature_template` SET `unit_flags` = '32832' WHERE entry = 31229;
UPDATE `creature_template` SET `faction_A` = '634', `faction_H` = '634' WHERE entry = 31229;
UPDATE `creature_template` SET `speed_walk` = '1.2' WHERE entry = 31233;
UPDATE `creature_template` SET `speed_walk` = '0.8' WHERE entry = 31236;
UPDATE `creature_template` SET `speed_run` = '1.19048' WHERE entry = 31910;
UPDATE `creature_template` SET `speed_run` = '0.992063' WHERE entry = 31911;
UPDATE `creature_template` SET `speed_walk` = '0.666668' WHERE entry = 31911;
# UPDATE `creature_template` SET `unit_flags` = '32768' WHERE entry = 32371;
UPDATE `creature_template` SET `speed_run` = '0.142857' WHERE entry = 32522;
UPDATE `creature_template` SET `speed_walk` = '0.4' WHERE entry = 32522;
UPDATE `creature_template` SET `speed_walk` = '1.2' WHERE entry = 32569;
# UPDATE `creature_template` SET `dynamicflags` = '32' WHERE entry = 32569;
UPDATE `creature_template` SET `speed_run` = '1.38571' WHERE entry = 32596;
# UPDATE `creature_template` SET `unit_flags` = '262400' WHERE entry = 33007;
UPDATE `creature_template` SET `faction_A` = '190', `faction_H` = '190' WHERE entry = 33007;
# UPDATE `creature_template` SET `unit_flags` = '262400' WHERE entry = 33008;
UPDATE `creature_template` SET `faction_A` = '190', `faction_H` = '190' WHERE entry = 33008;
# UPDATE `creature_template` SET `unit_flags` = '776' WHERE entry = 33010;
# UPDATE `creature_template` SET `unit_flags` = '776' WHERE entry = 33011;
# UPDATE `creature_template` SET `unit_flags` = '32768' WHERE entry = 33025;
UPDATE `creature_template` SET `baseattacktime` = '2000' WHERE entry = 33025;
UPDATE `creature_template` SET `speed_walk` = '1.6' WHERE entry = 33224;
UPDATE `creature_template` SET `speed_run` = '0.992063' WHERE entry = 33422;
UPDATE `creature_template` SET `unit_class` = '2' WHERE entry = 34381;
UPDATE `creature_model_info` SET `combat_reach` = '1.125' WHERE modelid = 171;
UPDATE `creature_model_info` SET `bounding_radius` = '1' WHERE modelid = 239;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 239;
UPDATE `creature_model_info` SET `combat_reach` = '1.4375' WHERE modelid = 809;
UPDATE `creature_model_info` SET `combat_reach` = '1.25' WHERE modelid = 842;
UPDATE `creature_model_info` SET `combat_reach` = '0.15' WHERE modelid = 1160;
UPDATE `creature_model_info` SET `combat_reach` = '2' WHERE modelid = 1269;
UPDATE `creature_model_info` SET `combat_reach` = '1.725' WHERE modelid = 1340;
UPDATE `creature_model_info` SET `combat_reach` = '0.5' WHERE modelid = 1986;
UPDATE `creature_model_info` SET `bounding_radius` = '0.60725' WHERE modelid = 1988;
UPDATE `creature_model_info` SET `combat_reach` = '3.5' WHERE modelid = 1988;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 2306;
UPDATE `creature_model_info` SET `combat_reach` = '0.15' WHERE modelid = 2536;
UPDATE `creature_model_info` SET `bounding_radius` = '1.95' WHERE modelid = 2601;
UPDATE `creature_model_info` SET `combat_reach` = '5.2' WHERE modelid = 2601;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 3265;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 3922;
UPDATE `creature_model_info` SET `bounding_radius` = '0.397228' WHERE modelid = 5450;
UPDATE `creature_model_info` SET `combat_reach` = '1.3' WHERE modelid = 5450;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 7198;
UPDATE `creature_model_info` SET `combat_reach` = '0.15' WHERE modelid = 7511;
UPDATE `creature_model_info` SET `combat_reach` = '7.5' WHERE modelid = 8811;
UPDATE `creature_model_info` SET `bounding_radius` = '0.347' WHERE modelid = 9590;
UPDATE `creature_model_info` SET `combat_reach` = '0.15' WHERE modelid = 9829;
UPDATE `creature_model_info` SET `combat_reach` = '3' WHERE modelid = 10621;
UPDATE `creature_model_info` SET `bounding_radius` = '2.21' WHERE modelid = 10891;
UPDATE `creature_model_info` SET `combat_reach` = '1.95' WHERE modelid = 10891;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 11032;
UPDATE `creature_model_info` SET `bounding_radius` = '1.6967' WHERE modelid = 11554;
UPDATE `creature_model_info` SET `combat_reach` = '2.85' WHERE modelid = 11554;
UPDATE `creature_model_info` SET `bounding_radius` = '1.3' WHERE modelid = 12350;
UPDATE `creature_model_info` SET `combat_reach` = '1.95' WHERE modelid = 12350;
UPDATE `creature_model_info` SET `combat_reach` = '4.05' WHERE modelid = 13468;
UPDATE `creature_model_info` SET `combat_reach` = '3.125' WHERE modelid = 13629;
UPDATE `creature_model_info` SET `combat_reach` = '1.65' WHERE modelid = 13662;
UPDATE `creature_model_info` SET `combat_reach` = '0.15' WHERE modelid = 14952;
UPDATE `creature_model_info` SET `combat_reach` = '3.25' WHERE modelid = 15145;
UPDATE `creature_model_info` SET `combat_reach` = '3.75' WHERE modelid = 15297;
UPDATE `creature_model_info` SET `combat_reach` = '0.25' WHERE modelid = 15470;
UPDATE `creature_model_info` SET `combat_reach` = '0.25' WHERE modelid = 15471;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 15579;
UPDATE `creature_model_info` SET `bounding_radius` = '0.77' WHERE modelid = 16033;
UPDATE `creature_model_info` SET `combat_reach` = '22' WHERE modelid = 16033;
UPDATE `creature_model_info` SET `combat_reach` = '5.5' WHERE modelid = 16215;
UPDATE `creature_model_info` SET `combat_reach` = '7.5' WHERE modelid = 16309;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 16377;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 16949;
UPDATE `creature_model_info` SET `combat_reach` = '1.8' WHERE modelid = 17384;
UPDATE `creature_model_info` SET `combat_reach` = '3' WHERE modelid = 17456;
UPDATE `creature_model_info` SET `combat_reach` = '1' WHERE modelid = 17522;
UPDATE `creature_model_info` SET `bounding_radius` = '0.3' WHERE modelid = 18043;
UPDATE `creature_model_info` SET `combat_reach` = '0.6' WHERE modelid = 18043;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 18484;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 18749;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 18751;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 18788;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 18791;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 18890;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 18941;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 18942;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 18943;
UPDATE `creature_model_info` SET `combat_reach` = '1.8' WHERE modelid = 19487;
UPDATE `creature_model_info` SET `combat_reach` = '1.8' WHERE modelid = 19489;
UPDATE `creature_model_info` SET `combat_reach` = '1.8' WHERE modelid = 19490;
UPDATE `creature_model_info` SET `gender` = '1' WHERE modelid = 19595;
UPDATE `creature_model_info` SET `combat_reach` = '2' WHERE modelid = 20017;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 20113;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 20114;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 20115;
UPDATE `creature_model_info` SET `combat_reach` = '1.8' WHERE modelid = 20220;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 20350;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 20353;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 20443;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 20444;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 20446;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 20447;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 20448;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 20449;
UPDATE `creature_model_info` SET `combat_reach` = '1.8' WHERE modelid = 20712;
UPDATE `creature_model_info` SET `combat_reach` = '1.8' WHERE modelid = 20713;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 20716;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 20718;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 20719;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 20720;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 20721;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 20722;
UPDATE `creature_model_info` SET `combat_reach` = '1.8' WHERE modelid = 20800;
UPDATE `creature_model_info` SET `combat_reach` = '1.8' WHERE modelid = 20803;
UPDATE `creature_model_info` SET `combat_reach` = '0.375' WHERE modelid = 20996;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 21273;
UPDATE `creature_model_info` SET `combat_reach` = '0.45' WHERE modelid = 21360;
UPDATE `creature_model_info` SET `combat_reach` = '7' WHERE modelid = 21718;
UPDATE `creature_model_info` SET `combat_reach` = '1.125' WHERE modelid = 21910;
UPDATE `creature_model_info` SET `combat_reach` = '1.8' WHERE modelid = 21961;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 21983;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 21984;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 21985;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 21986;
UPDATE `creature_model_info` SET `combat_reach` = '1.8' WHERE modelid = 21987;
UPDATE `creature_model_info` SET `combat_reach` = '2.625' WHERE modelid = 21988;
UPDATE `creature_model_info` SET `combat_reach` = '2.25' WHERE modelid = 22005;
UPDATE `creature_model_info` SET `combat_reach` = '2.25' WHERE modelid = 22007;
UPDATE `creature_model_info` SET `combat_reach` = '4.5' WHERE modelid = 22008;
UPDATE `creature_model_info` SET `combat_reach` = '4.5' WHERE modelid = 22009;
UPDATE `creature_model_info` SET `combat_reach` = '4.5' WHERE modelid = 22014;
UPDATE `creature_model_info` SET `combat_reach` = '2.4' WHERE modelid = 22015;
UPDATE `creature_model_info` SET `combat_reach` = '3.75' WHERE modelid = 22016;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 22017;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 22018;
UPDATE `creature_model_info` SET `combat_reach` = '2.25' WHERE modelid = 22024;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 22026;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 22027;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 22028;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 22029;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 22030;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 22031;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 22032;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 22033;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 22034;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 22035;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 22036;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 22037;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 22038;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 22039;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 22043;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 22045;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 22046;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 22051;
UPDATE `creature_model_info` SET `combat_reach` = '4.5' WHERE modelid = 22052;
UPDATE `creature_model_info` SET `combat_reach` = '3.75' WHERE modelid = 22110;
UPDATE `creature_model_info` SET `combat_reach` = '2.25' WHERE modelid = 22115;
UPDATE `creature_model_info` SET `combat_reach` = '2.625' WHERE modelid = 22116;
UPDATE `creature_model_info` SET `combat_reach` = '3.75' WHERE modelid = 22121;
UPDATE `creature_model_info` SET `combat_reach` = '2.8' WHERE modelid = 22132;
UPDATE `creature_model_info` SET `combat_reach` = '1.725' WHERE modelid = 22133;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 22134;
UPDATE `creature_model_info` SET `combat_reach` = '2.25' WHERE modelid = 22136;
UPDATE `creature_model_info` SET `combat_reach` = '4.5' WHERE modelid = 22142;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 22190;
UPDATE `creature_model_info` SET `combat_reach` = '2.25' WHERE modelid = 22207;
UPDATE `creature_model_info` SET `combat_reach` = '3.75' WHERE modelid = 22210;
UPDATE `creature_model_info` SET `combat_reach` = '2.4' WHERE modelid = 22229;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 22245;
UPDATE `creature_model_info` SET `combat_reach` = '3' WHERE modelid = 22249;
UPDATE `creature_model_info` SET `combat_reach` = '1' WHERE modelid = 22255;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 22266;
UPDATE `creature_model_info` SET `bounding_radius` = '0.62' WHERE modelid = 22321;
UPDATE `creature_model_info` SET `combat_reach` = '2' WHERE modelid = 22321;
UPDATE `creature_model_info` SET `combat_reach` = '2.25' WHERE modelid = 22342;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 22357;
UPDATE `creature_model_info` SET `combat_reach` = '4' WHERE modelid = 22359;
UPDATE `creature_model_info` SET `gender` = '2' WHERE modelid = 22359;
UPDATE `creature_model_info` SET `combat_reach` = '2.4' WHERE modelid = 22392;
UPDATE `creature_model_info` SET `combat_reach` = '1.25' WHERE modelid = 22447;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 22510;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 22514;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 22515;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 22516;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 22518;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 22519;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 22520;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 22521;
UPDATE `creature_model_info` SET `combat_reach` = '2.325' WHERE modelid = 22546;
UPDATE `creature_model_info` SET `combat_reach` = '2.25' WHERE modelid = 22549;
UPDATE `creature_model_info` SET `combat_reach` = '1.8' WHERE modelid = 22648;
UPDATE `creature_model_info` SET `combat_reach` = '1.8' WHERE modelid = 22649;
UPDATE `creature_model_info` SET `combat_reach` = '1.8' WHERE modelid = 22650;
UPDATE `creature_model_info` SET `combat_reach` = '1.8' WHERE modelid = 22651;
UPDATE `creature_model_info` SET `combat_reach` = '1.875' WHERE modelid = 22674;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 23337;
UPDATE `creature_model_info` SET `combat_reach` = '2.5' WHERE modelid = 23356;
UPDATE `creature_model_info` SET `combat_reach` = '3.125' WHERE modelid = 23358;
UPDATE `creature_model_info` SET `combat_reach` = '1' WHERE modelid = 23504;
UPDATE `creature_model_info` SET `combat_reach` = '3.75' WHERE modelid = 23724;
UPDATE `creature_model_info` SET `combat_reach` = '4.375' WHERE modelid = 23827;
UPDATE `creature_model_info` SET `combat_reach` = '4.125' WHERE modelid = 23828;
UPDATE `creature_model_info` SET `combat_reach` = '1.8' WHERE modelid = 23896;
UPDATE `creature_model_info` SET `combat_reach` = '1.95' WHERE modelid = 23958;
UPDATE `creature_model_info` SET `combat_reach` = '1.8' WHERE modelid = 23959;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 24017;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 24075;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 24076;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 24088;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 24097;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 24098;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 24195;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 24269;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 24309;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 24416;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 24448;
UPDATE `creature_model_info` SET `combat_reach` = '4.5' WHERE modelid = 24491;
UPDATE `creature_model_info` SET `combat_reach` = '0.75' WHERE modelid = 24630;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 24643;
UPDATE `creature_model_info` SET `combat_reach` = '4.05' WHERE modelid = 24644;
UPDATE `creature_model_info` SET `bounding_radius` = '0.9747' WHERE modelid = 24649;
UPDATE `creature_model_info` SET `combat_reach` = '4.05' WHERE modelid = 24649;
UPDATE `creature_model_info` SET `combat_reach` = '4.5' WHERE modelid = 24654;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 24657;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 24661;
UPDATE `creature_model_info` SET `combat_reach` = '1.35' WHERE modelid = 24705;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 24969;
UPDATE `creature_model_info` SET `combat_reach` = '1.95' WHERE modelid = 25005;
UPDATE `creature_model_info` SET `gender` = '1' WHERE modelid = 25005;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 25027;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 25028;
UPDATE `creature_model_info` SET `combat_reach` = '1.725' WHERE modelid = 25029;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 25056;
UPDATE `creature_model_info` SET `combat_reach` = '4.05' WHERE modelid = 25058;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 25061;
UPDATE `creature_model_info` SET `combat_reach` = '4.05' WHERE modelid = 25062;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 25067;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 25068;
UPDATE `creature_model_info` SET `combat_reach` = '1.725' WHERE modelid = 25072;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 25097;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 25099;
UPDATE `creature_model_info` SET `combat_reach` = '0.45' WHERE modelid = 25106;
UPDATE `creature_model_info` SET `combat_reach` = '1.725' WHERE modelid = 25110;
UPDATE `creature_model_info` SET `gender` = '1' WHERE modelid = 25110;
UPDATE `creature_model_info` SET `combat_reach` = '1.75' WHERE modelid = 25156;
UPDATE `creature_model_info` SET `combat_reach` = '1.875' WHERE modelid = 25163;
UPDATE `creature_model_info` SET `combat_reach` = '2' WHERE modelid = 25192;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 25264;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 25310;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 25329;
UPDATE `creature_model_info` SET `combat_reach` = '1' WHERE modelid = 25340;
UPDATE `creature_model_info` SET `gender` = '2' WHERE modelid = 25340;
UPDATE `creature_model_info` SET `combat_reach` = '1' WHERE modelid = 25379;
UPDATE `creature_model_info` SET `combat_reach` = '1' WHERE modelid = 25380;
UPDATE `creature_model_info` SET `combat_reach` = '0.4' WHERE modelid = 25383;
UPDATE `creature_model_info` SET `combat_reach` = '0.8' WHERE modelid = 25387;
UPDATE `creature_model_info` SET `combat_reach` = '1.2' WHERE modelid = 25388;
UPDATE `creature_model_info` SET `combat_reach` = '0.4' WHERE modelid = 25394;
UPDATE `creature_model_info` SET `combat_reach` = '3.5' WHERE modelid = 25466;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 25486;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 25516;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 25518;
UPDATE `creature_model_info` SET `combat_reach` = '1.725' WHERE modelid = 25524;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 25596;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 25597;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 25598;
UPDATE `creature_model_info` SET `combat_reach` = '1.1' WHERE modelid = 25638;
UPDATE `creature_model_info` SET `bounding_radius` = '0.3672' WHERE modelid = 25661;
UPDATE `creature_model_info` SET `combat_reach` = '1.8' WHERE modelid = 25661;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 25671;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 25675;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 25681;
UPDATE `creature_model_info` SET `gender` = '2' WHERE modelid = 25744;
UPDATE `creature_model_info` SET `combat_reach` = '1.65' WHERE modelid = 25745;
UPDATE `creature_model_info` SET `bounding_radius` = '0.325' WHERE modelid = 25860;
UPDATE `creature_model_info` SET `combat_reach` = '0.975' WHERE modelid = 25860;
UPDATE `creature_model_info` SET `gender` = '2' WHERE modelid = 25889;
UPDATE `creature_model_info` SET `bounding_radius` = '0.6975' WHERE modelid = 25925;
UPDATE `creature_model_info` SET `combat_reach` = '2.25' WHERE modelid = 25925;
UPDATE `creature_model_info` SET `bounding_radius` = '0.42' WHERE modelid = 25928;
UPDATE `creature_model_info` SET `combat_reach` = '2.4' WHERE modelid = 25928;
UPDATE `creature_model_info` SET `combat_reach` = '0.9' WHERE modelid = 25938;
UPDATE `creature_model_info` SET `gender` = '2' WHERE modelid = 25938;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 26073;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 26103;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 26122;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 26145;
UPDATE `creature_model_info` SET `combat_reach` = '1.75' WHERE modelid = 26150;
UPDATE `creature_model_info` SET `combat_reach` = '2' WHERE modelid = 26155;
UPDATE `creature_model_info` SET `gender` = '2' WHERE modelid = 26155;
UPDATE `creature_model_info` SET `combat_reach` = '1.65' WHERE modelid = 26226;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 26229;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 26230;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 26234;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 26250;
UPDATE `creature_model_info` SET `gender` = '1' WHERE modelid = 26250;
UPDATE `creature_model_info` SET `bounding_radius` = '0.465' WHERE modelid = 26279;
UPDATE `creature_model_info` SET `combat_reach` = '7.5' WHERE modelid = 26279;
UPDATE `creature_model_info` SET `combat_reach` = '1' WHERE modelid = 26382;
UPDATE `creature_model_info` SET `combat_reach` = '1.25' WHERE modelid = 26583;
UPDATE `creature_model_info` SET `bounding_radius` = '1.272' WHERE modelid = 26618;
UPDATE `creature_model_info` SET `combat_reach` = '2.4' WHERE modelid = 26618;
UPDATE `creature_model_info` SET `combat_reach` = '1.875' WHERE modelid = 26636;
UPDATE `creature_model_info` SET `combat_reach` = '5' WHERE modelid = 26709;
UPDATE `creature_model_info` SET `combat_reach` = '5' WHERE modelid = 26713;
UPDATE `creature_model_info` SET `combat_reach` = '1.8' WHERE modelid = 26808;
UPDATE `creature_model_info` SET `combat_reach` = '1.845' WHERE modelid = 26810;
UPDATE `creature_model_info` SET `combat_reach` = '1.95' WHERE modelid = 26847;
UPDATE `creature_model_info` SET `combat_reach` = '1.845' WHERE modelid = 26849;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 26877;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 26878;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 26879;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 26880;
UPDATE `creature_model_info` SET `combat_reach` = '4' WHERE modelid = 27060;
UPDATE `creature_model_info` SET `combat_reach` = '1.875' WHERE modelid = 27078;
UPDATE `creature_model_info` SET `combat_reach` = '1' WHERE modelid = 27137;
UPDATE `creature_model_info` SET `gender` = '2' WHERE modelid = 27137;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 27208;
UPDATE `creature_model_info` SET `combat_reach` = '4.05' WHERE modelid = 27209;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 27303;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 27304;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 27306;
UPDATE `creature_model_info` SET `combat_reach` = '1' WHERE modelid = 27358;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 27360;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 27365;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 27366;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 27367;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 27368;
UPDATE `creature_model_info` SET `combat_reach` = '4' WHERE modelid = 27391;
UPDATE `creature_model_info` SET `gender` = '2' WHERE modelid = 27391;
UPDATE `creature_model_info` SET `combat_reach` = '2' WHERE modelid = 27392;
UPDATE `creature_model_info` SET `gender` = '2' WHERE modelid = 27392;
UPDATE `creature_model_info` SET `combat_reach` = '2.5' WHERE modelid = 27451;
UPDATE `creature_model_info` SET `gender` = '2' WHERE modelid = 27451;
UPDATE `creature_model_info` SET `combat_reach` = '6' WHERE modelid = 27478;
UPDATE `creature_model_info` SET `gender` = '2' WHERE modelid = 27478;
UPDATE `creature_model_info` SET `combat_reach` = '0.8' WHERE modelid = 27482;
UPDATE `creature_model_info` SET `gender` = '2' WHERE modelid = 27482;
UPDATE `creature_model_info` SET `combat_reach` = '1' WHERE modelid = 27572;
UPDATE `creature_model_info` SET `gender` = '1' WHERE modelid = 27572;
UPDATE `creature_model_info` SET `combat_reach` = '1.65' WHERE modelid = 27867;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 27868;
UPDATE `creature_model_info` SET `combat_reach` = '1.725' WHERE modelid = 27869;
UPDATE `creature_model_info` SET `combat_reach` = '0.75' WHERE modelid = 27907;
UPDATE `creature_model_info` SET `gender` = '2' WHERE modelid = 27907;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 27945;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 27946;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 27948;
UPDATE `creature_model_info` SET `bounding_radius` = '2.325' WHERE modelid = 28008;
UPDATE `creature_model_info` SET `combat_reach` = '7.5' WHERE modelid = 28008;
UPDATE `creature_model_info` SET `combat_reach` = '1.725' WHERE modelid = 28158;
UPDATE `creature_model_info` SET `combat_reach` = '0.15' WHERE modelid = 28345;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 28501;
UPDATE `creature_model_info` SET `gender` = '2' WHERE modelid = 28501;
UPDATE `creature_model_info` SET `combat_reach` = '1.25' WHERE modelid = 28618;
UPDATE `creature_model_info` SET `combat_reach` = '1.8' WHERE modelid = 29113;
UPDATE `creature_model_info` SET `gender` = '2' WHERE modelid = 29113;

# NeatElves
UPDATE `creature_template` SET `gossip_menu_id` = 9346 WHERE `entry` = 26540;
INSERT IGNORE INTO `gossip_menu` (`entry`, `text_id`) VALUES (9346, 12646);
UPDATE `creature_template` SET `gossip_menu_id` = 9987 WHERE `entry` = 26953;
INSERT IGNORE INTO `gossip_menu` (`entry`, `text_id`) VALUES (9987, 13841);
UPDATE `creature_template` SET `gossip_menu_id` = 9895 WHERE `entry` = 26960;
INSERT IGNORE INTO `gossip_menu` (`entry`, `text_id`) VALUES (9895, 13738);
UPDATE `creature_template` SET `gossip_menu_id` = 9879 WHERE `entry` = 26959;
UPDATE `creature_template` SET `gossip_menu_id` = 9780 WHERE `entry` = 29159;
UPDATE `creature_template` SET `gossip_menu_id` = 348 WHERE `entry` = 24149;
UPDATE `creature_template` SET `gossip_menu_id` = 9044 WHERE `entry` = 23804;
INSERT IGNORE INTO `gossip_menu` (`entry`, `text_id`) VALUES (9044, 12221);
UPDATE `creature_template` SET `gossip_menu_id` = 9020 WHERE `entry` = 24810;
UPDATE `creature_template` SET `gossip_menu_id` = 10258 WHERE `entry` = 26666;
INSERT IGNORE INTO `gossip_menu` (`entry`, `text_id`) VALUES (10258, 14245);
UPDATE `creature_template` SET `gossip_menu_id` = 9576 WHERE `entry` = 26944;
INSERT IGNORE INTO `gossip_menu` (`entry`, `text_id`) VALUES (9576, 12912);
UPDATE `creature_template` SET `gossip_menu_id` = 344 WHERE `entry` = 26680;
UPDATE `creature_template` SET `gossip_menu_id` = 8894 WHERE `entry` = 23816;
UPDATE gossip_menu SET entry = 8894 WHERE entry = 50100;
UPDATE gossip_menu_option SET menu_id = 8894 WHERE menu_id = 50100;
UPDATE locales_gossip_menu_option SET menu_id = 8894 WHERE menu_id =50100;
UPDATE `creature_template` SET `gossip_menu_id` = 9478 WHERE `entry` = 27148;
DELETE FROM `gossip_menu` WHERE `entry` = 50255;
DELETE FROM `gossip_menu_option` WHERE `menu_id` = 50255;
DELETE FROM `locales_gossip_menu_option` WHERE `menu_id` = 50255;
UPDATE `creature_template` SET `gossip_menu_id`=3067 WHERE `entry`=7866;
DELETE FROM `gossip_menu` WHERE `entry`=3067 AND `text_id`=3801;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (3067,3801);
UPDATE `creature_template` SET `gossip_menu_id`=3481 WHERE `entry`=11548; 
UPDATE gossip_menu SET entry = 3481 WHERE entry = 50414;
UPDATE gossip_menu_option SET menu_id = 3481 WHERE menu_id = 50414;
UPDATE locales_gossip_menu_option SET menu_id = 3481 WHERE menu_id =50414;
UPDATE `gossip_menu_option` SET `action_menu_id` = '4061' WHERE `menu_id` =3481 AND `id` =1;
UPDATE gossip_menu SET entry = 4061 WHERE entry = 50415;
UPDATE `gossip_menu_option` SET `action_menu_id` = '4062' WHERE `menu_id` =3481 AND `id` =2;
UPDATE gossip_menu SET entry = 4062 WHERE entry = 50416;
UPDATE `gossip_menu_option` SET `action_menu_id` = '4063' WHERE `menu_id` =3481 AND `id` =3;
UPDATE gossip_menu SET entry = 4063 WHERE entry = 50417;
UPDATE `gossip_menu_option` SET `action_menu_id` = '4064' WHERE `menu_id` =3481 AND `id` =4;
UPDATE gossip_menu SET entry = 4064 WHERE entry = 50418;
UPDATE `gossip_menu_option` SET `action_menu_id` = '4065' WHERE `menu_id` =3481 AND `id` =5;
UPDATE gossip_menu SET entry = 4065 WHERE entry = 50419;
DELETE FROM `gossip_menu` WHERE `entry`=8394 AND `text_id`=10614; 
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (8394,10614); 
DELETE FROM `gossip_menu` WHERE `entry`=8395 AND `text_id`=10615; 
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (8395,10615); 
DELETE FROM `gossip_menu` WHERE `entry`=8396 AND `text_id`=10616; 
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (8396,10616); 
UPDATE `gossip_menu_option` SET `option_text` = 'I see.' WHERE `menu_id` =8013 AND `id` =0;
UPDATE `creature_template` SET `gossip_menu_id`=10667,`AIName`='' WHERE `entry`=35642;
DELETE FROM `gossip_menu` WHERE `entry` = 35642;
UPDATE gossip_menu_option SET menu_id = 10667 WHERE menu_id = 35642;
UPDATE locales_gossip_menu_option SET menu_id = 10667 WHERE menu_id =35642;
DELETE FROM `creature_ai_scripts` WHERE `id` = 3564201;
UPDATE `creature_template` SET `gossip_menu_id` = 9775 WHERE `entry` = 29149;
INSERT IGNORE INTO `gossip_menu` (`entry`, `text_id`) VALUES (9775, 13452);
UPDATE `creature_template` SET `gossip_menu_id` = 9746 WHERE `entry` = 28122;
INSERT IGNORE INTO `gossip_menu` (`entry`, `text_id`) VALUES (9746, 13365);
UPDATE `creature_template` SET `gossip_menu_id` = 9778 WHERE `entry` = 29006;
INSERT IGNORE INTO `gossip_menu` (`entry`, `text_id`) VALUES (9778, 13457);
UPDATE `creature_template` SET `gossip_menu_id` = 8900 WHERE `entry` = 24135;
INSERT IGNORE INTO `gossip_menu` (`entry`, `text_id`) VALUES (8900, 11691);
UPDATE `creature_template` SET `gossip_menu_id` = 9742 WHERE `entry` = 28027;
UPDATE `gossip_menu_option` SET menu_id = 9742 WHERE menu_id = 28027;
UPDATE `gossip_menu` SET `entry` = 9742 WHERE entry = 28027;
UPDATE locales_gossip_menu_option SET menu_id = 9742 WHERE menu_id =28027;

# telsamat
UPDATE `creature_template` SET `faction_A` = '35', `faction_H` = '35' WHERE `entry` =15077;

# FIX
UPDATE `quest_start_scripts` SET `x`=-4204.937,`y`=316.3974,`z`=122.5078,`o`=1.308997 WHERE id=10866;
UPDATE `gameobject_template` SET `flags` = 0 WHERE `entry` = 185169;
UPDATE `creature_template` SET `unit_flags` = 32768 WHERE `entry` = 26447;
UPDATE `creature_template` SET `unit_flags` = 0 WHERE `entry` = 26425;
UPDATE `creature_model_info` SET `bounding_radius`=0.248,`combat_reach`=4.8,`gender`=0 WHERE `modelid`=26772; -- Snorri
UPDATE `creature_model_info` SET `bounding_radius`=0.3,`combat_reach`=0,`gender`=2 WHERE `modelid`=28811; -- "Spectral Tiger"
UPDATE `creature_model_info` SET `bounding_radius`=4,`combat_reach`=0,`gender`=2 WHERE `modelid`=29771; -- Horde Boat
UPDATE `creature_model_info` SET `bounding_radius`=5,`combat_reach`=0,`gender`=2 WHERE `modelid`=29766; -- Alliance Boat
UPDATE `creature_template` SET `npcflag`=`npcflag`|1 WHERE `entry`=33686;
UPDATE `creature_template` SET `npcflag`=`npcflag`|1 WHERE `entry`=33624;
UPDATE `creature_model_info` SET `bounding_radius`=3,`combat_reach`=2.25,`gender`=2 WHERE `modelid`=27658; -- Wrecked Demolisher
UPDATE `creature_model_info` SET `bounding_radius`=0.5,`combat_reach`=1,`gender`=2 WHERE `modelid`=11686; -- Mortar Targetting Device
UPDATE `creature_model_info` SET `bounding_radius`=0.5,`combat_reach`=1,`gender`=2 WHERE `modelid`=11686; -- Mortar Targetting Device
UPDATE `creature_model_info` SET `bounding_radius`=0.5,`combat_reach`=1,`gender`=2 WHERE `modelid`=11686; -- Mortar Targetting Device
UPDATE `creature_model_info` SET `bounding_radius`=1.4288,`combat_reach`=2.4,`gender`=0 WHERE `modelid`=28781; -- Demolisher Engineer Blastwrench
UPDATE `creature_model_info` SET `bounding_radius`=0.2625,`combat_reach`=1.5,`gender`=0 WHERE `modelid`=6589; -- Lore Keeper of Norgannon
UPDATE `creature_model_info` SET `bounding_radius`=0.434,`combat_reach`=1.4,`gender`=0 WHERE `modelid`=28739; -- Goran Steelbreaker
UPDATE `creature_model_info` SET `bounding_radius`=0.434,`combat_reach`=1.4,`gender`=0 WHERE `modelid`=28739; -- Goran Steelbreaker
UPDATE `creature_model_info` SET `bounding_radius`=0.372,`combat_reach`=1.2,`gender`=0 WHERE `modelid`=26662; -- Earthen Stoneshaper
UPDATE `creature_model_info` SET `bounding_radius`=0.3,`combat_reach`=1,`gender`=0 WHERE `modelid`=28581; -- Steelforged Defender
UPDATE `creature_model_info` SET `bounding_radius`=0.3,`combat_reach`=1,`gender`=0 WHERE `modelid`=28580; -- Steelforged Defender
UPDATE `creature_model_info` SET `bounding_radius`=0.5,`combat_reach`=1.5,`gender`=1 WHERE `modelid`=5233; -- Spirit Healer
UPDATE `creature_model_info` SET `bounding_radius`=0.45,`combat_reach`=0.45,`gender`=0 WHERE `modelid`=31124; -- Bone Spike
UPDATE `creature_model_info` SET `bounding_radius`=0.347222,`combat_reach`=1.5,`gender`=0 WHERE `modelid`=30616; -- Ancient Skeletal Soldier
UPDATE `creature_model_info` SET `bounding_radius`=1.388888,`combat_reach`=6,`gender`=0 WHERE `modelid`=30459; -- Deathbound Ward
UPDATE `creature_model_info` SET `bounding_radius`=1.5,`combat_reach`=2.25,`gender`=1 WHERE `modelid`=30463; -- Skybreaker Luminary
UPDATE `creature_model_info` SET `bounding_radius`=1.46205,`combat_reach`=6.075,`gender`=0 WHERE `modelid`=30481; -- Kor'kron Primalist
UPDATE `creature_model_info` SET `bounding_radius`=0.459,`combat_reach`=2.25,`gender`=1 WHERE `modelid`=30531; -- Kor'kron Sniper
UPDATE `creature_model_info` SET `bounding_radius`=0.5745,`combat_reach`=2.25,`gender`=1 WHERE `modelid`=30482; -- Kor'kron Reaver
UPDATE `creature_model_info` SET `bounding_radius`=0.558,`combat_reach`=2.25,`gender`=0 WHERE `modelid`=30475; -- Kor'kron Defender
UPDATE `creature_model_info` SET `bounding_radius`=0.354,`combat_reach`=2.25,`gender`=1 WHERE `modelid`=30486; -- Kor'kron Stalker
UPDATE `creature_model_info` SET `bounding_radius`=0.459,`combat_reach`=2.25,`gender`=0 WHERE `modelid`=30453; -- Skybreaker Vindicator
UPDATE `creature_model_info` SET `bounding_radius`=0.5835,`combat_reach`=2.25,`gender`=0 WHERE `modelid`=30472; -- Skybreaker Hierophant
UPDATE `creature_model_info` SET `bounding_radius`=0.52785,`combat_reach`=2.5875,`gender`=1 WHERE `modelid`=30470; -- Skybreaker Sorcerer
UPDATE `creature_model_info` SET `bounding_radius`=0.459,`combat_reach`=2.25,`gender`=0 WHERE `modelid`=30476; -- Kor'kron Invoker
UPDATE `creature_model_info` SET `bounding_radius`=0.5745,`combat_reach`=2.25,`gender`=0 WHERE `modelid`=30534; -- Kor'kron Necrolyte
UPDATE `creature_model_info` SET `bounding_radius`=0.459,`combat_reach`=2.25,`gender`=1 WHERE `modelid`=30478; -- Kor'kron Oracle
UPDATE `creature_model_info` SET `bounding_radius`=0.5745,`combat_reach`=2.25,`gender`=1 WHERE `modelid`=30487; -- Kor'kron Templar
UPDATE `creature_model_info` SET `bounding_radius`=0.312,`combat_reach`=2.25,`gender`=1 WHERE `modelid`=30536; -- Skybreaker Summoner
UPDATE `creature_model_info` SET `bounding_radius`=0.5745,`combat_reach`=2.25,`gender`=0 WHERE `modelid`=30489; -- Kor'kron Vanquisher
UPDATE `creature_model_info` SET `bounding_radius`=0.62,`combat_reach`=2,`gender`=2 WHERE `modelid`=30656; -- Spire Minion
DELETE FROM `spell_target_position` WHERE `id` IN (42837,42838);
INSERT INTO `spell_target_position` (`id`,`target_map`,`target_position_x`,`target_position_y`,`target_position_z`,`target_orientation`) VALUES
(42837,571,634.094,-5010.67,4.419494,2.807002),
(42838,571,635.081,-5016.87,4.138474,3.859472);
UPDATE `creature_model_info` SET `bounding_radius`=1,`combat_reach`=1,`gender`=0 WHERE `modelid`=29255; -- Stabled Exodar Elekk
UPDATE `creature_model_info` SET `bounding_radius`=1.185,`combat_reach`=2.25,`gender`=0 WHERE `modelid`=29256; -- Stabled Darnassian Nightsaber
UPDATE `creature_model_info` SET `bounding_radius`=0.818,`combat_reach`=2,`gender`=0 WHERE `modelid`=29258; -- Stabled Ironforge Ram
UPDATE `creature_model_info` SET `bounding_radius`=0.35,`combat_reach`=1.5,`gender`=0 WHERE `modelid`=29261; -- Stabled Darkspear Raptor
UPDATE `creature_model_info` SET `bounding_radius`=0,`combat_reach`=1,`gender`=2 WHERE `modelid`=28918; -- Stabled Argent Warhorse
UPDATE `creature_model_info` SET `bounding_radius`=1,`combat_reach`=1,`gender`=0 WHERE `modelid`=29255; -- Exodar Elekk
UPDATE `creature_model_info` SET `bounding_radius`=1.185,`combat_reach`=2.25,`gender`=0 WHERE `modelid`=29256; -- Darnassian Nightsaber
UPDATE `creature_model_info` SET `bounding_radius`=2,`combat_reach`=0,`gender`=0 WHERE `modelid`=29258; -- Ironforge Ram
UPDATE `creature_model_info` SET `bounding_radius`=0.35,`combat_reach`=1.5,`gender`=0 WHERE `modelid`=29261; -- Darkspear Raptor
DELETE FROM `achievement_reward` WHERE `entry` IN (4784,4785);
INSERT INTO `achievement_reward` (`entry`,`title_A`,`title_H`,`item`,`sender`,`subject`,`text`) VALUES
(4784,0,0,0,37942, 'Emblem Quartermasters in Dalaran''s Silver Enclave', 'Your achievements in Northrend have not gone unnoticed, friend.$B$BThe Emblems you have earned may be used to purchase equipment from the various Emblem Quartermasters in Dalaran.$B$BYou may find us there, in the Silver Enclave, where each variety of Emblem has its own quartermaster.$B$BWe look forward to your arrival!'),
(4785,0,0,0,37941, 'Emblem Quartermasters in Dalaran''s Sunreaver Sanctuary', 'Your achievements in Northrend have not gone unnoticed, friend.$B$BThe Emblems you have earned may be used to purchase equipment from the various Emblem Quartermasters in Dalaran.$B$BYou may find us there, in the Sunreaver Sanctuary, where each variety of Emblem has its own quartermaster.$B$BWe look forward to your arrival!');

# virusav
UPDATE `quest_template` SET `specialflags`=0 WHERE `entry` IN (11991,12802);
UPDATE `creature_template` SET `unit_flags` = 32768 WHERE `entry` = 26447;
UPDATE `creature_template` SET `unit_flags` = 0 WHERE `entry` = 26425;
UPDATE `creature_template` SET `unit_flags`= 0 WHERE `entry` = 28189;

# TC
UPDATE `creature_template` SET `VehicleID` = '108' WHERE entry = 28639;
UPDATE `creature_template` SET `VehicleID` = '126' WHERE entry = 28665;
UPDATE creature_template SET spell1=49161,spell2=49243,spell3=49263,spell4=49264,spell5=49367,unit_flags=0,InhabitType=3 WHERE entry=27629;
UPDATE `creature_template` SET `flags_extra`=`flags_extra`|128 WHERE `entry`=24021;
UPDATE `creature_template` SET `flags_extra`=`flags_extra`|128 WHERE `entry`=26298;
UPDATE `creature_template` SET `flags_extra`=`flags_extra`|128 WHERE `entry`=25594;
INSERT IGNORE INTO `creature_template_addon` (`entry`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES
(27692,0,50331648,257,0, NULL), -- Emerald Drake
(27756,0,50331648,257,0, NULL), -- Ruby Drake
(27755,0,50331648,257,0, NULL); -- Amber Drake
INSERT IGNORE INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`Comment`) VALUES
(13,0,49346,0,18,1,27692,0, 'Emeral Drake'),
(13,0,49464,0,18,1,27756,0, 'Ruby Drake'),
(13,0,49460,0,18,1,27755,0, 'Amber Drake');
DELETE FROM `creature` WHERE `id` IN(32933,32934);
INSERT IGNORE INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(13,0,43468,0,18,1,0,0,0, '', 'Spell 43468 target player');
UPDATE `creature_template` SET `vehicleid`=212 WHERE `entry`=30021;
UPDATE `creature_template` SET `exp`=0,`speed_walk`=1.6,`speed_run`=2.4285714285714,`vehicleid`=471 WHERE `entry`=35336;
UPDATE `creature_template` SET `exp`=0,`speed_walk`=1.6,`speed_run`=2.4285714285714,`vehicleid`=472 WHERE `entry`=35335;
DELETE FROM `creature_template_addon` WHERE `entry` IN (29144,27409,30021,30124,32227,33357,35336,35335);
INSERT INTO `creature_template_addon` (`entry`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES
(29144,0,0,1,0, NULL), -- Refurbished Steam Tank
(27409,0,0,1,0, NULL), -- Ducal's Horse
(30021,0,0,1,0, NULL), -- Enormos
(30124,0,0,257,0, NULL), -- Snorri
(32227,0,0,1,0, NULL), -- Skybreaker Suppression Turret
(33357,0,0,1,0, NULL), -- "Spectral Tiger"
(35336,0,50331648,257,0, NULL), -- Horde Boat
(35335,0,50331648,257,0, NULL); -- Alliance Boat
UPDATE `creature_template` SET `unit_flags`=0,`speed_run`=1.5714285714286,`vehicleid`=349 WHERE `entry`=33782; -- Argent Warhorse
UPDATE `creature_template` SET `unit_flags`=0,`speed_run`=1.5714285714286,`vehicleid`=349 WHERE `entry`=33318; -- Exodar Elekk
UPDATE `creature_template` SET `unit_flags`=0,`speed_run`=1.5714285714286,`vehicleid`=349 WHERE `entry`=33323; -- Silvermoon Hawkstrider
UPDATE `creature_template` SET `unit_flags`=0,`speed_run`=1.5714285714286,`vehicleid`=349 WHERE `entry`=33322; -- Thunder Bluff Kodo
UPDATE `creature_template` SET `unit_flags`=0,`speed_run`=1.5714285714286,`vehicleid`=349 WHERE `entry`=33317; -- Gnomeregan Mechanostrider
UPDATE `creature_template` SET `unit_flags`=0,`speed_run`=1.5714285714286,`vehicleid`=349 WHERE `entry`=33319; -- Darnassian Nightsaber
UPDATE `creature_template` SET `unit_flags`=0,`speed_run`=1.5714285714286,`vehicleid`=349 WHERE `entry`=33316; -- Ironforge Ram
UPDATE `creature_template` SET `unit_flags`=0,`speed_run`=1.5714285714286,`vehicleid`=349 WHERE `entry`=33321; -- Darkspear Raptor
UPDATE `creature_template` SET `unit_flags`=0,`speed_run`=1.5714285714286,`vehicleid`=349 WHERE `entry`=33324; -- Forsaken Warhorse
UPDATE `creature_template` SET `unit_flags`=0,`speed_run`=1.5714285714286,`vehicleid`=349 WHERE `entry`=33320; -- Orgrimmar Wolf
UPDATE `creature_template` SET `unit_flags`=0,`speed_run`=1.5714285714286,`vehicleid`=349 WHERE `entry`=33845; -- Quel'dorei Steed
UPDATE `creature_template` SET `unit_flags`=0,`speed_run`=1.5714285714286,`vehicleid`=349 WHERE `entry`=33844; -- Sunreaver Hawkstrider
UPDATE `creature_template` SET `unit_flags`=0,`speed_run`=1.5714285714286,`vehicleid`=349 WHERE `entry`=33217; -- Stormwind Steed
UPDATE `creature_template` SET
`spell1`=62544, -- Thurst
`spell2`=62575, -- Shield-Breaker
`spell3`=62960, -- Charge
`spell4`=62552, -- Defend
`spell5`=64077, -- Refresh Mount
`spell6`=62863, -- Duel
`spell7`=63034  -- Player On Tournament Mount (aura)
WHERE `vehicleid`=349;
DELETE FROM `creature_template_addon` WHERE `entry` IN (33870,33790,33791,33792,33793,33794,33795,33796,33798,33799,33800,33842,33843);
INSERT INTO `creature_template_addon` (`entry`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES
(33870,0,0,1,0, NULL), -- Stabled Argent Warhorse
(33790,0,0,1,0, NULL), -- Stabled Exodar Elekk
(33791,0,0,1,0, NULL), -- Stabled Silvermoon Hawkstrider
(33792,0,0,1,0, NULL), -- Stabled Thunder Bluff Kodo
(33793,0,0,1,0, NULL), -- Stabled Gnomeregan Mechanostrider
(33794,0,0,1,0, NULL), -- Stabled Darnassian Nightsaber
(33795,0,0,1,0, NULL), -- Stabled Ironforge Ram
(33796,0,0,1,0, NULL), -- Stabled Darkspear Raptor
(33798,0,0,1,0, NULL), -- Stabled Forsaken Warhorse
(33799,0,0,1,0, NULL), -- Stabled Orgrimmar Wolf
(33800,0,0,1,0, NULL), -- Stabled Stormwind Steed
(33842,0,0,1,0, NULL), -- Stabled Sunreaver Hawkstrider
(33843,0,0,1,0, NULL); -- Stabled Quel'dorei Steed
DELETE FROM `creature_template_addon` WHERE `entry` IN (33782,33318,33323,33322,33317,33319,33316,33321,33324,33320,33845,33844,33217);
INSERT INTO `creature_template_addon` (`entry`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES
(33782,0,0,2305,0, NULL), -- Argent Warhorse
(33318,0,0,2305,0, NULL), -- Exodar Elekk
(33323,0,0,2305,0, NULL), -- Silvermoon Hawkstrider
(33322,0,0,2305,0, NULL), -- Thunder Bluff Kodo
(33317,0,0,2305,0, NULL), -- Gnomeregan Mechanostrider
(33319,0,0,2305,0, NULL), -- Darnassian Nightsaber
(33316,0,0,2305,0, NULL), -- Ironforge Ram
(33321,0,0,2305,0, NULL), -- Darkspear Raptor
(33324,0,0,2305,0, NULL), -- Forsaken Warhorse
(33320,0,0,2305,0, NULL), -- Orgrimmar Wolf
(33845,0,0,2305,0, NULL), -- Quel''dorei Steed
(33844,0,0,2305,0, NULL), -- Sunreaver Hawkstrider
(33217,0,0,2305,0, NULL); -- Stormwind Steed
UPDATE `gameobject` SET `spawntimesecs` = 120, `animprogress` = 100 WHERE `id` = 300008;
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=16 AND `ConditionTypeOrReference`=1 AND `ConditionValue1`=64373;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
-- dismount in wrong zones condition
(16,0,33782,0,1,64373,0,0,0,'', 'Vehicle Argent Warhorse requires aura Armistice'),
(16,0,33318,0,1,64373,0,0,0,'', 'Vehicle Exodar Elekk requires aura Armistice'),
(16,0,33323,0,1,64373,0,0,0,'', 'Vehicle Silvermoon Hawkstrider requires aura Armistice'),
(16,0,33322,0,1,64373,0,0,0,'', 'Vehicle Thunder Bluff Kodo requires aura Armistice'),
(16,0,33317,0,1,64373,0,0,0,'', 'Vehicle Gnomeregan Mechanostrider requires aura Armistice'),
(16,0,33319,0,1,64373,0,0,0,'', 'Vehicle Darnassian Nightsaber requires aura Armistice'),
(16,0,33316,0,1,64373,0,0,0,'', 'Vehicle Ironforge Ram requires aura Armistice'),
(16,0,33321,0,1,64373,0,0,0,'', 'Vehicle Darkspear Raptor requires aura Armistice'),
(16,0,33324,0,1,64373,0,0,0,'', 'Vehicle Forsaken Warhorse requires aura Armistice'),
(16,0,33320,0,1,64373,0,0,0,'', 'Vehicle Orgrimmar Wolf requires aura Armistice'),
(16,0,33845,0,1,64373,0,0,0,'', 'Vehicle Quel''dorei Steed requires aura Armistice'),
(16,0,33844,0,1,64373,0,0,0,'', 'Vehicle Sunreaver Hawkstrider requires aura Armistice'),
(16,0,33217,0,1,64373,0,0,0,'', 'Vehicle Stormwind Steed requires aura Armistice');
INSERT IGNORE INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(13,0,36325,0,18,1,21182,0,0,'','Spell 36325 target creature 21182'),
(13,0,36325,0,18,1,22401,0,0,'','Spell 36325 target creature 22401'),
(13,0,36325,0,18,1,22402,0,0,'','Spell 36325 target creature 22402'),
(13,0,36325,0,18,1,22403,0,0,'','Spell 36325 target creature 22403');

SET @ENTRY := 21657;
UPDATE `creature_template` SET `speed_run`=2.5,`ScriptName`='',`AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,62,0,100,0,8396,0,0,0,26,10814,0,1,0,0,0,7,0,0,0,0,0,0,0,'Neltharaku - On Gossip option - Quest credit'),
(@ENTRY,0,1,0,61,0,100,0,0,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0,'Neltharaku - On Gossip option - Close gossip');
SET @Counterattack = 4021;
-- Vars
SET @Gossip = 21253;
-- NPCs
SET @Deathgate = 3389; -- Regthar Deathgate (quest giver)
SET @Kromzar = 9456; -- Warlord Krom'zar (abilities: 11976 Strike)
SET @Stormseer = 9523; -- Kolkar Stormseer (abilities: 9532 Lighting Bolt; 6535 Lightning Cloud)
SET @Invader = 9524; -- Kolkar Invader (abilities: 8014 Tetatuns, 11976 Strike, 6268 Rushing Charge)
SET @Thrower = 9458; -- Horde Axe Thrower
SET @Defender = 9457; -- Horde Defender (abilities: 10277 Throw)
-- Spells
SET @CreateBanner = 13965; -- Create Krom'zar's Banner
DELETE FROM `gossip_menu` WHERE `entry` IN (@Gossip,@Gossip+1);
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES
(@Gossip+0,2533),
(@Gossip+1,2534);
DELETE FROM `gossip_menu_option` WHERE `menu_id`=@Gossip AND `id`=0;
INSERT INTO `gossip_menu_option` (`menu_id`,`id`,`option_icon`,`option_text`,`option_id`,`npc_option_npcflag`,`action_menu_id`,`action_poi_id`,`action_script_id`,`box_coded`,`box_money`,`box_text`) VALUES
(@Gossip,0,0, 'Where is Warlord Krom''zar?',1,1,@Gossip+1,0,0,0,0,NULL);
DELETE FROM `creature_text` WHERE `entry` IN (@Deathgate,@Invader,@Thrower,@Kromzar);
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@Deathgate,0,0,'Beware, $N! Look to the west!',0,0,100,1,0,0,'Regthar Deathgate: quest start'),
(@Deathgate,1,0,'A defender has fallen!',0,0,100,1,0,0,'Regthar Deathgate: Horde Defender death'),
(@Invader,0,0,'Kolkar Invader charges!',2,0,100,0,0,0,'Kolkar Invader: aggro'),
(@Thrower,0,0,'Defend the bunkers!',0,0,100,0,0,0,'Kolkar Axe Thrower'),
(@Thrower,0,1,'Our foes will fail!',0,0,100,0,0,0,'Kolkar Axe Thrower'),
(@Thrower,0,2,'For the Horde',0,0,100,0,0,0,'Kolkar Axe Thrower'),
(@Kromzar,0,0,'The Kolkar are the strongest!',1,0,100,0,0,0,'Warlord Krom''zar: spawn');
UPDATE `creature_template` SET `AIName`='SmartAI', `MovementType`=1 WHERE `entry` IN (@Kromzar,@Invader,@Stormseer,@Thrower,@Defender);
UPDATE `creature_template` SET `AIName`='SmartAI', `gossip_menu_id`=@Gossip WHERE `entry`=@Deathgate;
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=15 AND `SourceGroup`=@Gossip;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`ErrorTextId`,`Comment`) VALUES
(15,@Gossip,0,0,9,@Counterattack,0,0,0, 'Regthar Deathgate: Counterattack!: gossip: has quest'),
(15,@Gossip,0,0,26,11227,0,0,0, 'Regthar Deathgate: Counterattack!: gossip: does not have item Piece Banner');
DELETE FROM `smart_scripts` WHERE (`entryorguid`=@Kromzar AND `source_type`=0);
DELETE FROM `smart_scripts` WHERE (`entryorguid`=@Deathgate AND `source_type`=0);
DELETE FROM `smart_scripts` WHERE (`entryorguid`=@Invader AND `source_type`=0);
DELETE FROM `smart_scripts` WHERE (`entryorguid`=@Stormseer AND `source_type`=0);
DELETE FROM `smart_scripts` WHERE (`entryorguid`=@Thrower AND `source_type`=0);
DELETE FROM `smart_scripts` WHERE (`entryorguid`=@Deathgate*100 AND `source_type`=9);
DELETE FROM `smart_scripts` WHERE (`entryorguid`=@Defender AND `source_type`=0);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@Kromzar,0,0,0,0,0,100,0,0,1000,4000,6000,11,11976,0,0,0,0,0,2,0,0,0,0,0,0,0,'Warlord Krom''Zar: In combat cast Strike every 4 to 6 seconds'),
(@Kromzar,0,1,0,6,0,100,1,0,1000,5000,8000,11,@CreateBanner,2,0,0,0,0,0,0,0,0,0,0,0,0,'Warlord Krom''Zar: On death cast Create Krom''zar''s Banner'),
(@Kromzar,0,4,0,11,0,100,0,0,0,0,0,89,5,0,0,0,0,0,1,0,0,0,0,0,0,0,'Warlord Krom''Zar: On spawn set random movement'),
(@Kromzar,0,5,0,11,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Warlord Krom''Zar: On spawn say text 0'),
(@Invader,0,0,0,4,0,100,0,0,0,0,0,11,6268,0,0,0,0,0,2,0,0,0,0,0,0,0,'Kolkar Invader: On aggro cast Rushing Charge'),
(@Invader,0,1,0,4,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Kolkar Invader: On aggro say text 0'),
(@Invader,0,2,0,0,0,100,0,0,1000,4000,6000,11,11976,0,0,0,0,0,2,0,0,0,0,0,0,0,'Kolkar Invader: In combat cast Strike every 4 to 6 seconds'),
(@Invader,0,3,0,0,0,100,0,1000,2000,20000,20000,11,8014,0,0,0,0,0,2,0,0,0,0,0,0,0,'Kolkar Invader: In combat cast Tetanus every 20 seconds'),
(@Invader,0,4,0,11,0,100,0,0,0,0,0,89,5,0,0,0,0,0,1,0,0,0,0,0,0,0,'Kolkar Invader: On spawn set random movement'),
(@Stormseer,0,0,0,11,0,100,0,0,0,0,0,58,1,9532,3500,6000,30,15,1,0,0,0,0,0,0,0,'Kolkar Stormseer: On respawn install AI template caster for Lighting Bolt'),
(@Stormseer,0,1,0,0,0,100,0,3000,4000,10000,10000,11,6535,1,0,0,0,0,2,0,0,0,0,0,0,0,'Kolkar Stormseer: In combat cast Lightning Cloud every 10 seconds'),
(@Stormseer,0,2,0,11,0,100,0,0,0,0,0,89,5,0,0,0,0,0,1,0,0,0,0,0,0,0,'Kolkar Stormseer: On spawn set random movement'),
(@Thrower,0,0,0,11,0,100,0,0,0,0,0,58,2,10277,35,0,0,0,1,0,0,0,0,0,0,0,'Horde Axe Thrower: On respawn install AI template turret for Throw'),
(@Thrower,0,1,0,6,0,100,0,0,0,0,0,12,@Thrower,1,450000,0,0,0,8,0,0,0,-293.212,-1912.51,91.6673,1.42794,'Horde Axe Thrower: On death summon Horde Axe Thrower'),
(@Thrower,0,2,0,11,0,100,0,0,0,0,0,89,5,0,0,0,0,0,1,0,0,0,0,0,0,0,'Horde Axe Thower: On spawn set random movement'),
(@Thrower,0,3,0,60,0,100,0,20000,25000,30000,40000,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Horde Axe Thower: Say text 0 every 30 to 40 seconds'),
(@Defender,0,0,0,6,0,100,0,0,0,0,0,1,1,0,0,0,0,0,9,@Deathgate,0,300,0,0,0,0,'Horde Axe Thrower: On death Regthar Deathgate say text 1'),
(@Defender,0,1,0,6,0,100,0,0,0,0,0,12,@Defender,1,450000,0,0,0,8,0,0,0,-280.703,-1908.01,91.6668,1.77351,'Horde Defender: On death summon Horde Defender'),
(@Defender,0,2,0,11,0,100,0,0,0,0,0,89,5,0,0,0,0,0,1,0,0,0,0,0,0,0,'Horde Defender: On spawn set random movement'),
(@Deathgate,0,0,0,11,0,100,0,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Regthar Deathgate: On respawn set phase 1 (p0)'),
(@Deathgate,0,1,0,19,1,100,0,@Counterattack,0,0,0,1,0,0,0,0,0,0,18,15,0,0,0,0,0,0,'Regthar Deathgate: On quest accept say text 0 (p1)'),
(@Deathgate,0,2,0,19,1,100,0,@Counterattack,0,0,0,22,2,0,0,0,0,0,0,0,0,0,0,0,0,0,'Regthar Deathgate: On quest accept set event phase 2 (p1)'),
(@Deathgate,0,3,0,19,2,100,0,@Counterattack,0,0,0,80,@Deathgate*100,0,0,0,0,0,1,0,0,0,0,0,0,0,'Regthar Deathgate: On quest accept call main script (p2)'),
(@Deathgate,0,4,0,62,1,100,0,@Gossip,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Regthar Deathgate: On gossip select say text 0 (p1)'),
(@Deathgate,0,5,0,62,4,100,0,@Gossip,0,0,0,80,@Deathgate*100,0,0,0,0,0,1,0,0,0,0,0,0,0,'Regthar Deathgate: On gossip select call main script (p4)'),
(@Deathgate*100,9,0,0,0,0,100,0,0,0,0,0,12,@Defender,1,450000,0,0,0,8,0,0,0,-280.703,-1908.01,91.6668,1.77351,'Counterattack!: Summon Horde Axe Thrower 1'),
(@Deathgate*100,9,1,0,0,0,100,0,0,0,0,0,12,@Defender,1,450000,0,0,0,8,0,0,0,-286.384,-1910.99,91.6668,1.59444,'Counterattack!: Summon Horde Defender 2'),
(@Deathgate*100,9,2,0,0,0,100,0,0,0,0,0,12,@Defender,1,450000,0,0,0,8,0,0,0,-297.373,-1917.11,91.6746,1.81435,'Counterattack!: Summon Horde Defender 3'),
(@Deathgate*100,9,3,0,0,0,100,0,0,0,0,0,12,@Thrower,1,450000,0,0,0,8,0,0,0,-293.212,-1912.51,91.6673,1.42794,'Counterattack!: Summon Horde Axe Thrower 1'),
(@Deathgate*100,9,4,0,0,0,100,0,0,0,0,0,12,@Invader,1,450000,0,0,0,8,0,0,0,-280.037,-1888.35,92.2549,2.28087,'Counterattack!: Summon Kolkar Invader'),
(@Deathgate*100,9,5,0,0,0,100,0,0,0,0,0,12,@Invader,1,450000,0,0,0,8,0,0,0,-292.107,-1899.54,91.667,4.78158,'Counterattack!: Summon Kolkar Invader'),
(@Deathgate*100,9,6,0,0,0,100,0,0,0,0,0,12,@Invader,1,450000,0,0,0,8,0,0,0,-305.57,-1869.88,92.7754,2.45131,'Counterattack!: Summon Kolkar Invader'),
(@Deathgate*100,9,7,0,0,0,100,0,0,0,0,0,12,@Invader,1,450000,0,0,0,8,0,0,0,-289.972,-1882.76,92.5714,3.43148,'Counterattack!: Summon Kolkar Invader'),
(@Deathgate*100,9,8,0,0,0,100,0,0,0,0,0,12,@Invader,1,450000,0,0,0,8,0,0,0,-277.454,-1873.39,92.7773,4.75724,'Counterattack!: Summon Kolkar Invader'),
(@Deathgate*100,9,9,0,0,0,100,0,0,0,0,0,12,@Invader,1,450000,0,0,0,8,0,0,0,-271.581,-1847.51,93.4329,4.39124,'Counterattack!: Summon Kolkar Invader'),
(@Deathgate*100,9,10,0,0,0,100,0,0,0,0,0,12,@Invader,1,450000,0,0,0,8,0,0,0,-269.982,-1828.6,92.4754,4.68655,'Counterattack!: Summon Kolkar Invader'),
(@Deathgate*100,9,11,0,0,0,100,0,0,0,0,0,12,@Stormseer,1,450000,0,0,0,8,0,0,0,-279.267,-1827.92,92.3128,1.35332,'Counterattack!: Summon Kolkar Stormseer'),
(@Deathgate*100,9,12,0,0,0,100,0,0,0,0,0,12,@Stormseer,1,450000,0,0,0,8,0,0,0,-297.42,-1847.41,93.2295,5.80967,'Counterattack!: Summon Kolkar Stormseer'),
(@Deathgate*100,9,13,0,0,0,100,0,0,0,0,0,12,@Stormseer,1,450000,0,0,0,8,0,0,0,-310.607,-1831.89,95.9363,0.371571,'Counterattack!: Summon Kolkar Stormseer'),
(@Deathgate*100,9,14,0,0,0,100,0,0,0,0,0,12,@Stormseer,1,450000,0,0,0,8,0,0,0,-329.177,-1842.43,95.3891,0.516085,'Counterattack!: Summon Kolkar Stormseer'),
(@Deathgate*100,9,15,0,0,0,100,0,0,0,0,0,12,@Stormseer,1,450000,0,0,0,8,0,0,0,-324.448,-1860.63,94.3221,4.97793,'Counterattack!: Summon Kolkar Stormseer'),
(@Deathgate*100,9,16,0,0,0,100,0,20000,30000,0,0,12,@Invader,1,250000,0,0,0,8,0,0,0,-290.588,-1858,92.5026,4.14698,'Counterattack!: Summon Kolkar Invader'),
(@Deathgate*100,9,17,0,0,0,100,0,20000,30000,0,0,12,@Stormseer,1,250000,0,0,0,8,0,0,0,-286.103,-1846.18,92.544,6.11047,'Counterattack!: Summon Kolkar Stormseer'),
(@Deathgate*100,9,18,0,0,0,100,0,20000,30000,0,0,12,@Invader,1,250000,0,0,0,8,0,0,0,-304.978,-1844.7,94.4432,1.61721,'Counterattack!: Summon Kolkar Invader'),
(@Deathgate*100,9,19,0,0,0,100,0,20000,30000,0,0,12,@Stormseer,1,250000,0,0,0,8,0,0,0,-308.105,-1859.08,93.8039,2.80709,'Counterattack!: Summon Kolkar Stormseer'),
(@Deathgate*100,9,20,0,0,0,100,0,20000,30000,0,0,12,@Invader,1,250000,0,0,0,8,0,0,0,-297.089,-1867.68,92.5601,2.21804,'Counterattack!: Summon Kolkar Invader'),
(@Deathgate*100,9,21,0,0,0,100,0,20000,30000,0,0,12,@Stormseer,1,250000,0,0,0,8,0,0,0,-286.988,-1876.47,92.7447,1.39494,'Counterattack!: Summon Kolkar Stormseer'),
(@Deathgate*100,9,22,0,0,0,100,0,20000,30000,0,0,12,@Invader,1,250000,0,0,0,8,0,0,0,-291.86,-1893.04,92.0213,1.96121,'Counterattack!: Summon Kolkar Invader'),
(@Deathgate*100,9,23,0,0,0,100,0,20000,30000,0,0,12,@Invader,1,250000,0,0,0,8,0,0,0,-298.297,-1846.85,93.3672,4.97792,'Counterattack!: Summon Kolkar Invader'),
(@Deathgate*100,9,24,0,0,0,100,0,0,0,0,0,12,@Invader,1,250000,0,0,0,8,0,0,0,-294.942,-1845.88,93.0999,4.86797,'Counterattack!: Summon Kolkar Invader'),
(@Deathgate*100,9,25,0,0,0,100,0,0,0,0,0,12,@Kromzar,1,250000,0,0,0,8,0,0,0,-296.718,-1846.38,93.2334,5.02897,'Counterattack!: Summon Warlord Kromzar'),
(@Deathgate*100,9,26,0,0,0,100,0,20000,20000,0,0,22,4,1,450000,0,0,0,1,0,0,0,0,0,0,0,'Regthar Deathgate: set phase 4'), -- if player does not finish this quest this time s/he can come back later'
(@Deathgate*100,9,27,0,0,0,100,0,2*3600*1000,2*3600*1000,0,0,22,1,1,450000,0,0,0,1,0,0,0,0,0,0,0,'Regthar Deathgate: set phase 1'), -- after 2 hours reset everything (event start on quest accept)'
(@Deathgate,0,7,0,20,10,100,0,@Counterattack,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Regthar Deathgate: On quest reward set phase 1');
-- SAI for Gor'drek
-- This will remove 2 waypoint scripts that were spamming errors
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=21117;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=21117;
DELETE FROM `smart_scripts` WHERE `source_type`=9 AND `entryorguid` IN (2111700,2111701);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
-- AI
(21117,0,0,0,23,0,100,0,12550,0,2000,2000,11,12550,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Gor''drek - Add Lightning Shield Aura'),
(21117,0,1,0,11,0,100,0,0,0,0,0,53,0,21117,1,0,0,0,1,0,0,0,0,0,0,0, 'Gor''drek - Start WP movement'),
(21117,0,2,0,40,0,100,0,2,21117,0,0,80,2111700,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Gor''drek - Load script at WP 2'),
(21117,0,3,0,40,0,100,0,4,21117,0,0,80,2111701,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Gor''drek - Load script at WP 4'),
-- Script 1
(2111700,9,0,0,0,0,100,0,0,0,0,0,54,128000,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Gor''drek - Pause at WP 2'),
(2111700,9,1,0,0,0,100,0,1000,1000,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,5.654867, 'Gor''drek - Turn to 5.654867'),
(2111700,9,2,0,0,0,100,0,2000,2000,0,0,11,28892,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Gor''drek - Cast 42837'),
(2111700,9,3,0,0,0,100,0,120000,120000,0,0,92,1,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Gor''drek - Stop Casting 42837'),
-- Script 2
(2111701,9,0,0,0,0,100,0,0,0,0,0,54,128000,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Gor''drek - Pause at WP 2'),
(2111701,9,1,0,0,0,100,0,1000,1000,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,4.677482, 'Gor''drek - Turn to 4.677482'),
(2111701,9,2,0,0,0,100,0,2000,2000,0,0,11,28892,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Gor''drek - Cast 42837'),
(2111701,9,3,0,0,0,100,0,120000,120000,0,0,92,1,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Gor''drek - Stop Casting 42837');
-- Update position and remove path for Gor'drek
UPDATE `creature` SET `position_x`=2313.006,`position_y`=6004.879,`position_z`=142.8264,`orientation`=4.677482,`MovementType`=0 WHERE `guid`=60911;
UPDATE `creature_addon` SET `path_id`=0 WHERE `guid`=60911;
DELETE FROM `waypoint_data` WHERE `id`=60911;
# DELETE FROM `waypoint_scripts` WHERE `id` IN (224,225);
-- Proper waypoints for Gor'drek from sniff
DELETE FROM `waypoints` WHERE `entry`=21117;
INSERT INTO `waypoints` (`entry`,`pointid`,`position_x`,`position_y`,`position_z`,`point_comment`) VALUES
(21117,1,2319.757,6007.015,142.7014,'Gor''drek WP 1'),
(21117,2,2325.909,6010.899,142.5764,'Gor''drek WP 2'),
(21117,3,2319.757,6007.015,142.7014,'Gor''drek WP 3'),
(21117,4,2313.006,6004.879,142.8264,'Gor''drek WP 4');
SET @Fairmount = 3393; -- Captain Fairmount
DELETE FROM `smart_scripts` WHERE (`entryorguid`=@Fairmount AND `source_type`=0);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(@Fairmount,0,0,0,4,0,100,0,0,0,0,0,11,9128,0,0,0,0,0,1,0,0,0,0,0,0,0,'Captain Fairmount: On aggro cast Battle Shout self'),
(@Fairmount,0,1,0,2,0,100,1,0,30,0,0,11,19134,0,0,0,0,0,2,0,0,0,0,0,0,0,'Captain Fairmount: At 30% hp cast Frightening Shout'),
(@Fairmount,0,2,0,13,0,100,0,5000,5000,0,0,11,12555,0,0,0,0,0,2,0,0,0,0,0,0,0,'Captain Fairmount: On enemy casting cast Pummel');
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@Fairmount;
-- SAI for King Ymiron & Ancient Citizen of Nifflevar (24322,24323)
UPDATE `creature_template` SET `unit_flags`=`unit_flags`|768,`AIName`= 'SmartAI' WHERE `entry` IN (24321,24322,24323);
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid` IN (24321,24322,24323);
DELETE FROM `smart_scripts` WHERE `source_type`=9 AND `entryorguid` IN (2432100);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(24321,0,0,0,1,0,100,0,15000,15000,120000,120000,80,2432100,0,0,0,0,0,1,0,0,0,0,0,0,0, 'King Ymiron - Run script every 2 min'),
(24321,0,1,0,11,0,100,0,0,0,0,0,8,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'King Ymiron - Set React State civilian'),
(2432100,9,0,0,0,0,100,0,1000,1000,0,0,1,0,0,0,0,0,0,10,@GUID+34,24323,0,0,0,0,0, 'Ancient Citizen of Nifflevar Say text 0'),
(2432100,9,1,0,0,0,100,0,8000,8000,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Say text 0'),
(2432100,9,2,0,0,0,100,0,1000,1000,0,0,1,0,0,0,0,0,0,10,@GUID+8,24322,0,0,0,0,0, 'Ancient Citizen of Nifflevar Say text 0'),
(2432100,9,3,0,0,0,100,0,4000,4000,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Say text 1'),
(2432100,9,4,0,0,0,100,0,5000,5000,0,0,1,2,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Say text 2'),
(2432100,9,5,0,0,0,100,0,5000,5000,0,0,1,3,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Say text 3'),
(2432100,9,6,0,0,0,100,0,5000,5000,0,0,1,4,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Say text 4'),
(2432100,9,7,0,0,0,100,0,4000,4000,0,0,5,1,0,0,0,0,0,1,0,0,0,0,0,0,0, 'emote say'),
(2432100,9,8,0,0,0,100,0,4000,4000,0,0,1,5,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Say text 5'),
(2432100,9,9,0,0,0,100,0,4000,4000,0,0,5,1,0,0,0,0,0,1,0,0,0,0,0,0,0, 'emote say'),
(2432100,9,10,0,0,0,100,0,4000,4000,0,0,1,6,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Say text 6'),
(2432100,9,11,0,0,0,100,0,4000,4000,0,0,5,6,0,0,0,0,0,1,0,0,0,0,0,0,0, 'emote question'),
(2432100,9,12,0,0,0,100,0,4000,4000,0,0,1,7,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Say text 7'),
(2432100,9,13,0,0,0,100,0,3000,3000,0,0,1,8,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Say text 8'),
(2432100,9,14,0,0,0,100,0,2000,2000,0,0,1,9,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Say text 9'),
(2432100,9,15,0,0,0,100,0,3000,3000,0,0,5,53,0,0,0,0,0,1,0,0,0,0,0,0,0, 'emote battleroar'),
(2432100,9,16,0,0,0,100,0,9000,9000,0,0,1,10,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Say text 10'),
(2432100,9,17,0,0,0,100,0,3000,3000,0,0,5,53,0,0,0,0,0,1,0,0,0,0,0,0,0, 'emote battleroar'),
(2432100,9,18,0,0,0,100,0,5000,5000,0,0,1,1,0,0,0,0,0,10,@GUID+26,24322,0,0,0,0,0, 'Ancient Citizen of Nifflevar Say text 1'),
(2432100,9,19,0,0,0,100,0,0,0,0,0,11,43468,2,0,0,0,0,1,0,0,0,0,0,0,0, 'Cast Secrets of Nifflevar'),
(2432100,9,20,0,0,0,100,0,4000,4000,0,0,1,2,0,0,0,0,0,10,@GUID+5,24322,0,0,0,0,0, 'Ancient Citizen of Nifflevar Say text 2'),
(2432100,9,21,0,0,0,100,0,2000,2000,0,0,1,1,0,0,0,0,0,10,@GUID+41,24323,0,0,0,0,0, 'Ancient Citizen of Nifflevar Say text 1'),
(24322,0,0,0,11,0,100,0,0,0,0,0,8,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Ancient Citizen of Nifflevar (24322) - Set React State civilian'),
(24322,0,1,0,1,0,100,0,1000,10000,8000,10000,10,4,53,113,397,0,0,1,0,0,0,0,0,0,0, 'Ancient Citizen of Nifflevar (24322) - Play random emote'),
(24323,0,0,0,11,0,100,0,0,0,0,0,8,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Ancient Citizen of Nifflevar (24323) - Set React State civilian'),
(24323,0,1,0,1,0,100,0,1000,10000,8000,10000,10,4,53,113,397,0,0,1,0,0,0,0,0,0,0, 'Ancient Citizen of Nifflevar (24323) - Play random emote');
-- NPC talk text insert from sniff for King Ymiron & Ancient Citizens of Nifflevar
DELETE FROM `creature_text` WHERE `entry` IN (24321,24322,24323);
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(24321,0,0,'%s motions for silence.',2,0,100,397,0,0, 'King Ymiron emote'),
(24321,1,0,'Vrykul, your king implores you to listen!',1,0,100,22,0,0, 'King Ymiron yell'),
(24321,2,0,'The crowd gasps in horror.',2,0,100,53,0,0, 'King Ymiron emote'),
(24321,3,0,'Even now, in our darkest hour, they mock us!',1,0,100,22,0,0, 'King Ymiron yell'),
(24321,4,0,'Where are the titans in our time of greatest need? Our women birth abberations - disfigured runts unable to even stand on their own! Weak and ugly... Useless...',1,0,100,22,0,0, 'King Ymiron yell'),
(24321,5,0,'Ymiron has toiled. Long have I sat upon my throne and thought hard of our plight. There is only one answer... one reason...',1,0,100,22,0,0, 'King Ymiron yell'),
(24321,6,0,'For who but the titans themselves could bestow such a curse? What could have such power?',1,0,100,1,0,0, 'King Ymiron yell'),
(24321,7,0,'And the answer is nothing... For it is the titans that have cursed us!',1,0,100,53,0,0, 'King Ymiron yell'),
(24321,8,0,'The crowd cheers.',2,0,100,0,0,0, 'King Ymiron'),
(24321,9,0,'On this day all Vrykul will shed their old beliefs! We denounce our old gods! All Vrykul will pledge their allegiance to Ymiron! Ymiron will protect our noble race!',1,0,100,53,0,0, 'King Ymiron yell'),
(24321,10,0,'And now my first decree upon the Vrykul! All malformed infants born of Vrykul mother and father are to be destroyed upon birth! Our blood must remain pure always! Those found in violation of Ymiron''s decree will be taken to Gjalerbron for execution!',1,0,100,1,0,0, 'King Ymiron yell'),
(24322,0,0,'Silence!',1,0,100,1,0,0, 'Ancient Citizen of Nifflevar yell'),
(24322,1,0,'Show them mercy, my king! They are of our flesh and blood!',1,0,100,53,0,0, 'Ancient Citizen of Nifflevar yell'),
(24322,2,0,'All hail our glorious king, Ymiron!',1,0,100,53,0,0, 'Ancient Citizen of Nifflevar yell'),
(24323,0,0,'Show the abberations no mercy, Ymiron!',1,0,100,1,0,0, 'Ancient Citizen of Nifflevar yell'),
(24323,1,0,'They weaken us! Our strength is dilluted by their very existence! Destroy them all!',1,0,100,113,0,0, 'Ancient Citizen of Nifflevar yell');
UPDATE `creature_template` SET `AIName`= 'SmartAI' WHERE `entry`=23678;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (23678,2367800);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(23678,0,0,0,2,0,100,1,0,30,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Do text emote on health 30%'),
(23678,0,1,0,0,0,75,0,2000,3000,2000,2000,11,9739,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Wrath on victim'),
(23678,0,2,3,8,0,100,0,43340,0,0,0,66,0,0,0,0,0,0,7,0,0,0,0,0,0,0,'On Spell hit 43340 face player'),
(23678,0,3,4,61,0,100,0,0,0,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'stop combat movement'),
(23678,0,4,5,61,0,100,0,0,0,0,0,24,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'evade'),
(23678,0,5,6,61,0,100,0,0,0,0,0,2,35,0,0,0,0,0,1,0,0,0,0,0,0,0,'set faction 35'),
(23678,0,6,7,61,0,100,0,0,0,0,0,33,24117,0,0,0,0,0,7,0,0,0,0,0,0,0,'quest credit'),
(23678,0,7,0,61,0,100,0,0,0,0,0,80,2367800,0,0,0,0,0,1,0,0,0,0,0,0,0,'load script'),
(23678,0,8,0,40,0,100,0,1,23678,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'On reach waypoint 1 despawn'),
(2367800,9,0,0,0,0,100,0,2000,2000,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Say text 1'),
(2367800,9,1,0,0,0,100,0,1000,1000,0,0,53,1,23678,0,0,0,0,1,0,0,0,0,0,0,0, 'start waypoint movement');
-- NPC talk text insert
DELETE FROM `creature_text` WHERE `entry`=23678;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(23678,0,0, 'Chill Nymph appears weak!',2,0,100,0,0,0, 'Chill Nymph'),
(23678,1,0, 'I knew Lurielle would send help! Thank you friend, and give Lurielle my thanks as well!',0,7,100,1,0,0, 'Chill Nymph'),
(23678,1,1, 'Where am I? What happened to me? You... you freed me?',0,7,100,1,0,0, 'Chill Nymph'),
(23678,1,2, 'Thank you. I thought I would die without seeing my sisters again!',0,7,100,1,0,0, 'Chill Nymph');
-- Chill Nymph Path
DELETE FROM `waypoints` WHERE `entry`=23678;
INSERT INTO `waypoints` (`entry`,`pointid`,`position_x`,`position_y`,`position_z`,`point_comment`) VALUES
(23678,1,2063,-4666,217,'Chill Nymph point 1');
-- Add condition for Item 33606 "Lurielle''s Pendant" to only target Chill Nymph 23678
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=18 AND `SourceEntry`=33606;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(18,0,33606,0,24,1,23678,0,63,'','Item 33606 Lurielle''s Pendant targets Chill Nymph 23678');
-- SAI for Thoralius the Wise
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=23975;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=23975;
DELETE FROM `smart_scripts` WHERE `source_type`=9 AND `entryorguid` IN (2397500,2397501,2397502,2397503);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
-- AI Section
(23975,0,0,1,1,0,100,0,60000,120000,300000,300000,91,1,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Thoralius the Wise - every 5 min Stand'),
(23975,0,1,0,61,0,100,0,0,0,0,0,53,0,23975,0,0,0,0,1,0,0,0,0,0,0,0, 'Thoralius the Wise - Start WP'),
(23975,0,2,0,40,0,100,0,2,23975,0,0,80,2397500,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Thoralius the Wise - Load script 1 at WP 2'),
(23975,0,3,0,40,0,100,0,4,23975,0,0,80,2397501,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Thoralius the Wise - Load script 2 at WP 4'),
(23975,0,4,0,40,0,100,0,7,23975,0,0,80,2397502,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Thoralius the Wise - Load script 3 at WP 7'),
(23975,0,5,0,40,0,100,0,8,23975,0,0,80,2397503,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Thoralius the Wise - Load script 4 at WP 8'),
-- Script 1
(2397500,9,0,0,0,0,100,0,0,0,0,0,54,4000,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Thoralius the Wise - Pause at WP 2'),
(2397500,9,1,0,0,0,100,0,0,0,0,0,11,42837,3,0,0,0,0,1,0,0,0,0,0,0,0, 'Thoralius the Wise - Cast 42837'),
(2397500,9,2,0,0,0,100,0,1000,1000,0,0,66,0,0,0,0,0,0,19,24046,0,0,0,0,0,0, 'Thoralius the Wise - Turn to face spirit Totem (Fire)'),
(2397500,9,3,0,0,0,100,0,500,500,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Thoralius the Wise - say text 0'),
-- Script 2
(2397501,9,0,0,0,0,100,0,0,0,0,0,54,4000,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Thoralius the Wise - Pause at WP 4'),
(2397501,9,1,0,0,0,100,0,0,0,0,0,11,42838,3,0,0,0,0,1,0,0,0,0,0,0,0, 'Thoralius the Wise - Cast 42838'),
(2397501,9,2,0,0,0,100,0,1000,1000,0,0,66,0,0,0,0,0,0,19,24045,0,0,0,0,0,0, 'Thoralius the Wise - Turn to face spirit Totem (Water)'),
(2397501,9,3,0,0,0,100,0,500,500,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Thoralius the Wise - Say text 1'),
-- Script 3
(2397502,9,0,0,0,0,100,0,0,0,0,0,54,53000,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Thoralius the Wise - Pause at WP 7'),
(2397502,9,1,0,0,0,100,0,0,0,0,0,1,2,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Thoralius the Wise - Do text 2'),
(2397502,9,2,0,0,0,100,0,1000,1000,0,0,17,64,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Thoralius the Wise - do emote state STATE_STUN'),
(2397502,9,3,0,0,0,100,0,45000,45000,0,0,17,26,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Thoralius the Wise - do emote state STATE_STAND'),
(2397502,9,4,0,0,0,100,0,2000,2000,0,0,1,3,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Thoralius the Wise - Do text 3'),
-- Script 4
(2397503,9,0,0,0,0,100,0,8,23975,0,0,55,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Thoralius the Wise - Stop at WP 8'),
(2397503,9,1,0,0,0,100,0,500,500,0,0,66,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Thoralius the Wise - Reset heading at WP 8'),
(2397503,9,2,0,0,0,100,0,500,500,0,0,90,1,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Thoralius the Wise - sit at WP 8');

-- NPC talk text insert
DELETE FROM `creature_text` WHERE `entry`=23975;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(23975,0,0, 'Fire grant me vision...',0,7,100,20,0,0, 'Thoralius the Wise'),
(23975,1,0, 'Water grant me serenity...',0,7,100,20,0,0, 'Thoralius the Wise'),
(23975,2,0, '%s inhales the wispy smoke tendrils emanating from the burner.',2,7,100,0,0,0, 'Thoralius the Wise'),
(23975,3,0, 'Thank you, spirits.',0,7,100,2,0,0, 'Thoralius the Wise');

-- Waypoints for Thoralius the Wise from sniff
DELETE FROM `waypoints` WHERE `entry`=23975;
INSERT INTO `waypoints` (`entry`,`pointid`,`position_x`,`position_y`,`position_z`,`point_comment`) VALUES
(23975,1,637.177,-5011.109,4.653919,'Thoralius the Wise WP 1'),
(23975,2,634.8372,-5010.296,4.528919,'Thoralius the Wise WP 2'),
(23975,3,637.9232,-5015.031,4.528919,'Thoralius the Wise WP 3'),
(23975,4,636.0419,-5016.675,4.153919,'Thoralius the Wise WP 4'),
(23975,5,638.2552,-5013.186,4.653919,'Thoralius the Wise WP 5'),
(23975,6,637.7585,-5013.268,4.653919,'Thoralius the Wise WP 6'),
(23975,7,636.8245,-5013.386,4.528919,'Thoralius the Wise WP 7'),
(23975,8,638.2552,-5013.186,4.653919,'Thoralius the Wise WP 8');
-- Ascented Mage Hunter SAI
UPDATE `creature_template` SET `AIName`= 'SmartAI' WHERE `entry`=25724;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (25724);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(25724,0,0,0,11,0,100,0,0,0,0,0,8,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Ascented Mage Hunter - On reset - Set react state passive'),
(25724,0,1,0,1,0,100,1,1000,1000,1000,1000,11,45940,0,0,0,0,0,9,25594,0,10,0,0,0,0,'Ascented Mage Hunter - On reset - Cast Evanor''s Prison Chains');
-- c27842 Fenrick Barlowe
-- ================================
SET @ENTRY := 27842;
SET @SCRIPT1 := 2784201;
SET @SCRIPT2 := 2784202;
-- ================================
-- take random movement off of npc (smartAI will control pathing)
-- * create text into the DB
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES 
(@ENTRY,0,0, 'Bat gizzards again for the gnomes tonight...',0,0,100,1,0,0, 'Fenrick Barlowe text'),
(@ENTRY,0,1, 'What do they expect, making the bats come in at that angle? Broken necks and gamey bat stew, that''s what they get.',0,0,100,1,0,0, 'Fenrick Barlowe text'),
(@ENTRY,0,2, '''We like trees, Fenrick. They provide cover.'' They won''t let me chop them down, either.',0,0,100,1,0,0, 'Fenrick Barlowe text'),
(@ENTRY,0,3, 'I wonder how many reinforcements need to suffer injury before they allows us to chop down these idiotic trees. They''re costing us a fortune in bats. Maybe I''ll rig a harness or two...',0,0,100,1,0,0, 'Fenrick Barlowe text');
-- create path
-- point 8 reposition to face bat, do text - kneel for 10 seconds
-- point 5 do text - kneel for 10 seconds
DELETE FROM `waypoints` WHERE `entry`=@ENTRY;
INSERT INTO `waypoints` (`entry`,`pointid`,`position_x`,`position_y`,`position_z`,`point_comment`) VALUES
(@ENTRY,1,3246.2,-642.609,165.239, 'Fenrick Barlowe path'),
(@ENTRY,2,3240.42,-645.154,165.399, 'Fenrick Barlowe path'),
(@ENTRY,3,3245.75,-664.935,166.789, 'Fenrick Barlowe path'),
(@ENTRY,4,3250.1,-663.819,166.789, 'Fenrick Barlowe path'),
(@ENTRY,5,3254.69,-661.435,167.188, 'Fenrick Barlowe path - kneel here - do text'),
(@ENTRY,6,3252.36,-659.146,167.118, 'Fenrick Barlowe path'),
(@ENTRY,7,3252.63,-648.746,165.904, 'Fenrick Barlowe path'),
(@ENTRY,8,3249.21,-647.163,165.7, 'Fenrick Barlowe path - kneel here - do text');
-- set SAI to npc
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
-- create scripts for random text, emotes, and pathing
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=9 AND `entryorguid` IN (@SCRIPT1,@SCRIPT2);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
-- AI
(@ENTRY,0,0,0,11,0,100,0,0,0,0,0,53,0,@ENTRY,1,0,0,0,1,0,0,0,0,0,0,0, 'on spawn start path'),
(@ENTRY,0,1,0,40,0,100,0,5,@ENTRY,0,0,80,@SCRIPT1,0,0,0,0,0,1,0,0,0,0,0,0,0, 'at wp 5 run script1'),
(@ENTRY,0,2,0,40,0,100,0,8,@ENTRY,0,0,80,@SCRIPT2,0,0,0,0,0,1,0,0,0,0,0,0,0, 'at wp 8 run script2'),
-- script 1
(@SCRIPT1,9,0,0,0,0,100,0,0,0,0,0,54,13000,0,0,0,0,0,1,0,0,0,0,0,0,0, 'pause pathing'),
(@SCRIPT1,9,1,0,0,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'say random text'),
(@SCRIPT1,9,2,0,0,0,100,0,0,0,0,0,90,8,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Set bytes1=8 kneel'),
(@SCRIPT1,9,3,0,0,0,100,0,11000,11000,0,0,91,8,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Set bytes1=0 stand up'),
-- script 2
(@SCRIPT2,9,0,0,0,0,100,0,0,0,0,0,54,14000,0,0,0,0,0,1,0,0,0,0,0,0,0, 'pause pathing'),
(@SCRIPT2,9,1,0,40,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'say random text'),
(@SCRIPT2,9,2,0,0,0,100,0,1000,1000,0,0,66,0,0,0,0,0,0,10,108509,27787,0,0,0,0,0, 'face bat'),
(@SCRIPT2,9,3,0,0,0,100,0,1000,1000,0,0,90,8,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Set bytes1=8 kneel'),
(@SCRIPT2,9,4,0,0,0,100,0,11000,11000,0,0,91,8,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Set bytes1=0 stand up');
-- Quest 9303 "Inoculation"
SET @OWL := 16518; -- Nestlewood Owlkin
SET @IOWL := 16534; -- Inoculated Nestlewood Owlkin
UPDATE `creature_template` SET `AIName`= 'SmartAI' WHERE `entry`=@OWL;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND`entryorguid`=@OWL;
DELETE FROM `smart_scripts` WHERE `source_type`=9 AND`entryorguid`=@OWL*100;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@OWL,0,0,0,8,0,100,0,29528,0,3000,3000,80,@OWL*100,0,0,0,0,0,1,0,0,0,0,0,0,0, 'on spellhit run script'),
(@OWL*100,9,0,0,0,0,100,0,3000,3000,0,0,66,0,0,0,0,0,0,7,0,0,0,0,0,0,0,'face player'),
(@OWL*100,9,1,0,0,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'say random text from groupid 0'),
(@OWL*100,9,2,0,0,0,100,0,0,0,0,0,36,@IOWL,0,0,0,0,0,1,0,0,0,0,0,0,0,'morph to entry'),
(@OWL*100,9,3,0,0,0,100,0,0,0,0,0,18,33024,0,0,0,0,0,1,0,0,0,0,0,0,0,'change unitflags'),
(@OWL*100,9,4,0,0,0,100,0,300,300,0,0,33,@IOWL,0,0,0,0,0,7,0,0,0,0,0,0,0,'give quest credit'),
(@OWL*100,9,5,0,0,0,100,0,500,500,0,0,89,15,0,0,0,0,0,1,0,0,0,0,0,0,0,'random movement'),
(@OWL*100,9,6,0,0,0,100,0,9000,9000,0,0,36,@OWL,0,0,0,0,0,1,0,0,0,0,0,0,0,'change entry back'),
(@OWL*100,9,7,0,0,0,100,0,0,0,0,0,19,256,0,0,0,0,0,1,0,0,0,0,0,0,0,'change unitflags back'),
(@OWL*100,9,8,0,0,0,100,0,0,0,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'despawn');
-- NPC talk text insert from sniff
DELETE FROM `creature_text` WHERE `entry`=16518;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(16518,0,0, 'The %s seems overjoyed.',2,0,100,0,0,0, 'Inoculated Nestlewood Owlkin'),
(16518,0,1, 'The %s seems disoriented.',2,0,100,0,0,0, 'Inoculated Nestlewood Owlkin'),
(16518,0,2, 'The %s doesn''t look like it minds the crystal''s effects.',2,0,100,0,0,0, 'Inoculated Nestlewood Owlkin'),
(16518,0,3, 'The %s didn''t like what just happened.',2,0,100,0,0,0, 'Inoculated Nestlewood Owlkin'),
(16518,0,4, 'The %s looks confused.',2,0,100,0,0,0, 'Inoculated Nestlewood Owlkin'),
(16518,0,5, 'The %s nods appreciatively.',2,0,100,0,0,0, 'Inoculated Nestlewood Owlkin');
-- spell does not target the innoculated owlkin and it is not spawned, so take spell requirement out of equation
UPDATE `quest_template` SET `ReqSpellCast1`=0 WHERE `entry`=9303;
UPDATE `creature_template` SET `AIName`= 'SmartAI' WHERE `entry`=16208;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (16208,1620800);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(16208,0,0,0,62,0,100,0,7179,0,0,0,80,1620800,0,0,0,0,0,1,0,0,0,0,0,0,0, 'On gossip option select run script'),
(16208,0,1,0,40,0,100,0,5,16208,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'On reach waypoint 5 despawn'),
(1620800,9,0,0,0,0,100,0,0,0,0,0,81,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Turn off Gossip flag'),
(1620800,9,1,0,0,0,100,0,0,0,0,0,91,7,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Set bytes1 stand'),
(1620800,9,2,0,0,0,100,0,0,0,0,0,66,0,0,0,0,0,0,7,0,0,0,0,0,0,0, 'turn to envoker'),
(1620800,9,3,0,0,0,100,0,1000,1000,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Say text 0'),
(1620800,9,4,0,0,0,100,0,2000,2000,0,0,33,16208,0,0,0,0,0,7,0,0,0,0,0,0,0, 'give quest credit'),
(1620800,9,5,0,0,0,100,0,1000,1000,0,0,53,1,16208,0,0,0,0,1,0,0,0,0,0,0,0, 'start waypoint movement');
-- NPC talk text insert from sniff
DELETE FROM `creature_text` WHERE `entry`=16208;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(16208,0,0, 'Thanks, I should''ve never left Silverpine Forest.',0,0,100,6,0,0, 'Apothecary Enith');
-- Apothecary Enith Path
DELETE FROM `waypoints` WHERE `entry`=16208;
INSERT INTO `waypoints` (`entry`,`pointid`,`position_x`,`position_y`,`position_z`,`point_comment`) VALUES
(16208,1,6647.83,-6344.92,9.13345,'Apothecary Enith point 1'),
(16208,2,6657.92,-6345.96,15.3468,'Apothecary Enith point 2'),
(16208,3,6661.58,-6342.65,15.4309,'Apothecary Enith point 3'),
(16208,4,6662.35,-6334.64,20.8803,'Apothecary Enith point 4'),
(16208,5,6662.63,-6331.85,20.8924,'Apothecary Enith point 5');
-- Ranger Vedoran SAI
UPDATE `creature_template` SET `AIName`= 'SmartAI' WHERE `entry`=16209;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (16209,1620900);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(16209,0,0,0,62,0,100,0,7176,0,0,0,80,1620900,0,0,0,0,0,1,0,0,0,0,0,0,0, 'On gossip option select run script'),
(16209,0,1,0,40,0,100,0,7,16209,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'On reach waypoint 7 despawn'),
(1620900,9,0,0,0,0,100,0,0,0,0,0,81,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Turn off Gossip flag'),
(1620900,9,1,0,0,0,100,0,0,0,0,0,91,7,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Set bytes1 stand'),
(1620900,9,2,0,0,0,100,0,0,0,0,0,66,0,0,0,0,0,0,7,0,0,0,0,0,0,0, 'turn to envoker'),
(1620900,9,3,0,0,0,100,0,1000,1000,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Say text 0'),
(1620900,9,4,0,0,0,100,0,2000,2000,0,0,33,16209,0,0,0,0,0,7,0,0,0,0,0,0,0, 'give quest credit'),
(1620900,9,5,0,0,0,100,0,1000,1000,0,0,53,1,16209,0,0,0,0,1,0,0,0,0,0,0,0, 'start waypoint movement');
-- NPC talk text insert from sniff
DELETE FROM `creature_text` WHERE `entry`=16209;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(16209,0,0, 'You have my thanks!',0,0,100,0,0,0, 'Ranger Vedoran');
-- Ranger Vedoran Path
DELETE FROM `waypoints` WHERE `entry`=16209;
INSERT INTO `waypoints` (`entry`,`pointid`,`position_x`,`position_y`,`position_z`,`point_comment`) VALUES
(16209,1,6290.21,-6366.1,78.0195,'Ranger Vedoran point 1'),
(16209,2,6301.65,-6364.06,78.0238,'Ranger Vedoran point 2'),
(16209,3,6305.82,-6360.2,78.0782,'Ranger Vedoran point 3'),
(16209,4,6310.5,-6356.76,80.6154,'Ranger Vedoran point 4'),
(16209,5,6314.06,-6360.67,82.6096,'Ranger Vedoran point 5'),
(16209,6,6317.35,-6365.34,82.7124,'Ranger Vedoran point 6'),
(16209,7,6326.85,-6366.82,82.7090,'Ranger Vedoran point 7');
-- Apprentice Varnis SAI
UPDATE `creature_template` SET `AIName`= 'SmartAI' WHERE `entry`=16206;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (16206,1620600);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(16206,0,0,0,62,0,100,0,7186,0,0,0,80,1620600,0,0,0,0,0,1,0,0,0,0,0,0,0, 'On gossip option select run script'),
(16206,0,1,0,40,0,100,0,7,16206,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'On reach waypoint 7 despawn'),
(1620600,9,0,0,0,0,100,0,0,0,0,0,81,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Turn off Gossip flag'),
(1620600,9,1,0,0,0,100,0,0,0,0,0,91,7,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Set bytes1 stand'),
(1620600,9,2,0,0,0,100,0,0,0,0,0,66,0,0,0,0,0,0,7,0,0,0,0,0,0,0, 'turn to envoker'),
(1620600,9,3,0,0,0,100,0,1000,1000,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Say text 0'),
(1620600,9,4,0,0,0,100,0,2000,2000,0,0,33,16206,0,0,0,0,0,7,0,0,0,0,0,0,0, 'give quest credit'),
(1620600,9,5,0,0,0,100,0,1000,1000,0,0,53,1,16206,0,0,0,0,1,0,0,0,0,0,0,0, 'start waypoint movement');
-- NPC talk text insert from sniff
DELETE FROM `creature_text` WHERE `entry`=16206;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(16206,0,0, 'Thank you. I thought I was going to die.',0,0,100,0,0,0, 'Apprentice Varnis');
-- Apprentice Varnis Path
DELETE FROM `waypoints` WHERE `entry`=16206;
INSERT INTO `waypoints` (`entry`,`pointid`,`position_x`,`position_y`,`position_z`,`point_comment`) VALUES
(16206,1,6436.87,-6633.02,107.432,'Apprentice Varnis point 1'),
(16206,2,6435.63,-6620.86,107.436,'Apprentice Varnis point 2'),
(16206,3,6429.88,-6618.29,108.128,'Apprentice Varnis point 3'),
(16206,4,6426.7,-6614.82,110.159,'Apprentice Varnis point 4'),
(16206,5,6428.75,-6611.21,111.905,'Apprentice Varnis point 5'),
(16206,6,6432.83,-6606.89,112.126,'Apprentice Varnis point 6'),
(16206,7,6431.51,-6597.97,112.113,'Apprentice Varnis point 7');
-- Smart AI
UPDATE `creature_template` SET `AIName`= 'SmartAI' WHERE `entry`=16198;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=16198;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(16198,0,0,1,62,0,100,0,7187,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0, 'On gossip option select close gossip'),
(16198,0,1,0,61,0,100,0,0,0,0,0,11,28149,0,0,0,0,0,7,0,0,0,0,0,0,0, 'Cast Create Restorative Draught on player ');
-- SAI for Thulrin
UPDATE `creature_template` SET `AIName`='SmartAI',`equipment_id`=0 WHERE `entry`=25239;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=25239;
DELETE FROM `smart_scripts` WHERE `source_type`=9 AND `entryorguid` IN (2523900,2523901);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
-- AI
(25239,0,0,0,11,0,100,0,0,0,0,0,53,0,25239,1,0,0,0,1,0,0,0,0,0,0,0, 'Thulrin - Start WP movement'),
(25239,0,1,0,40,0,100,0,4,25239,0,0,80,2523900,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Thulrin - Load script 1 at WP 4'),
(25239,0,2,0,40,0,100,0,9,25239,0,0,80,2523901,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Thulrin - Load script 2 at WP 9'),
-- Script 1
(2523900,9,0,0,0,0,100,0,0,0,0,0,54,1500,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Thulrin - Pause at WP 4'),
(2523900,9,1,0,0,0,100,0,0,0,0,0,5,16,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Thulrin - Emote ONESHOT_KNEEL'),
(2523900,9,2,0,0,0,100,0,1000,1000,0,0,71,344,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Thulrin - Equip sword'),
-- Script 2
(2523901,9,0,0,0,0,100,0,0,0,0,0,54,51000,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Thulrin - Pause at WP 9'),
(2523901,9,1,0,0,0,100,0,500,500,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,2.984513, 'Thulrin - Turn to pos'),
(2523901,9,2,0,0,0,100,0,1000,1000,0,0,17,133,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Thulrin - Emote STATE_USESTANDING_NOSHEATHE'),
(2523901,9,3,0,0,0,100,0,48000,48000,0,0,71,10000,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Thulrin - Equip nothing'),
(2523901,9,4,0,0,0,100,0,0,0,0,0,17,26,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Thulrin - Emote STATE_STAND');
-- Waypoints for Thulrin from sniff
DELETE FROM `waypoints` WHERE `entry`=25239;
INSERT INTO `waypoints` (`entry`,`pointid`,`position_x`,`position_y`,`position_z`,`point_comment`) VALUES
(25239,1,2347.805,5265.343,7.630844, 'Thulrin WP 1'),
(25239,2,2344.542,5267.178,7.668962, 'Thulrin WP 2'),
(25239,3,2340.221,5270.315,7.668962, 'Thulrin WP 3'),
(25239,4,2336.553,5273.868,7.793962, 'Thulrin WP 4'),
(25239,5,2339.075,5271.176,7.668962, 'Thulrin WP 5'),
(25239,6,2346.919,5265.093,7.630844, 'Thulrin WP 6'),
(25239,7,2351.8,5266.425,7.630844, 'Thulrin WP 7'),
(25239,8,2352.691,5268.956,7.668962, 'Thulrin WP 8'),
(25239,9,2352.691,5268.956,7.668962, 'Thulrin WP 9');
SET @ENTRY := 16844; 
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY; 
UPDATE `creature` SET `spawndist`=20,`MovementType`=1 WHERE `id`=@ENTRY; 
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY; 
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY; 
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(@ENTRY,0,0,1,1,0,100,1,0,0,0,0,11,34038,0,0,0,0,0,1,0,0,0,0,0,0,0,'Crust Burster - OOC - Cast Submerge Visual'), 
(@ENTRY,0,1,0,61,0,100,1,0,0,0,0,18,33554434,0,0,0,0,0,1,0,0,0,0,0,0,0,'Crust Burster - OOC - Set Unselectable and Unattackable Flags'), 
(@ENTRY,0,2,3,0,0,100,1,0,0,0,0,28,34038,0,0,0,0,0,1,0,0,0,0,0,0,0,'Crust Burster - On Aggro - Remove Submerge Visual'), 
(@ENTRY,0,3,4,61,0,100,0,0,0,0,0,19,33554434,0,0,0,0,0,1,0,0,0,0,0,0,0,'Crust Burster - On Aggro - Remove Unselectable and Unattackable Flags'), 
(@ENTRY,0,4,5,61,0,100,0,0,0,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Crust Burster - On Aggro - Prevent Combat Movement'), 
(@ENTRY,0,5,0,61,0,100,0,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Crust Burster - On Aggro - Set Phase 1'), 
(@ENTRY,0,6,7,0,1,100,0,1000,1000,2100,4500,11,31747,1,0,0,0,0,2,0,0,0,0,0,0,0,'Crust Burster - Combat - Cast Poison (Phase 1)'), 
(@ENTRY,0,7,0,61,1,100,0,0,0,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Crust Burster - Combat - Prevent Combat Movement (Phase 1)'), 
(@ENTRY,0,8,0,0,1,100,0,20400,20400,45000,50000,11,32738,1,0,0,0,0,2,0,0,0,0,0,0,0,'Crust Burster - Combat - Cast Bore (Phase 1)'), 
(@ENTRY,0,9,10,9,1,100,0,20,60,0,0,11,34038,0,0,0,0,0,1,0,0,0,0,0,0,0,'Crust Burster - At 20 - 60 Yards Range - Cast Submerge Visual (Phase 1)'),
(@ENTRY,0,10,11,61,1,100,0,0,0,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Crust Burster - At 20 - 60 Yards Range - Allow Combat Movement (Phase 1)'), 
(@ENTRY,0,11,0,61,1,100,0,0,0,0,0,22,2,0,0,0,0,0,1,0,0,0,0,0,0,0,'Crust Burster - At 20 - 60 Yards Range - Set Phase 2 (Phase 1)'), 
(@ENTRY,0,12,13,9,2,100,0,0,8,0,0,28,34038,0,0,0,0,0,1,0,0,0,0,0,0,0,'Crust Burster - At 0 - 8 Yards - Remove Submerge Visual (Phase 2)'), 
(@ENTRY,0,13,14,61,2,100,0,0,0,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Crust Burster - Combat - Prevent Combat Movement (Phase 2)'), 
(@ENTRY,0,14,15,61,2,100,0,0,8,0,0,19,33554434,0,0,0,0,0,1,0,0,0,0,0,0,0,'Crust Burster - At 0 - 8 Yards - Remove Unselectable and Unattackable Flags (Phase 2)'), 
(@ENTRY,0,15,0,61,2,100,0,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Crust Burster - At 20 - 60 Yards Range - Set Phase 1 (Phase 2)'); 
-- SAI for Marading Crust Burster 
SET @ENTRY := 16857; 
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY; 
UPDATE `creature` SET `spawndist`=20,`MovementType`=1 WHERE `id`=@ENTRY; 
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY; 
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY; 
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(@ENTRY,0,0,1,1,0,100,1,0,0,0,0,11,34038,0,0,0,0,0,1,0,0,0,0,0,0,0,'Crust Burster - OOC - Cast Submerge Visual'), 
(@ENTRY,0,1,0,61,0,100,1,0,0,0,0,18,33554434,0,0,0,0,0,1,0,0,0,0,0,0,0,'Crust Burster - OOC - Set Unselectable and Unattackable Flags'), 
(@ENTRY,0,2,3,0,0,100,1,0,0,0,0,28,34038,0,0,0,0,0,1,0,0,0,0,0,0,0,'Crust Burster - On Aggro - Remove Submerge Visual'), 
(@ENTRY,0,3,4,61,0,100,0,0,0,0,0,19,33554434,0,0,0,0,0,1,0,0,0,0,0,0,0,'Crust Burster - On Aggro - Remove Unselectable and Unattackable Flags'), 
(@ENTRY,0,4,5,61,0,100,0,0,0,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Crust Burster - On Aggro - Prevent Combat Movement'), 
(@ENTRY,0,5,0,61,0,100,0,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Crust Burster - On Aggro - Set Phase 1'), 
(@ENTRY,0,6,7,0,1,100,0,1000,1000,2100,4500,11,31747,1,0,0,0,0,2,0,0,0,0,0,0,0,'Crust Burster - Combat - Cast Poison (Phase 1)'), 
(@ENTRY,0,7,0,61,1,100,0,0,0,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Crust Burster - Combat - Prevent Combat Movement (Phase 1)'), 
(@ENTRY,0,8,0,0,1,100,0,20400,20400,45000,50000,11,32738,1,0,0,0,0,2,0,0,0,0,0,0,0,'Crust Burster - Combat - Cast Bore (Phase 1)'), 
(@ENTRY,0,9,10,9,1,100,0,20,60,0,0,11,34038,0,0,0,0,0,1,0,0,0,0,0,0,0,'Crust Burster - At 20 - 60 Yards Range - Cast Submerge Visual (Phase 1)'),
(@ENTRY,0,10,11,61,1,100,0,0,0,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Crust Burster - At 20 - 60 Yards Range - Allow Combat Movement (Phase 1)'), 
(@ENTRY,0,11,0,61,1,100,0,0,0,0,0,22,2,0,0,0,0,0,1,0,0,0,0,0,0,0,'Crust Burster - At 20 - 60 Yards Range - Set Phase 2 (Phase 1)'), 
(@ENTRY,0,12,13,9,2,100,0,0,8,0,0,28,34038,0,0,0,0,0,1,0,0,0,0,0,0,0,'Crust Burster - At 0 - 8 Yards - Remove Submerge Visual (Phase 2)'), 
(@ENTRY,0,13,14,61,2,100,0,0,0,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Crust Burster - Combat - Prevent Combat Movement (Phase 2)'), 
(@ENTRY,0,14,15,61,2,100,0,0,8,0,0,19,33554434,0,0,0,0,0,1,0,0,0,0,0,0,0,'Crust Burster - At 0 - 8 Yards - Remove Unselectable and Unattackable Flags (Phase 2)'), 
(@ENTRY,0,15,0,61,2,100,0,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Crust Burster - At 20 - 60 Yards Range - Set Phase 1 (Phase 2)');

# Conditions
REPLACE INTO `gossip_menu_option` VALUES ('9568', '0', '0', 'We need to get into the fight. Are you ready?', '1', '1', '1', '0', '9568', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('9987', '1', '3', 'Train me.', '5', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('9895', '1', '3', 'Train me.', '5', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('9576', '1', '0', 'I\'d like to stable my pet here', '14', '4194304', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('3067', '1', '3', 'Train me.', '5', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('8394', '0', '0', 'But you are dragons! How could orcs do this to you?', '1', '1', '8395', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('8395', '0', '0', 'Your mate?', '1', '1', '8396', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('8396', '0', '0', 'I have battled many beasts, dragon. I will help you.', '1', '1', '0', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('8397', '1', '0', 'I am listening, dragon.', '1', '1', '8394', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('10667', '0', '6', 'I would like to check my deposit box.', '9', '131072', '0', '0', '0', '0', '0', null);
REPLACE INTO `conditions` VALUES ('13', '0', '49367', '0', '18', '1', '27698', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '49370', '0', '18', '1', '27698', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9568', '0', '0', '9', '12372', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '8397', '1', '0', '9', '10814', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10667', '0', '0', '7', '202', '350', '0', '0', '', null);
DELETE FROM spell_scripts WHERE id=47316;
DELETE FROM spell_scripts WHERE id=47117;
DELETE FROM conditions WHERE SourceTypeOrReferenceId=15 AND SourceGroup=50255;
DELETE FROM conditions WHERE SourceTypeOrReferenceId=14 AND SourceGroup=50255;
UPDATE IGNORE conditions SET SourceGroup=3481 WHERE SourceTypeOrReferenceId=15 AND SourceGroup=50414;
UPDATE IGNORE conditions SET SourceGroup=3481 WHERE SourceTypeOrReferenceId=14 AND SourceGroup=50414;
UPDATE IGNORE conditions SET SourceGroup=9742 WHERE SourceTypeOrReferenceId=15 AND SourceGroup=28027;
UPDATE IGNORE conditions SET SourceGroup=9742 WHERE SourceTypeOrReferenceId=14 AND SourceGroup=28027;
UPDATE IGNORE conditions SET SourceGroup=8894 WHERE SourceTypeOrReferenceId=15 AND SourceGroup=50100;
UPDATE IGNORE conditions SET SourceGroup=8894 WHERE SourceTypeOrReferenceId=14 AND SourceGroup=50100;
UPDATE IGNORE conditions SET SourceGroup=10667 WHERE SourceTypeOrReferenceId=15 AND SourceGroup=35642;
UPDATE IGNORE conditions SET SourceGroup=10667 WHERE SourceTypeOrReferenceId=14 AND SourceGroup=35642;


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

# Final_FIX
UPDATE quest_template SET SpecialFlags=SpecialFlags|1 WHERE QuestFlags=QuestFlags|4096;
UPDATE quest_template SET SpecialFlags=SpecialFlags|1 WHERE QuestFlags=QuestFlags|32768;
DELETE FROM `creature_addon` WHERE `guid` NOT IN (SELECT `guid` FROM `creature`);
DELETE FROM `linked_respawn` WHERE `guid` NOT IN (SELECT `guid` FROM `creature`);
DELETE FROM `linked_respawn` WHERE `linkedGuid` NOT IN (SELECT `guid` FROM `creature`);
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

UPDATE version SET `cache_id`= '587';
UPDATE version SET `core_revision`= '11348';
UPDATE version SET `db_version`= 'YTDB_0.14.1_R587_TC_R11348_TDBAI_335.0.3_RuDB_R38.7';
