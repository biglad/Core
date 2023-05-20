# Y2kCat
ALTER TABLE db_version_ytdb CHANGE COLUMN 588_FIX_11409 589_FIX_11463 bit;
REPLACE INTO `db_version_ytdb` (`version`) VALUES ('589_FIX_11463');

# SignFinder
DELETE FROM `spell_bonus_data` WHERE `entry`='53352';
INSERT INTO `spell_bonus_data`(`entry`,`direct_bonus`,`dot_bonus`,`ap_bonus`,`ap_dot_bonus`,`comments`) VALUES ( '53352','0','0','0.14','0','Hunter - Explosive Shot (triggered)');

# TC
UPDATE `creature_template` SET `AIName`='AggressorAI' WHERE `entry`=27131;
DELETE FROM `conditions` WHERE `SourceEntry` =60089;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(17,0,60089,0,1,5487,0,0,0, '', 'Faerie Fire - Bear Form'),
(17,0,60089,1,1,9634,0,0,0, '', 'Faerie Fire - Dire Bear Form');
INSERT IGNORE INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(13,0,71322,0,18,1,38558,0,0, '', 'Blood-Queen Lana''thel - Annihilate Minchar');

UPDATE `creature_template` SET `AIName`= 'SmartAI' WHERE `entry` IN (18714,18717,18716,18719,18715);
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (18714,18717,18716,18719,18715);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(18714,0,0,0,19,0,100,0,10041,0,0,0,11,48917,0,0,0,0,0,7,0,0,0,0,0,0,0, 'Neftis - On Quest Accept - Cast spell 48917 on player'),
(18714,0,1,0,20,0,100,0,10041,0,0,0,28,32756,0,0,0,0,0,7,0,0,0,0,0,0,0, 'Neftis - On Quest Reward - Remove spell 32756 on player'),
(18714,0,2,0,62,0,100,0,7772,0,0,0,11,48917,0,0,0,0,0,7,0,0,0,0,0,0,0, 'Neftis - On Gossip option - Cast spell 48917 on player'),
(18715,0,0,0,19,0,100,0,10040,0,0,0,11,48917,0,0,0,0,0,7,0,0,0,0,0,0,0, 'Private Weeks - On Quest Accept - Cast spell 48917 on player'),
(18715,0,1,0,20,0,100,0,10040,0,0,0,28,32756,0,0,0,0,0,7,0,0,0,0,0,0,0, 'Private Weeks - On Quest Reward - Remove spell 32756 on player'),
(18715,0,2,0,62,0,100,0,21253,0,0,0,11,48917,0,0,0,0,0,7,0,0,0,0,0,0,0, 'Private Week - On Gossip option - Cast spell 48917 on player'),
(18717,0,0,0,62,0,100,0,7757,0,0,0,11,47069,0,0,0,0,0,7,0,0,0,0,0,0,0, 'Who Are They - Shadowy Laborer - On Gossip option - Cast spell 47069 on player'),
(18716,0,0,0,62,0,100,0,7759,0,0,0,11,47068,0,0,0,0,0,7,0,0,0,0,0,0,0, 'Who Are They - Shadowy Initiate - On Gossip option - Cast spell 47068 on player'),
(18719,0,0,0,62,0,100,0,7760,0,0,0,11,47070,0,0,0,0,0,7,0,0,0,0,0,0,0, 'Who Are They - Shadowy Advisor - On Gossip option - Cast spell 47070 on player');
DELETE FROM `creature_text` WHERE `entry` IN (37119,37181,37183);
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(37119,0,0, 'This is our final stand. What happens here will echo through the ages. Regardless of outcome, they will know that we fought with honor. That we fought for the freedom and safety of our people!',1,0,0,22,0,16653, 'Highlord Tirion Fordring - SAY_TIRION_INTRO_1'),
(37119,1,0, 'Remember, heroes, fear is your greatest enemy in these befouled halls. Steel your heart and your soul will shine brighter than a thousand suns. The enemy will falter at the sight of you. They will fall as the light of righteousness envelops them!',1,0,0,22,0,16654, 'Highlord Tirion Fordring - SAY_TIRION_INTRO_2'),
(37119,2,0, 'Our march upon Icecrown Citadel begins now!',1,0,0,22,0,16655, 'Highlord Tirion Fordring - SAY_TIRION_INTRO_3'),
(37119,3,0, 'ARTHAS! I swore that I would see you dead and the Scourge dismantled! I''m going to finish what I started at Light''s Hope!',1,0,0,22,0,16656, 'Highlord Tirion Fordring - SAY_TIRION_INTRO_4'),
(37181,0,0, 'You now stand upon the hallowed ground of the Scourge. The Light won''t protect you here, paladin. Nothing will protect you...',1,0,0,0,0,17230, 'The Lich King - SAY_LK_INTRO_1'),
(37181,1,0, 'You could have been my greatest champion, Fordring: A force of darkness that would wash over this world and deliver it into a new age of strife.',1,0,0,0,0,17231, 'The Lich King - SAY_LK_INTRO_2'),
(37181,2,0, 'But that honor is no longer yours. Soon,I will have a new champion.',1,0,0,0,0,17232, 'The Lich King - SAY_LK_INTRO_3'),
(37181,3,0, 'The breaking of this one has been taxing. The atrocities I have committed upon his soul. He has resisted for so long, but he will bow down before his king soon.',1,0,0,0,0,17233, 'The Lich King - SAY_LK_INTRO_4'),
(37181,4,0, 'In the end, you will all serve me.',1,0,0,0,0,17234, 'The Lich King - SAY_LK_INTRO_5'),
(37183,0,0, 'NEVER! I... I will never... serve... you...',1,0,0,0,0,17078, 'Highlord Bolvar Fordragon - SAY_BOLVAR_INTRO_1');
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=37011; -- The Damned
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (-200966,-201066,37011);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(-136222,0,0,0,6,0,100,1,0,0,0,0,11,70961,3,0,0,0,0,1,0,0,0,0,0,0,0, 'The Damned - Cast Shattered Bones on death'),
(-136222,0,1,0,2,0,100,0,5,30,15000,20000,75,70960,0,0,0,0,0,1,0,0,0,0,0,0,0, 'The Damned - Cast Bone Flurry at 5-30%'),
(-136222,0,2,0,6,0,100,1,0,0,0,0,45,1,1,0,0,0,0,10,201466,0,0,0,0,0,0, 'The Damned - Set data for Highlord Tirion Fordring'),
(-136223,0,0,0,6,0,100,1,0,0,0,0,11,70961,3,0,0,0,0,1,0,0,0,0,0,0,0, 'The Damned - Cast Shattered Bones on death'),
(-136223,0,1,0,2,0,100,0,5,30,15000,20000,75,70960,0,0,0,0,0,1,0,0,0,0,0,0,0, 'The Damned - Cast Bone Flurry at 5-30%'),
(-136223,0,2,0,6,0,100,1,0,0,0,0,45,1,1,0,0,0,0,10,201466,0,0,0,0,0,0, 'The Damned - Set data for Highlord Tirion Fordring'),
(37011,0,0,0,6,0,100,1,0,0,0,0,11,70961,3,0,0,0,0,1,0,0,0,0,0,0,0, 'The Damned - Cast Shattered Bones on death'),
(37011,0,1,0,2,0,100,0,5,30,15000,20000,75,70960,0,0,0,0,0,1,0,0,0,0,0,0,0, 'The Damned - Cast Bone Flurry at 5-30%');
DELETE FROM `creature_text` WHERE `entry`=37187 AND `groupid` BETWEEN 15 AND 18;
DELETE FROM `creature_text` WHERE `entry`=37200 AND `groupid` BETWEEN 13 AND 15;
DELETE FROM `creature_text` WHERE `entry`=37119 AND `groupid` IN (4,5);
DELETE FROM `creature_text` WHERE `entry`=37181 AND `groupid`=2;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(37187,15,0, 'The paladin still lives? Is it possible, Highlord? Could he have survived?',0,0,0,6,0,17107, 'High Overlord Saurfang - SAY_SAURFANG_INTRO_1'),
(37187,16,0, 'Then we must save him! If we rescue Bolvar Fordragon, we may quell the unrest between the Alliance and the Horde.',0,0,0,5,0,17108, 'High Overlord Saurfang - SAY_SAURFANG_INTRO_2'),
(37187,17,0, 'Our mission is now clear: The Lich King will answer for his crimes and we will save Highlord Bolvar Fordragon!',0,0,0,15,0,17109, 'High Overlord Saurfang - SAY_SAURFANG_INTRO_3'),
(37187,18,0, 'Kor''kron, prepare Orgrim''s Hammer for its final voyage! Champions, our gunship will find a point to dock on the upper reaches of the citadel. Meet us there!',1,0,0,22,0,17110, 'High Overlord Saurfang - SAY_SAURFANG_INTRO_4'),
(37119,4,0, 'The power of the Light knows no bounds, Saurfang. His soul is under great strain, but he lives - for now.',0,0,0,1,0,16658, 'Highlord Tirion Fordring - SAY_TIRION_INTRO_5'),
(37181,2,0, 'But that honor is no longer yours. Soon, I will have a new champion.',1,0,0,0,0,17232, 'The Lich King - SAY_LK_INTRO_3'),
(37200,13,0, 'Could it be, Lord Fordring? If Bolvar lives, mayhap there is hope fer peace between the Alliance and the Horde. We must reach the top o'' this cursed place and free the paladin!',0,0,0,6,0,16980, 'Muradin Bronzebeard - SAY_SAURFANG_INTRO_2'),
(37200,14,0, 'Prepare the Skybreaker fer an aerial assault on the citadel!',1,0,0,5,0,16981, 'Muradin Bronzebeard - SAY_SAURFANG_INTRO_3'),
(37200,15,0, 'Heroes, ye must fight yer way to a clear extraction point within Icecrown. We''ll try an'' rendezvous on the ramparts!',1,0,0,22,0,16982, 'Muradin Bronzebeard - SAY_SAURFANG_INTRO_4'),
(37119,5,0, 'By the Light, it must be so!',0,0,0,5,0,16657, 'Highlord Tirion Fordring - SAY_TIRION_INTRO_A_5');
UPDATE `creature_template` SET `AIName`='SmartAI',`InhabitType`=7,`flags_extra`=`flags_extra`|128 WHERE `entry`=38557;
UPDATE `creature_template` SET `InhabitType`=7 WHERE `entry`=38558;
INSERT IGNORE INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(-93946,0,0,0,25,0,100,0,0,0,0,0,11,72302,3,0,0,0,0,10,@GUID,0,0,0,0,0,0, 'Minchar Beam Stalker - Channel beam'),
(-93947,0,0,0,25,0,100,0,0,0,0,0,11,72301,3,0,0,0,0,10,@GUID,0,0,0,0,0,0, 'Minchar Beam Stalker - Channel beam'),
(-93948,0,0,0,25,0,100,0,0,0,0,0,11,72304,3,0,0,0,0,10,@GUID,0,0,0,0,0,0, 'Minchar Beam Stalker - Channel beam'),
(-93949,0,0,0,25,0,100,0,0,0,0,0,11,72303,3,0,0,0,0,10,@GUID,0,0,0,0,0,0, 'Minchar Beam Stalker - Channel beam');

# NeatElves
UPDATE  `quest_template` SET  `RequiredMinRepFaction` =  '349',`RequiredMinRepValue` =  '0' WHERE  `entry` =8249;
UPDATE  `creature_template` SET  `gossip_menu_id` =  '50159' WHERE  `entry` =6766;
UPDATE  `creature_template` SET  `equipment_id` =  '254' WHERE  `entry` =24212;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
(24030, 33778, -25, 1, 1, 1),
(24030, 33779, -25, 1, 1, 1),
(24030, 33780, -25, 1, 1, 1),
(23796, 33778, -25, 1, 1, 1),
(23796, 33779, -25, 1, 1, 1),
(23796, 33780, -25, 1, 1, 1);
REPLACE INTO gameobject VALUES ( 5083, 186684, 571, 1,1,2174.22, -5481.48, 242.268, 5.35048, 0, 0, 0.44963, -0.893215, 120, 100, 1);
REPLACE INTO gameobject VALUES ( 5085, 186665, 571, 1,1,2100.5, -5780.85, 223.157, 1.8319, 0, 0, 0, 0, 300, 0, 1);
REPLACE INTO gameobject VALUES ( 5092, 186665, 571, 1,1,2155.13, -5797.26, 222.711, 5.87121, 0, 0, 0, 0, 300, 0, 1);
REPLACE INTO gameobject VALUES ( 5095, 186665, 571, 1,1,2374.34, -5816.1, 257.265, 0.00428534, 0, 0, 0, 0, 300, 0, 1);
REPLACE INTO gameobject VALUES ( 5097, 186684, 571, 1,1,2395.9, -5780.71, 260.995, 0.975038, 0, 0, 0.468435, 0.883498, 120, 100, 1);
REPLACE INTO gameobject VALUES ( 5098, 186665, 571, 1,1,2189.37, -5609.01, 227.833, 5.68035, 0, 0, 0, 0, 300, 0, 1);
UPDATE  `creature_template` SET  `mingold` =  '0',`maxgold` =  '0' WHERE  `entry` =4624;
UPDATE  `creature_onkill_reputation` SET  `IsTeamAward2` =  '0' WHERE  `creature_id` in (4624,2610,2487,26081,2774,2778,2817,2767,2768,2769,2636,2496,9179);
UPDATE  `creature_onkill_reputation` SET  `IsTeamAward1` =  '0' WHERE  `RewOnKillRepFaction1` in (470,369,21);
UPDATE  `creature_onkill_reputation` SET  `RewOnKillRepValue1` =  '5' WHERE  `creature_id` in (5615,5616,5617,7805,5618,5623);
UPDATE  `creature_template` SET  `flags_extra` =  2, `ScriptName` =  '' WHERE  `entry` in (18192,18256);
UPDATE  `creature_template` SET  `faction_A` =  '73',`faction_H` =  '73' WHERE  `faction_A` =32 and `type` =10;
UPDATE  `creature_template` SET  `faction_A` =  '21',`faction_H` =  '21' WHERE  `faction_A` =32 and `type` =6;
UPDATE  `creature_template` SET  `faction_A` =  '35',`faction_H` =  '35' WHERE  `entry` = 9937;
UPDATE  `creature_template` SET  `faction_A` =  '22',`faction_H` =  '22' WHERE  `entry` =2707;
UPDATE  `creature_template` SET  `faction_A` =  '38',`faction_H` =  '38' WHERE  `entry` in (5356,20748,14339,11614,10077,2275);
UPDATE  `creature_template` SET  `faction_A` =  '54',`faction_H` =  '54' WHERE  `entry` =10076;
UPDATE  `creature_template` SET  `faction_A` =  '29',`faction_H` =  '29' WHERE  `entry` in (14909,14859);
UPDATE  `creature_template` SET  `faction_A` =  '876',`faction_H` =  '876' WHERE  `entry` =14736;
UPDATE  `creature_template` SET  `faction_A` =  '1801',`faction_H` =  '1801' WHERE  `entry` =8122;
REPLACE INTO `game_event_creature` (`guid`, `event`) VALUES ('40204', '1');
UPDATE  `creature_template` SET  `faction_A` =  '1802',`faction_H` =  '1802' WHERE  `entry` =8118;
UPDATE  `creature_template` SET  `faction_A` =  '14',`faction_H` =  '14' WHERE  `entry` in (14446,14236,14276,14278,11893,5934,5935,2453,5347,5933,5916,5346,2601,2606,2609,2779,10640,10639,10197,12128,4842,5915,10822,10823,11120,11383,2604,5399,8937,9219,9718,8298,9596,2452,5864,10199,8202,507,584,2850,14222,10581,10882,1552,1843,1848,1860,1910,1911,12498,2192);
UPDATE  `creature_template` SET  `faction_A` =  '7',`faction_H` =  '7' WHERE  `entry` in (14447,14353,23530,10042,23529,23531,3865,13976,10538,10340,12140,12116,10828,13020,4724,6369,8213,13896,14223,8208,18963,22265,758,1262,1792,14224,1262,13221,13324,13333,13335,13336,13426,13427,13525,13526,13527,13529,13530,13541,13543,13547,13549,13550,13551,13552,13553,13554,13555,13556,13557,13676,14946);
UPDATE  `creature_template` SET  `faction_A` =  '35',`faction_H` =  '35' WHERE  `entry` in (8024,8025,14463,14347,14348,8023,10740,23320,4781,12126,8388,8394,8387,8389,10257,9020,9021,9679,10776,8478,9459);
UPDATE creature SET position_x = '-530.724182', position_y = '-3872.415771', position_z = '232.509689', orientation = '2.336118' WHERE guid = '12584';
UPDATE  `event_scripts` SET  `datalong` =  '8024',`datalong2` =  '60000',`x` =  '-253.579',`y` =  '-3637.299',`z` =  '237.965',`o` =  '1.613' WHERE  `id` =2807 AND `datalong` =7995;
REPLACE INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `dataint`, `x`, `y`, `z`, `o`) VALUES ('2807', '0', '10', '8025', '60000', '0', '-251.040', '-3626.308', '238.236', '3.88');
DELETE FROM creature WHERE guid=53436;
DELETE FROM creature WHERE guid=53435;
UPDATE  `creature` SET  `spawndist` =  '0',`MovementType` =  '0' WHERE  `guid` =67316;
UPDATE creature SET position_x = '9851.558594', position_y = '-7520.394043', position_z = '-9.155529', orientation = '4.369629' WHERE guid = '74629';
UPDATE creature SET position_x = '9847.336914', position_y = '-7520.222168', position_z = '-9.153473', orientation = '5.579143' WHERE guid = '68137';
UPDATE `creature_template` SET `gossip_menu_id`=7772 WHERE `entry`=18714;
UPDATE `creature_template` SET `gossip_menu_id`=7759 WHERE `entry`=18716;
UPDATE `creature_template` SET `gossip_menu_id`=7757 WHERE `entry`=18717;
UPDATE `creature_template` SET `gossip_menu_id`=7760 WHERE `entry`=18719;
UPDATE gossip_menu SET entry = 7772 WHERE entry = 18714;
UPDATE gossip_menu_option SET menu_id = 7772 WHERE menu_id = 18714;
UPDATE locales_gossip_menu_option SET menu_id = 7772 WHERE menu_id =18714;
UPDATE gossip_menu SET entry = 7759 WHERE entry = 18716;
UPDATE gossip_menu_option SET menu_id = 7759 WHERE menu_id = 18716;
UPDATE locales_gossip_menu_option SET menu_id = 7759 WHERE menu_id =18716;
UPDATE gossip_menu SET entry = 7757 WHERE entry = 18717;
UPDATE gossip_menu_option SET menu_id = 7757 WHERE menu_id = 18717;
UPDATE locales_gossip_menu_option SET menu_id = 7757 WHERE menu_id =18717;
UPDATE gossip_menu SET entry = 7760 WHERE entry = 18719;
UPDATE gossip_menu_option SET menu_id = 7760 WHERE menu_id = 18719;
UPDATE locales_gossip_menu_option SET menu_id = 7760 WHERE menu_id =18719;
UPDATE  `gossip_menu` SET  `entry` =  '7755' WHERE  `entry` =50016 AND  `text_id` =9498;
UPDATE  `gossip_menu` SET  `entry` =  '7758' WHERE  `entry` =50017 AND  `text_id` =9503;
UPDATE  `gossip_menu` SET  `entry` =  '7761' WHERE  `entry` =50018 AND  `text_id` =9506;
UPDATE `creature_template` SET `gossip_menu_id`=7774 WHERE `entry`=18712;
UPDATE `creature_template` SET `gossip_menu_id`=7775 WHERE `entry`=17088;
UPDATE `creature_template` SET `gossip_menu_id`=7776 WHERE `entry`=18720;
UPDATE `creature_template` SET `gossip_menu_id`=7775 WHERE `entry`=16519;
REPLACE INTO `gossip_menu` (`entry`,`text_id`) VALUES (7775,9523),(7776,9524),(7774,9522);
UPDATE  `gossip_menu` SET  `text_id` =  '9520' WHERE  `entry` =7772 AND  `text_id` =9516;
DELETE FROM `creature_template_addon` WHERE `entry` = 17768;
UPDATE  `creature_template` SET  `dynamicflags` =  '0' WHERE  `entry` =17768;
UPDATE  `creature_template` SET  `unit_flags` =  `unit_flags`|4096 WHERE  `entry` =17768;
UPDATE  `quest_template` SET  `ReqSpellCast1` =  '0' WHERE  `entry` =9685;
UPDATE `creature_template` SET `gossip_menu_id` = 1401 WHERE `entry` = 8576;
INSERT IGNORE INTO `gossip_menu` (`entry`, `text_id`) VALUES (1401, 14690);
REPLACE INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `action1_param3`, `action2_type`, `action2_param1`, `action2_param2`, `action2_param3`, `action3_type`, `action3_param1`, `action3_param2`, `action3_param3`, `comment`) VALUES
(1781251, 17812, 2, 0, 100, 1, 50, 0, 20000, 35000, 11, 19939, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Champion Sunstriker - Cast Flash of Light at 50% HP');
UPDATE  `creature_template` SET  `AIName` =  'EventAI' WHERE  `entry` =17812;
UPDATE  `creature_template` SET  `spell1` =  '0',`spell2` =  '0',`spell4` =  '0',`flags_extra` =  '2',`ScriptName` =  '' WHERE `entry` IN (17811, 17812, 17809, 17810);
UPDATE `creature_template` SET `gossip_menu_id` = 12056 WHERE `entry` = 3322;
INSERT IGNORE INTO `gossip_menu` (`entry`, `text_id`) VALUES (12056, 16901);
UPDATE `creature_template` SET `gossip_menu_id` = 12125 WHERE `entry` = 15188;
INSERT IGNORE INTO `gossip_menu` (`entry`, `text_id`) VALUES (12125, 17031);
UPDATE `creature_template` SET `gossip_menu_id` = 4515 WHERE `entry` = 3403;
UPDATE gossip_menu SET entry = 4515 WHERE entry = 3403;
UPDATE gossip_menu_option SET menu_id = 4515 WHERE menu_id = 3403;
UPDATE locales_gossip_menu_option SET menu_id = 4515 WHERE menu_id =3403;
UPDATE `creature_template` SET `gossip_menu_id` = 9781 WHERE `entry` = 29143;
UPDATE `creature_template` SET `gossip_menu_id` = 4747 WHERE `entry` = 3399;
INSERT IGNORE INTO `gossip_menu` (`entry`, `text_id`) VALUES (4747, 5799);
UPDATE `creature_template` SET `gossip_menu_id` = 4512 WHERE `entry` = 3328;
INSERT IGNORE INTO `gossip_menu` (`entry`, `text_id`) VALUES (4512, 4793);
UPDATE `creature_template` SET `gossip_menu_id` = 4513 WHERE `entry` = 3327;
UPDATE `creature_template` SET `gossip_menu_id` = 4513 WHERE `entry` = 3155;
UPDATE gossip_menu SET entry = 4513 WHERE entry = 50182;
UPDATE gossip_menu_option SET menu_id = 4513 WHERE menu_id = 50182;
UPDATE locales_gossip_menu_option SET menu_id = 4513 WHERE menu_id =50182;
UPDATE  `gossip_menu` SET  `text_id` =  '4793' WHERE  `entry` =4513 AND  `text_id` =638;
UPDATE `creature_template` SET `gossip_menu_id` = 12670 WHERE `entry` = 5815;
INSERT IGNORE INTO `gossip_menu` (`entry`, `text_id`) VALUES (12670, 12549);
UPDATE `creature_template` SET `gossip_menu_id` = 4603 WHERE `entry` = 3324;
INSERT IGNORE INTO `gossip_menu` (`entry`, `text_id`) VALUES (4603, 5715);
UPDATE `creature_template` SET `gossip_menu_id` = 10031 WHERE `entry` = 5875;
INSERT IGNORE INTO `gossip_menu` (`entry`, `text_id`) VALUES (10031, 13911);
UPDATE `creature_template` SET `gossip_menu_id` = 2384 WHERE `entry` = 3326;
INSERT IGNORE INTO `gossip_menu` (`entry`, `text_id`) VALUES (2384, 2193);
UPDATE `creature_template` SET `gossip_menu_id` = 4604 WHERE `entry` = 3325;
INSERT IGNORE INTO `gossip_menu` (`entry`, `text_id`) VALUES (4604, 5715);
UPDATE  `gossip_menu` SET  `text_id` =  '12869' WHERE  `entry` =9554 AND  `text_id` =12968;
UPDATE `creature_template` SET `gossip_menu_id` = 441 WHERE `entry` = 6929;
UPDATE `creature_template` SET `gossip_menu_id` = 10638 WHERE `entry` = 35364;
INSERT IGNORE INTO `gossip_menu` (`entry`, `text_id`) VALUES (10638, 14736);
REPLACE INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `action1_param3`, `action2_type`, `action2_param1`, `action2_param2`, `action2_param3`, `action3_type`, `action3_param1`, `action3_param2`, `action3_param3`, `comment`) VALUES
(1848351, 18483, 0, 0, 100, 1, 9000, 13000, 18000, 34000, 11, 11977, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Empoor\'s Bodyguard - Cast Rend'),
(1848352, 18483, 0, 0, 100, 1, 1000, 3000, 14000, 20000, 11, 13730, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Empoor\'s Bodyguard - Cast Demoralizing Shout');
UPDATE creature_template SET AIName='EventAI' WHERE entry IN (18483,18482);
REPLACE INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `action1_param3`, `action2_type`, `action2_param1`, `action2_param2`, `action2_param3`, `action3_type`, `action3_param1`, `action3_param2`, `action3_param3`, `comment`) VALUES
(1848251, 18482, 1, 0, 100, 1, 1000, 1000, 600000, 600000, 11, 12550, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Empoor - Cast Lightning Shield on Spawn'),
(1848253, 18482, 4, 0, 100, 0, 0, 0, 0, 0, 11, 12548, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Empoor - Cast Frost Shock on Aggro');
UPDATE  `quest_template` SET  `RequiredRaces` =  '690' WHERE  `entry` in (10765,10768,10769,10751);
UPDATE  `quest_template` SET  `NextQuestId` =  '10765',`NextQuestInChain` =  '10765' WHERE  `entry` =10751;
UPDATE  `quest_template` SET  `PrevQuestId` =  '10751' WHERE  `entry` =10765;
UPDATE  `quest_template` SET  `PrevQuestId` =  '10750' WHERE  `entry` =10751;
UPDATE  `quest_template` SET  `NextQuestId` =  '10751',`NextQuestInChain` =  '10751' WHERE  `entry` =10750;
INSERT IGNORE INTO `npc_text` (`ID`, `text0_0`, `text0_1`, `lang0`, `prob0`, `em0_0`, `em0_1`, `em0_2`, `em0_3`, `em0_4`, `em0_5`, `text1_0`, `text1_1`, `lang1`, `prob1`, `em1_0`, `em1_1`, `em1_2`, `em1_3`, `em1_4`, `em1_5`, `text2_0`, `text2_1`, `lang2`, `prob2`, `em2_0`, `em2_1`, `em2_2`, `em2_3`, `em2_4`, `em2_5`, `text3_0`, `text3_1`, `lang3`, `prob3`, `em3_0`, `em3_1`, `em3_2`, `em3_3`, `em3_4`, `em3_5`, `text4_0`, `text4_1`, `lang4`, `prob4`, `em4_0`, `em4_1`, `em4_2`, `em4_3`, `em4_4`, `em4_5`, `text5_0`, `text5_1`, `lang5`, `prob5`, `em5_0`, `em5_1`, `em5_2`, `em5_3`, `em5_4`, `em5_5`, `text6_0`, `text6_1`, `lang6`, `prob6`, `em6_0`, `em6_1`, `em6_2`, `em6_3`, `em6_4`, `em6_5`, `text7_0`, `text7_1`, `lang7`, `prob7`, `em7_0`, `em7_1`, `em7_2`, `em7_3`, `em7_4`, `em7_5`) VALUES
(14690, 'Need TXT YTDB', '', 0, 100, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0),
(11354, 'Need TXT YTDB', '', 0, 100, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0),
(11596, 'Need TXT YTDB', '', 0, 100, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0),
(16901, 'Need TXT YTDB', '', 0, 100, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0);
DELETE FROM `creature_questrelation` WHERE `id` = 19382;
DELETE FROM `creature_involvedrelation` WHERE `id` = 19382;
UPDATE  `creature_template` SET  `npcflag` =  '0' WHERE  `entry` =19382;
DELETE FROM `creature` WHERE `guid` in (60593,74010);
DELETE FROM `creature_addon` WHERE `guid` in (60593,74010);
UPDATE  `creature_template` SET  `mingold` =  '0',`maxgold` =  '0' WHERE  `entry` in (727,2405,2621,5725,7980,16733);
REPLACE INTO `creature_onkill_reputation` (`creature_id`, `RewOnKillRepFaction1`, `RewOnKillRepFaction2`, `MaxStanding1`, `IsTeamAward1`, `RewOnKillRepValue1`, `MaxStanding2`, `IsTeamAward2`, `RewOnKillRepValue2`, `TeamDependent`) VALUES ('3502', '470', '0', '7', '0', '-125', '0', '0', '0', '0'),('9460', '369', '0', '7', '0', '-125', '0', '0', '0', '0'),('11190', '577', '0', '7', '0', '-125', '0', '0', '0', '0');
DELETE FROM `creature_loot_template` WHERE `entry` in (2041,3502,5595,5953,7980);
DELETE FROM `pickpocketing_loot_template` WHERE `entry` in (2621,727,3502,5953,8151,11190,12338,13076);
UPDATE  `creature_template` SET  `pickpocketloot` =  '0' WHERE  `entry` in (2621,727,3502,5953,8151,11190,12338,13076);
UPDATE  `creature_template` SET  `lootid` =  '0' WHERE  `entry` in (2041,3502,5595,5953,7980);
UPDATE  `quest_template` SET  `SpecialFlags` =  '0',`NextQuestId` =  '7795',`ExclusiveGroup` =  '7791' WHERE  `entry` in (7791,7793,7794);
UPDATE  `quest_template` SET  `SpecialFlags` =  '0',`PrevQuestId` =  '0',`NextQuestId` =  '0',`ExclusiveGroup` =  '0' WHERE  `entry` =7795;
UPDATE  `quest_template` SET  `SpecialFlags` =  '1',`PrevQuestId` =  '7795' WHERE  `entry` =7796;
UPDATE  `quest_template` SET  `SpecialFlags` =  '0',`NextQuestId` =  '10357',`ExclusiveGroup` =  '7792' WHERE  `entry` in (10356,7798,7792);
UPDATE  `quest_template` SET  `SpecialFlags` =  '0',`PrevQuestId` =  '0',`NextQuestId` =  '0',`ExclusiveGroup` =  '0' WHERE  `entry` =10357;
UPDATE  `quest_template` SET  `SpecialFlags` =  '1',`PrevQuestId` =  '10357' WHERE  `entry` =10358;
UPDATE  `quest_template` SET  `SpecialFlags` =  '0',`NextQuestId` =  '7805',`ExclusiveGroup` =  '7802' WHERE  `entry` in (7802,7803,7804);
UPDATE  `quest_template` SET  `SpecialFlags` =  '0',`PrevQuestId` =  '0',`NextQuestId` =  '0',`ExclusiveGroup` =  '0' WHERE  `entry` =7805;
UPDATE  `quest_template` SET  `SpecialFlags` =  '1',`PrevQuestId` =  '7805' WHERE  `entry` =7806;
UPDATE  `quest_template` SET  `SpecialFlags` =  '0',`NextQuestId` =  '7811',`ExclusiveGroup` =  '7807' WHERE  `entry` in (7807,7808,7809);
UPDATE  `quest_template` SET  `SpecialFlags` =  '0',`PrevQuestId` =  '0',`NextQuestId` =  '0',`ExclusiveGroup` =  '0' WHERE  `entry` =7811;
UPDATE  `quest_template` SET  `SpecialFlags` =  '1',`PrevQuestId` =  '7811' WHERE  `entry` =7812;
UPDATE  `quest_template` SET  `SpecialFlags` =  '0',`NextQuestId` =  '7800',`ExclusiveGroup` =  '7799' WHERE  `entry` in (7799,10352,10354);
UPDATE  `quest_template` SET  `SpecialFlags` =  '0',`PrevQuestId` =  '0',`NextQuestId` =  '0',`ExclusiveGroup` =  '0' WHERE  `entry` =7800;
UPDATE  `quest_template` SET  `SpecialFlags` =  '1',`PrevQuestId` =  '7800' WHERE  `entry` =7801;
UPDATE  `quest_template` SET  `SpecialFlags` =  '0',`NextQuestId` =  '10362',`ExclusiveGroup` =  '10359' WHERE  `entry` in (10359,10360,10361);
UPDATE  `quest_template` SET  `SpecialFlags` =  '0',`PrevQuestId` =  '0',`NextQuestId` =  '0',`ExclusiveGroup` =  '0' WHERE  `entry` =10362;
UPDATE  `quest_template` SET  `SpecialFlags` =  '1',`PrevQuestId` =  '10362' WHERE  `entry` =10363;
UPDATE  `quest_template` SET  `SpecialFlags` =  '0',`NextQuestId` =  '7818',`ExclusiveGroup` =  '7813' WHERE  `entry` in (7813,7814,7817);
UPDATE  `quest_template` SET  `SpecialFlags` =  '0',`PrevQuestId` =  '0',`NextQuestId` =  '0',`ExclusiveGroup` =  '0' WHERE  `entry` =7818;
UPDATE  `quest_template` SET  `SpecialFlags` =  '1',`PrevQuestId` =  '7818' WHERE  `entry` =7819;
UPDATE  `quest_template` SET  `SpecialFlags` =  '0',`NextQuestId` =  '7823',`ExclusiveGroup` =  '7820' WHERE  `entry` in (7820,7821,7822);
UPDATE  `quest_template` SET  `SpecialFlags` =  '0',`PrevQuestId` =  '0',`NextQuestId` =  '0',`ExclusiveGroup` =  '0' WHERE  `entry` =7823;
UPDATE  `quest_template` SET  `SpecialFlags` =  '1',`PrevQuestId` =  '7823' WHERE  `entry` =7825;
UPDATE  `quest_template` SET  `SpecialFlags` =  '0',`NextQuestId` =  '7824',`ExclusiveGroup` =  '7826' WHERE  `entry` in (7826,7827,7831);
UPDATE  `quest_template` SET  `SpecialFlags` =  '0',`PrevQuestId` =  '0',`NextQuestId` =  '0',`ExclusiveGroup` =  '0' WHERE  `entry` =7824;
UPDATE  `quest_template` SET  `SpecialFlags` =  '1',`PrevQuestId` =  '7824' WHERE  `entry` =7832;
UPDATE  `quest_template` SET  `SpecialFlags` =  '0',`NextQuestId` =  '7836',`ExclusiveGroup` =  '7833' WHERE  `entry` in (7833,7834,7835);
UPDATE  `quest_template` SET  `SpecialFlags` =  '0',`PrevQuestId` =  '0',`NextQuestId` =  '0',`ExclusiveGroup` =  '0' WHERE  `entry` =7836;
UPDATE  `quest_template` SET  `SpecialFlags` =  '1',`PrevQuestId` =  '7836' WHERE  `entry` =7837;
DELETE FROM  `mail_loot_template` WHERE  `entry` =101;
UPDATE  `quest_template` SET  `SpecialFlags` =  '1' WHERE  `entry` in (5218,5227);
UPDATE  `quest_template` SET  `PrevQuestId` =  '0' WHERE  `entry` =5218;
UPDATE  `quest_template` SET  `PrevQuestId` =  '0' WHERE  `entry` =5227;
UPDATE  `quest_template` SET  `PrevQuestId` =  '0',`NextQuestId` =  '0',`NextQuestInChain` =  '0' WHERE  `entry` =5221;
UPDATE  `quest_template` SET  `NextQuestId` =  '5222',`NextQuestInChain` =  '5222' WHERE  `entry` =5220;
UPDATE  `quest_template` SET  `PrevQuestId` =  '0',`NextQuestId` =  '0',`NextQuestInChain` =  '0' WHERE  `entry` =5224;
UPDATE  `quest_template` SET  `NextQuestId` =  '5225',`NextQuestInChain` =  '5225' WHERE  `entry` =5223;
UPDATE  `gameobject_questrelation` SET  `id` =  '177289' WHERE  `quest` =5221;
UPDATE  `gameobject_involvedrelation` SET  `id` =  '177289' WHERE  `quest` =5221;
UPDATE  `gameobject_questrelation` SET  `id` =  '176393' WHERE  `quest` =5224;
UPDATE  `gameobject_involvedrelation` SET  `id` =  '176393' WHERE  `quest` =5224;
UPDATE  `gameobject_questrelation` SET  `id` =  '176392' WHERE  `quest` =5227;
UPDATE  `gameobject_involvedrelation` SET  `id` =  '176392' WHERE  `quest` =5227;
UPDATE  `quest_template` SET  `SpecialFlags` =  '1' WHERE  `entry` in (7672,7662,7663,7665,7671,7678,7677,7674,7673);
UPDATE  `quest_template` SET  `ExclusiveGroup` =  -ABS(`ExclusiveGroup`) WHERE  `ExclusiveGroup` in (7833,7826,7820,7813,10359,7799,7807,7802,7792,7791);
UPDATE  `creature_questrelation` SET  `id` =  '4217' WHERE  `quest` =3803;
UPDATE  `quest_template` SET  `SpecialFlags` =  '0' WHERE  `entry` in (7223,7224,7509,10024,9802,8348,10017,10826);
UPDATE  `quest_template` SET  `SpecialFlags` =  '1' WHERE  `entry` in (1423,822,5981,7484);
UPDATE  `quest_template` SET  `PrevQuestId` =  '8460' WHERE  `entry` =8466;
UPDATE  `quest_template` SET  `PrevQuestId` =  '8464' WHERE  `entry` =8469;
DELETE FROM `creature_questrelation` WHERE `quest` in (6131,6241,7737,7509);
UPDATE  `quest_template` SET  `NextQuestId` =  '8462',`NextQuestInChain` =  '8462' WHERE  `entry` =8460;
UPDATE  `quest_template` SET  `NextQuestId` =  '8469',`NextQuestInChain` =  '8469' WHERE  `entry` =8464;
UPDATE  `quest_template` SET  `RequiredMinRepValue` =  '3000' WHERE  `entry` =9807;
UPDATE  `quest_template` SET  `PrevQuestId` =  '7463' WHERE  `entry` in (7485,7483,7485);
UPDATE  `quest_template` SET  `PrevQuestId` =  '10412' WHERE  `entry` =10415;
UPDATE  `quest_template` SET  `RequiredMinRepValue` =  '9000' WHERE  `entry` =8249;
UPDATE  `quest_template` SET  `PrevQuestId` =  '10479' WHERE  `entry` =10478;
UPDATE  `quest_template` SET  `PrevQuestId` =  '10476' WHERE  `entry` =10477;
UPDATE  `quest_template` SET  `PrevQuestId` =  '10262' WHERE  `entry` =10308;
UPDATE  `quest_template` SET  `PrevQuestId` =  '9882' WHERE  `entry` =9883;
UPDATE  `quest_template` SET  `RequiredRaces` =  '1101' WHERE  `entry` =10477;
UPDATE  `quest_template` SET  `RequiredRaces` =  '690' WHERE  `entry` =10478;
UPDATE  `quest_template` SET  `RequiredMaxRepFaction` =  '0',`RequiredMaxRepValue` =  '0' WHERE  `entry` in (9802,9875);
UPDATE  `quest_template` SET  `PrevQuestId` =  '8348' WHERE  `entry` =8361;
UPDATE  `quest_template` SET  `RequiredRaces` =  '690' WHERE  `entry` in (13269,13270);
UPDATE  `quest_template` SET  `RequiredRaces` =  '1101' WHERE  `entry` in (13265,13268);
REPLACE INTO `creature_involvedrelation` (`id`, `quest`) VALUES ('26914', '13268');
REPLACE INTO `creature_questrelation` (`id`, `quest`) VALUES ('26914', '13268');
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=26914;
UPDATE  `quest_template` SET  `SpecialFlags` =  '0' WHERE  `entry` in (3385);
UPDATE `creature_template` SET `minlevel` = 60, `maxlevel` = 60 WHERE `entry` = 16717;
UPDATE  `creature_template` SET  `faction_A` =  '1638',`faction_H` =  '1638',`npcflag` =  '4224' WHERE  `entry` =16717;
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES
(16717, 837, 0, 0, 0),
(16717, 838, 0, 0, 0),
(16717, 839, 0, 0, 0),
(16717, 840, 0, 0, 0),
(16717, 2589, 10, 3600, 0),
(16717, 2592, 5, 3600, 0),
(16717, 2996, 2, 3600, 0),
(16717, 2997, 1, 3600, 0),
(16717, 3428, 0, 0, 0),
(16717, 3589, 0, 0, 0),
(16717, 3590, 0, 0, 0),
(16717, 4305, 2, 3600, 0),
(16717, 4306, 3, 3600, 0),
(16717, 4338, 2, 3600, 0),
(16717, 16059, 0, 0, 0),
(16717, 16060, 0, 0, 0);
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(1964, 16717, 530, 1, 1, 0, 0, -4075.02, -11735.3, -139.084, 2.23288, 600, 0, 0, 12600, 0, 0, 0);
UPDATE `creature_template` SET `gossip_menu_id` = 10832 WHERE `entry` = 8586;
INSERT IGNORE INTO `gossip_menu` (`entry`, `text_id`) VALUES (10832, 15021);
UPDATE `creature_template` SET `gossip_menu_id` = 6944 WHERE `entry` = 8610;
UPDATE `creature_template` SET `gossip_menu_id` = 10640 WHERE `entry` = 35091;
INSERT IGNORE INTO `gossip_menu` (`entry`, `text_id`) VALUES (10640, 14740);
INSERT IGNORE INTO `npc_text` (`ID`, `text0_0`, `text0_1`, `lang0`, `prob0`, `em0_0`, `em0_1`, `em0_2`, `em0_3`, `em0_4`, `em0_5`, `text1_0`, `text1_1`, `lang1`, `prob1`, `em1_0`, `em1_1`, `em1_2`, `em1_3`, `em1_4`, `em1_5`, `text2_0`, `text2_1`, `lang2`, `prob2`, `em2_0`, `em2_1`, `em2_2`, `em2_3`, `em2_4`, `em2_5`, `text3_0`, `text3_1`, `lang3`, `prob3`, `em3_0`, `em3_1`, `em3_2`, `em3_3`, `em3_4`, `em3_5`, `text4_0`, `text4_1`, `lang4`, `prob4`, `em4_0`, `em4_1`, `em4_2`, `em4_3`, `em4_4`, `em4_5`, `text5_0`, `text5_1`, `lang5`, `prob5`, `em5_0`, `em5_1`, `em5_2`, `em5_3`, `em5_4`, `em5_5`, `text6_0`, `text6_1`, `lang6`, `prob6`, `em6_0`, `em6_1`, `em6_2`, `em6_3`, `em6_4`, `em6_5`, `text7_0`, `text7_1`, `lang7`, `prob7`, `em7_0`, `em7_1`, `em7_2`, `em7_3`, `em7_4`, `em7_5`) VALUES
(14740, 'Need TXT YTDB', '', 0, 100, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0),
(15021, 'Need TXT YTDB', '', 0, 100, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0);
UPDATE `creature_template` SET `gossip_menu_id` = 3645 WHERE `entry` = 2123;
UPDATE `creature_template` SET `gossip_menu_id` = 85 WHERE `entry` = 2122;
DELETE FROM `gossip_menu` WHERE `entry` = 50181;
DELETE FROM `gossip_menu_option` WHERE `menu_id` = 50181;
DELETE FROM `locales_gossip_menu_option` WHERE `menu_id` = 50181;
UPDATE `creature_template` SET `gossip_menu_id` = 4653 WHERE `entry` = 2119;
INSERT IGNORE INTO `gossip_menu` (`entry`, `text_id`) VALUES (4653, 4984);
UPDATE `creature_template` SET `gossip_menu_id` = 4655 WHERE `entry` = 2126;
INSERT IGNORE INTO `gossip_menu` (`entry`, `text_id`) VALUES (4655, 5720);
UPDATE `creature_template` SET `gossip_menu_id` = 12670 WHERE `entry` = 5749;
INSERT IGNORE INTO `gossip_menu` (`entry`, `text_id`) VALUES (12670, 12549);
UPDATE `creature_template` SET `gossip_menu_id` = 11159 WHERE `entry` = 10666;
INSERT IGNORE INTO `gossip_menu` (`entry`, `text_id`) VALUES (11159, 15531);
UPDATE `creature_template` SET `gossip_menu_id` = 11145 WHERE `entry` = 1519;
INSERT IGNORE INTO `gossip_menu` (`entry`, `text_id`) VALUES (11145, 15512);
UPDATE `creature_template` SET `gossip_menu_id` = 11827 WHERE `entry` = 10665;
INSERT IGNORE INTO `gossip_menu` (`entry`, `text_id`) VALUES (11827, 16583);
UPDATE `creature_template` SET `gossip_menu_id` = 10641 WHERE `entry` = 35087;
REPLACE INTO `gossip_menu` (`entry`, `text_id`) VALUES (10641, 14742);
REPLACE INTO `gossip_menu` (`entry`, `text_id`) VALUES (10642, 14744);
REPLACE INTO `gossip_menu` (`entry`, `text_id`) VALUES (10643, 14745);
REPLACE INTO `gossip_menu` (`entry`, `text_id`) VALUES (10644, 14746);
REPLACE INTO `gossip_menu` (`entry`, `text_id`) VALUES (10645, 14747);
REPLACE INTO `gossip_menu` (`entry`, `text_id`) VALUES (10646, 14748);
REPLACE INTO `gossip_menu` (`entry`, `text_id`) VALUES (10647, 14749);
UPDATE  `quest_template` SET  `ReqCreatureOrGOId1` =  '30186' WHERE  `entry` =12982;
UPDATE  `creature_template` SET  `faction_A` =  '1885',`faction_H` =  '1885' WHERE  `entry` =30633;
UPDATE  `npc_spellclick_spells` SET  `spell_id` =  '61832',`cast_flags` =1 WHERE  `npc_entry` =26477;
UPDATE  `creature_template` SET  `flags_extra` =  2, `ScriptName` =  '' WHERE  `entry` in (18192,18256);

# madalex
DELETE FROM `creature` WHERE (`id`='31016');

# FIX
UPDATE `gameobject_template` SET `flags` = 0 WHERE `entry` = 187021;

# NeatElves
DELETE FROM `gossip_menu_option` WHERE `menu_id` = 50185 AND `id` = 0;
INSERT IGNORE INTO `npc_text` (`ID`, `text0_0`, `text0_1`, `lang0`, `prob0`, `em0_0`, `em0_1`, `em0_2`, `em0_3`, `em0_4`, `em0_5`, `text1_0`, `text1_1`, `lang1`, `prob1`, `em1_0`, `em1_1`, `em1_2`, `em1_3`, `em1_4`, `em1_5`, `text2_0`, `text2_1`, `lang2`, `prob2`, `em2_0`, `em2_1`, `em2_2`, `em2_3`, `em2_4`, `em2_5`, `text3_0`, `text3_1`, `lang3`, `prob3`, `em3_0`, `em3_1`, `em3_2`, `em3_3`, `em3_4`, `em3_5`, `text4_0`, `text4_1`, `lang4`, `prob4`, `em4_0`, `em4_1`, `em4_2`, `em4_3`, `em4_4`, `em4_5`, `text5_0`, `text5_1`, `lang5`, `prob5`, `em5_0`, `em5_1`, `em5_2`, `em5_3`, `em5_4`, `em5_5`, `text6_0`, `text6_1`, `lang6`, `prob6`, `em6_0`, `em6_1`, `em6_2`, `em6_3`, `em6_4`, `em6_5`, `text7_0`, `text7_1`, `lang7`, `prob7`, `em7_0`, `em7_1`, `em7_2`, `em7_3`, `em7_4`, `em7_5`) VALUES
(14742, 'Need TXT YTDB', '', 0, 100, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0),
(14744, 'Need TXT YTDB', '', 0, 100, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0),
(14745, 'Need TXT YTDB', '', 0, 100, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0),
(14746, 'Need TXT YTDB', '', 0, 100, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0),
(14747, 'Need TXT YTDB', '', 0, 100, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0),
(14748, 'Need TXT YTDB', '', 0, 100, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0),
(14749, 'Need TXT YTDB', '', 0, 100, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0);
UPDATE gameobject SET spawntimesecs=300 WHERE id=195346;
UPDATE gameobject SET spawntimesecs=300 WHERE id=195344;
UPDATE creature_template SET flags_extra=flags_extra &~ 128 WHERE entry IN (20858,22023,24921,16922,18782,19646,16897,16898,16899,21157);
UPDATE creature_template SET flags_extra=flags_extra|64 WHERE entry IN (31205,31142);
UPDATE  `creature` SET  `phaseMask` =  '129' WHERE  `guid` =81156;
UPDATE  `creature` SET  `phaseMask` =  '129' WHERE  `guid` =104145;
UPDATE  `creature` SET  `phaseMask` =  '129' WHERE  `guid` =104146;
UPDATE creature_template SET flags_extra = flags_extra & ~1 WHERE entry IN (15608,21174); -- Medivh (Black Morass) and Magtheridon (Blood Furnace)
UPDATE creature SET spawntimesecs=7200 WHERE spawntimesecs<7200 AND map=624;
DELETE FROM creature WHERE id IN (30985,31205); -- summon by spell
DELETE FROM achievement_criteria_data WHERE criteria_id=12846;
INSERT IGNORE INTO achievement_criteria_data (criteria_id,type,value1,value2) VALUES (12846,16,335,0);
INSERT IGNORE INTO areatrigger_tavern (id,name) VALUES (5315,'Wyrmrest Temple');
INSERT IGNORE INTO areatrigger_tavern (id,name) VALUES (5316,'Wyrmrest Temple');
INSERT IGNORE INTO areatrigger_tavern (id,name) VALUES (5317,'Wyrmrest Temple');
INSERT IGNORE INTO game_tele (id,position_x,position_y,position_z,orientation,map,name) VALUES (1436,8447.437500,2698.091064,656.783142,2.839198,571,'TheShadowVault');
UPDATE creature_loot_template SET ChanceOrQuestChance=50 WHERE item=36743;
DELETE FROM `creature_loot_template` WHERE `entry` = 27431 AND `item` = 38303;
UPDATE creature SET spawntimesecs=60 WHERE id IN (26544);
UPDATE creature SET spawntimesecs=300 WHERE id IN (30877,30875,30872,30873,30876);
UPDATE creature SET spawndist=0.0, MovementType=0 WHERE id IN (30899,30898,30897,27869,32488,24210,24088);
UPDATE creature SET spawndist=30.0, MovementType=1 WHERE guid IN (88384,88385,110094,110095,111971,111982,111986,111987,111988,111989,111990,111991,111992);
UPDATE `gameobject_template` SET `flags` = 0 WHERE `entry` = 187021;

# FIX
UPDATE quest_template SET OfferRewardEmote1=66 WHERE entry=14;
UPDATE quest_template SET CompleteEmote=0,OfferRewardEmote1=66 WHERE entry=46;
UPDATE quest_template SET CompleteEmote=0 WHERE entry=55;
UPDATE quest_template SET IncompleteEmote=25,OfferRewardEmote1=66 WHERE entry=58;
UPDATE quest_template SET CompleteEmote=0 WHERE entry=59;
UPDATE quest_template SET OfferRewardEmote1=6 WHERE entry=65;
UPDATE quest_template SET CompleteEmote=5,OfferRewardEmote1=1 WHERE entry=82;
UPDATE quest_template SET CompleteEmote=6,OfferRewardEmote1=1,OfferRewardEmote2=1,OfferRewardEmote3=16 WHERE entry=98;
UPDATE quest_template SET CompleteEmote=0 WHERE entry=103;
UPDATE quest_template SET CompleteEmote=0 WHERE entry=104;
UPDATE quest_template SET CompleteEmote=25,OfferRewardEmote1=21 WHERE entry=116;
UPDATE quest_template SET DetailsEmote1=1,CompleteEmote=6,OfferRewardEmote1=1 WHERE entry=120;
UPDATE quest_template SET DetailsEmote1=25,CompleteEmote=6,OfferRewardEmote1=1 WHERE entry=121;
UPDATE quest_template SET CompleteEmote=0 WHERE entry=129;
UPDATE quest_template SET CompleteEmote=0 WHERE entry=131;
UPDATE quest_template SET DetailsEmote1=1 WHERE entry=132;
UPDATE quest_template SET CompleteEmote=0 WHERE entry=133;
UPDATE quest_template SET CompleteEmote=0 WHERE entry=134;
UPDATE quest_template SET CompleteEmote=6,OfferRewardEmote1=1 WHERE entry=141;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,CompleteEmote=6,OfferRewardEmote1=1,OfferRewardEmote2=25 WHERE entry=142;
UPDATE quest_template SET DetailsEmote1=1 WHERE entry=143;
UPDATE quest_template SET CompleteEmote=6 WHERE entry=145;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=29,CompleteEmote=6,OfferRewardEmote1=5,OfferRewardEmote2=6,OfferRewardEmote3=1 WHERE entry=146;
UPDATE quest_template SET CompleteEmote=0,OfferRewardEmote1=1 WHERE entry=147;
UPDATE quest_template SET CompleteEmote=0 WHERE entry=149;
UPDATE quest_template SET CompleteEmote=0 WHERE entry=154;
UPDATE quest_template SET DetailsEmote1=6,OfferRewardEmote1=21 WHERE entry=155;
UPDATE quest_template SET DetailsEmote1=1,OfferRewardEmote1=2 WHERE entry=156;
UPDATE quest_template SET CompleteEmote=0 WHERE entry=157;
UPDATE quest_template SET CompleteEmote=0 WHERE entry=159;
UPDATE quest_template SET CompleteEmote=0 WHERE entry=160;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=5,CompleteEmote=6,OfferRewardEmote1=1 WHERE entry=161;
UPDATE quest_template SET DetailsEmote1=1,CompleteEmote=6,OfferRewardEmote1=66 WHERE entry=166;
UPDATE quest_template SET CompleteEmote=6,OfferRewardEmote1=1 WHERE entry=167;
UPDATE quest_template SET CompleteEmote=6,OfferRewardEmote1=1 WHERE entry=168;
UPDATE quest_template SET CompleteEmote=6,OfferRewardEmote1=4 WHERE entry=181;
UPDATE quest_template SET OfferRewardEmote1=21 WHERE entry=185;
UPDATE quest_template SET DetailsEmote1=1,IncompleteEmote=25,OfferRewardEmote1=21 WHERE entry=186;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,OfferRewardEmote1=21 WHERE entry=187;
UPDATE quest_template SET DetailsEmote1=1,OfferRewardEmote1=21 WHERE entry=188;
UPDATE quest_template SET OfferRewardEmote1=21 WHERE entry=190;
UPDATE quest_template SET DetailsEmote1=1,OfferRewardEmote1=21 WHERE entry=191;
UPDATE quest_template SET DetailsEmote1=1,OfferRewardEmote1=21 WHERE entry=192;
UPDATE quest_template SET DetailsEmote1=1,CompleteEmote=6,OfferRewardEmote1=21 WHERE entry=193;
UPDATE quest_template SET DetailsEmote1=6,DetailsEmote2=1,OfferRewardEmote1=21 WHERE entry=194;
UPDATE quest_template SET DetailsEmote1=1,OfferRewardEmote1=21 WHERE entry=195;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,OfferRewardEmote1=21 WHERE entry=196;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,CompleteEmote=6,OfferRewardEmote1=6 WHERE entry=197;
UPDATE quest_template SET CompleteEmote=0 WHERE entry=198;
UPDATE quest_template SET CompleteEmote=6,OfferRewardEmote1=5 WHERE entry=199;
UPDATE quest_template SET OfferRewardEmote1=1,OfferRewardEmote2=1 WHERE entry=201;
UPDATE quest_template SET CompleteEmote=0 WHERE entry=202;
UPDATE quest_template SET CompleteEmote=0 WHERE entry=204;
UPDATE quest_template SET CompleteEmote=0,OfferRewardEmote1=1 WHERE entry=205;
UPDATE quest_template SET CompleteEmote=0 WHERE entry=207;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,OfferRewardEmote1=21 WHERE entry=208;
UPDATE quest_template SET CompleteEmote=0 WHERE entry=209;
UPDATE quest_template SET CompleteEmote=0 WHERE entry=210;
UPDATE quest_template SET DetailsEmote1=5,DetailsEmote2=1,DetailsEmote3=1 WHERE entry=211;
UPDATE quest_template SET CompleteEmote=0 WHERE entry=214;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1 WHERE entry=215;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,OfferRewardEmote1=66 WHERE entry=217;
UPDATE quest_template SET DetailsEmote1=5,DetailsEmote2=1,DetailsEmote3=20,OfferRewardEmote1=66 WHERE entry=219;
UPDATE quest_template SET DetailsEmote1=66,CompleteEmote=0 WHERE entry=223;
UPDATE quest_template SET DetailsEmote1=5,DetailsEmote2=1,DetailsEmote3=1,OfferRewardEmote1=66 WHERE entry=224;
UPDATE quest_template SET CompleteEmote=0 WHERE entry=230;
UPDATE quest_template SET CompleteEmote=0 WHERE entry=231;
UPDATE quest_template SET DetailsEmote1=1,OfferRewardEmote1=11,OfferRewardEmoteDelay1=100 WHERE entry=236;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,OfferRewardEmote1=1,OfferRewardEmote2=1 WHERE entry=237;
UPDATE quest_template SET DetailsEmote1=5,DetailsEmote2=1,DetailsEmote3=29 WHERE entry=250;
UPDATE quest_template SET CompleteEmote=0 WHERE entry=251;
UPDATE quest_template SET CompleteEmote=0 WHERE entry=252;
UPDATE quest_template SET CompleteEmote=0 WHERE entry=253;
UPDATE quest_template SET CompleteEmote=6,OfferRewardEmote1=1,OfferRewardEmote2=1 WHERE entry=256;
UPDATE quest_template SET CompleteEmote=0 WHERE entry=262;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,OfferRewardEmote1=66 WHERE entry=263;
UPDATE quest_template SET CompleteEmote=0 WHERE entry=265;
UPDATE quest_template SET CompleteEmote=0 WHERE entry=266;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,CompleteEmote=6,OfferRewardEmote1=66 WHERE entry=267;
UPDATE quest_template SET CompleteEmote=0 WHERE entry=268;
UPDATE quest_template SET CompleteEmote=0 WHERE entry=269;
UPDATE quest_template SET CompleteEmote=0 WHERE entry=271;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,OfferRewardEmote1=5,OfferRewardEmote2=274 WHERE entry=273;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1 WHERE entry=274;
UPDATE quest_template SET CompleteEmote=0 WHERE entry=277;
UPDATE quest_template SET CompleteEmote=0 WHERE entry=279;
UPDATE quest_template SET CompleteEmote=0 WHERE entry=286;
UPDATE quest_template SET DetailsEmote1=1,OfferRewardEmote1=4 WHERE entry=288;
UPDATE quest_template SET CompleteEmote=0 WHERE entry=289;
UPDATE quest_template SET CompleteEmote=0 WHERE entry=290;
UPDATE quest_template SET CompleteEmote=0 WHERE entry=292;
UPDATE quest_template SET CompleteEmote=0 WHERE entry=293;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,OfferRewardEmote1=1 WHERE entry=294;
UPDATE quest_template SET DetailsEmote1=1,OfferRewardEmote1=21 WHERE entry=295;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=5,OfferRewardEmote1=2 WHERE entry=296;
UPDATE quest_template SET CompleteEmote=0 WHERE entry=297;
UPDATE quest_template SET CompleteEmote=0 WHERE entry=298;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=5,OfferRewardEmote1=1 WHERE entry=299;
UPDATE quest_template SET CompleteEmote=0 WHERE entry=301;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=5,OfferRewardEmote1=66 WHERE entry=303;
UPDATE quest_template SET DetailsEmote1=1,CompleteEmote=6,OfferRewardEmote1=1,OfferRewardEmote2=1,OfferRewardEmote3=2 WHERE entry=304;
UPDATE quest_template SET DetailsEmote1=5,DetailsEmote2=1,DetailsEmote3=5,OfferRewardEmote1=5 WHERE entry=305;
UPDATE quest_template SET DetailsEmote1=5,DetailsEmote2=1,CompleteEmote=6,OfferRewardEmote1=5,OfferRewardEmote2=6,OfferRewardEmote3=1 WHERE entry=306;
UPDATE quest_template SET CompleteEmote=0 WHERE entry=307;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,OfferRewardEmote1=1,OfferRewardEmote2=273 WHERE entry=309;
UPDATE quest_template SET CompleteEmote=0 WHERE entry=322;
UPDATE quest_template SET CompleteEmote=0 WHERE entry=324;
UPDATE quest_template SET CompleteEmote=0 WHERE entry=325;
UPDATE quest_template SET CompleteEmote=0 WHERE entry=328;
UPDATE quest_template SET CompleteEmote=0 WHERE entry=329;
UPDATE quest_template SET CompleteEmote=0 WHERE entry=332;
UPDATE quest_template SET CompleteEmote=0 WHERE entry=333;
UPDATE quest_template SET CompleteEmote=0 WHERE entry=334;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,CompleteEmote=6,OfferRewardEmote1=21 WHERE entry=335;
UPDATE quest_template SET DetailsEmote1=1,CompleteEmote=5,OfferRewardEmote1=1 WHERE entry=336;
UPDATE quest_template SET DetailsEmote1=0,CompleteEmote=0 WHERE entry=337;
UPDATE quest_template SET CompleteEmote=6,OfferRewardEmote1=21 WHERE entry=338;
UPDATE quest_template SET OfferRewardEmote1=21 WHERE entry=339;
UPDATE quest_template SET OfferRewardEmote1=21 WHERE entry=340;
UPDATE quest_template SET OfferRewardEmote1=21 WHERE entry=341;
UPDATE quest_template SET OfferRewardEmote1=21 WHERE entry=342;
UPDATE quest_template SET CompleteEmote=0 WHERE entry=346;
UPDATE quest_template SET CompleteEmote=0 WHERE entry=347;
UPDATE quest_template SET OfferRewardEmote1=5,OfferRewardEmote2=1,OfferRewardEmote3=1 WHERE entry=349;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1,OfferRewardEmote1=6,OfferRewardEmote2=1,OfferRewardEmote3=11,OfferRewardEmote4=1 WHERE entry=350;
UPDATE quest_template SET CompleteEmote=0 WHERE entry=351;
UPDATE quest_template SET CompleteEmote=0,OfferRewardEmote1=6,OfferRewardEmote2=2,OfferRewardEmote3=1 WHERE entry=373;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,OfferRewardEmote1=1,OfferRewardEmote2=1 WHERE entry=378;
UPDATE quest_template SET CompleteEmote=0 WHERE entry=385;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1,OfferRewardEmote1=6,OfferRewardEmote2=5,OfferRewardEmote3=1,OfferRewardEmote4=1 WHERE entry=389;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1,DetailsEmote4=1,CompleteEmote=6,OfferRewardEmote1=1,OfferRewardEmote2=1,OfferRewardEmote3=1 WHERE entry=391;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1,CompleteEmote=6,OfferRewardEmote1=6,OfferRewardEmote2=1,OfferRewardEmote3=1 WHERE entry=392;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1,CompleteEmote=6,OfferRewardEmote1=6,OfferRewardEmote2=1,OfferRewardEmote3=1 WHERE entry=393;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1,OfferRewardEmote1=6,OfferRewardEmote2=1,OfferRewardEmote3=1,OfferRewardEmote4=2 WHERE entry=394;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1,OfferRewardEmote1=2,OfferRewardEmote2=1,OfferRewardEmote3=1 WHERE entry=395;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1,CompleteEmote=6,OfferRewardEmote1=1,OfferRewardEmote2=1,OfferRewardEmote3=2 WHERE entry=396;
UPDATE quest_template SET DetailsEmote1=1 WHERE entry=397;
UPDATE quest_template SET CompleteEmote=0 WHERE entry=399;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1 WHERE entry=412;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=6,OfferRewardEmote1=6,OfferRewardEmote2=1,OfferRewardEmote3=1 WHERE entry=434;
UPDATE quest_template SET CompleteEmote=0 WHERE entry=453;
UPDATE quest_template SET DetailsEmote1=1 WHERE entry=463;
UPDATE quest_template SET CompleteEmote=0 WHERE entry=464;
UPDATE quest_template SET CompleteEmote=0 WHERE entry=465;
UPDATE quest_template SET CompleteEmote=0,OfferRewardEmote1=5 WHERE entry=466;
UPDATE quest_template SET DetailsEmote1=0,CompleteEmote=0 WHERE entry=470;
UPDATE quest_template SET DetailsEmote1=1,OfferRewardEmote1=6,OfferRewardEmote2=11,OfferRewardEmoteDelay2=3000 WHERE entry=471;
UPDATE quest_template SET OfferRewardEmote1=6,OfferRewardEmote2=1 WHERE entry=472;
UPDATE quest_template SET CompleteEmote=0 WHERE entry=474;
UPDATE quest_template SET OfferRewardEmote1=5 WHERE entry=476;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1 WHERE entry=483;
UPDATE quest_template SET DetailsEmote1=2,CompleteEmote=6,OfferRewardEmote1=21 WHERE entry=484;
UPDATE quest_template SET CompleteEmote=0 WHERE entry=485;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=5 WHERE entry=489;
UPDATE quest_template SET CompleteEmote=0,OfferRewardEmote1=11,OfferRewardEmote2=1 WHERE entry=531;
UPDATE quest_template SET DetailsEmote1=7 WHERE entry=536;
UPDATE quest_template SET CompleteEmote=0 WHERE entry=540;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,CompleteEmote=6,OfferRewardEmote1=21 WHERE entry=555;
UPDATE quest_template SET DetailsEmote1=10,DetailsEmote2=23 WHERE entry=565;
UPDATE quest_template SET DetailsEmote1=6,DetailsEmote2=1,DetailsEmote3=1,DetailsEmote4=6,CompleteEmote=3,OfferRewardEmote1=4 WHERE entry=576;
UPDATE quest_template SET CompleteEmote=0 WHERE entry=577;
UPDATE quest_template SET CompleteEmote=0 WHERE entry=579;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=5 WHERE entry=580;
UPDATE quest_template SET DetailsEmote1=2,DetailsEmote2=1,DetailsEmote3=1,OfferRewardEmote1=2,OfferRewardEmote2=1,OfferRewardEmote3=1 WHERE entry=583;
UPDATE quest_template SET CompleteEmote=6,OfferRewardEmote1=21 WHERE entry=587;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1 WHERE entry=595;
UPDATE quest_template SET OfferRewardEmote1=1 WHERE entry=597;
UPDATE quest_template SET DetailsEmote1=5,DetailsEmote2=6,DetailsEmote3=5,OfferRewardEmote1=6,OfferRewardEmote2=1 WHERE entry=599;
UPDATE quest_template SET CompleteEmote=0 WHERE entry=600;
UPDATE quest_template SET CompleteEmote=0 WHERE entry=601;
UPDATE quest_template SET CompleteEmote=0 WHERE entry=602;
UPDATE quest_template SET DetailsEmote1=1,CompleteEmote=6,OfferRewardEmote1=1 WHERE entry=604;
UPDATE quest_template SET CompleteEmote=25,OfferRewardEmote1=6 WHERE entry=606;
UPDATE quest_template SET CompleteEmote=0 WHERE entry=607;
UPDATE quest_template SET DetailsEmote1=5,DetailsEmote2=1,IncompleteEmote=6,OfferRewardEmote1=21 WHERE entry=608;
UPDATE quest_template SET CompleteEmote=0 WHERE entry=610;
UPDATE quest_template SET CompleteEmote=0 WHERE entry=611;
UPDATE quest_template SET CompleteEmote=0 WHERE entry=613;
UPDATE quest_template SET CompleteEmote=0,OfferRewardEmote1=1,OfferRewardEmote2=1 WHERE entry=617;
UPDATE quest_template SET CompleteEmote=0 WHERE entry=622;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=6,CompleteEmote=6,OfferRewardEmote1=6,OfferRewardEmote2=1,OfferRewardEmote3=1 WHERE entry=623;
UPDATE quest_template SET CompleteEmote=0 WHERE entry=627;
UPDATE quest_template SET CompleteEmote=0 WHERE entry=628;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,CompleteEmote=6,OfferRewardEmote1=2,OfferRewardEmote2=1 WHERE entry=630;
UPDATE quest_template SET DetailsEmote1=5,DetailsEmote2=1,DetailsEmote3=6 WHERE entry=631;
UPDATE quest_template SET CompleteEmote=6,OfferRewardEmote1=18 WHERE entry=632;
UPDATE quest_template SET DetailsEmote1=5,DetailsEmote2=1,DetailsEmote3=5,OfferRewardEmote1=21 WHERE entry=633;
UPDATE quest_template SET DetailsEmote1=1,OfferRewardEmote1=1 WHERE entry=634;
UPDATE quest_template SET DetailsEmote1=5,DetailsEmote2=1,DetailsEmote3=5,CompleteEmote=6,OfferRewardEmote1=1,OfferRewardEmote2=2 WHERE entry=647;
UPDATE quest_template SET OfferRewardEmote1=4 WHERE entry=648;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=6 WHERE entry=659;
UPDATE quest_template SET DetailsEmote1=2,DetailsEmote2=1,DetailsEmote3=6,OfferRewardEmote1=6,OfferRewardEmote2=1 WHERE entry=690;
UPDATE quest_template SET CompleteEmote=0 WHERE entry=709;
UPDATE quest_template SET DetailsEmote1=3,DetailsEmote2=1,DetailsEmote3=1,DetailsEmote4=6 WHERE entry=719;
UPDATE quest_template SET OfferRewardEmote1=1,OfferRewardEmote2=2,OfferRewardEmoteDelay2=1000 WHERE entry=917;
UPDATE quest_template SET DetailsEmote1=1,OfferRewardEmote1=1 WHERE entry=920;
UPDATE quest_template SET DetailsEmote1=1,OfferRewardEmote1=1 WHERE entry=921;
UPDATE quest_template SET DetailsEmote1=1,OfferRewardEmote1=1 WHERE entry=928;
UPDATE quest_template SET DetailsEmote1=1,OfferRewardEmote1=1 WHERE entry=929;
UPDATE quest_template SET DetailsEmote1=2,DetailsEmoteDelay1=500 WHERE entry=932;
UPDATE quest_template SET DetailsEmote1=1 WHERE entry=933;
UPDATE quest_template SET CompleteEmote=6,OfferRewardEmote1=1 WHERE entry=939;
UPDATE quest_template SET DetailsEmote1=1,CompleteEmote=11,OfferRewardEmote1=5 WHERE entry=969;
UPDATE quest_template SET DetailsEmote1=6,DetailsEmote2=4,OfferRewardEmote1=4 WHERE entry=974;
UPDATE quest_template SET DetailsEmote1=1,OfferRewardEmote1=6 WHERE entry=975;
UPDATE quest_template SET DetailsEmote1=1,CompleteEmote=0,OfferRewardEmote1=1 WHERE entry=977;
UPDATE quest_template SET OfferRewardEmote1=3 WHERE entry=979;
UPDATE quest_template SET DetailsEmote1=1,OfferRewardEmote1=1 WHERE entry=980;
UPDATE quest_template SET DetailsEmote1=1 WHERE entry=992;
UPDATE quest_template SET DetailsEmote1=15,DetailsEmote2=5,DetailsEmote3=1 WHERE entry=1015;
UPDATE quest_template SET DetailsEmote1=15,DetailsEmote2=5,DetailsEmote3=1 WHERE entry=1019;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1,DetailsEmote4=1,OfferRewardEmote1=4,OfferRewardEmote2=1,OfferRewardEmote3=2 WHERE entry=1050;
UPDATE quest_template SET OfferRewardEmote1=1,OfferRewardEmote2=1,OfferRewardEmote3=66 WHERE entry=1053;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1 WHERE entry=1078;
UPDATE quest_template SET CompleteEmote=6,OfferRewardEmote1=6,OfferRewardEmote2=1 WHERE entry=1100;
UPDATE quest_template SET DetailsEmote1=18,DetailsEmote2=1,DetailsEmote3=1,CompleteEmote=0,OfferRewardEmote1=1,OfferRewardEmote2=1,OfferRewardEmote3=1 WHERE entry=1101;
UPDATE quest_template SET DetailsEmote1=1,OfferRewardEmote1=1 WHERE entry=1111;
UPDATE quest_template SET DetailsEmote1=1 WHERE entry=1112;
UPDATE quest_template SET OfferRewardEmote1=3,OfferRewardEmote2=1,OfferRewardEmoteDelay2=1000 WHERE entry=1132;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1,OfferRewardEmote1=1,OfferRewardEmote2=1,OfferRewardEmote3=2 WHERE entry=1144;
UPDATE quest_template SET CompleteEmote=0 WHERE entry=1193;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1,DetailsEmote4=29 WHERE entry=1198;
UPDATE quest_template SET DetailsEmote1=1,CompleteEmote=6,OfferRewardEmote1=1,OfferRewardEmote2=36,OfferRewardEmote3=4,OfferRewardEmoteDelay2=1000 WHERE entry=1203;
UPDATE quest_template SET CompleteEmote=0 WHERE entry=1204;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=6,CompleteEmote=0,OfferRewardEmote1=4,OfferRewardEmote2=1,OfferRewardEmote3=3,OfferRewardEmoteDelay3=2000 WHERE entry=1206;
UPDATE quest_template SET OfferRewardEmote1=4 WHERE entry=1218;
UPDATE quest_template SET CompleteEmote=0,OfferRewardEmote1=1 WHERE entry=1219;
UPDATE quest_template SET CompleteEmote=0,OfferRewardEmote1=1 WHERE entry=1220;
UPDATE quest_template SET OfferRewardEmote1=1,OfferRewardEmote2=2 WHERE entry=1222;
UPDATE quest_template SET DetailsEmote1=2,DetailsEmote2=1,DetailsEmote3=1,OfferRewardEmote1=1,OfferRewardEmote2=1,OfferRewardEmote3=6 WHERE entry=1241;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=9,CompleteEmote=6,OfferRewardEmote1=6,OfferRewardEmote2=9,OfferRewardEmote3=6,OfferRewardEmote4=11 WHERE entry=1242;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=6,DetailsEmote3=1,CompleteEmote=2,OfferRewardEmote1=6,OfferRewardEmote2=11,OfferRewardEmote3=6 WHERE entry=1243;
UPDATE quest_template SET DetailsEmote1=6,DetailsEmote2=1,DetailsEmote3=1,DetailsEmote4=1,OfferRewardEmote1=1,OfferRewardEmote2=9,OfferRewardEmote3=1 WHERE entry=1244;
UPDATE quest_template SET DetailsEmote1=5,DetailsEmote2=1,DetailsEmote3=1,DetailsEmote4=1,CompleteEmote=6,OfferRewardEmote1=1,OfferRewardEmote2=1 WHERE entry=1245;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1,OfferRewardEmote1=14,OfferRewardEmote2=1 WHERE entry=1246;
UPDATE quest_template SET DetailsEmote1=11,DetailsEmote2=1,DetailsEmote3=1,OfferRewardEmote1=3,OfferRewardEmote2=1,OfferRewardEmote3=1 WHERE entry=1247;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1,OfferRewardEmote1=3,OfferRewardEmote2=1,OfferRewardEmote3=6,OfferRewardEmote4=1 WHERE entry=1248;
UPDATE quest_template SET DetailsEmote1=6,DetailsEmote2=1,DetailsEmote3=1,OfferRewardEmote1=6,OfferRewardEmote2=1,OfferRewardEmote3=1,OfferRewardEmote4=6 WHERE entry=1249;
UPDATE quest_template SET DetailsEmote1=18,DetailsEmote2=1,DetailsEmote3=1,DetailsEmote4=5,OfferRewardEmote1=5,OfferRewardEmote2=1,OfferRewardEmote3=1,OfferRewardEmote4=1 WHERE entry=1250;
UPDATE quest_template SET CompleteEmote=6,OfferRewardEmote1=1 WHERE entry=1252;
UPDATE quest_template SET CompleteEmote=6,OfferRewardEmote1=1 WHERE entry=1253;
UPDATE quest_template SET DetailsEmote1=1,OfferRewardEmote1=4,OfferRewardEmote2=1 WHERE entry=1258;
UPDATE quest_template SET DetailsEmote1=1 WHERE entry=1259;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1,OfferRewardEmote1=66,OfferRewardEmote2=1,OfferRewardEmote3=1 WHERE entry=1264;
UPDATE quest_template SET DetailsEmote1=6,DetailsEmote2=1,DetailsEmote3=1,OfferRewardEmote1=1,OfferRewardEmote2=1,OfferRewardEmote3=2 WHERE entry=1265;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1,OfferRewardEmote1=2,OfferRewardEmote2=1,OfferRewardEmote3=1,OfferRewardEmote4=1 WHERE entry=1266;
UPDATE quest_template SET OfferRewardEmote1=1,OfferRewardEmote2=1 WHERE entry=1267;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=2,OfferRewardEmote1=2,OfferRewardEmote2=1,OfferRewardEmote3=1 WHERE entry=1274;
UPDATE quest_template SET OfferRewardEmote1=6 WHERE entry=1284;
UPDATE quest_template SET DetailsEmote1=1,OfferRewardEmote1=1 WHERE entry=1285;
UPDATE quest_template SET DetailsEmote1=1 WHERE entry=1286;
UPDATE quest_template SET DetailsEmote1=1,OfferRewardEmote1=1 WHERE entry=1287;
UPDATE quest_template SET DetailsEmote1=1,CompleteEmote=6,OfferRewardEmote1=1 WHERE entry=1319;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=3,OfferRewardEmote1=1 WHERE entry=1320;
UPDATE quest_template SET DetailsEmote1=5,DetailsEmote2=14,OfferRewardEmote1=1,OfferRewardEmote2=1,OfferRewardEmote3=1 WHERE entry=1324;
UPDATE quest_template SET DetailsEmote1=1,CompleteEmote=6,OfferRewardEmote1=1 WHERE entry=1338;
UPDATE quest_template SET OfferRewardEmote1=1 WHERE entry=1339;
UPDATE quest_template SET DetailsEmote1=1 WHERE entry=1360;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=6,DetailsEmote3=1,DetailsEmote4=6 WHERE entry=1363;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=5,DetailsEmote4=6,CompleteEmote=6 WHERE entry=1364;
UPDATE quest_template SET DetailsEmote1=0,CompleteEmote=0,OfferRewardEmote1=1,OfferRewardEmote2=66 WHERE entry=1387;
UPDATE quest_template SET CompleteEmote=0,OfferRewardEmote1=1 WHERE entry=1389;
UPDATE quest_template SET DetailsEmote1=0 WHERE entry=1392;
UPDATE quest_template SET DetailsEmote1=1 WHERE entry=1393;
UPDATE quest_template SET CompleteEmote=0,OfferRewardEmote1=4 WHERE entry=1395;
UPDATE quest_template SET OfferRewardEmote1=4 WHERE entry=1396;
UPDATE quest_template SET DetailsEmote1=1,CompleteEmote=6,OfferRewardEmote1=2 WHERE entry=1398;
UPDATE quest_template SET DetailsEmote1=1,CompleteEmote=0,OfferRewardEmote1=1 WHERE entry=1421;
UPDATE quest_template SET CompleteEmote=0,OfferRewardEmote1=1 WHERE entry=1423;
UPDATE quest_template SET CompleteEmote=0,OfferRewardEmote1=2 WHERE entry=1425;
UPDATE quest_template SET DetailsEmote1=2,DetailsEmote2=1,DetailsEmote3=1 WHERE entry=1437;
UPDATE quest_template SET DetailsEmote1=14,DetailsEmote2=6,OfferRewardEmote1=1,OfferRewardEmote2=6 WHERE entry=1447;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,OfferRewardEmote1=2 WHERE entry=1453;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1 WHERE entry=1458;
UPDATE quest_template SET DetailsEmote1=1 WHERE entry=1581;
UPDATE quest_template SET DetailsEmote1=1 WHERE entry=1618;
UPDATE quest_template SET OfferRewardEmote1=2,OfferRewardEmote2=1,OfferRewardEmote3=1 WHERE entry=1641;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1,OfferRewardEmote1=2,OfferRewardEmote2=6,OfferRewardEmote3=1,OfferRewardEmote4=1 WHERE entry=1642;
UPDATE quest_template SET DetailsEmote1=2,DetailsEmote2=1,DetailsEmote3=1,OfferRewardEmote1=1,OfferRewardEmote2=1,OfferRewardEmote3=1 WHERE entry=1643;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1,DetailsEmote4=16,OfferRewardEmote1=21,OfferRewardEmote2=1,OfferRewardEmote3=1,OfferRewardEmote4=2 WHERE entry=1644;
UPDATE quest_template SET OfferRewardEmote1=2,OfferRewardEmote2=1,OfferRewardEmote3=1,OfferRewardEmote4=6 WHERE entry=1649;
UPDATE quest_template SET DetailsEmote1=21,DetailsEmote2=1,DetailsEmote3=1,DetailsEmote4=1,OfferRewardEmote1=2,OfferRewardEmote2=1,OfferRewardEmote3=1,OfferRewardEmote4=24 WHERE entry=1650;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1,DetailsEmote4=5,OfferRewardEmote1=4,OfferRewardEmote2=1,OfferRewardEmote3=1 WHERE entry=1651;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,OfferRewardEmote1=1,OfferRewardEmote2=4,OfferRewardEmote3=1 WHERE entry=1652;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1,OfferRewardEmote1=2,OfferRewardEmote2=1,OfferRewardEmote3=1,OfferRewardEmote4=6 WHERE entry=1653;
UPDATE quest_template SET DetailsEmote1=6,DetailsEmote2=2,DetailsEmote3=1,DetailsEmote4=6 WHERE entry=1654;
UPDATE quest_template SET DetailsEmote1=25,OfferRewardEmote1=4 WHERE entry=1690;
UPDATE quest_template SET DetailsEmote1=1,IncompleteEmote=6,OfferRewardEmote1=66 WHERE entry=1691;
UPDATE quest_template SET DetailsEmote1=1,CompleteEmote=6,OfferRewardEmote1=4 WHERE entry=1707;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,OfferRewardEmote1=6 WHERE entry=1758;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=3,OfferRewardEmote1=1,OfferRewardEmote2=1,OfferRewardEmote3=1 WHERE entry=1780;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1,OfferRewardEmote1=33,OfferRewardEmote2=2,OfferRewardEmote3=1,OfferRewardEmote4=1 WHERE entry=1781;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1,DetailsEmote4=1,OfferRewardEmote1=2,OfferRewardEmote2=1,OfferRewardEmote3=1,OfferRewardEmote4=1 WHERE entry=1786;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=6,DetailsEmote4=1,CompleteEmote=6,OfferRewardEmote1=4,OfferRewardEmote2=1,OfferRewardEmote3=1 WHERE entry=1787;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=2,OfferRewardEmote1=1,OfferRewardEmote2=1,OfferRewardEmote3=1,OfferRewardEmote4=2 WHERE entry=1788;
UPDATE quest_template SET OfferRewardEmote1=1,OfferRewardEmote2=1 WHERE entry=1790;
UPDATE quest_template SET OfferRewardEmote1=1,OfferRewardEmote2=1,OfferRewardEmote3=6,OfferRewardEmote4=1 WHERE entry=1793;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1,OfferRewardEmote1=1,OfferRewardEmote2=2 WHERE entry=1795;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,CompleteEmote=6,OfferRewardEmote1=1,OfferRewardEmote2=1 WHERE entry=1796;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,OfferRewardEmote1=11,OfferRewardEmote2=1 WHERE entry=1798;
UPDATE quest_template SET CompleteEmote=6,OfferRewardEmote1=6,OfferRewardEmote2=1 WHERE entry=1799;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=2,CompleteEmote=6 WHERE entry=1802;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=2,CompleteEmote=6,OfferRewardEmote1=21,OfferRewardEmote2=1 WHERE entry=1804;
UPDATE quest_template SET OfferRewardEmote1=4 WHERE entry=1878;
UPDATE quest_template SET DetailsEmote1=1,CompleteEmote=6,OfferRewardEmote1=4 WHERE entry=2038;
UPDATE quest_template SET DetailsEmote1=1,OfferRewardEmote1=6 WHERE entry=2039;
UPDATE quest_template SET DetailsEmote1=1,CompleteEmote=0,OfferRewardEmote1=4 WHERE entry=2040;
UPDATE quest_template SET CompleteEmote=6,OfferRewardEmote1=25 WHERE entry=2198;
UPDATE quest_template SET DetailsEmote1=1,CompleteEmote=0,OfferRewardEmote1=21 WHERE entry=2199;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=5,OfferRewardEmote1=1,OfferRewardEmote2=5 WHERE entry=2240;
UPDATE quest_template SET CompleteEmote=5 WHERE entry=2279;
UPDATE quest_template SET DetailsEmote1=1 WHERE entry=2398;
UPDATE quest_template SET DetailsEmote1=1,OfferRewardEmote1=4,OfferRewardEmote2=1 WHERE entry=2418;
UPDATE quest_template SET DetailsEmote1=1,OfferRewardEmote1=4 WHERE entry=2438;
UPDATE quest_template SET DetailsEmote1=4,CompleteEmote=6,OfferRewardEmote1=1 WHERE entry=2439;
UPDATE quest_template SET DetailsEmote1=15,DetailsEmote2=1,DetailsEmoteDelay2=100,OfferRewardEmote1=2,OfferRewardEmoteDelay1=200 WHERE entry=2459;
UPDATE quest_template SET DetailsEmote1=5,DetailsEmote2=1,DetailsEmoteDelay2=100,CompleteEmote=0,OfferRewardEmote1=7,OfferRewardEmoteDelay1=200 WHERE entry=2605;
UPDATE quest_template SET DetailsEmote1=7,DetailsEmote2=5,CompleteEmote=0,OfferRewardEmote1=1 WHERE entry=2606;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=11,CompleteEmote=0,OfferRewardEmote1=4 WHERE entry=2641;
UPDATE quest_template SET DetailsEmote1=1,CompleteEmote=0 WHERE entry=2661;
UPDATE quest_template SET DetailsEmote1=5,OfferRewardEmote1=4,OfferRewardEmote2=5,OfferRewardEmote3=11,OfferRewardEmoteDelay2=100,OfferRewardEmoteDelay3=400 WHERE entry=2662;
UPDATE quest_template SET CompleteEmote=0 WHERE entry=2741;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=6,DetailsEmote4=1,OfferRewardEmote1=5,OfferRewardEmote2=1,OfferRewardEmote3=6,OfferRewardEmote4=5 WHERE entry=2745;
UPDATE quest_template SET CompleteEmote=0,OfferRewardEmote1=1,OfferRewardEmote2=1,OfferRewardEmote3=1 WHERE entry=2746;
UPDATE quest_template SET CompleteEmote=0,OfferRewardEmote1=1,OfferRewardEmote2=1,OfferRewardEmote3=1,OfferRewardEmote4=2 WHERE entry=2758;
UPDATE quest_template SET CompleteEmote=0,OfferRewardEmote1=5,OfferRewardEmote2=1,OfferRewardEmote3=1 WHERE entry=2759;
UPDATE quest_template SET CompleteEmote=0,OfferRewardEmote1=1,OfferRewardEmote2=1,OfferRewardEmote3=2 WHERE entry=2760;
UPDATE quest_template SET CompleteEmote=0 WHERE entry=2761;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=2,CompleteEmote=0,OfferRewardEmote1=1,OfferRewardEmote2=1,OfferRewardEmote3=5 WHERE entry=2762;
UPDATE quest_template SET CompleteEmote=0,OfferRewardEmote1=1,OfferRewardEmote2=1,OfferRewardEmote3=2 WHERE entry=2763;
UPDATE quest_template SET OfferRewardEmote1=1,OfferRewardEmote2=1,OfferRewardEmote3=2 WHERE entry=2764;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=2,OfferRewardEmote1=1,OfferRewardEmote2=2 WHERE entry=2765;
UPDATE quest_template SET DetailsEmote1=5,OfferRewardEmote1=4 WHERE entry=2768;
UPDATE quest_template SET OfferRewardEmote1=1 WHERE entry=2769;
UPDATE quest_template SET CompleteEmote=0 WHERE entry=2771;
UPDATE quest_template SET CompleteEmote=0,OfferRewardEmote1=5,OfferRewardEmote2=1,OfferRewardEmote3=2 WHERE entry=2772;
UPDATE quest_template SET CompleteEmote=0 WHERE entry=2773;
UPDATE quest_template SET CompleteEmote=6,OfferRewardEmote1=4 WHERE entry=2781;
UPDATE quest_template SET DetailsEmote1=1,OfferRewardEmote1=4,OfferRewardEmote2=1 WHERE entry=2846;
UPDATE quest_template SET OfferRewardEmote1=1 WHERE entry=2864;
UPDATE quest_template SET DetailsEmote1=1,CompleteEmote=0,OfferRewardEmote1=1 WHERE entry=2865;
UPDATE quest_template SET DetailsEmote1=1,OfferRewardEmote1=1 WHERE entry=2872;
UPDATE quest_template SET DetailsEmote1=1,CompleteEmote=6,OfferRewardEmote1=4 WHERE entry=2873;
UPDATE quest_template SET DetailsEmote1=1,CompleteEmote=6,OfferRewardEmote1=1,OfferRewardEmote2=34,OfferRewardEmote3=1,OfferRewardEmoteDelay2=1000 WHERE entry=2874;
UPDATE quest_template SET CompleteEmote=0,OfferRewardEmote1=1 WHERE entry=2875;
UPDATE quest_template SET CompleteEmote=0,OfferRewardEmote1=5,OfferRewardEmote2=1 WHERE entry=2876;
UPDATE quest_template SET CompleteEmote=0 WHERE entry=2878;
UPDATE quest_template SET CompleteEmote=0 WHERE entry=2882;
UPDATE quest_template SET CompleteEmote=0,OfferRewardEmote1=4,OfferRewardEmote2=1 WHERE entry=2922;
UPDATE quest_template SET OfferRewardEmote1=18,OfferRewardEmote2=6 WHERE entry=2923;
UPDATE quest_template SET CompleteEmote=0,OfferRewardEmote1=4,OfferRewardEmote2=2 WHERE entry=2924;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1,CompleteEmote=5,OfferRewardEmote1=1,OfferRewardEmote2=1 WHERE entry=2926;
UPDATE quest_template SET OfferRewardEmote1=1,OfferRewardEmote2=1 WHERE entry=2927;
UPDATE quest_template SET CompleteEmote=0,OfferRewardEmote1=1,OfferRewardEmote2=1 WHERE entry=2928;
UPDATE quest_template SET OfferRewardEmote1=5 WHERE entry=2929;
UPDATE quest_template SET CompleteEmote=0,OfferRewardEmote1=4,OfferRewardEmote2=1,OfferRewardEmote3=2 WHERE entry=2930;
UPDATE quest_template SET CompleteEmote=0 WHERE entry=2945;
UPDATE quest_template SET CompleteEmote=5 WHERE entry=2947;
UPDATE quest_template SET DetailsEmote1=1,CompleteEmote=6,OfferRewardEmote1=4 WHERE entry=2948;
UPDATE quest_template SET CompleteEmote=0 WHERE entry=2951;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1,OfferRewardEmote1=1,OfferRewardEmote2=1 WHERE entry=2962;
UPDATE quest_template SET OfferRewardEmote1=1 WHERE entry=2989;
UPDATE quest_template SET CompleteEmote=0,OfferRewardEmote1=1 WHERE entry=2990;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,OfferRewardEmote1=1,OfferRewardEmote2=1 WHERE entry=2998;
UPDATE quest_template SET DetailsEmote1=4,CompleteEmote=0,OfferRewardEmote1=1 WHERE entry=3022;
UPDATE quest_template SET DetailsEmote1=1,CompleteEmote=0,OfferRewardEmote1=1 WHERE entry=3042;
UPDATE quest_template SET DetailsEmote1=1,CompleteEmote=2,OfferRewardEmote1=1,OfferRewardEmote2=1 WHERE entry=3117;
UPDATE quest_template SET DetailsEmote1=1,CompleteEmote=0 WHERE entry=3161;
UPDATE quest_template SET OfferRewardEmote1=1,OfferRewardEmote2=1,OfferRewardEmote3=1 WHERE entry=3181;
UPDATE quest_template SET CompleteEmote=0 WHERE entry=3182;
UPDATE quest_template SET CompleteEmote=0,OfferRewardEmote1=1,OfferRewardEmote2=1 WHERE entry=3201;
UPDATE quest_template SET DetailsEmote1=6,DetailsEmote2=5 WHERE entry=3362;
UPDATE quest_template SET CompleteEmote=0 WHERE entry=3363;
UPDATE quest_template SET CompleteEmote=0,OfferRewardEmote1=5 WHERE entry=3368;
UPDATE quest_template SET CompleteEmote=0 WHERE entry=3372;
UPDATE quest_template SET CompleteEmote=0,OfferRewardEmote1=2 WHERE entry=3378;
UPDATE quest_template SET OfferRewardEmote1=1,OfferRewardEmote2=1 WHERE entry=3379;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,OfferRewardEmote1=2,OfferRewardEmote2=1 WHERE entry=3382;
UPDATE quest_template SET CompleteEmote=0,OfferRewardEmote1=5,OfferRewardEmote2=1,OfferRewardEmote3=1 WHERE entry=3385;
UPDATE quest_template SET OfferRewardEmote1=4,OfferRewardEmote2=4,OfferRewardEmote3=5 WHERE entry=3402;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmoteDelay1=1000 WHERE entry=3441;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmoteDelay1=2000,DetailsEmoteDelay2=1000,CompleteEmote=0,OfferRewardEmote1=21,OfferRewardEmote2=1,OfferRewardEmote3=1,OfferRewardEmoteDelay1=1000,OfferRewardEmoteDelay2=500 WHERE entry=3442;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmoteDelay1=500,DetailsEmoteDelay2=500,CompleteEmote=0,OfferRewardEmote1=1,OfferRewardEmote2=1 WHERE entry=3443;
UPDATE quest_template SET DetailsEmote1=6,DetailsEmote2=1 WHERE entry=3448;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1 WHERE entry=3449;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1 WHERE entry=3450;
UPDATE quest_template SET DetailsEmote1=6,DetailsEmote2=1,DetailsEmote3=1 WHERE entry=3451;
UPDATE quest_template SET DetailsEmoteDelay1=500,DetailsEmoteDelay2=500,OfferRewardEmote1=1,OfferRewardEmote2=1 WHERE entry=3452;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmoteDelay1=500,OfferRewardEmote1=1,OfferRewardEmote2=1 WHERE entry=3453;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=6 WHERE entry=3461;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmoteDelay1=200,OfferRewardEmote1=1 WHERE entry=3462;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1,OfferRewardEmote1=5,OfferRewardEmote2=5 WHERE entry=3463;
UPDATE quest_template SET DetailsEmote1=1 WHERE entry=3520;
UPDATE quest_template SET OfferRewardEmote1=2 WHERE entry=3521;
UPDATE quest_template SET DetailsEmote1=1 WHERE entry=3522;
UPDATE quest_template SET DetailsEmote1=5,OfferRewardEmote1=21 WHERE entry=3523;
UPDATE quest_template SET DetailsEmote1=1,OfferRewardEmote1=1 WHERE entry=3524;
UPDATE quest_template SET DetailsEmote1=1 WHERE entry=3525;
UPDATE quest_template SET CompleteEmote=0,OfferRewardEmote1=1 WHERE entry=3527;
UPDATE quest_template SET CompleteEmote=0,OfferRewardEmote1=5,OfferRewardEmote2=18 WHERE entry=3566;
UPDATE quest_template SET OfferRewardEmote1=6 WHERE entry=3567;
UPDATE quest_template SET DetailsEmote1=5,DetailsEmote2=1,DetailsEmote3=1,OfferRewardEmote1=11,OfferRewardEmote2=1 WHERE entry=3601;
UPDATE quest_template SET DetailsEmote1=1 WHERE entry=3636;
UPDATE quest_template SET DetailsEmote1=1 WHERE entry=3661;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1 WHERE entry=3701;
UPDATE quest_template SET DetailsEmote1=6,OfferRewardEmote1=6 WHERE entry=3702;
UPDATE quest_template SET CompleteEmote=24,OfferRewardEmote1=4,OfferRewardEmote2=1,OfferRewardEmote3=6 WHERE entry=3741;
UPDATE quest_template SET DetailsEmote1=1 WHERE entry=3763;
UPDATE quest_template SET DetailsEmote1=1,CompleteEmote=4,OfferRewardEmote1=1 WHERE entry=3764;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=5,CompleteEmote=0,OfferRewardEmote1=1 WHERE entry=3783;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1,OfferRewardEmote1=5,OfferRewardEmote2=1,OfferRewardEmote3=1 WHERE entry=3823;
UPDATE quest_template SET DetailsEmote1=5,DetailsEmote2=1,DetailsEmote3=1,DetailsEmote4=1 WHERE entry=3824;
UPDATE quest_template SET CompleteEmote=0,OfferRewardEmote1=1 WHERE entry=3845;
UPDATE quest_template SET DetailsEmote1=1,OfferRewardEmote1=4 WHERE entry=3881;
UPDATE quest_template SET DetailsEmote1=1 WHERE entry=3882;
UPDATE quest_template SET DetailsEmote1=5 WHERE entry=3883;
UPDATE quest_template SET CompleteEmote=0,OfferRewardEmote1=1 WHERE entry=3908;
UPDATE quest_template SET DetailsEmote1=5,DetailsEmote2=1,DetailsEmoteDelay2=200,CompleteEmote=0 WHERE entry=3909;
UPDATE quest_template SET DetailsEmote1=1,CompleteEmote=5,OfferRewardEmote1=1 WHERE entry=4101;
UPDATE quest_template SET OfferRewardEmote1=1 WHERE entry=4103;
UPDATE quest_template SET OfferRewardEmote1=1 WHERE entry=4104;
UPDATE quest_template SET OfferRewardEmote1=1 WHERE entry=4107;
UPDATE quest_template SET CompleteEmote=0 WHERE entry=4116;
UPDATE quest_template SET CompleteEmote=0 WHERE entry=4126;
UPDATE quest_template SET DetailsEmote1=0 WHERE entry=4128;
UPDATE quest_template SET DetailsEmoteDelay3=200 WHERE entry=4141;
UPDATE quest_template SET DetailsEmote1=6,DetailsEmote2=1,OfferRewardEmote1=1 WHERE entry=4142;
UPDATE quest_template SET DetailsEmote1=1 WHERE entry=4143;
UPDATE quest_template SET OfferRewardEmote1=1,OfferRewardEmote2=2 WHERE entry=4161;
UPDATE quest_template SET CompleteEmote=0 WHERE entry=4221;
UPDATE quest_template SET DetailsEmote1=18,DetailsEmote2=1,DetailsEmote3=1 WHERE entry=4243;
UPDATE quest_template SET DetailsEmote1=1,OfferRewardEmote1=1,OfferRewardEmote2=2 WHERE entry=4261;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1,DetailsEmote4=5 WHERE entry=4262;
UPDATE quest_template SET OfferRewardEmote1=6,OfferRewardEmote2=1 WHERE entry=4263;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=5,DetailsEmote3=5,DetailsEmote4=193 WHERE entry=4283;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=5 WHERE entry=4284;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1 WHERE entry=4289;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1 WHERE entry=4290;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1 WHERE entry=4291;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1,CompleteEmote=2 WHERE entry=4292;
UPDATE quest_template SET DetailsEmote1=1 WHERE entry=4296;
UPDATE quest_template SET OfferRewardEmote1=1 WHERE entry=4324;
UPDATE quest_template SET CompleteEmote=0 WHERE entry=4381;
UPDATE quest_template SET CompleteEmote=0 WHERE entry=4382;
UPDATE quest_template SET CompleteEmote=0 WHERE entry=4383;
UPDATE quest_template SET CompleteEmote=0 WHERE entry=4384;
UPDATE quest_template SET CompleteEmote=0 WHERE entry=4385;
UPDATE quest_template SET CompleteEmote=0 WHERE entry=4386;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=2,DetailsEmote3=1 WHERE entry=4421;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,CompleteEmote=0,OfferRewardEmote1=2 WHERE entry=4441;
UPDATE quest_template SET DetailsEmote1=1,OfferRewardEmote1=2 WHERE entry=4442;
UPDATE quest_template SET CompleteEmote=0 WHERE entry=4443;
UPDATE quest_template SET CompleteEmote=0 WHERE entry=4445;
UPDATE quest_template SET CompleteEmote=0 WHERE entry=4449;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,CompleteEmote=6,OfferRewardEmote1=1,OfferRewardEmote2=1 WHERE entry=4450;
UPDATE quest_template SET CompleteEmote=0 WHERE entry=4451;
UPDATE quest_template SET CompleteEmote=0 WHERE entry=4462;
UPDATE quest_template SET CompleteEmote=0 WHERE entry=4464;
UPDATE quest_template SET CompleteEmote=0 WHERE entry=4466;
UPDATE quest_template SET OfferRewardEmote1=1,OfferRewardEmote2=4 WHERE entry=4491;
UPDATE quest_template SET CompleteEmote=0 WHERE entry=4492;
UPDATE quest_template SET DetailsEmote1=1,OfferRewardEmote1=1 WHERE entry=4493;
UPDATE quest_template SET DetailsEmote1=1,OfferRewardEmote1=21 WHERE entry=4496;
UPDATE quest_template SET OfferRewardEmote1=1,OfferRewardEmote2=4 WHERE entry=4501;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,OfferRewardEmote1=4,OfferRewardEmote2=1 WHERE entry=4502;
UPDATE quest_template SET DetailsEmote2=1 WHERE entry=4503;
UPDATE quest_template SET DetailsEmote1=1,OfferRewardEmote1=4 WHERE entry=4507;
UPDATE quest_template SET DetailsEmote1=1,CompleteEmote=5,OfferRewardEmote1=1,OfferRewardEmote2=1,OfferRewardEmote3=5 WHERE entry=4508;
UPDATE quest_template SET DetailsEmote1=4,CompleteEmote=2,OfferRewardEmote1=1 WHERE entry=4510;
UPDATE quest_template SET DetailsEmote1=5,DetailsEmote2=1,DetailsEmote3=1,OfferRewardEmote1=5,OfferRewardEmote2=1,OfferRewardEmote3=1 WHERE entry=4512;
UPDATE quest_template SET DetailsEmote1=5,DetailsEmote2=1,DetailsEmote3=1,OfferRewardEmote1=6,OfferRewardEmote2=4,OfferRewardEmote3=1 WHERE entry=4513;
UPDATE quest_template SET CompleteEmote=0 WHERE entry=4601;
UPDATE quest_template SET DetailsEmote1=1,OfferRewardEmote1=4 WHERE entry=4681;
UPDATE quest_template SET DetailsEmote1=1 WHERE entry=4726;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,OfferRewardEmote1=2,OfferRewardEmote2=1 WHERE entry=4738;
UPDATE quest_template SET DetailsEmote1=1,CompleteEmote=0,OfferRewardEmote1=1,OfferRewardEmote2=2 WHERE entry=4764;
UPDATE quest_template SET DetailsEmote1=1,CompleteEmote=0 WHERE entry=4765;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,CompleteEmote=2,OfferRewardEmote1=4,OfferRewardEmote2=1 WHERE entry=4781;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,OfferRewardEmote1=1,OfferRewardEmote2=1 WHERE entry=4782;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,OfferRewardEmote1=21,OfferRewardEmote2=6 WHERE entry=4783;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1,OfferRewardEmote1=4,OfferRewardEmote2=1 WHERE entry=4784;
UPDATE quest_template SET OfferRewardEmote1=1,OfferRewardEmote2=5 WHERE entry=4785;
UPDATE quest_template SET DetailsEmote1=1,OfferRewardEmote1=1,OfferRewardEmote2=1 WHERE entry=4786;
UPDATE quest_template SET CompleteEmote=0,OfferRewardEmote1=5,OfferRewardEmote2=2 WHERE entry=4787;
UPDATE quest_template SET DetailsEmote1=1,OfferRewardEmote1=1 WHERE entry=4842;
UPDATE quest_template SET DetailsEmote1=3,DetailsEmote2=1 WHERE entry=4861;
UPDATE quest_template SET OfferRewardEmote1=1,OfferRewardEmote2=2 WHERE entry=4864;
UPDATE quest_template SET DetailsEmoteDelay3=3000,OfferRewardEmote1=5,OfferRewardEmote2=6,OfferRewardEmote3=1,OfferRewardEmoteDelay1=500,OfferRewardEmoteDelay2=1500,OfferRewardEmoteDelay3=2500 WHERE entry=4866;
UPDATE quest_template SET DetailsEmote1=1,OfferRewardEmote1=6 WHERE entry=4901;
UPDATE quest_template SET DetailsEmote1=1,OfferRewardEmote1=6 WHERE entry=4902;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,OfferRewardEmote1=1,OfferRewardEmote2=2 WHERE entry=4906;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1,OfferRewardEmote1=4,OfferRewardEmote2=1 WHERE entry=4961;
UPDATE quest_template SET CompleteEmote=6,OfferRewardEmote1=21,OfferRewardEmote2=1 WHERE entry=4963;
UPDATE quest_template SET DetailsEmote1=21,OfferRewardEmote1=6,OfferRewardEmote2=1,OfferRewardEmote3=1 WHERE entry=4968;
UPDATE quest_template SET DetailsEmote1=1 WHERE entry=4971;
UPDATE quest_template SET DetailsEmote1=1 WHERE entry=4972;
UPDATE quest_template SET DetailsEmote1=1 WHERE entry=4973;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,OfferRewardEmote1=1,OfferRewardEmote2=1 WHERE entry=4975;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,CompleteEmote=6,OfferRewardEmote1=21,OfferRewardEmote2=1 WHERE entry=4976;
UPDATE quest_template SET DetailsEmote1=0 WHERE entry=4984;
UPDATE quest_template SET DetailsEmote1=0 WHERE entry=4985;
UPDATE quest_template SET DetailsEmote1=0 WHERE entry=4986;
UPDATE quest_template SET OfferRewardEmote1=1,OfferRewardEmote2=1,OfferRewardEmote3=6 WHERE entry=5002;
UPDATE quest_template SET DetailsEmote1=0 WHERE entry=5021;
UPDATE quest_template SET DetailsEmote1=0 WHERE entry=5022;
UPDATE quest_template SET DetailsEmote1=1 WHERE entry=5048;
UPDATE quest_template SET DetailsEmote1=2 WHERE entry=5050;
UPDATE quest_template SET DetailsEmote1=0 WHERE entry=5051;
UPDATE quest_template SET OfferRewardEmote1=1 WHERE entry=5054;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=2 WHERE entry=5055;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=2,OfferRewardEmote1=2 WHERE entry=5056;
UPDATE quest_template SET OfferRewardEmote1=1,OfferRewardEmote2=1,OfferRewardEmote3=1 WHERE entry=5057;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1,DetailsEmote4=1 WHERE entry=5081;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,OfferRewardEmote1=1,OfferRewardEmote2=6 WHERE entry=5082;
UPDATE quest_template SET CompleteEmote=6,OfferRewardEmote1=5 WHERE entry=5085;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,CompleteEmote=0,OfferRewardEmote1=1 WHERE entry=5086;
UPDATE quest_template SET DetailsEmote1=1,CompleteEmote=0,OfferRewardEmote1=1 WHERE entry=5087;
UPDATE quest_template SET CompleteEmote=6,OfferRewardEmote1=1 WHERE entry=5089;
UPDATE quest_template SET DetailsEmote1=5,OfferRewardEmote1=66 WHERE entry=5090;
UPDATE quest_template SET DetailsEmote1=1 WHERE entry=5092;
UPDATE quest_template SET DetailsEmote1=1 WHERE entry=5097;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1,DetailsEmote4=5 WHERE entry=5102;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1 WHERE entry=5121;
UPDATE quest_template SET CompleteEmote=0 WHERE entry=5122;
UPDATE quest_template SET CompleteEmote=6,OfferRewardEmote1=1 WHERE entry=5123;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=2,CompleteEmote=2,OfferRewardEmote1=1,OfferRewardEmote2=1 WHERE entry=5128;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=20 WHERE entry=5142;
UPDATE quest_template SET DetailsEmote1=0 WHERE entry=5149;
UPDATE quest_template SET DetailsEmote1=0,OfferRewardEmoteDelay2=1000,OfferRewardEmoteDelay3=1000 WHERE entry=5152;
UPDATE quest_template SET DetailsEmote1=1 WHERE entry=5153;
UPDATE quest_template SET DetailsEmote1=1 WHERE entry=5154;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,OfferRewardEmote1=4,OfferRewardEmote2=1,OfferRewardEmote3=1 WHERE entry=5155;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,CompleteEmote=6,OfferRewardEmote1=2,OfferRewardEmote2=1 WHERE entry=5157;
UPDATE quest_template SET DetailsEmote1=1,CompleteEmote=2,OfferRewardEmote1=1,OfferRewardEmote2=1 WHERE entry=5158;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,CompleteEmote=2,OfferRewardEmote1=4,OfferRewardEmote2=1 WHERE entry=5159;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=11,DetailsEmote3=11,CompleteEmote=11,OfferRewardEmote1=11,OfferRewardEmote2=11 WHERE entry=5163;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,IncompleteEmote=1,OfferRewardEmote1=1,OfferRewardEmote2=1 WHERE entry=5165;
UPDATE quest_template SET DetailsEmote1=1 WHERE entry=5168;
UPDATE quest_template SET DetailsEmote1=1 WHERE entry=5181;
UPDATE quest_template SET CompleteEmote=0 WHERE entry=5202;
UPDATE quest_template SET OfferRewardEmote1=1 WHERE entry=5203;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=2 WHERE entry=5204;
UPDATE quest_template SET DetailsEmote1=1 WHERE entry=5206;
UPDATE quest_template SET DetailsEmote1=1 WHERE entry=5210;
UPDATE quest_template SET DetailsEmote1=5,DetailsEmote2=1,IncompleteEmote=5 WHERE entry=5211;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1,DetailsEmote4=1,CompleteEmote=5,OfferRewardEmote1=1,OfferRewardEmote2=1 WHERE entry=5212;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1,DetailsEmote4=1,CompleteEmote=5,OfferRewardEmote1=5,OfferRewardEmote2=1,OfferRewardEmote3=1 WHERE entry=5213;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=5,DetailsEmote4=20,CompleteEmote=5,OfferRewardEmote1=1 WHERE entry=5214;
UPDATE quest_template SET DetailsEmote1=1 WHERE entry=5215;
UPDATE quest_template SET DetailsEmote1=1 WHERE entry=5216;
UPDATE quest_template SET DetailsEmote1=0 WHERE entry=5217;
UPDATE quest_template SET DetailsEmote1=1 WHERE entry=5219;
UPDATE quest_template SET DetailsEmote1=0 WHERE entry=5220;
UPDATE quest_template SET DetailsEmote1=1 WHERE entry=5222;
UPDATE quest_template SET DetailsEmote1=0 WHERE entry=5223;
UPDATE quest_template SET DetailsEmote1=1 WHERE entry=5225;
UPDATE quest_template SET DetailsEmote1=0 WHERE entry=5226;
UPDATE quest_template SET DetailsEmote1=0 WHERE entry=5241;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,OfferRewardEmote1=4,OfferRewardEmote2=1,OfferRewardEmote3=2 WHERE entry=5242;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1,DetailsEmote4=25,OfferRewardEmote1=1,OfferRewardEmote2=1 WHERE entry=5243;
UPDATE quest_template SET CompleteEmote=0 WHERE entry=5245;
UPDATE quest_template SET DetailsEmote1=2,CompleteEmote=0,OfferRewardEmote1=1 WHERE entry=5246;
UPDATE quest_template SET DetailsEmote1=1,CompleteEmote=0,OfferRewardEmote1=1 WHERE entry=5247;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=2 WHERE entry=5248;
UPDATE quest_template SET DetailsEmote1=1,OfferRewardEmote1=1,OfferRewardEmote2=2 WHERE entry=5249;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1,DetailsEmote4=1,IncompleteEmote=5,OfferRewardEmote1=5,OfferRewardEmote2=1,OfferRewardEmote3=1 WHERE entry=5251;
UPDATE quest_template SET CompleteEmote=25,OfferRewardEmote1=5,OfferRewardEmote2=1,OfferRewardEmote3=1,OfferRewardEmote4=25 WHERE entry=5262;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1,CompleteEmote=0,OfferRewardEmote1=1,OfferRewardEmote2=25 WHERE entry=5263;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=5,OfferRewardEmote1=1 WHERE entry=5264;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1,DetailsEmote4=2 WHERE entry=5265;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1,DetailsEmote4=1 WHERE entry=5281;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1,DetailsEmote4=1 WHERE entry=5282;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1,DetailsEmote4=6,OfferRewardEmote1=25,OfferRewardEmote2=1,OfferRewardEmote3=1 WHERE entry=5283;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1,DetailsEmote4=5,OfferRewardEmote1=1,OfferRewardEmote2=25 WHERE entry=5343;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1,CompleteEmote=0 WHERE entry=5344;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1,DetailsEmote4=1,OfferRewardEmote1=1,OfferRewardEmote2=1,OfferRewardEmote3=1 WHERE entry=5382;
UPDATE quest_template SET DetailsEmote1=5,DetailsEmote2=1,DetailsEmote3=1,DetailsEmote4=1,OfferRewardEmote1=1,OfferRewardEmote2=1,OfferRewardEmote3=1,OfferRewardEmote4=25 WHERE entry=5384;
UPDATE quest_template SET CompleteEmote=6 WHERE entry=5385;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1,DetailsEmote4=1,CompleteEmote=0,OfferRewardEmote1=1,OfferRewardEmote2=1,OfferRewardEmote3=1 WHERE entry=5461;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1,DetailsEmote4=25,OfferRewardEmote1=1,OfferRewardEmote2=1 WHERE entry=5462;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=51,DetailsEmote4=25,CompleteEmote=0 WHERE entry=5463;
UPDATE quest_template SET CompleteEmote=0,OfferRewardEmote1=1,OfferRewardEmote2=1 WHERE entry=5464;
UPDATE quest_template SET DetailsEmote1=1,CompleteEmote=6,OfferRewardEmote1=1 WHERE entry=5465;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,OfferRewardEmote1=1,OfferRewardEmote2=4 WHERE entry=5466;
UPDATE quest_template SET DetailsEmote1=5,DetailsEmote2=1 WHERE entry=5501;
UPDATE quest_template SET OfferRewardEmote1=5 WHERE entry=5503;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=66,DetailsEmote3=1 WHERE entry=5504;
UPDATE quest_template SET OfferRewardEmote1=1 WHERE entry=5505;
UPDATE quest_template SET OfferRewardEmote1=4 WHERE entry=5508;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=66,DetailsEmote3=1 WHERE entry=5513;
UPDATE quest_template SET OfferRewardEmote1=5 WHERE entry=5515;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=6,DetailsEmote4=1 WHERE entry=5518;
UPDATE quest_template SET DetailsEmote1=5,DetailsEmote2=1,OfferRewardEmote1=4 WHERE entry=5529;
UPDATE quest_template SET DetailsEmote1=1 WHERE entry=5533;
UPDATE quest_template SET DetailsEmote1=5,DetailsEmote2=6,DetailsEmote3=1,CompleteEmote=6,OfferRewardEmote1=4,OfferRewardEmote2=1 WHERE entry=5534;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,OfferRewardEmote1=1,OfferRewardEmote2=1 WHERE entry=5535;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,OfferRewardEmote1=2,OfferRewardEmote2=1 WHERE entry=5536;
UPDATE quest_template SET DetailsEmote1=1 WHERE entry=5537;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,OfferRewardEmote1=5 WHERE entry=5538;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1 WHERE entry=5561;
UPDATE quest_template SET DetailsEmote1=5,DetailsEmote2=18,DetailsEmote3=20,DetailsEmoteDelay2=1000,DetailsEmoteDelay3=1000 WHERE entry=5601;
UPDATE quest_template SET DetailsEmote1=1 WHERE entry=5721;
UPDATE quest_template SET DetailsEmote1=1 WHERE entry=5762;
UPDATE quest_template SET DetailsEmote1=1,CompleteEmote=6,OfferRewardEmote1=6 WHERE entry=5801;
UPDATE quest_template SET DetailsEmote1=1,OfferRewardEmote1=4 WHERE entry=5803;
UPDATE quest_template SET OfferRewardEmote1=1 WHERE entry=5882;
UPDATE quest_template SET OfferRewardEmote1=1 WHERE entry=5883;
UPDATE quest_template SET OfferRewardEmote1=1 WHERE entry=5886;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1 WHERE entry=5903;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1 WHERE entry=5904;
UPDATE quest_template SET DetailsEmote1=1,OfferRewardEmote1=1 WHERE entry=5921;
UPDATE quest_template SET DetailsEmote1=1,OfferRewardEmote1=1 WHERE entry=5924;
UPDATE quest_template SET DetailsEmote1=1,OfferRewardEmote1=1 WHERE entry=5929;
UPDATE quest_template SET DetailsEmote1=1,OfferRewardEmote1=1 WHERE entry=5931;
UPDATE quest_template SET DetailsEmote1=1 WHERE entry=5941;
UPDATE quest_template SET DetailsEmote1=1,OfferRewardEmote1=4 WHERE entry=6001;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1 WHERE entry=6004;
UPDATE quest_template SET DetailsEmote1=5 WHERE entry=6021;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1 WHERE entry=6023;
UPDATE quest_template SET DetailsEmote1=0 WHERE entry=6024;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1 WHERE entry=6025;
UPDATE quest_template SET OfferRewardEmote1=1,OfferRewardEmote2=1 WHERE entry=6026;
UPDATE quest_template SET DetailsEmote1=1,CompleteEmote=66,OfferRewardEmote1=1 WHERE entry=6028;
UPDATE quest_template SET DetailsEmote1=1,CompleteEmote=2,OfferRewardEmote1=1 WHERE entry=6030;
UPDATE quest_template SET CompleteEmote=0 WHERE entry=6032;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1,DetailsEmote4=5,IncompleteEmote=1 WHERE entry=6041;
UPDATE quest_template SET DetailsEmote1=1,OfferRewardEmote1=1 WHERE entry=6141;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1,DetailsEmote4=1,DetailsEmoteDelay1=1000,DetailsEmoteDelay2=2000,DetailsEmoteDelay3=3000,DetailsEmoteDelay4=4000,OfferRewardEmoteDelay1=1000,OfferRewardEmoteDelay2=2000 WHERE entry=6182;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1,DetailsEmote4=6,DetailsEmoteDelay1=1000,DetailsEmoteDelay2=2000,DetailsEmoteDelay3=3000,DetailsEmoteDelay4=4000 WHERE entry=6183;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1,DetailsEmote4=1,DetailsEmoteDelay1=1000,DetailsEmoteDelay2=2000,DetailsEmoteDelay3=3000,DetailsEmoteDelay4=4000,OfferRewardEmoteDelay1=1000,OfferRewardEmoteDelay2=1500 WHERE entry=6184;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1,DetailsEmote4=1 WHERE entry=6185;
UPDATE quest_template SET DetailsEmote1=33,DetailsEmote2=1,DetailsEmote3=1,DetailsEmote4=25,DetailsEmoteDelay1=1000,DetailsEmoteDelay2=2000,DetailsEmoteDelay3=3000,DetailsEmoteDelay4=4000,OfferRewardEmote1=5,OfferRewardEmote2=35,OfferRewardEmote3=6,OfferRewardEmote4=274,OfferRewardEmoteDelay1=1000,OfferRewardEmoteDelay2=1500,OfferRewardEmoteDelay3=2500,OfferRewardEmoteDelay4=3500 WHERE entry=6186;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1,DetailsEmote4=25,DetailsEmoteDelay1=1000,DetailsEmoteDelay2=2000,DetailsEmoteDelay3=3000,DetailsEmoteDelay4=3500 WHERE entry=6187;
UPDATE quest_template SET DetailsEmote1=1 WHERE entry=6341;
UPDATE quest_template SET DetailsEmote1=0 WHERE entry=6389;
UPDATE quest_template SET OfferRewardEmote1=3,OfferRewardEmote2=1 WHERE entry=6603;
UPDATE quest_template SET DetailsEmote1=6,DetailsEmote2=1,OfferRewardEmote1=1 WHERE entry=6604;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=5,DetailsEmote4=1,CompleteEmote=6,OfferRewardEmote1=5,OfferRewardEmote2=1,OfferRewardEmoteDelay2=1000 WHERE entry=6607;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1,DetailsEmote4=1,OfferRewardEmote1=1,OfferRewardEmote2=2 WHERE entry=6624;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=5 WHERE entry=6625;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,OfferRewardEmote1=1,OfferRewardEmote2=1 WHERE entry=6626;
UPDATE quest_template SET CompleteEmote=0 WHERE entry=7066;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1 WHERE entry=7070;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1,DetailsEmote4=1,DetailsEmoteDelay1=500,DetailsEmoteDelay2=1000,DetailsEmoteDelay3=1500,DetailsEmoteDelay4=2000,OfferRewardEmote1=1,OfferRewardEmote2=1,OfferRewardEmote3=2,OfferRewardEmoteDelay1=500,OfferRewardEmoteDelay2=1000,OfferRewardEmoteDelay3=1500 WHERE entry=7441;
UPDATE quest_template SET DetailsEmote1=6,DetailsEmote2=1,DetailsEmote3=1,DetailsEmote4=2,DetailsEmoteDelay1=500,DetailsEmoteDelay2=1000,DetailsEmoteDelay3=1500,DetailsEmoteDelay4=2000,OfferRewardEmote1=21 WHERE entry=7461;
UPDATE quest_template SET CompleteEmote=5,OfferRewardEmote1=1,OfferRewardEmote2=1,OfferRewardEmote3=5 WHERE entry=7495;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=4,OfferRewardEmote1=1,OfferRewardEmote2=1,OfferRewardEmote3=1 WHERE entry=7496;
UPDATE quest_template SET OfferRewardEmote1=1,OfferRewardEmote2=1,OfferRewardEmote3=1 WHERE entry=7497;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1,DetailsEmote4=1,OfferRewardEmote1=1 WHERE entry=7601;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1,CompleteEmote=0 WHERE entry=7602;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1,DetailsEmote4=1,CompleteEmote=0,OfferRewardEmote1=1,OfferRewardEmote2=1,OfferRewardEmote3=5 WHERE entry=7603;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1 WHERE entry=7637;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1 WHERE entry=7638;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1 WHERE entry=7641;
UPDATE quest_template SET CompleteEmote=0,OfferRewardEmote1=1 WHERE entry=7650;
UPDATE quest_template SET OfferRewardEmote1=1,OfferRewardEmote2=1,OfferRewardEmote3=1 WHERE entry=7652;
UPDATE quest_template SET OfferRewardEmote1=1 WHERE entry=7653;
UPDATE quest_template SET CompleteEmote=11 WHERE entry=7654;
UPDATE quest_template SET CompleteEmote=0,OfferRewardEmote1=1 WHERE entry=7655;
UPDATE quest_template SET OfferRewardEmote1=1 WHERE entry=7656;
UPDATE quest_template SET OfferRewardEmote1=1 WHERE entry=7657;
UPDATE quest_template SET OfferRewardEmote1=1 WHERE entry=7659;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1 WHERE entry=7670;
UPDATE quest_template SET OfferRewardEmote1=1,OfferRewardEmote2=1 WHERE entry=7701;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1,DetailsEmote4=1,CompleteEmote=6 WHERE entry=7722;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1,DetailsEmote4=25,OfferRewardEmote1=1,OfferRewardEmote2=21 WHERE entry=7723;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1,OfferRewardEmote1=1,OfferRewardEmote2=5 WHERE entry=7724;
UPDATE quest_template SET OfferRewardEmote1=1 WHERE entry=7727;
UPDATE quest_template SET OfferRewardEmote1=1,OfferRewardEmote2=21 WHERE entry=7728;
UPDATE quest_template SET IncompleteEmote=1 WHERE entry=7729;
UPDATE quest_template SET OfferRewardEmote1=5 WHERE entry=7737;
UPDATE quest_template SET OfferRewardEmote1=4 WHERE entry=7791;
UPDATE quest_template SET OfferRewardEmote1=1 WHERE entry=7792;
UPDATE quest_template SET OfferRewardEmote1=4 WHERE entry=7793;
UPDATE quest_template SET OfferRewardEmote1=4 WHERE entry=7794;
UPDATE quest_template SET OfferRewardEmote1=4,OfferRewardEmote2=1 WHERE entry=7795;
UPDATE quest_template SET OfferRewardEmote1=1 WHERE entry=7798;
UPDATE quest_template SET OfferRewardEmote1=4 WHERE entry=7799;
UPDATE quest_template SET OfferRewardEmote1=4,OfferRewardEmote2=1 WHERE entry=7800;
UPDATE quest_template SET OfferRewardEmote1=1,OfferRewardEmote2=1 WHERE entry=7801;
UPDATE quest_template SET OfferRewardEmote1=4 WHERE entry=7807;
UPDATE quest_template SET OfferRewardEmote1=4 WHERE entry=7808;
UPDATE quest_template SET OfferRewardEmote1=4 WHERE entry=7809;
UPDATE quest_template SET OfferRewardEmote1=4,OfferRewardEmote2=1 WHERE entry=7811;
UPDATE quest_template SET OfferRewardEmote1=1 WHERE entry=7812;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=2 WHERE entry=7877;
UPDATE quest_template SET DetailsEmote1=1 WHERE entry=8151;
UPDATE quest_template SET DetailsEmote1=1 WHERE entry=8167;
UPDATE quest_template SET CompleteEmote=0 WHERE entry=8194;
UPDATE quest_template SET OfferRewardEmote1=1 WHERE entry=8242;
UPDATE quest_template SET DetailsEmote1=5 WHERE entry=8275;
UPDATE quest_template SET DetailsEmote1=1,CompleteEmote=6,OfferRewardEmote1=2 WHERE entry=8318;
UPDATE quest_template SET DetailsEmote1=1,CompleteEmote=6,OfferRewardEmote1=1 WHERE entry=8365;
UPDATE quest_template SET DetailsEmote1=5,OfferRewardEmote1=5,OfferRewardEmote2=6 WHERE entry=8366;
UPDATE quest_template SET DetailsEmote1=1,CompleteEmote=6,OfferRewardEmote1=1 WHERE entry=8414;
UPDATE quest_template SET DetailsEmote1=1,OfferRewardEmote1=1 WHERE entry=8415;
UPDATE quest_template SET DetailsEmote1=1,CompleteEmote=6,OfferRewardEmote1=1 WHERE entry=8416;
UPDATE quest_template SET DetailsEmote1=1,CompleteEmote=0 WHERE entry=8418;
UPDATE quest_template SET DetailsEmote1=1,CompleteEmote=6,OfferRewardEmote1=1 WHERE entry=8419;
UPDATE quest_template SET DetailsEmote1=1,CompleteEmote=6,OfferRewardEmote1=1 WHERE entry=8421;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,CompleteEmote=6 WHERE entry=8422;
UPDATE quest_template SET OfferRewardEmote1=2 WHERE entry=8460;
UPDATE quest_template SET DetailsEmote1=1,OfferRewardEmote1=1,OfferRewardEmote2=2 WHERE entry=8462;
UPDATE quest_template SET OfferRewardEmote1=1 WHERE entry=8647;
UPDATE quest_template SET OfferRewardEmote1=1 WHERE entry=8649;
UPDATE quest_template SET OfferRewardEmote1=1 WHERE entry=8653;
UPDATE quest_template SET OfferRewardEmote1=1 WHERE entry=8675;
UPDATE quest_template SET OfferRewardEmote1=1 WHERE entry=8684;
UPDATE quest_template SET OfferRewardEmote1=1 WHERE entry=8718;
UPDATE quest_template SET OfferRewardEmote1=1 WHERE entry=8721;
UPDATE quest_template SET OfferRewardEmote1=1 WHERE entry=8725;
UPDATE quest_template SET CompleteEmote=1 WHERE entry=8836;
UPDATE quest_template SET CompleteEmote=1 WHERE entry=8837;
UPDATE quest_template SET OfferRewardEmote1=1 WHERE entry=8866;
UPDATE quest_template SET OfferRewardEmote1=2 WHERE entry=8868;
UPDATE quest_template SET CompleteEmote=0,OfferRewardEmote1=17 WHERE entry=8897;
UPDATE quest_template SET OfferRewardEmote1=1 WHERE entry=8898;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=24,DetailsEmote3=1,CompleteEmote=6,OfferRewardEmote1=1,OfferRewardEmote2=22 WHERE entry=8903;
UPDATE quest_template SET OfferRewardEmote1=1 WHERE entry=8993;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1,DetailsEmote4=1 WHERE entry=9023;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=6,DetailsEmote3=1,CompleteEmote=6,OfferRewardEmote1=1,OfferRewardEmote2=1 WHERE entry=9024;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,OfferRewardEmote1=1 WHERE entry=9025;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1 WHERE entry=9026;
UPDATE quest_template SET DetailsEmote1=6,DetailsEmote2=1 WHERE entry=9027;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1 WHERE entry=9033;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1,DetailsEmote4=1 WHERE entry=9121;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1,DetailsEmote4=1 WHERE entry=9122;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1 WHERE entry=9124;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1,DetailsEmote4=1 WHERE entry=9126;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=6,DetailsEmote3=1,DetailsEmote4=1 WHERE entry=9128;
UPDATE quest_template SET DetailsEmote1=6,DetailsEmote2=1,DetailsEmote3=1,DetailsEmote4=25 WHERE entry=9131;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1,DetailsEmote4=1 WHERE entry=9136;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1,DetailsEmote4=1 WHERE entry=9141;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=6,DetailsEmote3=1,DetailsEmote4=1 WHERE entry=9221;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=6,DetailsEmote3=1,DetailsEmote4=1 WHERE entry=9226;
UPDATE quest_template SET IncompleteEmote=6 WHERE entry=9355;
UPDATE quest_template SET DetailsEmote1=1 WHERE entry=9383;
UPDATE quest_template SET DetailsEmote1=1 WHERE entry=9385;
UPDATE quest_template SET DetailsEmote1=0 WHERE entry=9390;
UPDATE quest_template SET DetailsEmote1=0 WHERE entry=9398;
UPDATE quest_template SET DetailsEmote1=0 WHERE entry=9399;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=11 WHERE entry=9415;
UPDATE quest_template SET DetailsEmote1=0 WHERE entry=9418;
UPDATE quest_template SET DetailsEmote1=0 WHERE entry=9420;
UPDATE quest_template SET DetailsEmote1=0,OfferRewardEmoteDelay1=500 WHERE entry=9423;
UPDATE quest_template SET DetailsEmote1=0,DetailsEmote2=0,DetailsEmoteDelay1=500 WHERE entry=9424;
UPDATE quest_template SET DetailsEmote1=0 WHERE entry=9427;
UPDATE quest_template SET DetailsEmote1=0 WHERE entry=9430;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=6,DetailsEmote3=0,DetailsEmoteDelay2=1000,IncompleteEmote=6,OfferRewardEmoteDelay2=1000 WHERE entry=9446;
UPDATE quest_template SET DetailsEmote1=5,DetailsEmote2=1,DetailsEmote3=1,DetailsEmoteDelay2=1000,DetailsEmoteDelay3=1000,OfferRewardEmote1=1,OfferRewardEmote2=1,OfferRewardEmoteDelay2=1000 WHERE entry=9448;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1,DetailsEmote4=0,DetailsEmoteDelay2=1000,DetailsEmoteDelay3=1000 WHERE entry=9474;
UPDATE quest_template SET DetailsEmote1=0 WHERE entry=9490;
UPDATE quest_template SET DetailsEmote1=0 WHERE entry=9543;
UPDATE quest_template SET DetailsEmote1=0 WHERE entry=9545;
UPDATE quest_template SET DetailsEmote1=0 WHERE entry=9563;
UPDATE quest_template SET OfferRewardEmoteDelay2=1000 WHERE entry=9575;
UPDATE quest_template SET DetailsEmote1=0,OfferRewardEmoteDelay2=1000,OfferRewardEmoteDelay3=1000,OfferRewardEmoteDelay4=1000 WHERE entry=9587;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=6,DetailsEmote4=0,DetailsEmoteDelay2=1000,DetailsEmoteDelay3=1000 WHERE entry=9589;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=6,DetailsEmote3=0,DetailsEmoteDelay2=1000 WHERE entry=9607;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1,DetailsEmoteDelay2=1000,DetailsEmoteDelay3=1000,OfferRewardEmote1=2,OfferRewardEmote2=6,OfferRewardEmoteDelay2=1000 WHERE entry=9610;
UPDATE quest_template SET DetailsEmote1=66,DetailsEmote2=1,DetailsEmote3=1,OfferRewardEmote1=1,OfferRewardEmote2=1 WHERE entry=9664;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=0,DetailsEmoteDelay2=1000 WHERE entry=9697;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=0,DetailsEmoteDelay2=1000 WHERE entry=9701;
UPDATE quest_template SET DetailsEmote1=6,DetailsEmote2=1,DetailsEmote3=1,DetailsEmote4=0,DetailsEmoteDelay2=1000,DetailsEmoteDelay3=1000,OfferRewardEmoteDelay2=1000 WHERE entry=9702;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=6,DetailsEmote4=0,DetailsEmoteDelay2=1000,DetailsEmoteDelay3=1000 WHERE entry=9708;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1,DetailsEmote4=0,DetailsEmoteDelay2=1000,DetailsEmoteDelay3=1000,CompleteEmote=6 WHERE entry=9709;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1,DetailsEmote4=0,DetailsEmoteDelay2=1000,DetailsEmoteDelay3=1000 WHERE entry=9715;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=0,DetailsEmoteDelay2=1000 WHERE entry=9717;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=6,DetailsEmote4=0,DetailsEmoteDelay2=1000,DetailsEmoteDelay3=1000 WHERE entry=9719;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=0,DetailsEmoteDelay2=1000 WHERE entry=9724;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=0,DetailsEmoteDelay2=1000,IncompleteEmote=6,OfferRewardEmoteDelay2=1000 WHERE entry=9726;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=0,DetailsEmoteDelay2=1000 WHERE entry=9727;
UPDATE quest_template SET DetailsEmote1=0 WHERE entry=9731;
UPDATE quest_template SET DetailsEmoteDelay2=1000 WHERE entry=9732;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1,DetailsEmote4=0,DetailsEmoteDelay2=1000,DetailsEmoteDelay3=1000 WHERE entry=9738;
UPDATE quest_template SET DetailsEmote1=0 WHERE entry=9739;
UPDATE quest_template SET CompleteEmote=0 WHERE entry=9742;
UPDATE quest_template SET DetailsEmote1=0 WHERE entry=9743;
UPDATE quest_template SET DetailsEmote1=0 WHERE entry=9752;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1 WHERE entry=9776;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1 WHERE entry=9777;
UPDATE quest_template SET DetailsEmote1=0 WHERE entry=9778;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1 WHERE entry=9780;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1 WHERE entry=9781;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1 WHERE entry=9782;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1 WHERE entry=9783;
UPDATE quest_template SET DetailsEmote1=0 WHERE entry=9785;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1 WHERE entry=9786;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1 WHERE entry=9787;
UPDATE quest_template SET DetailsEmote1=0 WHERE entry=9788;
UPDATE quest_template SET DetailsEmote1=6,DetailsEmote2=1,DetailsEmote3=11,DetailsEmote4=0,DetailsEmoteDelay2=1000,DetailsEmoteDelay3=1000,OfferRewardEmote1=1 WHERE entry=9789;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1 WHERE entry=9790;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1 WHERE entry=9791;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1 WHERE entry=9792;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1 WHERE entry=9793;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1,OfferRewardEmote1=1,OfferRewardEmote2=11,OfferRewardEmote3=11 WHERE entry=9794;
UPDATE quest_template SET DetailsEmote1=0 WHERE entry=9800;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1,OfferRewardEmote1=1,OfferRewardEmote2=1,OfferRewardEmote3=1 WHERE entry=9801;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1,OfferRewardEmote1=1,OfferRewardEmote2=1,OfferRewardEmote3=1 WHERE entry=9803;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1 WHERE entry=9804;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1,DetailsEmote4=5 WHERE entry=9805;
UPDATE quest_template SET DetailsEmote1=0 WHERE entry=9806;
UPDATE quest_template SET CompleteEmote=0 WHERE entry=9807;
UPDATE quest_template SET DetailsEmote1=0 WHERE entry=9810;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1 WHERE entry=9815;
UPDATE quest_template SET DetailsEmote1=0 WHERE entry=9819;
UPDATE quest_template SET DetailsEmote1=0 WHERE entry=9821;
UPDATE quest_template SET DetailsEmote1=0 WHERE entry=9827;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1 WHERE entry=9830;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1 WHERE entry=9833;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1 WHERE entry=9834;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1,IncompleteEmote=1 WHERE entry=9835;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1,OfferRewardEmote1=1,OfferRewardEmote2=1,OfferRewardEmote3=1 WHERE entry=9839;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1 WHERE entry=9848;
UPDATE quest_template SET DetailsEmote1=0 WHERE entry=9849;
UPDATE quest_template SET DetailsEmote1=1,OfferRewardEmote1=1 WHERE entry=9850;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmoteDelay2=1000,OfferRewardEmote1=4 WHERE entry=9851;
UPDATE quest_template SET DetailsEmote1=5,DetailsEmote2=1,DetailsEmote3=6,DetailsEmoteDelay2=1000,DetailsEmoteDelay3=1000,CompleteEmote=1,OfferRewardEmote1=4,OfferRewardEmote2=1,OfferRewardEmote3=2,OfferRewardEmoteDelay2=1000,OfferRewardEmoteDelay3=1000 WHERE entry=9852;
UPDATE quest_template SET DetailsEmote1=0 WHERE entry=9853;
UPDATE quest_template SET DetailsEmote1=6,DetailsEmote2=1,DetailsEmote3=1,DetailsEmote4=0,DetailsEmoteDelay2=1000,DetailsEmoteDelay3=1000,OfferRewardEmoteDelay2=1000 WHERE entry=9854;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=0,DetailsEmoteDelay2=1000,OfferRewardEmote1=1 WHERE entry=9855;
UPDATE quest_template SET DetailsEmote1=1,CompleteEmote=6,OfferRewardEmote1=1,OfferRewardEmote2=2,OfferRewardEmoteDelay2=1000 WHERE entry=9856;
UPDATE quest_template SET DetailsEmote1=0 WHERE entry=9857;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1,DetailsEmote4=1,OfferRewardEmote1=1,OfferRewardEmote2=1,OfferRewardEmote3=1 WHERE entry=9869;
UPDATE quest_template SET CompleteEmote=6,OfferRewardEmote1=1,OfferRewardEmote2=5 WHERE entry=9871;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1,OfferRewardEmote1=6,OfferRewardEmote2=1,OfferRewardEmote3=1 WHERE entry=9873;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1,DetailsEmote4=1,OfferRewardEmote1=1,OfferRewardEmote2=1,OfferRewardEmote3=1 WHERE entry=9874;
UPDATE quest_template SET DetailsEmote1=0 WHERE entry=9875;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1,DetailsEmote4=25,OfferRewardEmote1=1,OfferRewardEmote2=1,OfferRewardEmote3=1 WHERE entry=9878;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1,DetailsEmote4=1,OfferRewardEmote1=1,OfferRewardEmote2=1,OfferRewardEmote3=274 WHERE entry=9879;
UPDATE quest_template SET DetailsEmote1=0 WHERE entry=9882;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1 WHERE entry=9894;
UPDATE quest_template SET DetailsEmote1=5,DetailsEmote2=1,DetailsEmote3=1 WHERE entry=9896;
UPDATE quest_template SET DetailsEmote1=1 WHERE entry=9900;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1 WHERE entry=9901;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1 WHERE entry=9902;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1 WHERE entry=9905;
UPDATE quest_template SET DetailsEmote1=0 WHERE entry=9912;
UPDATE quest_template SET DetailsEmote1=1,OfferRewardEmote1=1 WHERE entry=9913;
UPDATE quest_template SET DetailsEmote1=0 WHERE entry=9914;
UPDATE quest_template SET DetailsEmote1=6,DetailsEmote2=1,DetailsEmote3=25,CompleteEmote=6,OfferRewardEmote1=1,OfferRewardEmote2=1,OfferRewardEmote3=5 WHERE entry=9917;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1,DetailsEmote4=1,OfferRewardEmote1=6,OfferRewardEmote2=1 WHERE entry=9918;
UPDATE quest_template SET DetailsEmote1=0 WHERE entry=9919;
UPDATE quest_template SET DetailsEmote1=5,DetailsEmote2=1,OfferRewardEmote1=1,OfferRewardEmote2=1 WHERE entry=9920;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1,DetailsEmote4=5,OfferRewardEmote1=1,OfferRewardEmote2=6,OfferRewardEmote3=1,OfferRewardEmote4=5 WHERE entry=9921;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1 WHERE entry=9922;
UPDATE quest_template SET DetailsEmote1=5,DetailsEmote2=1,OfferRewardEmote1=1,OfferRewardEmote2=1 WHERE entry=9923;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1,OfferRewardEmote1=1 WHERE entry=9924;
UPDATE quest_template SET DetailsEmote1=1 WHERE entry=9925;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1,CompleteEmote=6,OfferRewardEmote1=6,OfferRewardEmote2=1 WHERE entry=9927;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,CompleteEmote=5,OfferRewardEmote1=5,OfferRewardEmote2=1 WHERE entry=9928;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1,DetailsEmote4=1,CompleteEmote=0,OfferRewardEmote1=1,OfferRewardEmote2=1 WHERE entry=9931;
UPDATE quest_template SET CompleteEmote=6,OfferRewardEmote1=1,OfferRewardEmote2=1 WHERE entry=9932;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1,DetailsEmote4=2,CompleteEmote=6 WHERE entry=9933;
UPDATE quest_template SET DetailsEmote1=0,IncompleteEmote=6 WHERE entry=9936;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1 WHERE entry=9938;
UPDATE quest_template SET DetailsEmote1=0 WHERE entry=9940;
UPDATE quest_template SET DetailsEmote1=5,DetailsEmote2=1,DetailsEmote3=5,DetailsEmote4=0,DetailsEmoteDelay2=1000,DetailsEmoteDelay3=1000 WHERE entry=9951;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1,DetailsEmote4=1,OfferRewardEmote1=1,OfferRewardEmote2=1 WHERE entry=9954;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1 WHERE entry=9955;
UPDATE quest_template SET CompleteEmote=0,OfferRewardEmote1=21,OfferRewardEmote2=5 WHERE entry=9956;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=0,DetailsEmoteDelay2=1000 WHERE entry=9957;
UPDATE quest_template SET DetailsEmote1=6,DetailsEmote2=1,DetailsEmote3=1,DetailsEmote4=1 WHERE entry=9962;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1,DetailsEmote4=1 WHERE entry=9967;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1,DetailsEmote4=0,DetailsEmoteDelay2=1000,DetailsEmoteDelay3=1000 WHERE entry=9968;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1 WHERE entry=9970;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1,DetailsEmote4=0,DetailsEmoteDelay2=1000,DetailsEmoteDelay3=1000 WHERE entry=9971;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1 WHERE entry=9972;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=6,DetailsEmote4=1 WHERE entry=9973;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1 WHERE entry=9977;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1,DetailsEmote4=0,DetailsEmoteDelay2=1000,DetailsEmoteDelay3=1000,OfferRewardEmoteDelay2=1000 WHERE entry=9978;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=0,DetailsEmoteDelay2=1000 WHERE entry=9979;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1,DetailsEmote4=1,OfferRewardEmote1=6,OfferRewardEmote2=1 WHERE entry=9982;
UPDATE quest_template SET DetailsEmote1=5,DetailsEmote2=1,DetailsEmote3=1,OfferRewardEmote1=1,OfferRewardEmote2=1,OfferRewardEmote3=1 WHERE entry=9986;
UPDATE quest_template SET CompleteEmote=6,OfferRewardEmote1=5 WHERE entry=9990;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1,DetailsEmote4=1,IncompleteEmote=6,OfferRewardEmote1=5,OfferRewardEmote2=1 WHERE entry=9991;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1,OfferRewardEmote1=1,OfferRewardEmote2=1,OfferRewardEmote3=1 WHERE entry=9992;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmoteDelay2=1000,CompleteEmote=6,OfferRewardEmote1=1,OfferRewardEmote2=1,OfferRewardEmoteDelay2=1000 WHERE entry=9994;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1,DetailsEmoteDelay2=1000,DetailsEmoteDelay3=1000,OfferRewardEmote1=1,OfferRewardEmote2=1,OfferRewardEmoteDelay2=1000 WHERE entry=9996;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1,OfferRewardEmote1=1,OfferRewardEmote2=1,OfferRewardEmote3=1 WHERE entry=9998;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1,OfferRewardEmote1=1,OfferRewardEmote2=1,OfferRewardEmote3=1 WHERE entry=9999;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1,DetailsEmote4=1,CompleteEmote=5,OfferRewardEmote1=1,OfferRewardEmote2=1 WHERE entry=10001;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1,OfferRewardEmote1=1,OfferRewardEmote2=1,OfferRewardEmote3=1 WHERE entry=10002;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1,CompleteEmote=1,OfferRewardEmote1=5,OfferRewardEmote2=1 WHERE entry=10004;
UPDATE quest_template SET DetailsEmote1=1,OfferRewardEmote1=6,OfferRewardEmote2=1,OfferRewardEmote3=1,OfferRewardEmoteDelay2=1000,OfferRewardEmoteDelay3=1000 WHERE entry=10005;
UPDATE quest_template SET DetailsEmote1=274,DetailsEmote2=1,DetailsEmote3=1,OfferRewardEmote1=1,OfferRewardEmote2=1,OfferRewardEmote3=1 WHERE entry=10007;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1 WHERE entry=10009;
UPDATE quest_template SET OfferRewardEmote1=5 WHERE entry=10010;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1,DetailsEmote4=1,OfferRewardEmote1=5,OfferRewardEmote2=4 WHERE entry=10011;
UPDATE quest_template SET OfferRewardEmote1=1,OfferRewardEmote2=1,OfferRewardEmote3=1 WHERE entry=10012;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1,OfferRewardEmote1=1,OfferRewardEmote2=1,OfferRewardEmote3=1 WHERE entry=10016;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1,OfferRewardEmote1=2,OfferRewardEmote2=1,OfferRewardEmote3=1 WHERE entry=10022;
UPDATE quest_template SET DetailsEmote1=24,DetailsEmote2=1,DetailsEmote3=1,OfferRewardEmote1=273,OfferRewardEmote2=1,OfferRewardEmote3=1 WHERE entry=10026;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1,OfferRewardEmote1=1,OfferRewardEmote2=1,OfferRewardEmote3=1 WHERE entry=10028;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmoteDelay2=1000,CompleteEmote=6,OfferRewardEmote1=1,OfferRewardEmote2=1,OfferRewardEmoteDelay2=1000 WHERE entry=10030;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=6,DetailsEmoteDelay2=1000,DetailsEmoteDelay3=1000,OfferRewardEmote1=1,OfferRewardEmote2=2,OfferRewardEmoteDelay2=1000 WHERE entry=10031;
UPDATE quest_template SET DetailsEmote1=0,OfferRewardEmote1=1,OfferRewardEmote2=1,OfferRewardEmoteDelay2=1000 WHERE entry=10033;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmoteDelay2=1000,CompleteEmote=6,OfferRewardEmote1=21,OfferRewardEmote2=1,OfferRewardEmoteDelay2=1000 WHERE entry=10035;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1,OfferRewardEmote1=1,OfferRewardEmote2=1,OfferRewardEmote3=1 WHERE entry=10037;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=25,DetailsEmote3=1,DetailsEmoteDelay2=1000,DetailsEmoteDelay3=1000,OfferRewardEmote1=5 WHERE entry=10038;
UPDATE quest_template SET DetailsEmote1=6,DetailsEmote2=1,DetailsEmote3=1,DetailsEmoteDelay2=1000,DetailsEmoteDelay3=1000,OfferRewardEmote1=6 WHERE entry=10040;
UPDATE quest_template SET DetailsEmote1=5,DetailsEmote2=1,DetailsEmote3=1,DetailsEmoteDelay2=1000,DetailsEmoteDelay3=1000,OfferRewardEmote1=5,OfferRewardEmote2=1,OfferRewardEmote3=1,OfferRewardEmoteDelay2=1000,OfferRewardEmoteDelay3=1000 WHERE entry=10042;
UPDATE quest_template SET IncompleteEmote=1 WHERE entry=10047;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1,OfferRewardEmote1=1 WHERE entry=10076;
UPDATE quest_template SET OfferRewardEmote1=1,OfferRewardEmote2=1 WHERE entry=10077;
UPDATE quest_template SET DetailsEmote1=5,DetailsEmote2=1,DetailsEmote3=1,DetailsEmoteDelay2=1000,DetailsEmoteDelay3=1000,CompleteEmote=6,OfferRewardEmote1=273,OfferRewardEmote2=1,OfferRewardEmote3=1,OfferRewardEmoteDelay2=1000,OfferRewardEmoteDelay3=1000 WHERE entry=10091;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1,DetailsEmoteDelay2=1000,DetailsEmoteDelay3=1000 WHERE entry=10094;
UPDATE quest_template SET OfferRewardEmote1=5,OfferRewardEmote2=1,OfferRewardEmote3=2,OfferRewardEmoteDelay2=1000,OfferRewardEmoteDelay3=1000 WHERE entry=10095;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=6,DetailsEmote4=0,DetailsEmoteDelay3=1000 WHERE entry=10096;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1 WHERE entry=10097;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1 WHERE entry=10098;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1,OfferRewardEmote1=1,OfferRewardEmote2=6 WHERE entry=10108;
UPDATE quest_template SET DetailsEmote1=6,DetailsEmote2=1,DetailsEmote3=1,DetailsEmote4=4 WHERE entry=10109;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,CompleteEmote=5,OfferRewardEmote1=6,OfferRewardEmote2=1 WHERE entry=10111;
UPDATE quest_template SET DetailsEmote1=0,CompleteEmote=0 WHERE entry=10112;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1,DetailsEmote4=1,OfferRewardEmote1=1,OfferRewardEmote2=1 WHERE entry=10113;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1 WHERE entry=10115;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1 WHERE entry=10116;
UPDATE quest_template SET IncompleteEmote=6 WHERE entry=10132;
UPDATE quest_template SET IncompleteEmote=1 WHERE entry=10142;
UPDATE quest_template SET IncompleteEmote=1 WHERE entry=10144;
UPDATE quest_template SET OfferRewardEmoteDelay2=1000 WHERE entry=10159;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1,DetailsEmote4=1 WHERE entry=10165;
UPDATE quest_template SET DetailsEmote1=15,DetailsEmote2=1,DetailsEmote3=1,DetailsEmote4=18,OfferRewardEmote1=1 WHERE entry=10178;
UPDATE quest_template SET OfferRewardEmote1=1,OfferRewardEmote2=1 WHERE entry=10180;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1,DetailsEmote4=1 WHERE entry=10218;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1,DetailsEmoteDelay2=1000,DetailsEmoteDelay3=1000 WHERE entry=10226;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1 WHERE entry=10227;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1 WHERE entry=10228;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1,DetailsEmote4=1,OfferRewardEmote1=5,OfferRewardEmote2=1 WHERE entry=10231;
UPDATE quest_template SET DetailsEmote1=1,CompleteEmote=0,OfferRewardEmote1=4,OfferRewardEmote2=1,OfferRewardEmoteDelay1=2000,OfferRewardEmoteDelay2=4000 WHERE entry=10236;
UPDATE quest_template SET DetailsEmote1=1,OfferRewardEmote1=1,OfferRewardEmoteDelay1=4000 WHERE entry=10238;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1,DetailsEmote4=1,OfferRewardEmote1=1,OfferRewardEmote2=1,OfferRewardEmote3=1 WHERE entry=10251;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1,DetailsEmote4=1 WHERE entry=10252;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1 WHERE entry=10255;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1,DetailsEmoteDelay2=1000,DetailsEmoteDelay3=1000,CompleteEmote=1,OfferRewardEmote1=1 WHERE entry=10275;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1,DetailsEmoteDelay2=1000,DetailsEmoteDelay3=1000,CompleteEmote=1,OfferRewardEmote1=1,OfferRewardEmote2=1,OfferRewardEmoteDelay2=1000 WHERE entry=10276;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1,DetailsEmoteDelay2=1000,DetailsEmoteDelay3=1000,OfferRewardEmote1=6,OfferRewardEmote2=1,OfferRewardEmoteDelay2=1000 WHERE entry=10317;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1,DetailsEmote4=5,DetailsEmoteDelay2=1000,DetailsEmoteDelay3=1000,DetailsEmoteDelay4=1000,OfferRewardEmote1=1,OfferRewardEmote2=6,OfferRewardEmote3=1,OfferRewardEmoteDelay2=1000,OfferRewardEmoteDelay3=1000 WHERE entry=10318;
UPDATE quest_template SET CompleteEmote=0 WHERE entry=10325;
UPDATE quest_template SET CompleteEmote=0 WHERE entry=10326;
UPDATE quest_template SET OfferRewardEmote1=1,OfferRewardEmote2=1 WHERE entry=10352;
UPDATE quest_template SET OfferRewardEmote1=4 WHERE entry=10354;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1 WHERE entry=10355;
UPDATE quest_template SET OfferRewardEmote1=1 WHERE entry=10356;
UPDATE quest_template SET OfferRewardEmote1=4,OfferRewardEmote2=1 WHERE entry=10357;
UPDATE quest_template SET DetailsEmote1=0 WHERE entry=10367;
UPDATE quest_template SET DetailsEmote1=0 WHERE entry=10368;
UPDATE quest_template SET DetailsEmote1=0 WHERE entry=10369;
UPDATE quest_template SET IncompleteEmote=1 WHERE entry=10400;
UPDATE quest_template SET DetailsEmote1=0 WHERE entry=10412;
UPDATE quest_template SET DetailsEmote1=0,CompleteEmote=0 WHERE entry=10416;
UPDATE quest_template SET CompleteEmote=0 WHERE entry=10420;
UPDATE quest_template SET CompleteEmote=0 WHERE entry=10421;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=6,DetailsEmoteDelay2=1000,DetailsEmoteDelay3=1000,OfferRewardEmoteDelay2=1000 WHERE entry=10443;
UPDATE quest_template SET DetailsEmote1=5,DetailsEmote2=1,DetailsEmote3=1,DetailsEmoteDelay2=1000,DetailsEmoteDelay3=1000,OfferRewardEmote1=1,OfferRewardEmote2=1,OfferRewardEmoteDelay2=1000 WHERE entry=10444;
UPDATE quest_template SET DetailsEmote1=5,DetailsEmote2=1,DetailsEmote3=1,DetailsEmoteDelay2=1000,DetailsEmoteDelay3=1000,OfferRewardEmote1=4,OfferRewardEmote2=1,OfferRewardEmoteDelay2=1000 WHERE entry=10446;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1,DetailsEmoteDelay2=1000,DetailsEmoteDelay3=1000,OfferRewardEmote1=6,OfferRewardEmote2=1,OfferRewardEmoteDelay2=1000 WHERE entry=10455;
UPDATE quest_template SET DetailsEmote1=5,DetailsEmote2=1,DetailsEmote3=1,DetailsEmoteDelay2=1000,DetailsEmoteDelay3=1000,OfferRewardEmote1=1,OfferRewardEmote2=1,OfferRewardEmoteDelay2=1000 WHERE entry=10456;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1,DetailsEmoteDelay2=1000,DetailsEmoteDelay3=1000,CompleteEmote=6,OfferRewardEmote1=1,OfferRewardEmote2=1,OfferRewardEmote3=2,OfferRewardEmoteDelay2=1000,OfferRewardEmoteDelay3=1000 WHERE entry=10457;
UPDATE quest_template SET DetailsEmote1=0 WHERE entry=10476;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=25,DetailsEmoteDelay2=1000,DetailsEmoteDelay3=1000,IncompleteEmote=1 WHERE entry=10502;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1,DetailsEmoteDelay2=1000,DetailsEmoteDelay3=1000 WHERE entry=10506;
UPDATE quest_template SET DetailsEmote1=5,DetailsEmote2=1,DetailsEmote3=1,DetailsEmoteDelay2=1000,DetailsEmoteDelay3=1000 WHERE entry=10510;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,CompleteEmote=0 WHERE entry=10555;
UPDATE quest_template SET OfferRewardEmote1=1 WHERE entry=10556;
UPDATE quest_template SET DetailsEmote1=5,DetailsEmote2=1,DetailsEmote3=1,OfferRewardEmote1=1,OfferRewardEmote2=1 WHERE entry=10562;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1 WHERE entry=10563;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=6,DetailsEmoteDelay2=1000,DetailsEmoteDelay3=1000 WHERE entry=10609;
UPDATE quest_template SET CompleteEmote=0,OfferRewardEmote1=1,OfferRewardEmoteDelay1=6000 WHERE entry=10629;
UPDATE quest_template SET CompleteEmote=5,OfferRewardEmote1=1,OfferRewardEmote2=1 WHERE entry=10648;
UPDATE quest_template SET CompleteEmote=0 WHERE entry=10653;
UPDATE quest_template SET IncompleteEmote=6,OfferRewardEmote1=6,OfferRewardEmote2=1,OfferRewardEmote3=1,OfferRewardEmoteDelay2=1000,OfferRewardEmoteDelay3=1000 WHERE entry=10690;
UPDATE quest_template SET CompleteEmote=0 WHERE entry=10793;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1,DetailsEmote4=1 WHERE entry=10804;
UPDATE quest_template SET CompleteEmote=0 WHERE entry=10827;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1,OfferRewardEmote1=1,OfferRewardEmote2=1,OfferRewardEmote3=1 WHERE entry=10833;
UPDATE quest_template SET CompleteEmote=0,OfferRewardEmote1=396,OfferRewardEmote2=396,OfferRewardEmote3=396 WHERE entry=10839;
UPDATE quest_template SET DetailsEmote1=1 WHERE entry=10840;
UPDATE quest_template SET DetailsEmote1=1 WHERE entry=10842;
UPDATE quest_template SET DetailsEmote1=396,DetailsEmote2=396,DetailsEmote3=396,OfferRewardEmote1=396,OfferRewardEmote2=396,OfferRewardEmote3=396 WHERE entry=10848;
UPDATE quest_template SET DetailsEmote1=396,DetailsEmote2=396,DetailsEmote3=396,OfferRewardEmote1=396,OfferRewardEmote2=396,OfferRewardEmote3=396 WHERE entry=10861;
UPDATE quest_template SET DetailsEmoteDelay2=3000,DetailsEmoteDelay3=5000,OfferRewardEmote1=5,OfferRewardEmote2=1 WHERE entry=10873;
UPDATE quest_template SET OfferRewardEmote1=396,OfferRewardEmote2=396,OfferRewardEmote3=396 WHERE entry=10874;
UPDATE quest_template SET CompleteEmote=0 WHERE entry=10877;
UPDATE quest_template SET DetailsEmote1=0 WHERE entry=10878;
UPDATE quest_template SET DetailsEmote1=396,DetailsEmote2=396,DetailsEmote3=396,OfferRewardEmote1=396,OfferRewardEmote2=396,OfferRewardEmote3=396 WHERE entry=10879;
UPDATE quest_template SET CompleteEmote=0 WHERE entry=10881;
UPDATE quest_template SET DetailsEmote1=396,DetailsEmote2=396,OfferRewardEmote1=396,OfferRewardEmote2=396,OfferRewardEmote3=396 WHERE entry=10889;
UPDATE quest_template SET IncompleteEmote=5 WHERE entry=10895;
UPDATE quest_template SET DetailsEmote1=0,OfferRewardEmote1=2 WHERE entry=10896;
UPDATE quest_template SET OfferRewardEmote1=396,OfferRewardEmote2=396,OfferRewardEmote3=396 WHERE entry=10898;
UPDATE quest_template SET IncompleteEmote=6 WHERE entry=10909;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1,DetailsEmote4=5,OfferRewardEmote1=4,OfferRewardEmote2=1 WHERE entry=10915;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1 WHERE entry=10917;
UPDATE quest_template SET OfferRewardEmote1=68,OfferRewardEmote2=66,OfferRewardEmote3=68,OfferRewardEmoteDelay2=3000,OfferRewardEmoteDelay3=7000 WHERE entry=10920;
UPDATE quest_template SET OfferRewardEmote1=5,OfferRewardEmote2=1 WHERE entry=10922;
UPDATE quest_template SET CompleteEmote=0 WHERE entry=10923;
UPDATE quest_template SET OfferRewardEmote1=396,OfferRewardEmote2=396 WHERE entry=10927;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1,DetailsEmote4=1,CompleteEmote=5,OfferRewardEmote1=6,OfferRewardEmote2=1,OfferRewardEmote3=1,OfferRewardEmote4=5 WHERE entry=10929;
UPDATE quest_template SET DetailsEmote1=5,DetailsEmote2=1,DetailsEmote3=5,OfferRewardEmote1=1,OfferRewardEmote2=1,OfferRewardEmote3=1 WHERE entry=10930;
UPDATE quest_template SET OfferRewardEmoteDelay2=1000 WHERE entry=10937;
UPDATE quest_template SET DetailsEmote1=0,CompleteEmote=0,OfferRewardEmote1=4 WHERE entry=11008;
UPDATE quest_template SET OfferRewardEmote2=5,OfferRewardEmote3=6,OfferRewardEmote4=5 WHERE entry=11012;
UPDATE quest_template SET DetailsEmote2=1,DetailsEmote3=1,OfferRewardEmote1=11,OfferRewardEmote2=6,OfferRewardEmote3=25 WHERE entry=11013;
UPDATE quest_template SET DetailsEmote2=1,DetailsEmote3=1,DetailsEmote4=1,OfferRewardEmote2=1,OfferRewardEmote3=273 WHERE entry=11014;
UPDATE quest_template SET DetailsEmote1=6,DetailsEmote2=1,DetailsEmote3=1,OfferRewardEmote1=1,OfferRewardEmote2=1 WHERE entry=11015;
UPDATE quest_template SET DetailsEmote1=6,DetailsEmote2=1,DetailsEmote3=1,OfferRewardEmote1=1,OfferRewardEmote2=1 WHERE entry=11016;
UPDATE quest_template SET OfferRewardEmote2=1,OfferRewardEmote3=1 WHERE entry=11019;
UPDATE quest_template SET DetailsEmote2=1,DetailsEmote3=1,OfferRewardEmote2=1 WHERE entry=11020;
UPDATE quest_template SET DetailsEmote2=1,DetailsEmote3=6,CompleteEmote=6,OfferRewardEmote2=6 WHERE entry=11023;
UPDATE quest_template SET DetailsEmote2=1,DetailsEmote3=1,OfferRewardEmote2=1 WHERE entry=11035;
UPDATE quest_template SET DetailsEmote1=6,DetailsEmote2=1,DetailsEmote3=1 WHERE entry=11038;
UPDATE quest_template SET OfferRewardEmote2=1 WHERE entry=11039;
UPDATE quest_template SET CompleteEmote=388,OfferRewardEmote1=6,OfferRewardEmote2=1,OfferRewardEmote3=1 WHERE entry=11041;
UPDATE quest_template SET DetailsEmote1=6,DetailsEmote2=1,DetailsEmote3=1 WHERE entry=11042;
UPDATE quest_template SET DetailsEmote1=5,DetailsEmote2=1,DetailsEmote3=1,OfferRewardEmote1=5,OfferRewardEmote2=274,OfferRewardEmote3=25 WHERE entry=11044;
UPDATE quest_template SET DetailsEmote2=1,DetailsEmote3=1,CompleteEmote=6,OfferRewardEmote2=1 WHERE entry=11049;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,OfferRewardEmote1=1,OfferRewardEmote2=1,OfferRewardEmote3=5,OfferRewardEmote4=15 WHERE entry=11053;
UPDATE quest_template SET DetailsEmote1=6,DetailsEmote2=1,DetailsEmote3=1,DetailsEmote4=1,CompleteEmote=5,OfferRewardEmote1=1,OfferRewardEmote2=1,OfferRewardEmote3=1 WHERE entry=11054;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1,CompleteEmote=1,OfferRewardEmote1=1,OfferRewardEmote2=1,OfferRewardEmote3=1 WHERE entry=11055;
UPDATE quest_template SET OfferRewardEmote1=1,OfferRewardEmote2=1,OfferRewardEmote3=6,OfferRewardEmote4=5 WHERE entry=11063;
UPDATE quest_template SET DetailsEmote2=1,DetailsEmote3=1,OfferRewardEmote1=6,OfferRewardEmote2=1 WHERE entry=11064;
UPDATE quest_template SET DetailsEmote2=1,DetailsEmote3=1,OfferRewardEmote2=1 WHERE entry=11067;
UPDATE quest_template SET DetailsEmote1=6,DetailsEmote2=11,DetailsEmote3=1,DetailsEmote4=1,OfferRewardEmote2=1 WHERE entry=11068;
UPDATE quest_template SET DetailsEmote2=1,DetailsEmote3=1,OfferRewardEmote1=5,OfferRewardEmote2=1 WHERE entry=11069;
UPDATE quest_template SET DetailsEmote2=1,DetailsEmote3=1,OfferRewardEmote2=1,OfferRewardEmote3=1 WHERE entry=11070;
UPDATE quest_template SET DetailsEmote1=25,DetailsEmote2=1,DetailsEmote3=1,OfferRewardEmote2=1,OfferRewardEmote3=1 WHERE entry=11071;
UPDATE quest_template SET OfferRewardEmote1=1,OfferRewardEmote2=1,OfferRewardEmote3=1 WHERE entry=11075;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1,CompleteEmote=6,OfferRewardEmote1=1,OfferRewardEmote2=1 WHERE entry=11076;
UPDATE quest_template SET DetailsEmote1=0,OfferRewardEmote2=1 WHERE entry=11077;
UPDATE quest_template SET CompleteEmote=1,OfferRewardEmote1=1,OfferRewardEmote2=1 WHERE entry=11081;
UPDATE quest_template SET CompleteEmote=6,OfferRewardEmote1=1,OfferRewardEmote2=1,OfferRewardEmote3=5 WHERE entry=11082;
UPDATE quest_template SET DetailsEmote1=0,OfferRewardEmote2=1 WHERE entry=11083;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,OfferRewardEmote1=1,OfferRewardEmote2=1,OfferRewardEmote3=1 WHERE entry=11084;
UPDATE quest_template SET DetailsEmote2=1,DetailsEmote3=1,DetailsEmote4=1,OfferRewardEmote2=1,OfferRewardEmote3=5 WHERE entry=11086;
UPDATE quest_template SET DetailsEmote1=0,CompleteEmote=6,OfferRewardEmote2=1 WHERE entry=11089;
UPDATE quest_template SET DetailsEmote2=1,DetailsEmote3=1,CompleteEmote=6,OfferRewardEmote2=1,OfferRewardEmote3=25 WHERE entry=11090;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=66,OfferRewardEmote1=1,OfferRewardEmote2=1 WHERE entry=11092;
UPDATE quest_template SET DetailsEmote2=1,DetailsEmote3=1 WHERE entry=11099;
UPDATE quest_template SET DetailsEmote2=1,CompleteEmote=273,OfferRewardEmote2=1 WHERE entry=11100;
UPDATE quest_template SET DetailsEmote1=0,OfferRewardEmote1=11,OfferRewardEmote2=1,OfferRewardEmote3=1 WHERE entry=11101;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=20,OfferRewardEmote1=1 WHERE entry=11107;
UPDATE quest_template SET DetailsEmote1=0,OfferRewardEmote2=1,OfferRewardEmote3=1 WHERE entry=11108;
UPDATE quest_template SET OfferRewardEmote1=1,OfferRewardEmote2=1 WHERE entry=11111;
UPDATE quest_template SET DetailsEmote2=1,DetailsEmote3=1,OfferRewardEmote2=1 WHERE entry=11123;
UPDATE quest_template SET DetailsEmote2=1 WHERE entry=11126;
UPDATE quest_template SET DetailsEmote2=1,OfferRewardEmote2=1 WHERE entry=11128;
UPDATE quest_template SET DetailsEmote2=1,OfferRewardEmote2=1 WHERE entry=11133;
UPDATE quest_template SET DetailsEmote2=1,OfferRewardEmote1=2,OfferRewardEmote2=1,OfferRewardEmote3=1 WHERE entry=11134;
UPDATE quest_template SET DetailsEmote2=1,OfferRewardEmote2=1 WHERE entry=11136;
UPDATE quest_template SET DetailsEmote2=1,OfferRewardEmote2=1 WHERE entry=11137;
UPDATE quest_template SET DetailsEmote2=1,OfferRewardEmote2=1 WHERE entry=11138;
UPDATE quest_template SET DetailsEmote2=1,OfferRewardEmote2=1 WHERE entry=11139;
UPDATE quest_template SET DetailsEmote2=1,OfferRewardEmote2=1 WHERE entry=11140;
UPDATE quest_template SET DetailsEmote2=1,OfferRewardEmote1=0 WHERE entry=11141;
UPDATE quest_template SET DetailsEmote2=1,OfferRewardEmote2=1 WHERE entry=11142;
UPDATE quest_template SET DetailsEmote2=1,DetailsEmote3=1,OfferRewardEmote2=1 WHERE entry=11143;
UPDATE quest_template SET DetailsEmote2=1,OfferRewardEmote2=1 WHERE entry=11144;
UPDATE quest_template SET DetailsEmote2=1,OfferRewardEmote1=2,OfferRewardEmote2=1 WHERE entry=11145;
UPDATE quest_template SET DetailsEmote2=1,OfferRewardEmote2=1 WHERE entry=11146;
UPDATE quest_template SET DetailsEmote2=1,OfferRewardEmote2=1 WHERE entry=11147;
UPDATE quest_template SET DetailsEmote2=1,OfferRewardEmote2=1 WHERE entry=11148;
UPDATE quest_template SET DetailsEmote2=1,OfferRewardEmote2=1 WHERE entry=11149;
UPDATE quest_template SET DetailsEmote2=1,OfferRewardEmote2=1 WHERE entry=11150;
UPDATE quest_template SET DetailsEmote2=1,OfferRewardEmote2=1 WHERE entry=11151;
UPDATE quest_template SET DetailsEmote2=1,OfferRewardEmote2=1 WHERE entry=11152;
UPDATE quest_template SET DetailsEmote1=5,DetailsEmote2=25,DetailsEmote3=1 WHERE entry=11153;
UPDATE quest_template SET DetailsEmote1=25,DetailsEmote2=5,DetailsEmote3=20 WHERE entry=11154;
UPDATE quest_template SET DetailsEmote1=5,DetailsEmote2=1,DetailsEmote3=1,CompleteEmote=1,OfferRewardEmote1=1,OfferRewardEmote2=11,OfferRewardEmoteDelay2=2000 WHERE entry=11155;
UPDATE quest_template SET DetailsEmote2=1,OfferRewardEmote2=1 WHERE entry=11172;
UPDATE quest_template SET DetailsEmote1=6,DetailsEmote2=1,DetailsEmote3=20,OfferRewardEmote1=5 WHERE entry=11175;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,OfferRewardEmote1=1 WHERE entry=11176;
UPDATE quest_template SET DetailsEmote2=1,OfferRewardEmote2=1 WHERE entry=11177;
UPDATE quest_template SET OfferRewardEmote2=1 WHERE entry=11180;
UPDATE quest_template SET DetailsEmote2=1 WHERE entry=11181;
UPDATE quest_template SET DetailsEmote1=33 WHERE entry=11182;
UPDATE quest_template SET DetailsEmote2=1,OfferRewardEmote2=1 WHERE entry=11183;
UPDATE quest_template SET DetailsEmote1=0,OfferRewardEmote2=1 WHERE entry=11185;
UPDATE quest_template SET DetailsEmote1=15,DetailsEmote2=1 WHERE entry=11187;
UPDATE quest_template SET DetailsEmote1=6,DetailsEmote2=1,DetailsEmote3=1,OfferRewardEmoteDelay1=1000 WHERE entry=11188;
UPDATE quest_template SET DetailsEmote1=6,DetailsEmote2=5,DetailsEmote3=1,CompleteEmote=6,OfferRewardEmote1=4 WHERE entry=11190;
UPDATE quest_template SET DetailsEmote2=1,OfferRewardEmote2=1 WHERE entry=11191;
UPDATE quest_template SET DetailsEmote1=0,OfferRewardEmote2=1 WHERE entry=11192;
UPDATE quest_template SET DetailsEmote1=0,OfferRewardEmote2=1 WHERE entry=11193;
UPDATE quest_template SET DetailsEmote2=1,OfferRewardEmote2=1 WHERE entry=11194;
UPDATE quest_template SET OfferRewardEmote2=1 WHERE entry=11198;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=25 WHERE entry=11199;
UPDATE quest_template SET DetailsEmote1=0 WHERE entry=11202;
UPDATE quest_template SET DetailsEmote2=1,OfferRewardEmote1=0 WHERE entry=11209;
UPDATE quest_template SET DetailsEmote2=1,OfferRewardEmote2=1 WHERE entry=11210;
UPDATE quest_template SET OfferRewardEmote2=1 WHERE entry=11211;
UPDATE quest_template SET DetailsEmote2=1,OfferRewardEmote2=1 WHERE entry=11212;
UPDATE quest_template SET DetailsEmote2=1 WHERE entry=11214;
UPDATE quest_template SET DetailsEmote1=0 WHERE entry=11216;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=25,OfferRewardEmoteDelay2=2000 WHERE entry=11218;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=5,DetailsEmote3=389 WHERE entry=11224;
UPDATE quest_template SET DetailsEmote1=5,DetailsEmote2=274,DetailsEmote3=25,DetailsEmote4=273,DetailsEmoteDelay2=1000,DetailsEmoteDelay3=1000,DetailsEmoteDelay4=1000,OfferRewardEmote1=1,OfferRewardEmote2=1,OfferRewardEmote3=1,OfferRewardEmote4=274 WHERE entry=11228;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=5 WHERE entry=11231;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=25 WHERE entry=11235;
UPDATE quest_template SET DetailsEmote1=5,DetailsEmote2=25,DetailsEmote3=5,OfferRewardEmoteDelay1=1000 WHERE entry=11236;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=25,DetailsEmote3=1,IncompleteEmote=6 WHERE entry=11238;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=5,DetailsEmote3=1 WHERE entry=11239;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1 WHERE entry=11240;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1,DetailsEmote4=5,OfferRewardEmote1=4,OfferRewardEmote2=1 WHERE entry=11243;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1,DetailsEmote4=5,OfferRewardEmote1=1,OfferRewardEmote2=1,OfferRewardEmote3=1,OfferRewardEmote4=15 WHERE entry=11244;
UPDATE quest_template SET DetailsEmote1=66,DetailsEmote2=1,DetailsEmote3=1 WHERE entry=11245;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1,IncompleteEmote=1 WHERE entry=11246;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=6,DetailsEmote3=66 WHERE entry=11247;
UPDATE quest_template SET DetailsEmote1=25,DetailsEmote2=1,DetailsEmote3=66 WHERE entry=11248;
UPDATE quest_template SET DetailsEmote1=0 WHERE entry=11249;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=25,DetailsEmote3=6 WHERE entry=11250;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1,DetailsEmoteDelay2=1000,DetailsEmoteDelay3=1000,OfferRewardEmote1=5 WHERE entry=11252;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1,OfferRewardEmote1=1,OfferRewardEmote2=1 WHERE entry=11255;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=5,CompleteEmote=1,OfferRewardEmote1=1,OfferRewardEmote2=1 WHERE entry=11269;
UPDATE quest_template SET DetailsEmote1=5,DetailsEmote2=1,DetailsEmote3=1,DetailsEmote4=6 WHERE entry=11273;
UPDATE quest_template SET OfferRewardEmote1=5,OfferRewardEmote2=1,OfferRewardEmote3=1 WHERE entry=11276;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1,CompleteEmote=4,OfferRewardEmote1=4,OfferRewardEmote2=1,OfferRewardEmote3=1,OfferRewardEmote4=5 WHERE entry=11277;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1,CompleteEmote=5,OfferRewardEmote1=1,OfferRewardEmote2=1,OfferRewardEmote3=1 WHERE entry=11278;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,OfferRewardEmote1=1,OfferRewardEmote2=1 WHERE entry=11284;
UPDATE quest_template SET CompleteEmote=5,OfferRewardEmote1=2,OfferRewardEmote2=1,OfferRewardEmote3=1,OfferRewardEmoteDelay2=1000,OfferRewardEmoteDelay3=1000 WHERE entry=11289;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1,CompleteEmote=6,OfferRewardEmote1=1,OfferRewardEmote2=1,OfferRewardEmote3=1 WHERE entry=11290;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1 WHERE entry=11291;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,CompleteEmote=1 WHERE entry=11292;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1,OfferRewardEmote1=14,OfferRewardEmote2=1,OfferRewardEmote3=1 WHERE entry=11299;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1,CompleteEmote=6,OfferRewardEmote1=1,OfferRewardEmote2=1 WHERE entry=11300;
UPDATE quest_template SET CompleteEmote=1 WHERE entry=11313;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,OfferRewardEmote1=1,OfferRewardEmote2=1 WHERE entry=11314;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,OfferRewardEmote1=1,OfferRewardEmote2=1 WHERE entry=11315;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1 WHERE entry=11319;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=25,DetailsEmote3=1 WHERE entry=11322;
UPDATE quest_template SET DetailsEmote1=0 WHERE entry=11325;
UPDATE quest_template SET DetailsEmote1=0 WHERE entry=11326;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=6 WHERE entry=11327;
UPDATE quest_template SET DetailsEmote1=0 WHERE entry=11328;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,CompleteEmote=1,OfferRewardEmote1=1,OfferRewardEmote2=1 WHERE entry=11329;
UPDATE quest_template SET DetailsEmote1=274,DetailsEmote2=6,OfferRewardEmoteDelay2=1000 WHERE entry=11330;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=25 WHERE entry=11331;
UPDATE quest_template SET DetailsEmote1=0 WHERE entry=11332;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1,DetailsEmote4=1,CompleteEmote=6,OfferRewardEmote1=1,OfferRewardEmote2=1,OfferRewardEmote3=1,OfferRewardEmote4=1 WHERE entry=11333;
UPDATE quest_template SET DetailsEmote1=0,IncompleteEmote=0,OfferRewardEmote1=0 WHERE entry=11335;
UPDATE quest_template SET DetailsEmote1=0,IncompleteEmote=0 WHERE entry=11336;
UPDATE quest_template SET DetailsEmote1=0,IncompleteEmote=0,OfferRewardEmote1=0 WHERE entry=11337;
UPDATE quest_template SET DetailsEmote1=0,IncompleteEmote=0,OfferRewardEmote1=0 WHERE entry=11338;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1,OfferRewardEmote1=1,OfferRewardEmote2=6 WHERE entry=11343;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1,DetailsEmote4=1,OfferRewardEmote1=1,OfferRewardEmote2=1,OfferRewardEmote3=1 WHERE entry=11344;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1 WHERE entry=11346;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,IncompleteEmote=1 WHERE entry=11348;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1 WHERE entry=11349;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1 WHERE entry=11355;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1 WHERE entry=11358;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1 WHERE entry=11359;
UPDATE quest_template SET DetailsEmote2=1 WHERE entry=11371;
UPDATE quest_template SET DetailsEmote2=1,DetailsEmote3=1,CompleteEmote=6,OfferRewardEmote1=0 WHERE entry=11377;
UPDATE quest_template SET DetailsEmote2=1,DetailsEmote3=1 WHERE entry=11379;
UPDATE quest_template SET CompleteEmote=6,OfferRewardEmote1=0 WHERE entry=11380;
UPDATE quest_template SET CompleteEmote=6,OfferRewardEmote1=0 WHERE entry=11381;
UPDATE quest_template SET DetailsEmote1=5,DetailsEmote2=1,OfferRewardEmote1=25 WHERE entry=11390;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,OfferRewardEmote1=5,OfferRewardEmoteDelay1=1000 WHERE entry=11393;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=5,DetailsEmote3=6,OfferRewardEmote1=1,OfferRewardEmote2=1 WHERE entry=11394;
UPDATE quest_template SET CompleteEmote=1,OfferRewardEmote1=5,OfferRewardEmote2=1 WHERE entry=11395;
UPDATE quest_template SET DetailsEmote1=69,DetailsEmote2=30,DetailsEmote3=6,DetailsEmoteDelay2=2000,OfferRewardEmote1=4,OfferRewardEmote2=1,OfferRewardEmoteDelay2=1000 WHERE entry=11396;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1 WHERE entry=11406;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,OfferRewardEmote1=1,OfferRewardEmote2=1 WHERE entry=11410;
UPDATE quest_template SET DetailsEmote1=0 WHERE entry=11414;
UPDATE quest_template SET DetailsEmote1=0 WHERE entry=11416;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,OfferRewardEmote1=1,OfferRewardEmote2=1 WHERE entry=11418;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1,DetailsEmote4=5,CompleteEmote=6,OfferRewardEmote1=4,OfferRewardEmote2=5 WHERE entry=11420;
UPDATE quest_template SET DetailsEmote1=5,DetailsEmote2=1,DetailsEmote3=1,DetailsEmote4=1 WHERE entry=11421;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1,CompleteEmote=6,OfferRewardEmote1=4,OfferRewardEmote2=1,OfferRewardEmote3=5 WHERE entry=11426;
UPDATE quest_template SET DetailsEmote1=6,DetailsEmote2=1,DetailsEmote3=1,DetailsEmote4=1 WHERE entry=11427;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1 WHERE entry=11428;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=274 WHERE entry=11429;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1 WHERE entry=11430;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=273,DetailsEmote3=25 WHERE entry=11432;
UPDATE quest_template SET DetailsEmote1=0 WHERE entry=11434;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1 WHERE entry=11436;
UPDATE quest_template SET DetailsEmote1=6,DetailsEmote2=1,DetailsEmote3=24,CompleteEmote=6,OfferRewardEmote1=5,OfferRewardEmote2=1,OfferRewardEmote3=1,OfferRewardEmote4=70 WHERE entry=11443;
UPDATE quest_template SET DetailsEmote1=5,DetailsEmote2=1,DetailsEmote3=1,DetailsEmote4=1,OfferRewardEmote1=1,OfferRewardEmote2=1,OfferRewardEmote3=5 WHERE entry=11448;
UPDATE quest_template SET DetailsEmote1=1 WHERE entry=11451;
UPDATE quest_template SET DetailsEmote1=0 WHERE entry=11452;
UPDATE quest_template SET DetailsEmote1=0 WHERE entry=11455;
UPDATE quest_template SET DetailsEmote1=0 WHERE entry=11456;
UPDATE quest_template SET DetailsEmote1=0 WHERE entry=11457;
UPDATE quest_template SET DetailsEmote1=0 WHERE entry=11458;
UPDATE quest_template SET DetailsEmote1=0 WHERE entry=11459;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1,DetailsEmote4=1,OfferRewardEmote1=21,OfferRewardEmote2=1,OfferRewardEmote3=273 WHERE entry=11460;
UPDATE quest_template SET DetailsEmote1=0 WHERE entry=11464;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1,CompleteEmote=1,OfferRewardEmote1=5,OfferRewardEmote2=1,OfferRewardEmote3=1 WHERE entry=11465;
UPDATE quest_template SET DetailsEmote1=0 WHERE entry=11466;
UPDATE quest_template SET DetailsEmote1=0 WHERE entry=11467;
UPDATE quest_template SET DetailsEmote1=6,DetailsEmote2=1,DetailsEmote3=1 WHERE entry=11468;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=25,DetailsEmote3=5 WHERE entry=11469;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1 WHERE entry=11470;
UPDATE quest_template SET DetailsEmote1=1 WHERE entry=11471;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1 WHERE entry=11472;
UPDATE quest_template SET DetailsEmote1=0 WHERE entry=11473;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1,OfferRewardEmote1=1,OfferRewardEmote2=1,OfferRewardEmote3=1 WHERE entry=11474;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1,CompleteEmote=1,OfferRewardEmote1=1,OfferRewardEmote2=1 WHERE entry=11475;
UPDATE quest_template SET DetailsEmote1=0 WHERE entry=11476;
UPDATE quest_template SET OfferRewardEmote1=1,OfferRewardEmote2=1 WHERE entry=11477;
UPDATE quest_template SET DetailsEmote1=0 WHERE entry=11479;
UPDATE quest_template SET DetailsEmote1=0 WHERE entry=11480;
UPDATE quest_template SET DetailsEmote1=6,DetailsEmote2=6,DetailsEmote3=273,DetailsEmote4=1 WHERE entry=11483;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1,DetailsEmote4=1 WHERE entry=11484;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1 WHERE entry=11485;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1 WHERE entry=11489;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1,DetailsEmote4=1 WHERE entry=11491;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1,DetailsEmote4=1 WHERE entry=11494;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1,DetailsEmote4=1 WHERE entry=11495;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1 WHERE entry=11501;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1,DetailsEmote4=5 WHERE entry=11504;
UPDATE quest_template SET DetailsEmote1=0 WHERE entry=11505;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1,DetailsEmote4=1 WHERE entry=11507;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1,DetailsEmote4=1 WHERE entry=11508;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1,DetailsEmote4=1 WHERE entry=11509;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1,DetailsEmote4=1 WHERE entry=11510;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1,DetailsEmote4=5 WHERE entry=11511;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1,DetailsEmote4=5 WHERE entry=11512;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1 WHERE entry=11519;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1 WHERE entry=11527;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1 WHERE entry=11529;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1,DetailsEmote4=2 WHERE entry=11530;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmoteDelay2=1000 WHERE entry=11546;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,CompleteEmote=389,OfferRewardEmote1=389 WHERE entry=11559;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=25,OfferRewardEmote1=1 WHERE entry=11560;
UPDATE quest_template SET DetailsEmote1=35,DetailsEmote2=36,OfferRewardEmote1=35 WHERE entry=11561;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=20,OfferRewardEmote1=35 WHERE entry=11562;
UPDATE quest_template SET DetailsEmote1=54,DetailsEmote2=36,CompleteEmote=389,OfferRewardEmote1=389 WHERE entry=11563;
UPDATE quest_template SET DetailsEmote1=389,CompleteEmote=36,OfferRewardEmote1=36 WHERE entry=11564;
UPDATE quest_template SET DetailsEmote1=389,CompleteEmote=6,OfferRewardEmote1=1 WHERE entry=11565;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=5,CompleteEmote=6,OfferRewardEmote1=1,OfferRewardEmote2=2 WHERE entry=11566;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1 WHERE entry=11567;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1 WHERE entry=11568;
UPDATE quest_template SET DetailsEmote1=36,CompleteEmote=35,OfferRewardEmote1=36 WHERE entry=11569;
UPDATE quest_template SET DetailsEmote1=389,OfferRewardEmote1=6,OfferRewardEmote2=1,OfferRewardEmote3=5 WHERE entry=11570;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1,CompleteEmote=6,OfferRewardEmote1=25 WHERE entry=11571;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1 WHERE entry=11572;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1,OfferRewardEmote1=1,OfferRewardEmote2=1 WHERE entry=11573;
UPDATE quest_template SET DetailsEmote1=5,DetailsEmote2=5,DetailsEmote3=1,DetailsEmoteDelay2=1000,DetailsEmoteDelay3=1000,OfferRewardEmote1=1,OfferRewardEmote2=1,OfferRewardEmoteDelay2=500 WHERE entry=11575;
UPDATE quest_template SET DetailsEmote1=2,DetailsEmote2=1,DetailsEmote3=1,DetailsEmote4=0,DetailsEmoteDelay2=500,DetailsEmoteDelay3=1000,OfferRewardEmoteDelay2=500 WHERE entry=11576;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=0,DetailsEmoteDelay2=1000 WHERE entry=11582;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=0,DetailsEmoteDelay2=1000 WHERE entry=11587;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1,DetailsEmote4=0,DetailsEmoteDelay2=1000,DetailsEmoteDelay3=500 WHERE entry=11590;
UPDATE quest_template SET DetailsEmote1=0 WHERE entry=11599;
UPDATE quest_template SET DetailsEmote1=0 WHERE entry=11600;
UPDATE quest_template SET DetailsEmote1=0 WHERE entry=11601;
UPDATE quest_template SET DetailsEmote1=0 WHERE entry=11603;
UPDATE quest_template SET DetailsEmote1=1 WHERE entry=11604;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1 WHERE entry=11605;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1 WHERE entry=11607;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1 WHERE entry=11609;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1 WHERE entry=11610;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1 WHERE entry=11612;
UPDATE quest_template SET DetailsEmote1=1 WHERE entry=11613;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1 WHERE entry=11617;
UPDATE quest_template SET DetailsEmote1=0 WHERE entry=11619;
UPDATE quest_template SET DetailsEmote1=0 WHERE entry=11620;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1 WHERE entry=11623;
UPDATE quest_template SET DetailsEmote1=0 WHERE entry=11625;
UPDATE quest_template SET DetailsEmote1=0 WHERE entry=11626;
UPDATE quest_template SET DetailsEmote1=5,DetailsEmote2=6,DetailsEmote3=1,DetailsEmote4=1,CompleteEmote=6,OfferRewardEmote1=4 WHERE entry=11645;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=0,DetailsEmoteDelay2=1000 WHERE entry=11646;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=0,DetailsEmoteDelay2=500,OfferRewardEmoteDelay2=500 WHERE entry=11648;
UPDATE quest_template SET DetailsEmote1=5,DetailsEmote2=1,DetailsEmote3=5 WHERE entry=11650;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1,DetailsEmote4=1,OfferRewardEmote1=5,OfferRewardEmote2=18,OfferRewardEmote3=1 WHERE entry=11653;
UPDATE quest_template SET DetailsEmote1=5,DetailsEmote2=1,DetailsEmote3=25 WHERE entry=11658;
UPDATE quest_template SET DetailsEmote1=5,DetailsEmote2=1,DetailsEmote3=0,DetailsEmoteDelay2=1000 WHERE entry=11663;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1 WHERE entry=11665;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1,CompleteEmote=6,OfferRewardEmote1=5 WHERE entry=11666;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1,CompleteEmote=20,OfferRewardEmote1=1,OfferRewardEmote2=5,OfferRewardEmoteDelay2=4 WHERE entry=11667;
UPDATE quest_template SET DetailsEmote1=6,DetailsEmote2=1,DetailsEmote3=1,CompleteEmote=6,OfferRewardEmote1=1 WHERE entry=11668;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1,CompleteEmote=6,OfferRewardEmote1=5,OfferRewardEmote2=1 WHERE entry=11669;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1,DetailsEmote4=1 WHERE entry=11670;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1,DetailsEmote4=0,DetailsEmoteDelay2=1000,DetailsEmoteDelay3=1000 WHERE entry=11671;
UPDATE quest_template SET DetailsEmote1=1 WHERE entry=11672;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=5,DetailsEmote3=1,OfferRewardEmote1=6,OfferRewardEmote2=1,OfferRewardEmote3=1 WHERE entry=11673;
UPDATE quest_template SET DetailsEmote1=5,DetailsEmote2=1,DetailsEmote3=1,DetailsEmote4=0,DetailsEmoteDelay2=1000,DetailsEmoteDelay3=500 WHERE entry=11679;
UPDATE quest_template SET DetailsEmote1=0 WHERE entry=11680;
UPDATE quest_template SET DetailsEmote1=1 WHERE entry=11681;
UPDATE quest_template SET DetailsEmote1=2,DetailsEmote2=1,DetailsEmote3=0,DetailsEmoteDelay2=1000 WHERE entry=11682;
UPDATE quest_template SET DetailsEmote1=4,DetailsEmote2=5,DetailsEmote3=6,DetailsEmote4=1,OfferRewardEmote1=6 WHERE entry=11692;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=25 WHERE entry=11693;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=5,DetailsEmote3=6 WHERE entry=11694;
UPDATE quest_template SET DetailsEmote1=274,DetailsEmote2=1,DetailsEmote3=5,DetailsEmote4=25 WHERE entry=11697;
UPDATE quest_template SET DetailsEmote1=0 WHERE entry=11698;
UPDATE quest_template SET DetailsEmote1=0 WHERE entry=11699;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=6 WHERE entry=11700;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=6,DetailsEmote3=4 WHERE entry=11701;
UPDATE quest_template SET DetailsEmote1=5,DetailsEmote2=1,DetailsEmote3=1,OfferRewardEmote1=5,OfferRewardEmote2=1 WHERE entry=11704;
UPDATE quest_template SET DetailsEmote1=6,DetailsEmote2=5,DetailsEmote3=1,OfferRewardEmote1=1 WHERE entry=11707;
UPDATE quest_template SET DetailsEmote1=1,OfferRewardEmote1=6,OfferRewardEmote2=1 WHERE entry=11708;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1,CompleteEmote=1,OfferRewardEmote1=5 WHERE entry=11710;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1,DetailsEmote4=1,OfferRewardEmote1=4,OfferRewardEmote2=1 WHERE entry=11712;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1 WHERE entry=11713;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1 WHERE entry=11715;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1 WHERE entry=11718;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1 WHERE entry=11723;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1 WHERE entry=11725;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1 WHERE entry=11726;
UPDATE quest_template SET DetailsEmote1=0 WHERE entry=11727;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1 WHERE entry=11728;
UPDATE quest_template SET CompleteEmote=1,OfferRewardEmote1=4,OfferRewardEmote2=6 WHERE entry=11729;
UPDATE quest_template SET DetailsEmote1=5,DetailsEmote2=1,DetailsEmote3=1,DetailsEmote4=1,OfferRewardEmote1=5,OfferRewardEmote2=1 WHERE entry=11730;
UPDATE quest_template SET DetailsEmote1=0 WHERE entry=11733;
UPDATE quest_template SET OfferRewardEmote1=1 WHERE entry=11788;
UPDATE quest_template SET DetailsEmote1=0 WHERE entry=11789;
UPDATE quest_template SET DetailsEmote1=1 WHERE entry=11791;
UPDATE quest_template SET DetailsEmote1=0 WHERE entry=11792;
UPDATE quest_template SET DetailsEmote1=0 WHERE entry=11793;
UPDATE quest_template SET DetailsEmote1=0 WHERE entry=11794;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1 WHERE entry=11795;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,IncompleteEmote=1 WHERE entry=11796;
UPDATE quest_template SET DetailsEmote1=0 WHERE entry=11797;
UPDATE quest_template SET IncompleteEmote=6,OfferRewardEmoteDelay1=1000 WHERE entry=11798;
UPDATE quest_template SET OfferRewardEmote1=6,OfferRewardEmote2=1,OfferRewardEmote3=1,OfferRewardEmote4=15 WHERE entry=11864;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1,IncompleteEmote=1,OfferRewardEmote1=1,OfferRewardEmote2=1 WHERE entry=11865;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1,CompleteEmote=1,OfferRewardEmote1=1,OfferRewardEmote2=5,OfferRewardEmote3=15 WHERE entry=11866;
UPDATE quest_template SET CompleteEmote=1,OfferRewardEmote1=1,OfferRewardEmote2=5,OfferRewardEmote3=15 WHERE entry=11867;
UPDATE quest_template SET IncompleteEmote=5,OfferRewardEmote1=1,OfferRewardEmote2=1 WHERE entry=11868;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1,DetailsEmote4=5,IncompleteEmote=1,OfferRewardEmote1=1,OfferRewardEmote2=1,OfferRewardEmote3=5 WHERE entry=11869;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=5,OfferRewardEmote1=1,OfferRewardEmote2=1 WHERE entry=11870;
UPDATE quest_template SET CompleteEmote=1,OfferRewardEmote1=1,OfferRewardEmote2=1 WHERE entry=11871;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1,OfferRewardEmote1=1,OfferRewardEmote2=21 WHERE entry=11872;
UPDATE quest_template SET DetailsEmote1=0 WHERE entry=11873;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1,DetailsEmote4=5,OfferRewardEmote1=1,OfferRewardEmote2=1 WHERE entry=11876;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1,DetailsEmote4=2 WHERE entry=11878;
UPDATE quest_template SET CompleteEmote=6,OfferRewardEmote1=6,OfferRewardEmote2=1,OfferRewardEmote3=4 WHERE entry=11879;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1,IncompleteEmote=1,OfferRewardEmote1=1,OfferRewardEmote2=1 WHERE entry=11884;
UPDATE quest_template SET DetailsEmote1=1 WHERE entry=11889;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1,OfferRewardEmote1=1,OfferRewardEmote2=1,OfferRewardEmote3=1 WHERE entry=11892;
UPDATE quest_template SET DetailsEmote1=1 WHERE entry=11897;
UPDATE quest_template SET DetailsEmote1=0 WHERE entry=11901;
UPDATE quest_template SET DetailsEmote1=0 WHERE entry=11902;
UPDATE quest_template SET DetailsEmote1=0 WHERE entry=11903;
UPDATE quest_template SET DetailsEmote1=0 WHERE entry=11904;
UPDATE quest_template SET DetailsEmote1=0 WHERE entry=11908;
UPDATE quest_template SET OfferRewardEmote1=1 WHERE entry=11911;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=0,DetailsEmoteDelay2=1000 WHERE entry=11912;
UPDATE quest_template SET DetailsEmote1=0 WHERE entry=11913;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1,DetailsEmote4=0,DetailsEmoteDelay2=500,DetailsEmoteDelay3=500 WHERE entry=11918;
UPDATE quest_template SET DetailsEmote1=0 WHERE entry=11920;
UPDATE quest_template SET DetailsEmote1=0 WHERE entry=11927;
UPDATE quest_template SET DetailsEmote1=0 WHERE entry=11928;
UPDATE quest_template SET DetailsEmote1=0 WHERE entry=11932;
UPDATE quest_template SET DetailsEmote1=0 WHERE entry=11938;
UPDATE quest_template SET DetailsEmote1=0,IncompleteEmote=1,OfferRewardEmoteDelay2=1000 WHERE entry=11940;
UPDATE quest_template SET DetailsEmote1=0 WHERE entry=11942;
UPDATE quest_template SET OfferRewardEmoteDelay2=1000 WHERE entry=11943;
UPDATE quest_template SET DetailsEmote1=0 WHERE entry=11944;
UPDATE quest_template SET DetailsEmote1=0 WHERE entry=11945;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1,DetailsEmote4=0,DetailsEmoteDelay2=1000,DetailsEmoteDelay3=500 WHERE entry=11946;
UPDATE quest_template SET DetailsEmote1=0 WHERE entry=11949;
UPDATE quest_template SET DetailsEmote1=1 WHERE entry=11950;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1,DetailsEmote4=0,DetailsEmoteDelay2=500,DetailsEmoteDelay3=1000,OfferRewardEmoteDelay2=1000 WHERE entry=11951;
UPDATE quest_template SET DetailsEmote1=0 WHERE entry=11956;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1,DetailsEmote4=0,DetailsEmoteDelay2=1000,DetailsEmoteDelay3=1000 WHERE entry=11957;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1 WHERE entry=11958;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1 WHERE entry=11959;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1 WHERE entry=11960;
UPDATE quest_template SET DetailsEmote1=0 WHERE entry=11961;
UPDATE quest_template SET DetailsEmote1=0 WHERE entry=11962;
UPDATE quest_template SET DetailsEmote1=0 WHERE entry=11963;
UPDATE quest_template SET DetailsEmote1=0 WHERE entry=11965;
UPDATE quest_template SET DetailsEmote1=0 WHERE entry=11967;
UPDATE quest_template SET DetailsEmote1=0 WHERE entry=11968;
UPDATE quest_template SET DetailsEmote1=1 WHERE entry=11969;
UPDATE quest_template SET DetailsEmote1=6,DetailsEmote2=5,DetailsEmote3=1,OfferRewardEmote1=1,OfferRewardEmote2=1,OfferRewardEmote3=1,OfferRewardEmoteDelay2=500 WHERE entry=11973;
UPDATE quest_template SET DetailsEmote1=0 WHERE entry=11981;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,IncompleteEmote=1 WHERE entry=11982;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1,DetailsEmote4=0,DetailsEmoteDelay2=500,DetailsEmoteDelay3=1000 WHERE entry=11984;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1 WHERE entry=11985;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1 WHERE entry=11986;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1 WHERE entry=11988;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=0,DetailsEmoteDelay2=1000 WHERE entry=11989;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=0,DetailsEmoteDelay2=1000 WHERE entry=11990;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=0,DetailsEmoteDelay2=1000 WHERE entry=11991;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1 WHERE entry=11993;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=66 WHERE entry=11995;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1 WHERE entry=11998;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1 WHERE entry=12000;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,IncompleteEmote=1 WHERE entry=12002;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1 WHERE entry=12003;
UPDATE quest_template SET DetailsEmote1=25,DetailsEmote2=1 WHERE entry=12004;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1,OfferRewardEmoteDelay2=1000 WHERE entry=12007;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=6,DetailsEmote3=1 WHERE entry=12009;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1 WHERE entry=12010;
UPDATE quest_template SET DetailsEmote1=0 WHERE entry=12011;
UPDATE quest_template SET DetailsEmote1=0 WHERE entry=12014;
UPDATE quest_template SET DetailsEmote1=5,DetailsEmote2=1,DetailsEmote3=1 WHERE entry=12016;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=25 WHERE entry=12017;
UPDATE quest_template SET DetailsEmote1=1 WHERE entry=12019;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=18 WHERE entry=12027;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=6,DetailsEmote3=1 WHERE entry=12028;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,OfferRewardEmoteDelay2=1000 WHERE entry=12029;
UPDATE quest_template SET DetailsEmote1=15,DetailsEmote2=1,DetailsEmote3=1 WHERE entry=12030;
UPDATE quest_template SET DetailsEmote1=0 WHERE entry=12031;
UPDATE quest_template SET DetailsEmote1=0 WHERE entry=12032;
UPDATE quest_template SET DetailsEmote1=0 WHERE entry=12035;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=0,DetailsEmoteDelay2=500,OfferRewardEmote1=5 WHERE entry=12037;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=0,DetailsEmoteDelay2=1000 WHERE entry=12042;
UPDATE quest_template SET DetailsEmote1=0 WHERE entry=12043;
UPDATE quest_template SET DetailsEmote1=1 WHERE entry=12044;
UPDATE quest_template SET DetailsEmote1=6 WHERE entry=12045;
UPDATE quest_template SET DetailsEmote1=0 WHERE entry=12046;
UPDATE quest_template SET DetailsEmote1=5 WHERE entry=12047;
UPDATE quest_template SET DetailsEmote1=1 WHERE entry=12049;
UPDATE quest_template SET DetailsEmote1=1,OfferRewardEmoteDelay2=300 WHERE entry=12050;
UPDATE quest_template SET DetailsEmote1=5,IncompleteEmote=1 WHERE entry=12052;
UPDATE quest_template SET DetailsEmote1=0 WHERE entry=12055;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=25,DetailsEmote4=1 WHERE entry=12060;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=6,DetailsEmote3=1 WHERE entry=12065;
UPDATE quest_template SET DetailsEmote1=0,OfferRewardEmoteDelay2=1000 WHERE entry=12067;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=0,DetailsEmoteDelay2=1000 WHERE entry=12068;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1 WHERE entry=12070;
UPDATE quest_template SET DetailsEmote1=1 WHERE entry=12075;
UPDATE quest_template SET DetailsEmote1=1 WHERE entry=12076;
UPDATE quest_template SET DetailsEmote1=1 WHERE entry=12077;
UPDATE quest_template SET DetailsEmote1=5 WHERE entry=12078;
UPDATE quest_template SET DetailsEmote1=1 WHERE entry=12079;
UPDATE quest_template SET DetailsEmote1=1,IncompleteEmote=1 WHERE entry=12080;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1 WHERE entry=12081;
UPDATE quest_template SET DetailsEmote1=1 WHERE entry=12082;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1,DetailsEmote4=1 WHERE entry=12083;
UPDATE quest_template SET DetailsEmote1=0 WHERE entry=12086;
UPDATE quest_template SET DetailsEmote1=0 WHERE entry=12088;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1,DetailsEmote4=1 WHERE entry=12092;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1 WHERE entry=12093;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1 WHERE entry=12094;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=6,DetailsEmote3=1 WHERE entry=12098;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1 WHERE entry=12099;
UPDATE quest_template SET DetailsEmote1=0 WHERE entry=12105;
UPDATE quest_template SET DetailsEmote1=0,OfferRewardEmoteDelay2=1000 WHERE entry=12107;
UPDATE quest_template SET DetailsEmote1=66 WHERE entry=12109;
UPDATE quest_template SET DetailsEmote1=1 WHERE entry=12112;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=6,DetailsEmote3=0,DetailsEmoteDelay2=1000 WHERE entry=12113;
UPDATE quest_template SET DetailsEmote1=5,DetailsEmote2=1,DetailsEmote3=5,DetailsEmoteDelay2=1000 WHERE entry=12114;
UPDATE quest_template SET DetailsEmote1=1 WHERE entry=12116;
UPDATE quest_template SET DetailsEmote1=15,DetailsEmote2=6,DetailsEmote3=1,OfferRewardEmote1=6,OfferRewardEmote2=1 WHERE entry=12117;
UPDATE quest_template SET DetailsEmote1=15,DetailsEmote2=6,DetailsEmote3=1,OfferRewardEmote1=6,OfferRewardEmote2=1 WHERE entry=12118;
UPDATE quest_template SET DetailsEmote1=5,DetailsEmote2=1,DetailsEmote3=1,DetailsEmote4=2 WHERE entry=12119;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=0,DetailsEmoteDelay2=1000 WHERE entry=12120;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1 WHERE entry=12121;
UPDATE quest_template SET DetailsEmote1=273,DetailsEmote2=1,DetailsEmote3=1,DetailsEmoteDelay1=2000,OfferRewardEmoteDelay3=2000 WHERE entry=12123;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1 WHERE entry=12128;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1 WHERE entry=12129;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1 WHERE entry=12130;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1 WHERE entry=12131;
UPDATE quest_template SET DetailsEmote1=1 WHERE entry=12134;
UPDATE quest_template SET DetailsEmote1=1 WHERE entry=12137;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1 WHERE entry=12138;
UPDATE quest_template SET DetailsEmote1=0 WHERE entry=12141;
UPDATE quest_template SET DetailsEmote1=5 WHERE entry=12142;
UPDATE quest_template SET DetailsEmote1=1 WHERE entry=12143;
UPDATE quest_template SET DetailsEmote1=0 WHERE entry=12146;
UPDATE quest_template SET DetailsEmote1=1 WHERE entry=12148;
UPDATE quest_template SET DetailsEmote1=1 WHERE entry=12149;
UPDATE quest_template SET DetailsEmote1=1 WHERE entry=12150;
UPDATE quest_template SET DetailsEmote1=1 WHERE entry=12151;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=0,DetailsEmoteDelay2=1000,OfferRewardEmoteDelay2=500 WHERE entry=12152;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1 WHERE entry=12153;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,IncompleteEmote=1 WHERE entry=12154;
UPDATE quest_template SET DetailsEmote1=1 WHERE entry=12158;
UPDATE quest_template SET DetailsEmote1=1 WHERE entry=12159;
UPDATE quest_template SET DetailsEmote1=0 WHERE entry=12160;
UPDATE quest_template SET DetailsEmote1=1 WHERE entry=12161;
UPDATE quest_template SET DetailsEmote1=1 WHERE entry=12164;
UPDATE quest_template SET DetailsEmote1=6,DetailsEmote2=1,DetailsEmote3=1 WHERE entry=12166;
UPDATE quest_template SET DetailsEmote1=5,DetailsEmote2=1,DetailsEmote3=25 WHERE entry=12167;
UPDATE quest_template SET DetailsEmote1=0 WHERE entry=12168;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1,IncompleteEmote=1 WHERE entry=12169;
UPDATE quest_template SET DetailsEmote1=2,DetailsEmote2=1,DetailsEmote3=1,DetailsEmote4=25,OfferRewardEmote1=1 WHERE entry=12172;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1 WHERE entry=12180;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1 WHERE entry=12183;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1 WHERE entry=12184;
UPDATE quest_template SET DetailsEmote1=0 WHERE entry=12185;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=0,DetailsEmoteDelay2=500 WHERE entry=12190;
UPDATE quest_template SET DetailsEmote1=5,DetailsEmote2=1,DetailsEmote3=1,DetailsEmote4=1 WHERE entry=12210;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1 WHERE entry=12212;
UPDATE quest_template SET DetailsEmote1=1 WHERE entry=12215;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1 WHERE entry=12216;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1 WHERE entry=12217;
UPDATE quest_template SET DetailsEmote1=1 WHERE entry=12219;
UPDATE quest_template SET DetailsEmote1=1 WHERE entry=12220;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1 WHERE entry=12222;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1 WHERE entry=12223;
UPDATE quest_template SET DetailsEmote1=0 WHERE entry=12225;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1 WHERE entry=12226;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=5 WHERE entry=12227;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1,DetailsEmote4=5 WHERE entry=12235;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1,DetailsEmote4=5,IncompleteEmote=5 WHERE entry=12237;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=5,DetailsEmote3=1 WHERE entry=12238;
UPDATE quest_template SET DetailsEmote1=5,DetailsEmote2=5,DetailsEmote3=6,DetailsEmote4=1 WHERE entry=12244;
UPDATE quest_template SET DetailsEmote1=1,OfferRewardEmote1=274 WHERE entry=12246;
UPDATE quest_template SET DetailsEmote1=1,OfferRewardEmote1=1 WHERE entry=12247;
UPDATE quest_template SET DetailsEmote1=1,OfferRewardEmote1=2 WHERE entry=12248;
UPDATE quest_template SET DetailsEmote1=1 WHERE entry=12249;
UPDATE quest_template SET DetailsEmote1=1,OfferRewardEmote1=1 WHERE entry=12250;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=66 WHERE entry=12251;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1 WHERE entry=12253;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1 WHERE entry=12255;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1 WHERE entry=12258;
UPDATE quest_template SET IncompleteEmote=6 WHERE entry=12261;
UPDATE quest_template SET DetailsEmote1=1 WHERE entry=12266;
UPDATE quest_template SET IncompleteEmote=1 WHERE entry=12267;
UPDATE quest_template SET DetailsEmote1=5,DetailsEmote2=1,DetailsEmote3=1 WHERE entry=12268;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1,DetailsEmote4=1 WHERE entry=12269;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1,DetailsEmote4=5 WHERE entry=12272;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1 WHERE entry=12275;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1 WHERE entry=12276;
UPDATE quest_template SET DetailsEmote1=0 WHERE entry=12277;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1 WHERE entry=12279;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1 WHERE entry=12281;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1 WHERE entry=12282;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1 WHERE entry=12287;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=5,DetailsEmote4=5 WHERE entry=12289;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1 WHERE entry=12290;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1 WHERE entry=12291;
UPDATE quest_template SET DetailsEmote1=66 WHERE entry=12292;
UPDATE quest_template SET DetailsEmote1=1 WHERE entry=12293;
UPDATE quest_template SET DetailsEmote1=0 WHERE entry=12294;
UPDATE quest_template SET DetailsEmote1=0 WHERE entry=12295;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1 WHERE entry=12296;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=5,DetailsEmote4=25,OfferRewardEmoteDelay1=2000 WHERE entry=12297;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=5,DetailsEmote3=1 WHERE entry=12298;
UPDATE quest_template SET DetailsEmote1=1 WHERE entry=12299;
UPDATE quest_template SET DetailsEmote1=1 WHERE entry=12300;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1,DetailsEmote4=1 WHERE entry=12301;
UPDATE quest_template SET DetailsEmote1=1 WHERE entry=12302;
UPDATE quest_template SET DetailsEmote1=2,DetailsEmote2=1,DetailsEmote3=1,DetailsEmote4=3 WHERE entry=12305;
UPDATE quest_template SET DetailsEmote1=1 WHERE entry=12307;
UPDATE quest_template SET DetailsEmote1=0 WHERE entry=12308;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1 WHERE entry=12309;
UPDATE quest_template SET DetailsEmote1=1 WHERE entry=12310;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1 WHERE entry=12311;
UPDATE quest_template SET DetailsEmote1=0 WHERE entry=12312;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,OfferRewardEmote1=1,OfferRewardEmote2=1 WHERE entry=12314;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,OfferRewardEmote1=1,OfferRewardEmote2=1 WHERE entry=12316;
UPDATE quest_template SET DetailsEmote1=6,DetailsEmote2=1,DetailsEmote3=274,DetailsEmote4=1 WHERE entry=12319;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=25 WHERE entry=12320;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1 WHERE entry=12321;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,OfferRewardEmote1=113 WHERE entry=12323;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1,DetailsEmote4=1 WHERE entry=12325;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1,DetailsEmote4=1 WHERE entry=12326;
UPDATE quest_template SET DetailsEmote1=1 WHERE entry=12327;
UPDATE quest_template SET DetailsEmote1=1 WHERE entry=12328;
UPDATE quest_template SET DetailsEmote1=1 WHERE entry=12329;
UPDATE quest_template SET DetailsEmote1=1 WHERE entry=12330;
UPDATE quest_template SET DetailsEmote1=1 WHERE entry=12411;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1 WHERE entry=12414;
UPDATE quest_template SET DetailsEmote1=1,IncompleteEmote=1 WHERE entry=12416;
UPDATE quest_template SET DetailsEmote1=1 WHERE entry=12417;
UPDATE quest_template SET DetailsEmote1=1 WHERE entry=12418;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=5 WHERE entry=12437;
UPDATE quest_template SET DetailsEmote1=0 WHERE entry=12438;
UPDATE quest_template SET DetailsEmote1=0,IncompleteEmote=6 WHERE entry=12441;
UPDATE quest_template SET DetailsEmote1=0,IncompleteEmote=5 WHERE entry=12442;
UPDATE quest_template SET DetailsEmote1=5,DetailsEmote2=1,DetailsEmote3=1 WHERE entry=12443;
UPDATE quest_template SET DetailsEmote1=1 WHERE entry=12444;
UPDATE quest_template SET DetailsEmote1=1 WHERE entry=12447;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1 WHERE entry=12455;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1,DetailsEmote4=66 WHERE entry=12457;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=25 WHERE entry=12458;
UPDATE quest_template SET DetailsEmote1=1 WHERE entry=12460;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1,DetailsEmote4=1 WHERE entry=12462;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1 WHERE entry=12463;
UPDATE quest_template SET DetailsEmote1=5,DetailsEmote2=1,DetailsEmote3=1,DetailsEmote4=25,OfferRewardEmoteDelay3=1000 WHERE entry=12464;
UPDATE quest_template SET OfferRewardEmote1=1,OfferRewardEmote2=1,OfferRewardEmote3=1 WHERE entry=12465;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1,DetailsEmote4=2,OfferRewardEmote1=1,OfferRewardEmote2=1,OfferRewardEmote3=1 WHERE entry=12466;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1,CompleteEmote=6,OfferRewardEmote1=1,OfferRewardEmote2=1,OfferRewardEmote3=1 WHERE entry=12467;
UPDATE quest_template SET DetailsEmote1=5,DetailsEmote2=1,DetailsEmote3=25,DetailsEmote4=1 WHERE entry=12470;
UPDATE quest_template SET DetailsEmote1=1 WHERE entry=12471;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1,DetailsEmote4=4,CompleteEmote=1,OfferRewardEmote1=1,OfferRewardEmote2=1 WHERE entry=12472;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1,DetailsEmote4=1,OfferRewardEmote1=4,OfferRewardEmote2=1,OfferRewardEmote3=66,OfferRewardEmote4=1 WHERE entry=12473;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1 WHERE entry=12474;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1,DetailsEmote4=1 WHERE entry=12475;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1 WHERE entry=12476;
UPDATE quest_template SET DetailsEmote1=6,DetailsEmote2=1,DetailsEmote3=1 WHERE entry=12477;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1 WHERE entry=12478;
UPDATE quest_template SET DetailsEmote1=396,DetailsEmote2=396,DetailsEmote3=396 WHERE entry=12483;
UPDATE quest_template SET DetailsEmote1=1 WHERE entry=12484;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1 WHERE entry=12497;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1 WHERE entry=12498;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=2 WHERE entry=12499;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=6,DetailsEmote3=25,DetailsEmote4=1,OfferRewardEmote1=2,OfferRewardEmote2=1,OfferRewardEmote3=1 WHERE entry=12503;
UPDATE quest_template SET DetailsEmote1=6,DetailsEmote2=1,DetailsEmote3=1,DetailsEmote4=1,DetailsEmoteDelay1=2000,IncompleteEmote=1,OfferRewardEmote1=1,OfferRewardEmote2=1 WHERE entry=12504;
UPDATE quest_template SET DetailsEmote1=6,DetailsEmote2=1,DetailsEmote3=1,CompleteEmote=6,OfferRewardEmote1=6,OfferRewardEmoteDelay1=2000 WHERE entry=12505;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=5,OfferRewardEmote1=6,OfferRewardEmote2=1,OfferRewardEmote3=5,OfferRewardEmoteDelay2=2000 WHERE entry=12506;
UPDATE quest_template SET CompleteEmote=6,OfferRewardEmote1=5 WHERE entry=12507;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=6,IncompleteEmote=6,OfferRewardEmote1=1 WHERE entry=12508;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1,DetailsEmote4=1,DetailsEmoteDelay1=2000,CompleteEmote=6,OfferRewardEmote1=1 WHERE entry=12510;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1 WHERE entry=12511;
UPDATE quest_template SET OfferRewardEmote1=6,OfferRewardEmote2=1 WHERE entry=12512;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1,CompleteEmote=6,OfferRewardEmote1=25,OfferRewardEmoteDelay1=2000 WHERE entry=12514;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=6,DetailsEmote4=25,IncompleteEmote=6,OfferRewardEmote1=4,OfferRewardEmote2=1 WHERE entry=12516;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,OfferRewardEmote1=1,OfferRewardEmote2=1 WHERE entry=12520;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1 WHERE entry=12521;
UPDATE quest_template SET DetailsEmote1=5,DetailsEmote2=1 WHERE entry=12522;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,CompleteEmote=1,OfferRewardEmote1=1,OfferRewardEmote2=1 WHERE entry=12523;
UPDATE quest_template SET OfferRewardEmote1=1,OfferRewardEmote2=1 WHERE entry=12525;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,OfferRewardEmote1=1,OfferRewardEmote2=1 WHERE entry=12526;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=6,DetailsEmote3=5,CompleteEmote=6,OfferRewardEmote1=2,OfferRewardEmote2=1 WHERE entry=12527;
UPDATE quest_template SET DetailsEmote1=1,OfferRewardEmote1=1 WHERE entry=12528;
UPDATE quest_template SET DetailsEmote1=1,OfferRewardEmote1=1 WHERE entry=12529;
UPDATE quest_template SET DetailsEmote1=1,IncompleteEmote=1,OfferRewardEmote1=1 WHERE entry=12530;
UPDATE quest_template SET DetailsEmote1=1,CompleteEmote=1,OfferRewardEmote1=6 WHERE entry=12531;
UPDATE quest_template SET DetailsEmote1=1,CompleteEmote=6,OfferRewardEmote1=1 WHERE entry=12532;
UPDATE quest_template SET DetailsEmote1=1,OfferRewardEmote1=1 WHERE entry=12533;
UPDATE quest_template SET DetailsEmote1=1,CompleteEmote=1,OfferRewardEmote1=5 WHERE entry=12534;
UPDATE quest_template SET DetailsEmote1=1,CompleteEmote=1,OfferRewardEmote1=1 WHERE entry=12535;
UPDATE quest_template SET DetailsEmote1=1,OfferRewardEmote1=1 WHERE entry=12536;
UPDATE quest_template SET DetailsEmote1=1,OfferRewardEmote1=153 WHERE entry=12537;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=273,DetailsEmoteDelay2=60,OfferRewardEmote1=5,OfferRewardEmote2=1,OfferRewardEmoteDelay2=30 WHERE entry=12538;
UPDATE quest_template SET DetailsEmote1=1,OfferRewardEmote1=11,OfferRewardEmote2=1,OfferRewardEmoteDelay2=60 WHERE entry=12539;
UPDATE quest_template SET DetailsEmote1=1,OfferRewardEmote1=6 WHERE entry=12540;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1 WHERE entry=12542;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,CompleteEmote=1,OfferRewardEmote1=1,OfferRewardEmote2=1 WHERE entry=12543;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,OfferRewardEmote1=1,OfferRewardEmote2=1 WHERE entry=12544;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1,DetailsEmote4=1 WHERE entry=12545;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,IncompleteEmote=1,OfferRewardEmote1=1,OfferRewardEmote2=1 WHERE entry=12549;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,IncompleteEmote=1,OfferRewardEmote1=1,OfferRewardEmote2=1 WHERE entry=12550;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,OfferRewardEmote1=1 WHERE entry=12551;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=5,DetailsEmote3=25,OfferRewardEmote1=5 WHERE entry=12552;
UPDATE quest_template SET DetailsEmote1=6,DetailsEmote2=1,DetailsEmote3=274,DetailsEmote4=1,CompleteEmote=1,OfferRewardEmote1=1 WHERE entry=12553;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,CompleteEmote=1,OfferRewardEmote1=1,OfferRewardEmote2=2,OfferRewardEmoteDelay2=2000 WHERE entry=12554;
UPDATE quest_template SET DetailsEmote1=5,DetailsEmote2=1,DetailsEmote3=273,OfferRewardEmote1=4,OfferRewardEmote2=1,OfferRewardEmote3=6 WHERE entry=12555;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,CompleteEmote=1,OfferRewardEmote1=1,OfferRewardEmote2=1 WHERE entry=12556;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1 WHERE entry=12557;
UPDATE quest_template SET CompleteEmote=1,OfferRewardEmote1=1,OfferRewardEmote2=1 WHERE entry=12558;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,CompleteEmote=1 WHERE entry=12560;
UPDATE quest_template SET DetailsEmote1=0 WHERE entry=12561;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1,OfferRewardEmote1=66 WHERE entry=12562;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1,DetailsEmote4=1 WHERE entry=12565;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,CompleteEmote=1,OfferRewardEmote1=1 WHERE entry=12569;
UPDATE quest_template SET DetailsEmote1=6,OfferRewardEmote1=6 WHERE entry=12570;
UPDATE quest_template SET DetailsEmote1=1,OfferRewardEmote1=6 WHERE entry=12571;
UPDATE quest_template SET DetailsEmote1=1,CompleteEmote=1,OfferRewardEmote1=5,OfferRewardEmoteDelay1=20 WHERE entry=12572;
UPDATE quest_template SET IncompleteEmote=6,OfferRewardEmote1=5 WHERE entry=12573;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmoteDelay1=60,OfferRewardEmote1=1 WHERE entry=12574;
UPDATE quest_template SET DetailsEmote1=1,CompleteEmote=1,OfferRewardEmote1=5 WHERE entry=12575;
UPDATE quest_template SET DetailsEmote1=1,OfferRewardEmote1=1 WHERE entry=12576;
UPDATE quest_template SET DetailsEmote1=1,OfferRewardEmote1=6 WHERE entry=12577;
UPDATE quest_template SET DetailsEmote1=1,IncompleteEmote=1,OfferRewardEmote1=1 WHERE entry=12578;
UPDATE quest_template SET DetailsEmote1=1,CompleteEmote=1,OfferRewardEmote1=1 WHERE entry=12579;
UPDATE quest_template SET DetailsEmote1=1,OfferRewardEmote1=1 WHERE entry=12580;
UPDATE quest_template SET DetailsEmote1=1 WHERE entry=12581;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=6,DetailsEmote3=29,CompleteEmote=6,OfferRewardEmote1=5,OfferRewardEmote2=1,OfferRewardEmoteDelay1=2000 WHERE entry=12583;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1,DetailsEmote4=25,CompleteEmote=1,OfferRewardEmote1=6,OfferRewardEmote2=5 WHERE entry=12584;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,OfferRewardEmote1=1,OfferRewardEmote2=1 WHERE entry=12589;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,OfferRewardEmote1=5,OfferRewardEmote2=6 WHERE entry=12592;
UPDATE quest_template SET DetailsEmote1=396,DetailsEmote2=397,DetailsEmote3=396,DetailsEmote4=396,DetailsEmoteDelay1=500,DetailsEmoteDelay2=1000,DetailsEmoteDelay3=1000,DetailsEmoteDelay4=1000 WHERE entry=12593;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,OfferRewardEmote1=1,OfferRewardEmote2=1 WHERE entry=12595;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=5,DetailsEmote3=6,DetailsEmote4=1,OfferRewardEmote1=5,OfferRewardEmote2=1,OfferRewardEmote3=5,OfferRewardEmote4=1 WHERE entry=12596;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1,OfferRewardEmote1=1 WHERE entry=12597;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=5,DetailsEmote3=1,OfferRewardEmote1=1,OfferRewardEmote2=1 WHERE entry=12598;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1,OfferRewardEmote1=1 WHERE entry=12599;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,OfferRewardEmote1=1,OfferRewardEmote2=1 WHERE entry=12603;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,CompleteEmote=1,OfferRewardEmote1=1 WHERE entry=12605;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=5 WHERE entry=12606;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1 WHERE entry=12607;
UPDATE quest_template SET OfferRewardEmote1=1,OfferRewardEmote2=1 WHERE entry=12609;
UPDATE quest_template SET OfferRewardEmote1=1 WHERE entry=12610;
UPDATE quest_template SET OfferRewardEmote1=1,OfferRewardEmote2=1 WHERE entry=12614;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1,DetailsEmote4=1 WHERE entry=12619;
UPDATE quest_template SET DetailsEmote1=6,DetailsEmote2=11,DetailsEmote3=1,CompleteEmote=1,OfferRewardEmote1=11,OfferRewardEmote2=25 WHERE entry=12622;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1,OfferRewardEmote1=2 WHERE entry=12623;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=5,DetailsEmote3=25,OfferRewardEmote1=1 WHERE entry=12627;
UPDATE quest_template SET DetailsEmote1=1 WHERE entry=12628;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1,OfferRewardEmote1=1,OfferRewardEmote2=1 WHERE entry=12629;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1,OfferRewardEmote1=1 WHERE entry=12630;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,CompleteEmote=1,OfferRewardEmote1=1,OfferRewardEmote2=1 WHERE entry=12634;
UPDATE quest_template SET DetailsEmote1=2,DetailsEmote2=1,DetailsEmote3=6,CompleteEmote=1,OfferRewardEmote1=1,OfferRewardEmote2=1,OfferRewardEmote3=6 WHERE entry=12635;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1,DetailsEmote4=1 WHERE entry=12636;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,OfferRewardEmote1=1,OfferRewardEmote2=6 WHERE entry=12637;
UPDATE quest_template SET CompleteEmote=1 WHERE entry=12639;
UPDATE quest_template SET DetailsEmote1=25,DetailsEmote2=5,OfferRewardEmote1=1 WHERE entry=12640;
UPDATE quest_template SET DetailsEmote1=396,DetailsEmote2=397,DetailsEmote3=396 WHERE entry=12641;
UPDATE quest_template SET OfferRewardEmote1=1,OfferRewardEmote2=1 WHERE entry=12644;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,OfferRewardEmote1=1 WHERE entry=12645;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1,OfferRewardEmote1=1,OfferRewardEmote2=1 WHERE entry=12648;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=273,CompleteEmote=274,OfferRewardEmote1=1,OfferRewardEmote2=1,OfferRewardEmote3=1,OfferRewardEmote4=1,OfferRewardEmoteDelay2=2000 WHERE entry=12650;
UPDATE quest_template SET OfferRewardEmote1=1 WHERE entry=12652;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,CompleteEmote=1,OfferRewardEmote1=1,OfferRewardEmote2=1 WHERE entry=12654;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1 WHERE entry=12655;
UPDATE quest_template SET DetailsEmote1=396,DetailsEmote2=15,DetailsEmote3=396,DetailsEmote4=0,DetailsEmoteDelay1=1000,DetailsEmoteDelay2=2000,DetailsEmoteDelay3=2000 WHERE entry=12657;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,CompleteEmote=1,OfferRewardEmote1=1,OfferRewardEmote2=1 WHERE entry=12658;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=5,OfferRewardEmote1=11,OfferRewardEmote2=6 WHERE entry=12659;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1 WHERE entry=12661;
UPDATE quest_template SET DetailsEmote1=6,DetailsEmote2=274,DetailsEmote3=25,DetailsEmote4=1,DetailsEmoteDelay1=2000,OfferRewardEmote1=4,OfferRewardEmote2=1,OfferRewardEmote3=1,OfferRewardEmoteDelay2=2000 WHERE entry=12662;
UPDATE quest_template SET DetailsEmote1=6,DetailsEmote2=1,DetailsEmote3=1,DetailsEmote4=66 WHERE entry=12670;
UPDATE quest_template SET OfferRewardEmote1=1,OfferRewardEmote2=1 WHERE entry=12673;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1,DetailsEmote4=5 WHERE entry=12678;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1 WHERE entry=12679;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1,DetailsEmote4=1 WHERE entry=12680;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,CompleteEmote=1,OfferRewardEmote1=1,OfferRewardEmote2=1 WHERE entry=12681;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,CompleteEmote=1,OfferRewardEmote1=1,OfferRewardEmote2=1 WHERE entry=12683;
UPDATE quest_template SET IncompleteEmote=6,OfferRewardEmote1=1,OfferRewardEmote2=5,OfferRewardEmoteDelay1=2000 WHERE entry=12685;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1 WHERE entry=12687;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,OfferRewardEmote1=1,OfferRewardEmote2=1 WHERE entry=12688;
UPDATE quest_template SET OfferRewardEmote1=1 WHERE entry=12689;
UPDATE quest_template SET OfferRewardEmote1=1 WHERE entry=12695;
UPDATE quest_template SET DetailsEmote1=5,DetailsEmote2=1,DetailsEmote3=1,DetailsEmote4=1 WHERE entry=12697;
UPDATE quest_template SET DetailsEmote1=5,DetailsEmote2=25,DetailsEmote3=1,DetailsEmote4=1 WHERE entry=12698;
UPDATE quest_template SET DetailsEmote1=5,DetailsEmote2=1,DetailsEmote3=1,DetailsEmote4=1 WHERE entry=12700;
UPDATE quest_template SET DetailsEmote1=274,DetailsEmote2=1,DetailsEmote3=1,DetailsEmote4=1 WHERE entry=12701;
UPDATE quest_template SET DetailsEmote1=1,CompleteEmote=1,OfferRewardEmote1=1 WHERE entry=12704;
UPDATE quest_template SET DetailsEmote1=1,OfferRewardEmote1=1 WHERE entry=12705;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1 WHERE entry=12706;
UPDATE quest_template SET DetailsEmote1=25,DetailsEmote2=5,DetailsEmote3=1,DetailsEmote4=1,OfferRewardEmote1=4,OfferRewardEmote2=94 WHERE entry=12707;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=5,DetailsEmote4=6,OfferRewardEmote1=1,OfferRewardEmote2=6,OfferRewardEmoteDelay2=2000 WHERE entry=12708;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=6,DetailsEmote4=2,CompleteEmote=6,OfferRewardEmote1=5,OfferRewardEmote2=1,OfferRewardEmote3=1,OfferRewardEmote4=1 WHERE entry=12709;
UPDATE quest_template SET CompleteEmote=1 WHERE entry=12713;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=273,DetailsEmote4=25 WHERE entry=12714;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1,DetailsEmote4=5 WHERE entry=12715;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=5,DetailsEmote3=1,DetailsEmote4=6 WHERE entry=12716;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1 WHERE entry=12717;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1 WHERE entry=12719;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1,DetailsEmote4=273 WHERE entry=12720;
UPDATE quest_template SET OfferRewardEmote1=5,OfferRewardEmote2=1,OfferRewardEmote3=274 WHERE entry=12721;
UPDATE quest_template SET DetailsEmote1=0 WHERE entry=12722;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1 WHERE entry=12723;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1 WHERE entry=12724;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1,DetailsEmote4=5 WHERE entry=12725;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1 WHERE entry=12727;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1 WHERE entry=12728;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=25,DetailsEmote3=1 WHERE entry=12729;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1 WHERE entry=12733;
UPDATE quest_template SET DetailsEmote1=0 WHERE entry=12738;
UPDATE quest_template SET DetailsEmote1=5,DetailsEmote2=1,OfferRewardEmote1=1,OfferRewardEmote2=1 WHERE entry=12740;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1,DetailsEmote4=1 WHERE entry=12742;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1,DetailsEmote4=66 WHERE entry=12751;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1,DetailsEmote4=25 WHERE entry=12754;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1,DetailsEmote4=1 WHERE entry=12755;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1,DetailsEmote4=15 WHERE entry=12756;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1 WHERE entry=12757;
UPDATE quest_template SET DetailsEmote1=1 WHERE entry=12761;
UPDATE quest_template SET DetailsEmote1=1,CompleteEmote=1,OfferRewardEmote1=1 WHERE entry=12762;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=6,DetailsEmote3=1,DetailsEmoteDelay1=1000 WHERE entry=12766;
UPDATE quest_template SET DetailsEmote1=1 WHERE entry=12768;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1,DetailsEmote4=1 WHERE entry=12778;
UPDATE quest_template SET DetailsEmote1=396,DetailsEmote2=396,DetailsEmote3=396,DetailsEmote4=397 WHERE entry=12779;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1 WHERE entry=12789;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=273,DetailsEmote3=1 WHERE entry=12790;
UPDATE quest_template SET CompleteEmote=1,OfferRewardEmote1=2 WHERE entry=12794;
UPDATE quest_template SET DetailsEmote1=1 WHERE entry=12795;
UPDATE quest_template SET DetailsEmote1=396,DetailsEmote2=396,DetailsEmote3=396,DetailsEmote4=397 WHERE entry=12800;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1,DetailsEmote4=15 WHERE entry=12801;
UPDATE quest_template SET DetailsEmote1=0 WHERE entry=12802;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,CompleteEmote=1,OfferRewardEmote1=1 WHERE entry=12804;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=6,DetailsEmote3=1,OfferRewardEmote1=5 WHERE entry=12806;
UPDATE quest_template SET OfferRewardEmote1=1,OfferRewardEmote2=274,OfferRewardEmote3=5 WHERE entry=12807;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=25 WHERE entry=12810;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=274,DetailsEmote3=5,DetailsEmote4=25 WHERE entry=12813;
UPDATE quest_template SET DetailsEmote1=1,CompleteEmote=1,OfferRewardEmote1=1,OfferRewardEmote2=6,OfferRewardEmoteDelay2=120 WHERE entry=12818;
UPDATE quest_template SET DetailsEmote1=5,OfferRewardEmote1=11,OfferRewardEmote2=1,OfferRewardEmoteDelay2=60 WHERE entry=12819;
UPDATE quest_template SET OfferRewardEmote1=1,OfferRewardEmote2=1,OfferRewardEmoteDelay2=60 WHERE entry=12820;
UPDATE quest_template SET DetailsEmote1=5,OfferRewardEmote1=5 WHERE entry=12821;
UPDATE quest_template SET DetailsEmote1=1,OfferRewardEmote1=5 WHERE entry=12822;
UPDATE quest_template SET DetailsEmote1=1,OfferRewardEmote1=5 WHERE entry=12823;
UPDATE quest_template SET DetailsEmote1=1,OfferRewardEmote1=6 WHERE entry=12824;
UPDATE quest_template SET DetailsEmote1=5,CompleteEmote=6,OfferRewardEmote1=5 WHERE entry=12826;
UPDATE quest_template SET DetailsEmote1=5,DetailsEmote2=1,DetailsEmoteDelay2=60,CompleteEmote=1,OfferRewardEmote1=1 WHERE entry=12827;
UPDATE quest_template SET DetailsEmote1=5,DetailsEmote2=1,DetailsEmoteDelay2=60,CompleteEmote=1,OfferRewardEmote1=1 WHERE entry=12828;
UPDATE quest_template SET DetailsEmote1=1,OfferRewardEmote1=1 WHERE entry=12829;
UPDATE quest_template SET DetailsEmote1=1,OfferRewardEmote1=1 WHERE entry=12830;
UPDATE quest_template SET OfferRewardEmote1=1 WHERE entry=12832;
UPDATE quest_template SET DetailsEmote1=3,DetailsEmote2=6,DetailsEmoteDelay2=120 WHERE entry=12833;
UPDATE quest_template SET DetailsEmote1=5,OfferRewardEmote1=5 WHERE entry=12836;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1 WHERE entry=12842;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1,DetailsEmote4=25 WHERE entry=12848;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1,DetailsEmote4=5 WHERE entry=12850;
UPDATE quest_template SET DetailsEmote1=396,DetailsEmote2=396,OfferRewardEmote1=1 WHERE entry=12851;
UPDATE quest_template SET DetailsEmote1=5,OfferRewardEmoteDelay2=60 WHERE entry=12853;
UPDATE quest_template SET DetailsEmote1=396,DetailsEmote2=396,OfferRewardEmote1=396 WHERE entry=12856;
UPDATE quest_template SET CompleteEmote=1,OfferRewardEmote1=7,OfferRewardEmote2=1,OfferRewardEmote3=1 WHERE entry=12857;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1 WHERE entry=12861;
UPDATE quest_template SET DetailsEmote1=1 WHERE entry=12862;
UPDATE quest_template SET DetailsEmote1=0 WHERE entry=12883;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1,CompleteEmote=6,OfferRewardEmote1=1,OfferRewardEmote2=1 WHERE entry=12884;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1,OfferRewardEmote1=6,OfferRewardEmote2=25 WHERE entry=12887;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1,DetailsEmote4=5 WHERE entry=12894;
UPDATE quest_template SET DetailsEmote1=1,OfferRewardEmote1=6 WHERE entry=12896;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmoteDelay2=2000 WHERE entry=12898;
UPDATE quest_template SET DetailsEmote1=396,DetailsEmote2=396,DetailsEmote3=396,CompleteEmote=274,OfferRewardEmote1=273,OfferRewardEmote2=396 WHERE entry=12901;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1,DetailsEmote4=1 WHERE entry=12902;
UPDATE quest_template SET DetailsEmote1=396,DetailsEmote2=396,DetailsEmote3=396,DetailsEmote4=6,OfferRewardEmote1=1,OfferRewardEmote2=1,OfferRewardEmote3=66 WHERE entry=12903;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1,DetailsEmote4=1,OfferRewardEmote1=6,OfferRewardEmote2=1 WHERE entry=12912;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1,DetailsEmote4=5,CompleteEmote=1,OfferRewardEmote1=396,OfferRewardEmote2=396 WHERE entry=12914;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1,IncompleteEmote=1,OfferRewardEmote1=53,OfferRewardEmote2=1,OfferRewardEmote3=1 WHERE entry=12916;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1,OfferRewardEmote1=5,OfferRewardEmote2=1,OfferRewardEmote3=1 WHERE entry=12919;
UPDATE quest_template SET OfferRewardEmote1=396,OfferRewardEmote2=396 WHERE entry=12924;
UPDATE quest_template SET DetailsEmote1=396,DetailsEmote2=396 WHERE entry=12966;
UPDATE quest_template SET DetailsEmote1=396,DetailsEmote2=396 WHERE entry=12967;
UPDATE quest_template SET DetailsEmote1=1 WHERE entry=12971;
UPDATE quest_template SET DetailsEmote1=396,DetailsEmote2=396,OfferRewardEmote1=396,OfferRewardEmote2=396 WHERE entry=12975;
UPDATE quest_template SET DetailsEmote1=396,DetailsEmote2=396,OfferRewardEmote1=396,OfferRewardEmote2=396 WHERE entry=12976;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=25,DetailsEmote3=5,OfferRewardEmote1=2 WHERE entry=12982;
UPDATE quest_template SET DetailsEmote1=396,DetailsEmote2=396,OfferRewardEmote1=396,OfferRewardEmote2=396 WHERE entry=12985;
UPDATE quest_template SET DetailsEmote1=396,DetailsEmote2=396,OfferRewardEmote1=396,OfferRewardEmote2=396 WHERE entry=12987;
UPDATE quest_template SET DetailsEmote1=1 WHERE entry=12989;
UPDATE quest_template SET DetailsEmote1=33,OfferRewardEmote1=35 WHERE entry=12992;
UPDATE quest_template SET DetailsEmote1=1 WHERE entry=12996;
UPDATE quest_template SET DetailsEmote1=396,DetailsEmote2=396,OfferRewardEmote1=396,OfferRewardEmote2=396 WHERE entry=13001;
UPDATE quest_template SET DetailsEmote1=396,DetailsEmote2=396 WHERE entry=13009;
UPDATE quest_template SET OfferRewardEmote1=396,OfferRewardEmote2=396 WHERE entry=13010;
UPDATE quest_template SET DetailsEmote1=396,DetailsEmote2=396,OfferRewardEmote1=396,OfferRewardEmote2=396 WHERE entry=13011;
UPDATE quest_template SET OfferRewardEmote1=1 WHERE entry=13012;
UPDATE quest_template SET OfferRewardEmote1=1 WHERE entry=13013;
UPDATE quest_template SET OfferRewardEmote1=1 WHERE entry=13014;
UPDATE quest_template SET OfferRewardEmote1=1 WHERE entry=13015;
UPDATE quest_template SET OfferRewardEmote1=1 WHERE entry=13016;
UPDATE quest_template SET OfferRewardEmote1=1 WHERE entry=13018;
UPDATE quest_template SET OfferRewardEmote1=1 WHERE entry=13019;
UPDATE quest_template SET OfferRewardEmote1=1 WHERE entry=13021;
UPDATE quest_template SET OfferRewardEmote1=1 WHERE entry=13022;
UPDATE quest_template SET OfferRewardEmote1=1 WHERE entry=13023;
UPDATE quest_template SET OfferRewardEmote1=1 WHERE entry=13024;
UPDATE quest_template SET OfferRewardEmote1=1 WHERE entry=13025;
UPDATE quest_template SET OfferRewardEmote1=1 WHERE entry=13026;
UPDATE quest_template SET OfferRewardEmote1=1 WHERE entry=13027;
UPDATE quest_template SET OfferRewardEmote1=1 WHERE entry=13028;
UPDATE quest_template SET OfferRewardEmote1=1 WHERE entry=13030;
UPDATE quest_template SET OfferRewardEmote1=1 WHERE entry=13033;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1,DetailsEmote4=1 WHERE entry=13036;
UPDATE quest_template SET OfferRewardEmote1=53 WHERE entry=13047;
UPDATE quest_template SET DetailsEmote1=1 WHERE entry=13057;
UPDATE quest_template SET DetailsEmote1=396,DetailsEmote2=396,OfferRewardEmote1=153 WHERE entry=13063;
UPDATE quest_template SET OfferRewardEmote1=1 WHERE entry=13065;
UPDATE quest_template SET OfferRewardEmote1=1 WHERE entry=13066;
UPDATE quest_template SET OfferRewardEmote1=1 WHERE entry=13067;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=25,DetailsEmote3=11,OfferRewardEmote1=1,OfferRewardEmote2=1,OfferRewardEmoteDelay1=2000 WHERE entry=13084;
UPDATE quest_template SET DetailsEmote1=5,OfferRewardEmote1=1 WHERE entry=13085;
UPDATE quest_template SET DetailsEmote1=22 WHERE entry=13087;
UPDATE quest_template SET DetailsEmote1=22,OfferRewardEmote1=5 WHERE entry=13088;
UPDATE quest_template SET IncompleteEmote=1 WHERE entry=13091;
UPDATE quest_template SET OfferRewardEmote1=25 WHERE entry=13093;
UPDATE quest_template SET DetailsEmote1=396,DetailsEmote2=396,OfferRewardEmote1=396,OfferRewardEmote2=396 WHERE entry=13094;
UPDATE quest_template SET OfferRewardEmote1=396 WHERE entry=13096;
UPDATE quest_template SET OfferRewardEmote1=396,OfferRewardEmote2=396 WHERE entry=13097;
UPDATE quest_template SET OfferRewardEmote1=396 WHERE entry=13098;
UPDATE quest_template SET DetailsEmote1=396,DetailsEmote2=396,OfferRewardEmote1=396,OfferRewardEmote2=396 WHERE entry=13099;
UPDATE quest_template SET DetailsEmote1=1 WHERE entry=13100;
UPDATE quest_template SET DetailsEmote1=396,DetailsEmote2=396 WHERE entry=13108;
UPDATE quest_template SET DetailsEmote1=396,DetailsEmote2=396 WHERE entry=13109;
UPDATE quest_template SET DetailsEmote1=396,DetailsEmote2=396 WHERE entry=13124;
UPDATE quest_template SET OfferRewardEmote1=396 WHERE entry=13128;
UPDATE quest_template SET DetailsEmote1=396,DetailsEmote2=396 WHERE entry=13129;
UPDATE quest_template SET CompleteEmote=6,OfferRewardEmote1=5,OfferRewardEmoteDelay1=100 WHERE entry=13153;
UPDATE quest_template SET OfferRewardEmote1=6,OfferRewardEmote2=396 WHERE entry=13159;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1 WHERE entry=13165;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1 WHERE entry=13166;
UPDATE quest_template SET DetailsEmote1=1 WHERE entry=13177;
UPDATE quest_template SET DetailsEmote1=1,OfferRewardEmote1=66 WHERE entry=13179;
UPDATE quest_template SET DetailsEmote1=1 WHERE entry=13181;
UPDATE quest_template SET DetailsEmote1=1 WHERE entry=13186;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1 WHERE entry=13188;
UPDATE quest_template SET DetailsEmote1=1,OfferRewardEmote1=11,OfferRewardEmoteDelay1=100 WHERE entry=13197;
UPDATE quest_template SET CompleteEmote=6,OfferRewardEmote1=5,OfferRewardEmoteDelay1=100 WHERE entry=13198;
UPDATE quest_template SET DetailsEmote1=5,DetailsEmote2=396,DetailsEmote3=5,DetailsEmote4=396 WHERE entry=13205;
UPDATE quest_template SET DetailsEmote1=1,OfferRewardEmote1=66 WHERE entry=13222;
UPDATE quest_template SET DetailsEmote1=5,DetailsEmote2=1,DetailsEmote3=1,DetailsEmote4=5 WHERE entry=13226;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=25,IncompleteEmote=1,OfferRewardEmote1=273,OfferRewardEmoteDelay1=2000 WHERE entry=13240;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=25,IncompleteEmote=1,OfferRewardEmote1=1 WHERE entry=13241;
UPDATE quest_template SET DetailsEmote1=5,DetailsEmote2=25,OfferRewardEmote1=2,OfferRewardEmote2=1 WHERE entry=13243;
UPDATE quest_template SET DetailsEmote1=5,DetailsEmote2=1,DetailsEmote3=25,IncompleteEmote=6 WHERE entry=13244;
UPDATE quest_template SET DetailsEmote1=25,DetailsEmote2=1,CompleteEmote=6,OfferRewardEmote1=1 WHERE entry=13245;
UPDATE quest_template SET DetailsEmote1=5,DetailsEmote2=6,DetailsEmote3=1,CompleteEmote=6,OfferRewardEmote1=2,OfferRewardEmote2=6 WHERE entry=13247;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=25,CompleteEmote=1,OfferRewardEmote1=1,OfferRewardEmoteDelay1=2000 WHERE entry=13248;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=274,DetailsEmote3=6,CompleteEmote=6,OfferRewardEmote1=1,OfferRewardEmote2=6,OfferRewardEmoteDelay2=2000 WHERE entry=13249;
UPDATE quest_template SET DetailsEmote1=5,DetailsEmote2=1,DetailsEmote3=6,CompleteEmote=6,OfferRewardEmote1=2,OfferRewardEmote2=6 WHERE entry=13250;
UPDATE quest_template SET DetailsEmote1=6,DetailsEmote2=1,CompleteEmote=6,OfferRewardEmote1=6 WHERE entry=13252;
UPDATE quest_template SET DetailsEmote1=5,DetailsEmote2=1,DetailsEmote3=25,CompleteEmote=6,OfferRewardEmote1=1,OfferRewardEmote2=6,OfferRewardEmoteDelay1=2000 WHERE entry=13253;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,CompleteEmote=6,OfferRewardEmote1=6,OfferRewardEmote2=1,OfferRewardEmoteDelay1=2000,OfferRewardEmoteDelay2=2000 WHERE entry=13255;
UPDATE quest_template SET DetailsEmote1=5,DetailsEmote2=1,DetailsEmote3=6,CompleteEmote=6,OfferRewardEmote1=1,OfferRewardEmote2=2,OfferRewardEmote3=5 WHERE entry=13256;
UPDATE quest_template SET CompleteEmote=1 WHERE entry=13272;
UPDATE quest_template SET OfferRewardEmote1=5,OfferRewardEmote2=4,OfferRewardEmote3=1,OfferRewardEmote4=25 WHERE entry=13343;
UPDATE quest_template SET OfferRewardEmote1=1,OfferRewardEmote2=1,OfferRewardEmote3=15 WHERE entry=13347;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,OfferRewardEmote1=1,OfferRewardEmote2=1,OfferRewardEmote3=1 WHERE entry=13369;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1,OfferRewardEmote1=6,OfferRewardEmote2=1 WHERE entry=13370;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=1,OfferRewardEmote1=6,OfferRewardEmote2=1 WHERE entry=13371;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,OfferRewardEmote1=1,OfferRewardEmote2=6,OfferRewardEmote3=274,OfferRewardEmote4=15 WHERE entry=13377;
UPDATE quest_template SET OfferRewardEmote1=1 WHERE entry=13405;
UPDATE quest_template SET DetailsEmote1=1 WHERE entry=13410;
UPDATE quest_template SET DetailsEmote1=396,DetailsEmote2=396 WHERE entry=13412;
UPDATE quest_template SET DetailsEmote1=396,DetailsEmote2=396,OfferRewardEmote1=396,OfferRewardEmote2=396 WHERE entry=13413;
UPDATE quest_template SET DetailsEmote1=396,DetailsEmote2=396,OfferRewardEmote1=396,OfferRewardEmote2=396 WHERE entry=13414;
UPDATE quest_template SET DetailsEmote1=5,DetailsEmote2=1,DetailsEmote3=5,DetailsEmote4=0,DetailsEmoteDelay2=60,DetailsEmoteDelay3=60,OfferRewardEmote1=1,OfferRewardEmote2=1,OfferRewardEmoteDelay2=60 WHERE entry=13418;
UPDATE quest_template SET OfferRewardEmote1=66 WHERE entry=13478;
UPDATE quest_template SET DetailsEmote1=1 WHERE entry=13538;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1,DetailsEmote3=6,DetailsEmote4=25,IncompleteEmote=274,OfferRewardEmote1=1 WHERE entry=13549;
UPDATE quest_template SET CompleteEmote=6,OfferRewardEmote1=4 WHERE entry=13556;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1 WHERE entry=13627;
UPDATE quest_template SET CompleteEmote=1,OfferRewardEmote1=5 WHERE entry=13662;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1 WHERE entry=13681;
UPDATE quest_template SET DetailsEmote1=1,DetailsEmote2=1 WHERE entry=13820;
UPDATE quest_template SET RequestItemsText='<Sal\'salabim rubs his head.>$B$B[Demonic] Ik il romath sardon.' WHERE entry=10004;
UPDATE quest_template SET RequestItemsText='Got some more of that element 115 for me, $n?' WHERE entry=12446;
UPDATE quest_template SET RequestItemsText='Ah, $N.  I hope you continue to lend your experience to the different battlefronts.  A lot of our lads and lasses in the field look up to seasoned veterans like you.' WHERE entry=13477;
UPDATE quest_template SET RequestItemsText='You\'ve worked your way up through the Brotherhood\'s corporate hierarchy, $r. We have begun to look favorably upon you. Quite an accomplishment!$B$BIf you\'re interested in more work and earning more respect amongst us, listen up.$B$BWe can refine the fiery flux by adding a simple Dark Iron residue to the mix. The Dark Iron residue can be found in Blackrock Depths.$B$BBring me all the Dark Iron residue you find!' WHERE entry=13662;
UPDATE quest_template SET OfferRewardText='A dragon slayer and a seasoned leatherworker? You do not cease to astonish, hero. I am humbled.$B$BPlease accept what I am about to teach you. This knowledge will prove to be invaluable if you are to destroy what remains of the Black Dragonflight.$B$BCreate the cloak from the scales of the brood mother. It will protect you and your allies against the incendiary breath of the Lord of Blackrock... Nefarian.' WHERE entry=7497;
UPDATE quest_template SET OfferRewardText='Wonderful! Wonderful! I will add this to the pile of other gifts.$b$bI didn\'t expect so many! You must truly love your leaders.$b$bNow, let me just add one more to the count...' WHERE entry=8993;
UPDATE quest_template SET OfferRewardText='Nice work, friend!$b$bKeep \'em comin\'.' WHERE entry=12446;
UPDATE quest_template SET OfferRewardText='It is good to know the people of this land still pay homage to the olden races.  I bid you well, $N, and offer you this token...' WHERE entry=13012;
UPDATE quest_template SET OfferRewardText='It is good to know the people of this land still pay homage to the olden races.  I bid you well, $N, and offer you this token...' WHERE entry=13013;
UPDATE quest_template SET OfferRewardText='It is good to know the people of this land still pay homage to the olden races.  I bid you well, $N, and offer you this token...' WHERE entry=13014;
UPDATE quest_template SET OfferRewardText='It is good to know the people of this land still pay homage to the olden races.  I bid you well, $N, and offer you this token...' WHERE entry=13015;
UPDATE quest_template SET OfferRewardText='It is good to know the people of this land still pay homage to the olden races.  I bid you well, $N, and offer you this token...' WHERE entry=13016;
UPDATE quest_template SET OfferRewardText='It is good to know the people of this land still pay homage to the olden races.  I bid you well, $N, and offer you this token...' WHERE entry=13018;
UPDATE quest_template SET OfferRewardText='It is good to know the people of this land still pay homage to the olden races.  I bid you well, $N, and offer you this token...' WHERE entry=13019;
UPDATE quest_template SET OfferRewardText='It is good to know the people of this land still pay homage to the olden races.  I bid you well, $N, and offer you this token...' WHERE entry=13021;
UPDATE quest_template SET OfferRewardText='It is good to know the people of this land still pay homage to the olden races.  I bid you well, $N, and offer you this token...' WHERE entry=13022;
UPDATE quest_template SET OfferRewardText='It is good to know the people of this land still pay homage to the olden races.  I bid you well, $N, and offer you this token...' WHERE entry=13023;
UPDATE quest_template SET OfferRewardText='Your spirit burns with life, young $c.  I accept the homage you pay, and offer in return this token...' WHERE entry=13024;
UPDATE quest_template SET OfferRewardText='Your spirit burns with life, young $c.  I accept the homage you pay, and offer in return this token...' WHERE entry=13025;
UPDATE quest_template SET OfferRewardText='Your spirit burns with life, young $c.  I accept the homage you pay, and offer in return this token...' WHERE entry=13026;
UPDATE quest_template SET OfferRewardText='Your spirit burns with life, young $c.  I accept the homage you pay, and offer in return this token...' WHERE entry=13027;
UPDATE quest_template SET OfferRewardText='Your spirit burns with life, young $c.  I accept the homage you pay, and offer in return this token...' WHERE entry=13028;
UPDATE quest_template SET OfferRewardText='Your spirit burns with life, young $c.  I accept the homage you pay, and offer in return this token...' WHERE entry=13030;
UPDATE quest_template SET OfferRewardText='Your spirit burns with life, young $c.  I accept the homage you pay, and offer in return this token...' WHERE entry=13033;
UPDATE quest_template SET OfferRewardText='It is good to know the people of this land still pay homage to the olden races.  I bid you well, $N, and offer you this token...' WHERE entry=13065;
UPDATE quest_template SET OfferRewardText='It is good to know the people of this land still pay homage to the olden races.  I bid you well, $N, and offer you this token...' WHERE entry=13066;
UPDATE quest_template SET OfferRewardText='It is good to know the people of this land still pay homage to the olden races.  I bid you well, $N, and offer you this token...' WHERE entry=13067;
UPDATE quest_template SET OfferRewardText='You live up to yer reputation, $N.  Without people like you, the Alliance wouldn\'t stand a chance against the savage forces of the Horde.' WHERE entry=13477;
UPDATE quest_template SET OfferRewardText='Above the stale, unwashed stench, you catch a whiff of a familiar smell!  It appears as if this once-mighty adventurer has a real love for kungaloosh.$b$bPeeking through the bars, you can barely make out the recipe written on his arm....' WHERE entry=13571;
UPDATE quest_template SET OfferRewardText='Keep the residue pouring in!' WHERE entry=13662;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=550;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=573;
UPDATE creature_template SET speed_walk=0.666668 WHERE entry=598;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=622;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=634;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=636;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=639;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=641;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=642;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=643;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=644;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=645;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=646;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=647;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=657;
UPDATE creature_template SET speed_run=0.857143 WHERE entry=1122;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=1296;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=1729;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=1731;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=1732;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=1763;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=2299;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=2520;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=3298;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=3450;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=3581;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=3947;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=4184;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=4255;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=4257;
UPDATE creature_template SET speed_walk=1.11111 WHERE entry=4323;
UPDATE creature_template SET speed_walk=0.666668 WHERE entry=4416;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=4417;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=4418;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=5134;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=5135;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=5139;
UPDATE creature_template SET speed_walk=1.55556 WHERE entry=7032;
UPDATE creature_template SET speed_walk=0.888888 WHERE entry=7040;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=7044;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=7940;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=8277;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=8976;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=8981;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=9177;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=9536;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=9560;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=9561;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=9562;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=9563;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=9565;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=9691;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=9694;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=9836;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=10267;
UPDATE creature_template SET speed_walk=1.0,speed_run=1.28968 WHERE entry=10955;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=10981;
UPDATE creature_template SET speed_walk=1.38889 WHERE entry=10986;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=10987;
UPDATE creature_template SET speed_walk=1.0,speed_run=1.38571 WHERE entry=10990;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=11600;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=11602;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=11657;
UPDATE creature_template SET speed_walk=1.38889 WHERE entry=11675;
UPDATE creature_template SET speed_walk=1.38889 WHERE entry=11678;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=11716;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=11795;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=11796;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=11797;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=11801;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=11802;
UPDATE creature_template SET speed_walk=2.8 WHERE entry=11832;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=11939;
UPDATE creature_template SET speed_walk=1.0,speed_run=1.14286 WHERE entry=11947;
UPDATE creature_template SET speed_walk=1.0,speed_run=1.14286 WHERE entry=11948;
UPDATE creature_template SET speed_walk=1.0,speed_run=1.14286 WHERE entry=11949;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=11997;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=12019;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=12021;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=12022;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=12024;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=12026;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=12029;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=12042;
UPDATE creature_template SET speed_walk=1.0,speed_run=1.14286 WHERE entry=12050;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=12096;
UPDATE creature_template SET speed_walk=1.0,speed_run=1.14286 WHERE entry=12127;
UPDATE creature_template SET speed_run=1.14286 WHERE entry=12783;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=13177;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=13179;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=13216;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=13257;
UPDATE creature_template SET speed_walk=1.0,speed_run=1.14286 WHERE entry=13358;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=13447;
UPDATE creature_template SET speed_walk=1.0,speed_run=1.38571 WHERE entry=13577;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=13617;
UPDATE creature_template SET speed_walk=1.0,speed_run=0.714286 WHERE entry=13756;
UPDATE creature_template SET speed_walk=1.0,speed_run=0.714286 WHERE entry=13778;
UPDATE creature_template SET speed_walk=1.0,speed_run=0.714286 WHERE entry=13796;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=13797;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=13816;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=14026;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=14187;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=14188;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=14283;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=14284;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=14621;
UPDATE creature_template SET speed_walk=1.0,speed_run=1.14286 WHERE entry=14762;
UPDATE creature_template SET speed_walk=1.0,speed_run=1.14286 WHERE entry=14763;
UPDATE creature_template SET speed_walk=1.0,speed_run=1.14286 WHERE entry=14764;
UPDATE creature_template SET speed_walk=1.0,speed_run=1.14286 WHERE entry=14765;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=15102;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=15557;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=15567;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=15569;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=15577;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=15585;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=15719;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=15864;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=15871;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=15872;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=15879;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=15891;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=15892;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=15895;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=15898;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=15905;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=15907;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=15908;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=15909;
UPDATE creature_template SET speed_walk=1.0,speed_run=1.71429 WHERE entry=15961;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=16128;
UPDATE creature_template SET speed_walk=0.944444,speed_run=0.952381 WHERE entry=16943;
UPDATE creature_template SET speed_walk=0.944444,speed_run=0.952381 WHERE entry=16945;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=17138;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=17151;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=17152;
UPDATE creature_template SET speed_walk=1.0,speed_run=1.28968 WHERE entry=17153;
UPDATE creature_template SET speed_walk=1.0,speed_run=1.28968 WHERE entry=17154;
UPDATE creature_template SET speed_walk=1.0,speed_run=1.28968 WHERE entry=17155;
UPDATE creature_template SET speed_walk=0.6,speed_run=0.214286 WHERE entry=17408;
UPDATE creature_template SET speed_walk=1.0,speed_run=1.0 WHERE entry=18008;
UPDATE creature_template SET speed_walk=1.0,speed_run=1.0 WHERE entry=18009;
UPDATE creature_template SET speed_walk=1.0,speed_run=1.0 WHERE entry=18010;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=18013;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=18019;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=18064;
UPDATE creature_template SET speed_walk=1.0,speed_run=2.0 WHERE entry=18069;
UPDATE creature_template SET speed_walk=1.0,speed_run=1.0 WHERE entry=18088;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=18089;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=18117;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=18118;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=18127;
UPDATE creature_template SET speed_walk=1.0,speed_run=0.952381 WHERE entry=18129;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=18131;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=18133;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=18135;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=18159;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=18180;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=18192;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=18200;
UPDATE creature_template SET speed_walk=1.0,speed_run=1.0 WHERE entry=18202;
UPDATE creature_template SET speed_walk=1.0,speed_run=1.0 WHERE entry=18203;
UPDATE creature_template SET speed_walk=1.0,speed_run=1.0 WHERE entry=18204;
UPDATE creature_template SET speed_walk=1.0,speed_run=1.0 WHERE entry=18207;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=18208;
UPDATE creature_template SET speed_walk=1.0,speed_run=1.0 WHERE entry=18209;
UPDATE creature_template SET speed_walk=1.0,speed_run=1.0 WHERE entry=18211;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=18215;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=18218;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=18240;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=18245;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=18264;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=18285;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=18393;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=18454;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=18455;
UPDATE creature_template SET speed_run=1.25714 WHERE entry=18465;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=18471;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=18489;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=18532;
UPDATE creature_template SET speed_walk=0.777776,speed_run=0.992063 WHERE entry=18536;
UPDATE creature_template SET speed_walk=0.944444,speed_run=0.952381 WHERE entry=18567;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=18589;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=18590;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=18688;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=18809;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=18816;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=18821;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=18840;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=18841;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=18850;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=18858;
UPDATE creature_template SET speed_walk=1.0,speed_run=0.992063 WHERE entry=18870;
UPDATE creature_template SET speed_walk=0.666668 WHERE entry=18877;
UPDATE creature_template SET speed_walk=1.6 WHERE entry=18879;
UPDATE creature_template SET speed_walk=1.6 WHERE entry=18880;
UPDATE creature_template SET speed_walk=1.55556 WHERE entry=18881;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=18883;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=18884;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=18885;
UPDATE creature_template SET speed_walk=1.0,speed_run=0.992063 WHERE entry=18886;
UPDATE creature_template SET speed_walk=1.0,speed_run=1.0 WHERE entry=18908;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=18909;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=18939;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=18943;
UPDATE creature_template SET speed_run=0.992063 WHERE entry=19164;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=19181;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=19201;
UPDATE creature_template SET speed_walk=1.0,speed_run=0.992063 WHERE entry=19210;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=19211;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=19212;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=19273;
UPDATE creature_template SET speed_walk=4.0,speed_run=1.38571 WHERE entry=19275;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=19315;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=19351;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=19352;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=19368;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=19369;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=19370;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=19371;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=19372;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=19373;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=19374;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=19375;
UPDATE creature_template SET speed_walk=1.0,speed_run=1.38571 WHERE entry=19379;
UPDATE creature_template SET speed_walk=1.0,speed_run=2.85714 WHERE entry=19382;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=19384;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=19387;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=19388;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=19394;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=19395;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=19401;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=19526;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=19528;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=19530;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=19531;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=19532;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=19535;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=19536;
UPDATE creature_template SET speed_walk=1.0,speed_run=0.992063 WHERE entry=19568;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=19581;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=19593;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=19629;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=19631;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=19648;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=19649;
UPDATE creature_template SET speed_walk=1.0,speed_run=1.28968 WHERE entry=19653;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=19657;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=19686;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=19705;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=19719;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=19722;
UPDATE creature_template SET speed_walk=8.0,speed_run=2.85714 WHERE entry=19727;
UPDATE creature_template SET speed_walk=0.7,speed_run=0.25 WHERE entry=19731;
UPDATE creature_template SET speed_walk=1.11111 WHERE entry=19733;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=19734;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=19762;
UPDATE creature_template SET speed_walk=1.0,speed_run=1.0 WHERE entry=19768;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=19792;
UPDATE creature_template SET speed_walk=1.0,speed_run=1.38571 WHERE entry=19795;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=19796;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=19799;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=19800;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=19802;
UPDATE creature_template SET speed_walk=1.0,speed_run=1.38571 WHERE entry=19806;
UPDATE creature_template SET speed_walk=1.0,speed_run=0.992063 WHERE entry=19824;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=19825;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=19852;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=19853;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=19932;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=19933;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=19939;
UPDATE creature_template SET speed_walk=2.0,speed_run=1.42857 WHERE entry=19959;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=20026;
UPDATE creature_template SET speed_walk=1.0,speed_run=1.0 WHERE entry=20028;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=20067;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=20068;
UPDATE creature_template SET speed_walk=1.0,speed_run=1.0 WHERE entry=20076;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=20110;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=20111;
UPDATE creature_template SET speed_walk=0.888888,speed_run=0.912699 WHERE entry=20133;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=20134;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=20135;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=20136;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=20138;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=20139;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=20140;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=20141;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=20148;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=20153;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=20154;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=20202;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=20207;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=20215;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=20269;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=20272;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=20286;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=20288;
UPDATE creature_template SET speed_walk=1.0,speed_run=0.992063 WHERE entry=20294;
UPDATE creature_template SET speed_walk=1.0,speed_run=0.992063 WHERE entry=20295;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=20332;
UPDATE creature_template SET speed_walk=1.0,speed_run=0.992063 WHERE entry=20394;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=20431;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=20473;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=20475;
UPDATE creature_template SET speed_walk=1.0,speed_run=0.992063 WHERE entry=20477;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=20502;
UPDATE creature_template SET speed_walk=1.0,speed_run=1.38571 WHERE entry=20503;
UPDATE creature_template SET speed_walk=1.0,speed_run=1.38571 WHERE entry=20504;
UPDATE creature_template SET speed_walk=1.0,speed_run=1.38571 WHERE entry=20505;
UPDATE creature_template SET speed_walk=1.0,speed_run=1.38571 WHERE entry=20506;
UPDATE creature_template SET speed_walk=1.0,speed_run=1.38571 WHERE entry=20507;
UPDATE creature_template SET speed_walk=1.0,speed_run=1.38571 WHERE entry=20508;
UPDATE creature_template SET speed_walk=1.0,speed_run=1.38571 WHERE entry=20509;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=20510;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=20511;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=20607;
UPDATE creature_template SET speed_walk=1.6 WHERE entry=20611;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=20634;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=20671;
UPDATE creature_template SET speed_walk=1.6 WHERE entry=20673;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=20796;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=20913;
UPDATE creature_template SET speed_walk=0.944444,speed_run=0.952381 WHERE entry=20928;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=20931;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=20933;
UPDATE creature_template SET speed_walk=1.0,speed_run=1.28968 WHERE entry=21059;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=21095;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=21096;
UPDATE creature_template SET speed_walk=0.8,speed_run=1.0 WHERE entry=21157;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=21164;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=21171;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=21178;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=21179;
UPDATE creature_template SET speed_walk=1.0,speed_run=0.992063 WHERE entry=21233;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=21262;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=21285;
UPDATE creature_template SET speed_walk=0.888888,speed_run=0.912699 WHERE entry=21287;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=21292;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=21302;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=21305;
UPDATE creature_template SET speed_walk=1.0,speed_run=1.0 WHERE entry=21307;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=21309;
UPDATE creature_template SET speed_walk=2.4,speed_run=1.71429 WHERE entry=21315;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=21318;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=21330;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=21385;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=21402;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=21403;
UPDATE creature_template SET speed_walk=1.0,speed_run=1.0 WHERE entry=21453;
UPDATE creature_template SET speed_walk=1.0,speed_run=1.0 WHERE entry=21454;
UPDATE creature_template SET speed_walk=1.0,speed_run=1.0 WHERE entry=21455;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=21474;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=21483;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=21484;
UPDATE creature_template SET speed_walk=0.944444,speed_run=0.952381 WHERE entry=21499;
UPDATE creature_template SET speed_walk=0.777776,speed_run=0.992063 WHERE entry=21500;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=21503;
UPDATE creature_template SET speed_walk=0.777776,speed_run=0.992063 WHERE entry=21506;
UPDATE creature_template SET speed_walk=0.666668 WHERE entry=21635;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=21644;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=21649;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=21650;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=21654;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=21656;
UPDATE creature_template SET speed_walk=1.0,speed_run=1.0 WHERE entry=21705;
UPDATE creature_template SET speed_walk=1.0,speed_run=1.0 WHERE entry=21711;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=21717;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=21718;
UPDATE creature_template SET speed_walk=1.0,speed_run=1.38571 WHERE entry=21719;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=21720;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=21721;
UPDATE creature_template SET speed_walk=0.666668 WHERE entry=21722;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=21723;
UPDATE creature_template SET speed_walk=1.0,speed_run=1.28968 WHERE entry=21728;
UPDATE creature_template SET speed_walk=1.0,speed_run=1.28968 WHERE entry=21730;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=21736;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=21746;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=21773;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=21774;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=21777;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=21791;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=21792;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=21793;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=21794;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=21797;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=21802;
UPDATE creature_template SET speed_walk=1.0,speed_run=1.0 WHERE entry=21803;
UPDATE creature_template SET speed_walk=1.4,speed_run=1.42857 WHERE entry=21804;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=21808;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=21822;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=21855;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=21856;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=21860;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=21864;
UPDATE creature_template SET speed_walk=1.0,speed_run=0.992063 WHERE entry=21872;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=21892;
UPDATE creature_template SET speed_walk=2.4,speed_run=2.0 WHERE entry=21897;
UPDATE creature_template SET speed_walk=1.4,speed_run=1.42857 WHERE entry=21901;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=21909;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=21911;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=21924;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=21928;
UPDATE creature_template SET speed_walk=1.0,speed_run=1.0 WHERE entry=21937;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=21939;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=21940;
UPDATE creature_template SET speed_walk=1.0,speed_run=1.38571 WHERE entry=21979;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=21986;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=22011;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=22012;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=22016;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=22017;
UPDATE creature_template SET speed_walk=1.0,speed_run=1.38571 WHERE entry=22018;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=22061;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=22078;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=22079;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=22080;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=22093;
UPDATE creature_template SET speed_walk=4.0,speed_run=2.14286 WHERE entry=22096;
UPDATE creature_template SET speed_walk=1.0,speed_run=2.85714 WHERE entry=22112;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=22113;
UPDATE creature_template SET speed_walk=1.55556 WHERE entry=22115;
UPDATE creature_template SET speed_walk=1.0,speed_run=1.0 WHERE entry=22137;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=22138;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=22139;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=22146;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=22214;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=22252;
UPDATE creature_template SET speed_walk=2.0,speed_run=2.0 WHERE entry=22253;
UPDATE creature_template SET speed_walk=1.0,speed_run=1.38571 WHERE entry=22274;
UPDATE creature_template SET speed_walk=12.0,speed_run=4.28571 WHERE entry=22317;
UPDATE creature_template SET speed_walk=0.777776,speed_run=0.992063 WHERE entry=22338;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=22341;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=22342;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=22343;
UPDATE creature_template SET speed_walk=3.2,speed_run=1.42857 WHERE entry=22357;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=22362;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=22363;
UPDATE creature_template SET speed_walk=2.0,speed_run=1.71429 WHERE entry=22393;
UPDATE creature_template SET speed_walk=1.0,speed_run=0.857143 WHERE entry=22394;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=22395;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=22400;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=22417;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=22427;
UPDATE creature_template SET speed_walk=1.0,speed_run=1.71429 WHERE entry=22433;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=22485;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=22893;
UPDATE creature_template SET speed_run=1.38571 WHERE entry=22966;
UPDATE creature_template SET speed_walk=2.8,speed_run=2.14286 WHERE entry=22979;
UPDATE creature_template SET speed_run=2.14286 WHERE entry=22980;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=23020;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=23026;
UPDATE creature_template SET speed_walk=1.11111 WHERE entry=23029;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=23038;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=23042;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=23048;
UPDATE creature_template SET speed_walk=4.8,speed_run=5.0 WHERE entry=23051;
UPDATE creature_template SET speed_walk=1.6 WHERE entry=23093;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=23094;
UPDATE creature_template SET speed_run=1.28968 WHERE entry=23097;
UPDATE creature_template SET speed_walk=1.55556 WHERE entry=23098;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=23139;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=23140;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=23141;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=23143;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=23145;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=23149;
UPDATE creature_template SET speed_walk=2.4,speed_run=2.28571 WHERE entry=23164;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=23166;
UPDATE creature_template SET speed_walk=2.0,speed_run=2.0 WHERE entry=23168;
UPDATE creature_template SET speed_walk=1.0,speed_run=1.38571 WHERE entry=23188;
UPDATE creature_template SET speed_walk=1.0,speed_run=2.14286 WHERE entry=23257;
UPDATE creature_template SET speed_walk=1.2,speed_run=1.42857 WHERE entry=23264;
UPDATE creature_template SET speed_walk=2.4,speed_run=2.28571 WHERE entry=23267;
UPDATE creature_template SET speed_walk=2.4,speed_run=2.28571 WHERE entry=23269;
UPDATE creature_template SET speed_run=1.28571 WHERE entry=23283;
UPDATE creature_template SET speed_run=1.0 WHERE entry=23285;
UPDATE creature_template SET speed_run=1.0 WHERE entry=23287;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=23291;
UPDATE creature_template SET speed_run=1.0 WHERE entry=23305;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=23306;
UPDATE creature_template SET speed_run=1.0 WHERE entry=23309;
UPDATE creature_template SET speed_run=1.0 WHERE entry=23324;
UPDATE creature_template SET speed_walk=1.0,speed_run=0.992063 WHERE entry=23326;
UPDATE creature_template SET speed_walk=1.0,speed_run=2.57143 WHERE entry=23340;
UPDATE creature_template SET speed_walk=1.0,speed_run=2.85714 WHERE entry=23342;
UPDATE creature_template SET speed_walk=1.0,speed_run=3.14286 WHERE entry=23344;
UPDATE creature_template SET speed_run=3.42857 WHERE entry=23345;
UPDATE creature_template SET speed_walk=1.0,speed_run=3.71429 WHERE entry=23346;
UPDATE creature_template SET speed_walk=1.0,speed_run=4.28571 WHERE entry=23348;
UPDATE creature_template SET speed_run=0.992063 WHERE entry=23356;
UPDATE creature_template SET speed_run=0.992063 WHERE entry=23357;
UPDATE creature_template SET speed_run=0.992063 WHERE entry=23358;
UPDATE creature_template SET speed_run=0.992063 WHERE entry=23359;
UPDATE creature_template SET speed_run=0.992063 WHERE entry=23360;
UPDATE creature_template SET speed_run=0.992063 WHERE entry=23361;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=23363;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=23367;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=23370;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=23376;
UPDATE creature_template SET speed_walk=1.0,speed_run=1.0 WHERE entry=23383;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=23415;
UPDATE creature_template SET speed_walk=0.888888,speed_run=0.912699 WHERE entry=23427;
UPDATE creature_template SET speed_run=1.38571 WHERE entry=23441;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=23452;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=23454;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=23489;
UPDATE creature_template SET speed_walk=1.4,speed_run=1.42857 WHERE entry=23501;
UPDATE creature_template SET speed_walk=4.0,speed_run=3.0 WHERE entry=23519;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=23552;
UPDATE creature_template SET speed_run=0.992063 WHERE entry=23678;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=23688;
UPDATE creature_template SET speed_walk=1.2,speed_run=1.42857 WHERE entry=23980;
UPDATE creature_template SET speed_walk=12.0,speed_run=4.28571 WHERE entry=23997;
UPDATE creature_template SET speed_run=1.11111 WHERE entry=24178;
UPDATE creature_template SET speed_run=2.57143 WHERE entry=24533;
UPDATE creature_template SET speed_run=2.42857 WHERE entry=24765;
UPDATE creature_template SET speed_walk=10.0,speed_run=3.57143 WHERE entry=24769;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=24868;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=24937;
UPDATE creature_template SET speed_run=1.19048 WHERE entry=25427;
UPDATE creature_template SET speed_run=0.952381 WHERE entry=25430;
UPDATE creature_template SET speed_walk=1.6,speed_run=1.42857 WHERE entry=25618;
UPDATE creature_template SET speed_run=1.0 WHERE entry=25624;
UPDATE creature_template SET speed_walk=1.2,speed_run=1.42857 WHERE entry=25655;
UPDATE creature_template SET speed_run=1.14286 WHERE entry=25781;
UPDATE creature_template SET speed_run=0.714286 WHERE entry=25832;
UPDATE creature_template SET speed_run=0.992063 WHERE entry=25833;
UPDATE creature_template SET speed_run=0.992063 WHERE entry=25834;
UPDATE creature_template SET speed_run=1.0 WHERE entry=25835;
UPDATE creature_template SET speed_walk=0.666668 WHERE entry=25844;
UPDATE creature_template SET speed_walk=0.666668,speed_run=2.0 WHERE entry=25988;
UPDATE creature_template SET speed_run=1.28968 WHERE entry=25989;
UPDATE creature_template SET speed_run=0.992063 WHERE entry=25990;
UPDATE creature_template SET speed_run=1.28968 WHERE entry=26103;
UPDATE creature_template SET speed_run=0.992063 WHERE entry=26196;
UPDATE creature_template SET speed_run=0.992063 WHERE entry=26203;
UPDATE creature_template SET speed_walk=2.0,speed_run=2.85714 WHERE entry=26231;
UPDATE creature_template SET speed_walk=2.0,speed_run=1.71429 WHERE entry=26232;
UPDATE creature_template SET speed_walk=3.6,speed_run=2.85714 WHERE entry=26237;
UPDATE creature_template SET speed_run=0.992063 WHERE entry=26260;
UPDATE creature_template SET speed_run=0.992063 WHERE entry=26268;
UPDATE creature_template SET speed_run=0.992063 WHERE entry=26270;
UPDATE creature_template SET speed_run=0.992063 WHERE entry=26282;
UPDATE creature_template SET speed_run=3.14286 WHERE entry=26287;
UPDATE creature_template SET speed_walk=2.0,speed_run=1.71429 WHERE entry=26299;
UPDATE creature_template SET speed_walk=8.0,speed_run=4.71429 WHERE entry=26310;
UPDATE creature_template SET speed_run=0.992063 WHERE entry=26334;
UPDATE creature_template SET speed_run=0.992063 WHERE entry=26335;
UPDATE creature_template SET speed_run=0.992063 WHERE entry=26406;
UPDATE creature_template SET speed_run=0.992063 WHERE entry=26409;
UPDATE creature_template SET speed_run=0.992063 WHERE entry=26410;
UPDATE creature_template SET speed_run=0.992063 WHERE entry=26414;
UPDATE creature_template SET speed_run=2.14286 WHERE entry=26422;
UPDATE creature_template SET speed_run=1.0 WHERE entry=26452;
UPDATE creature_template SET speed_run=0.992063 WHERE entry=26457;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=26477;
UPDATE creature_template SET speed_run=1.14286 WHERE entry=26497;
UPDATE creature_template SET speed_run=1.42857 WHERE entry=26510;
UPDATE creature_template SET speed_run=0.992063 WHERE entry=26637;
UPDATE creature_template SET speed_run=2.14286 WHERE entry=26648;
UPDATE creature_template SET speed_walk=0.777776 WHERE entry=26658;
UPDATE creature_template SET speed_walk=0.833332,speed_run=0.992063 WHERE entry=26676;
UPDATE creature_template SET speed_run=1.0 WHERE entry=26678;
UPDATE creature_template SET speed_walk=0.666668,speed_run=0.952381 WHERE entry=26711;
UPDATE creature_template SET speed_run=1.0 WHERE entry=26770;
UPDATE creature_template SET speed_walk=1.2,speed_run=4.0 WHERE entry=26807;
UPDATE creature_template SET speed_walk=0.666668,speed_run=0.992063 WHERE entry=26826;
UPDATE creature_template SET speed_run=0.992063 WHERE entry=26872;
UPDATE creature_template SET speed_run=0.992063 WHERE entry=26920;
UPDATE creature_template SET speed_run=0.992063 WHERE entry=26921;
UPDATE creature_template SET speed_run=0.992063 WHERE entry=26922;
UPDATE creature_template SET speed_run=0.992063 WHERE entry=26923;
UPDATE creature_template SET speed_walk=1.6,speed_run=1.42857 WHERE entry=27002;
UPDATE creature_template SET speed_run=0.992063 WHERE entry=27061;
UPDATE creature_template SET speed_run=2.14286 WHERE entry=27123;
UPDATE creature_template SET speed_run=2.14286 WHERE entry=27171;
UPDATE creature_template SET speed_run=1.42857 WHERE entry=27175;
UPDATE creature_template SET speed_run=0.992063 WHERE entry=27177;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=27272;
UPDATE creature_template SET speed_walk=0.8 WHERE entry=27335;
UPDATE creature_template SET speed_walk=0.8,speed_run=0.285714 WHERE entry=27339;
UPDATE creature_template SET speed_run=1.38571 WHERE entry=27367;
UPDATE creature_template SET speed_run=1.38571 WHERE entry=27516;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=27536;
UPDATE creature_template SET speed_walk=0.8,speed_run=0.992063 WHERE entry=27556;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=27721;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=27722;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=27767;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=27781;
UPDATE creature_template SET speed_run=0.857143 WHERE entry=27788;
UPDATE creature_template SET speed_run=2.57143 WHERE entry=27821;
UPDATE creature_template SET speed_run=1.0 WHERE entry=27894;
UPDATE creature_template SET speed_walk=0.666668 WHERE entry=27941;
UPDATE creature_template SET speed_run=1.42857 WHERE entry=27947;
UPDATE creature_template SET speed_run=0.992063 WHERE entry=27973;
UPDATE creature_template SET speed_run=1.28571 WHERE entry=28006;
UPDATE creature_template SET speed_run=0.992063 WHERE entry=28018;
UPDATE creature_template SET speed_run=3.42857 WHERE entry=28063;
UPDATE creature_template SET speed_run=1.0 WHERE entry=28066;
UPDATE creature_template SET speed_run=1.0 WHERE entry=28094;
UPDATE creature_template SET speed_walk=0.666668,speed_run=0.992063 WHERE entry=28105;
UPDATE creature_template SET speed_run=1.19048 WHERE entry=28107;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=28113;
UPDATE creature_template SET speed_walk=1.0,speed_run=1.0 WHERE entry=28150;
UPDATE creature_template SET speed_walk=1.0 WHERE entry=28161;
UPDATE creature_template SET speed_walk=1.2,speed_run=2.0 WHERE entry=28187;
UPDATE creature_template SET speed_run=1.19048 WHERE entry=28191;
UPDATE creature_template SET speed_walk=1.11111 WHERE entry=28203;
UPDATE creature_template SET speed_walk=0.8,speed_run=1.0 WHERE entry=28253;
UPDATE creature_template SET speed_walk=1.6 WHERE entry=28279;
UPDATE creature_template SET speed_run=1.38571 WHERE entry=28297;
UPDATE creature_template SET speed_walk=0.666668,speed_run=0.992063 WHERE entry=28327;
UPDATE creature_template SET speed_walk=0.833332,speed_run=2.0 WHERE entry=28369;
UPDATE creature_template SET speed_run=0.714286 WHERE entry=28372;
UPDATE creature_template SET speed_walk=1.44444,speed_run=1.5873 WHERE entry=28399;
UPDATE creature_template SET speed_walk=0.4 WHERE entry=28414;
UPDATE creature_template SET speed_walk=2.0,speed_run=0.992063 WHERE entry=28498;
UPDATE creature_template SET speed_run=2.0 WHERE entry=28526;
UPDATE creature_template SET speed_run=2.0 WHERE entry=28639;
UPDATE creature_template SET speed_run=0.857143 WHERE entry=28640;
UPDATE creature_template SET speed_run=1.0 WHERE entry=28719;
UPDATE creature_template SET speed_walk=0.666668 WHERE entry=28748;
UPDATE creature_template SET speed_walk=0.666668 WHERE entry=28756;
UPDATE creature_template SET speed_run=0.985714 WHERE entry=28781;
UPDATE creature_template SET speed_run=1.71429 WHERE entry=28873;
UPDATE creature_template SET speed_walk=2.8,speed_run=1.57143 WHERE entry=28875;
UPDATE creature_template SET speed_walk=0.666668 WHERE entry=29019;
UPDATE creature_template SET speed_run=3.57143 WHERE entry=29050;
UPDATE creature_template SET speed_run=0.992063 WHERE entry=29082;
UPDATE creature_template SET speed_run=1.38571 WHERE entry=29333;
UPDATE creature_template SET speed_run=2.85714 WHERE entry=29344;
UPDATE creature_template SET speed_run=0.992063 WHERE entry=29364;
UPDATE creature_template SET speed_run=2.0 WHERE entry=29456;
UPDATE creature_template SET speed_walk=0.8,speed_run=0.992063 WHERE entry=29517;
UPDATE creature_template SET speed_run=1.42857 WHERE entry=29518;
UPDATE creature_template SET speed_walk=3.2,speed_run=2.85714 WHERE entry=29648;
UPDATE creature_template SET speed_walk=2.4,speed_run=2.0 WHERE entry=29664;
UPDATE creature_template SET speed_run=0.992063 WHERE entry=29695;
UPDATE creature_template SET speed_run=1.64286 WHERE entry=29696;
UPDATE creature_template SET speed_run=0.992063 WHERE entry=29821;
UPDATE creature_template SET speed_walk=2.8,speed_run=1.57143 WHERE entry=29863;
UPDATE creature_template SET speed_walk=4.0,speed_run=1.38571 WHERE entry=29872;
UPDATE creature_template SET speed_run=1.07143 WHERE entry=29887;
UPDATE creature_template SET speed_walk=1.6,speed_run=1.42857 WHERE entry=29889;
UPDATE creature_template SET speed_run=1.07143 WHERE entry=29890;
UPDATE creature_template SET speed_run=1.07143 WHERE entry=29891;
UPDATE creature_template SET speed_walk=2.0,speed_run=1.42857 WHERE entry=29892;
UPDATE creature_template SET speed_walk=2.0,speed_run=2.28571 WHERE entry=29894;
UPDATE creature_template SET speed_walk=4.0,speed_run=3.57143 WHERE entry=29895;
UPDATE creature_template SET speed_walk=0.777776 WHERE entry=29897;
UPDATE creature_template SET speed_walk=0.666668 WHERE entry=29917;
UPDATE creature_template SET speed_run=0.992063 WHERE entry=29939;
UPDATE creature_template SET speed_run=0.595239 WHERE entry=30026;
UPDATE creature_template SET speed_run=1.28571 WHERE entry=30187;
UPDATE creature_template SET speed_run=1.38571 WHERE entry=30224;
UPDATE creature_template SET speed_walk=1.44444,speed_run=1.5873 WHERE entry=30235;
UPDATE creature_template SET speed_run=4.28571 WHERE entry=30290;
UPDATE creature_template SET speed_run=0.992063 WHERE entry=30348;
UPDATE creature_template SET speed_run=0.992063 WHERE entry=30357;
UPDATE creature_template SET speed_run=0.992063 WHERE entry=30358;
UPDATE creature_template SET speed_run=0.992063 WHERE entry=30359;
UPDATE creature_template SET speed_run=0.992063 WHERE entry=30360;
UPDATE creature_template SET speed_run=0.992063 WHERE entry=30362;
UPDATE creature_template SET speed_run=0.992063 WHERE entry=30363;
UPDATE creature_template SET speed_run=0.992063 WHERE entry=30364;
UPDATE creature_template SET speed_run=1.38571 WHERE entry=30378;
UPDATE creature_template SET speed_walk=1.44444,speed_run=1.5873 WHERE entry=30500;
UPDATE creature_template SET speed_run=0.992063 WHERE entry=30531;
UPDATE creature_template SET speed_run=0.992063 WHERE entry=30533;
UPDATE creature_template SET speed_run=0.992063 WHERE entry=30534;
UPDATE creature_template SET speed_run=0.992063 WHERE entry=30535;
UPDATE creature_template SET speed_walk=1.6,speed_run=1.42857 WHERE entry=30858;
UPDATE creature_template SET speed_run=1.38571 WHERE entry=30864;
UPDATE creature_template SET speed_run=1.14286 WHERE entry=31033;
UPDATE creature_template SET speed_walk=1.0,speed_run=0.992063 WHERE entry=31139;
UPDATE creature_template SET speed_walk=2.4,speed_run=0.992063 WHERE entry=31147;
UPDATE creature_template SET speed_run=1.14286 WHERE entry=31238;
UPDATE creature_template SET speed_run=2.57143 WHERE entry=31619;
UPDATE creature_template SET speed_run=1.07143 WHERE entry=31620;
UPDATE creature_template SET speed_run=1.42857 WHERE entry=31622;
UPDATE creature_template SET speed_run=0.992063 WHERE entry=31623;
UPDATE creature_template SET speed_walk=1.6,speed_run=1.85714 WHERE entry=31625;
UPDATE creature_template SET speed_run=0.428571 WHERE entry=31631;
UPDATE creature_template SET speed_run=1.07143 WHERE entry=31632;
UPDATE creature_template SET speed_run=1.14286 WHERE entry=31769;
UPDATE creature_template SET speed_run=1.42857 WHERE entry=32186;
UPDATE creature_template SET speed_walk=0.888888,speed_run=0.992063 WHERE entry=32365;
UPDATE creature_template SET speed_walk=1.2,speed_run=1.38571 WHERE entry=32388;
UPDATE creature_template SET speed_run=2.0 WHERE entry=32389;
UPDATE creature_template SET speed_walk=0.666668,speed_run=1.19048 WHERE entry=32392;
UPDATE creature_template SET speed_walk=0.666668,speed_run=0.952381 WHERE entry=32400;
UPDATE creature_template SET speed_run=1.42857 WHERE entry=32401;
UPDATE creature_template SET speed_run=1.71429 WHERE entry=32402;
UPDATE creature_template SET speed_walk=2.0,speed_run=2.0 WHERE entry=32422;
UPDATE creature_template SET speed_walk=0.8 WHERE entry=32471;
UPDATE creature_template SET speed_run=1.0 WHERE entry=32483;
UPDATE creature_template SET speed_walk=2.0,speed_run=2.0 WHERE entry=32511;
UPDATE creature_template SET speed_run=1.71429 WHERE entry=32519;
UPDATE creature_template SET speed_walk=2.0,speed_run=2.0 WHERE entry=32521;
UPDATE creature_template SET speed_walk=1.2,speed_run=0.428571 WHERE entry=32582;
UPDATE creature_template SET speed_run=1.14286 WHERE entry=32598;
UPDATE creature_template SET speed_run=1.14286 WHERE entry=32600;
UPDATE creature_template SET speed_run=1.14286 WHERE entry=32602;
UPDATE creature_template SET speed_run=1.0 WHERE entry=32654;
UPDATE creature_template SET speed_run=1.0 WHERE entry=32655;
UPDATE creature_template SET speed_run=1.0 WHERE entry=32656;
UPDATE creature_template SET speed_run=1.0 WHERE entry=32661;

# WDB
INSERT IGNORE INTO `npc_text` VALUES ('2838', '', 'Sure thing, $N. Here\'s another for you.', '0', '1', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', 1);
INSERT IGNORE INTO `npc_text` VALUES ('8244', 'We\'ve been so wrapped up in this war, some of us forgot to make time for love.', '', '0', '1', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', 1);
INSERT IGNORE INTO `npc_text` VALUES ('8254', 'You work with machines for so long, sometimes you forget about real hearts.', '', '0', '1', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', 1);
INSERT IGNORE INTO `npc_text` VALUES ('8255', '', 'When you have lived as long as I, it becomes easy to forget about love for years. It is always good to be reminded.', '0', '1', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', 1);
INSERT IGNORE INTO `npc_text` VALUES ('8296', 'It looks like you\'ve already found love. You can give me a love token, but I\'m not giving you anything nice. I\'m waiting for someone special.', 'It looks like you\'ve already found love. You can give me a love token, but I\'m not giving you anything nice. I\'m waiting for someone special.', '0', '1', '0', '1', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', 1);
INSERT IGNORE INTO `npc_text` VALUES ('8298', 'I\'d like you better if you would apply some perfume.', 'I\'d like you better if you would apply some perfume.', '0', '1', '0', '24', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', 1);
INSERT IGNORE INTO `npc_text` VALUES ('11093', 'Let\'s get out of here!', '', '0', '1', '0', '5', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', 1);
INSERT IGNORE INTO `npc_text` VALUES ('10941', 'They sent you to kill me, eh? So predictable... Creatures ruled by terror are all the same.$B$BBut you... You are not one of them...', '', '0', '1', '0', '6', '0', '274', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', 1);
INSERT IGNORE INTO `npc_text` VALUES ('10942', 'Overseer?$B$BYou are no more an overseer than I am the king of Stormwind. Yes... You are the one they speak of.', '', '0', '1', '0', '6', '0', '396', '0', '273', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', 1);
INSERT IGNORE INTO `npc_text` VALUES ('10943', 'The Netherwing. They speak to us. They offered us peace and protection. Something the broken have never truly felt. We accepted their offer and assisted Toranaku in rousing the creatures of this mine - at great personal cost to us. Many of my brothers gave their lives for this offensive. We were attempting to make the mine uninhabitable, forcing the Dragonmaw to relocate and ultimately move off of this island.', '', '0', '1', '0', '396', '0', '396', '0', '396', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', 1);
INSERT IGNORE INTO `npc_text` VALUES ('10944', 'The Dragonmaw are corrupt. They are strip-mining this island of all natural resources and using those resources to supply Illidan\'s armies out of the Black Temple. They take much for themselves, however, and sell whatever they have hidden away to the highest bidder.', '', '0', '1', '0', '396', '0', '396', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', 1);
INSERT IGNORE INTO `npc_text` VALUES ('10945', 'We do not know. We believe that the Black Dragonflight is involved as are some independent third parties. That is why you are here, $r. You will unravel this mystery from the inside and bring redemption to Netherwing.$B$BAnd now... I can only assume she asked you to bring back my hand.', '', '0', '1', '0', '274', '0', '396', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', 1);
INSERT IGNORE INTO `npc_text` VALUES ('10946', 'I gladly make such a sacrifice if it means the downfall of the Dragonmaw.', '', '0', '1', '0', '273', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', 1);
INSERT IGNORE INTO `npc_text` VALUES ('4776', 'The battle is over, and the people of Darrowshire are saved.', '', '0', '1', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', 1);
INSERT IGNORE INTO `npc_text` VALUES ('4713', 'The Nightmare is finally over!  Darrowshire, forgive me!', '', '0', '1', '0', '15', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', 1);
INSERT IGNORE INTO `npc_text` VALUES ('12130', '<Old Icefin eyes you warily, his fishy eye blinking as he bobs his head up and down once in a curt dismissal.>', '', '0', '1', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', 1);
INSERT IGNORE INTO `npc_text` VALUES ('8336', 'What now?  Can\'t you see I\'m rather busy?', '', '0', '1', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', 1);

# NeatElves
UPDATE  `creature_template` SET  `ScriptName` =  '' WHERE  `entry` =19257;
INSERT IGNORE INTO spell_area VALUES (45844,4023,11648,1,11648,0,0,2,1); -- Imprisoned Sorcerer (Detect Quest Invis)
INSERT IGNORE INTO spell_area VALUES (46079,4023,11681,1,0,0,0,2,1); -- Detect Archmage Evanor (Detect Quest Invis)
INSERT IGNORE INTO spell_area VALUES (49416,4206,0,0,12431,0,0,2,1); -- Generic Quest Invisibility Detection 1
INSERT IGNORE INTO spell_area VALUES (49417,4537,13393,1,13393,0,1101,2,1); -- Generic Quest Invisibility Detection 2
INSERT IGNORE INTO spell_area VALUES (49417,4537,13304,1,13304,0, 690,2,1); -- Generic Quest Invisibility Detection 2
INSERT IGNORE INTO spell_area VALUES (54502,4428,0,0,12880,0,0,2,1); -- See Quest Invisibility 1
INSERT IGNORE INTO spell_area VALUES (57745,4591,13068,1,0,0,0,2,1); -- See Quest Invisibility 1
INSERT IGNORE INTO spell_area VALUES (42666,4477,12951,0,0,0,0,2,1); -- The Shadow Vault: See Vaelen's Invisibility
INSERT IGNORE INTO spell_area VALUES (27105,4492,0,0,12951,0,0,2,1); -- Ufrang's Hall: See Vaelen's Invisibility
INSERT IGNORE INTO spell_area VALUES (57675,4503,13141,0,0,0,0,2,1); -- ironwall dam
INSERT IGNORE INTO spell_area VALUES (57674,4503,13086,0,13141,0,0,2,1);
INSERT IGNORE INTO spell_area VALUES (57569,4503,13070,0,13086,0,0,2,1);
INSERT IGNORE INTO spell_area VALUES (57673,4503,0,0,13070,0,0,2,1);
INSERT IGNORE INTO spell_area VALUES (57675,4507,13141,0,0,0,0,2,1); -- the broken front
INSERT IGNORE INTO spell_area VALUES (57674,4507,13086,0,13141,0,0,2,1);
INSERT IGNORE INTO spell_area VALUES (57569,4507,13070,0,13086,0,0,2,1);
INSERT IGNORE INTO spell_area VALUES (57673,4507,0,0,13070,0,0,2,1);
INSERT IGNORE INTO spell_area VALUES (57675,4593,13141,0,0,0,0,2,1); -- the pit of fiends
INSERT IGNORE INTO spell_area VALUES (57674,4593,13086,0,13141,0,0,2,1);
INSERT IGNORE INTO spell_area VALUES (57569,4593,13070,0,13086,0,0,2,1);
INSERT IGNORE INTO spell_area VALUES (57673,4593,0,0,13070,0,0,2,1);
UPDATE  `creature_template_addon` SET  `bytes1` =  '7' WHERE  `entry` in (3287,8023,10668);
UPDATE  `creature_template_addon` SET  `emote` =  '0' WHERE  `entry` in (3920,16183,18397);
UPDATE  `creature_template_addon` SET  `bytes1` =  '0' WHERE  `entry` in (5767,5768,10928,21060,21380,24089,26194,30533);
UPDATE  `creature_template_addon` SET  `auras` =  '10848 0' WHERE  `entry` in (6271,8888,9299);
UPDATE  `creature_template_addon` SET  `bytes1` =  '131072' WHERE  `entry` in (12856);
UPDATE  `creature_template_addon` SET  `auras` =  '25824 0' WHERE  `entry` =15631;
UPDATE  `creature_template_addon` SET  `auras` =  '18950 0 19818 0' WHERE  `entry` =15932;
UPDATE  `creature_template_addon` SET  `auras` =  '18950 0 59531 0' WHERE  `entry` =16011;
UPDATE  `creature_template_addon` SET  `emote` =  '173' WHERE  `entry` in (17964);
UPDATE  `creature_template_addon` SET  `emote` =  '28' WHERE  `entry` in (18278);
UPDATE  `creature_template_addon` SET  `bytes1` =  '0',`auras` =  '29147 0' WHERE  `entry` =16844;
UPDATE  `creature_template_addon` SET  `bytes1` =  '8',`emote` =  '68',`auras` =  '' WHERE  `entry` =18497;
UPDATE  `creature_template_addon` SET  `bytes1` =  '8' WHERE  `entry` =31279;
UPDATE  `creature_template_addon` SET  `mount` =  '17717' WHERE  `entry` =19382;
UPDATE  `creature_template_addon` SET  `emote` =  '14',`auras` =  '32648 0' WHERE  `entry` =19719;
UPDATE  `creature_template_addon` SET  `auras` =  '14915 0' WHERE  `entry` =20100;
UPDATE  `creature_template_addon` SET  `auras` =  '39007 0' WHERE  `entry` =20886;
UPDATE  `creature_template_addon` SET  `mount` =  '20344' WHERE  `entry` =21315;
UPDATE  `creature_template_addon` SET  `auras` = NULL WHERE  `entry` in (21436,21437,21438,21439);
UPDATE  `creature_template_addon` SET  `auras` =  '36852 0' WHERE  `entry` =21440;
UPDATE  `creature_template_addon` SET  `auras` =  '38844 0' WHERE  `entry` =21594;
UPDATE  `creature_template_addon` SET  `auras` =  '37248 0' WHERE  `entry` =21757;
UPDATE  `creature_template_addon` SET  `auras` =  '37509 0 37497 0' WHERE  `entry` =21801;
UPDATE  `creature_template_addon` SET  `bytes1` =  '0',`auras` =  '20540 0' WHERE  `entry` =22206;
UPDATE  `creature_template_addon` SET  `mount` =  '24725' WHERE  `entry` =23030;
DELETE FROM `creature_loot_template` WHERE `item` = 32723;
DELETE FROM `creature_loot_template` WHERE `entry` = 23287;
UPDATE  `creature_template_addon` SET  `emote` =  '0',`auras` =  '31261 0' WHERE  `entry` =23287;
UPDATE  `creature_template` SET  `lootid` =  '0' WHERE  `entry` =23287;
UPDATE  `creature_template_addon` SET  `mount` =  '17701' WHERE  `entry` =23340;
UPDATE  `creature_template_addon` SET  `mount` =  '21155' WHERE  `entry` =23342;
UPDATE  `creature_template_addon` SET  `auras` =  '51195 0' WHERE  `entry` =33439;
UPDATE  `creature_template_addon` SET  `auras` =  '43671 0 63500 0 64718 0' WHERE  `entry` =34244;
UPDATE  `creature_template_addon` SET  `mount` =  '16314' WHERE  `entry` =23344;
UPDATE  `creature_template_addon` SET  `auras` =  '64718 0 64723 0' WHERE  `entry` in (33973,33974);
UPDATE  `creature_template_addon` SET  `mount` =  '10718' WHERE  `entry` =23998;
UPDATE  `creature_template_addon` SET  `auras` =  '12544 0 43576 0' WHERE  `entry` =24029;
UPDATE  `creature_template_addon` SET  `bytes1` =  '0',`auras` =  '43170 0' WHERE  `entry` =24169;
UPDATE  `creature_template_addon` SET  `emote` =  '233' WHERE  `entry` in (24347,25235,26229);
UPDATE  `creature_template_addon` SET  `auras` =  '63406 0' WHERE  `entry` =33592;
UPDATE  `creature_template_addon` SET  `auras` =  '63423 0' WHERE  `entry` =33593;
UPDATE  `creature_template_addon` SET  `emote` =  '234' WHERE  `entry` in (24436,25248);
UPDATE  `creature_template_addon` SET  `mount` =  '25279' WHERE  `entry` =29246;
UPDATE  `creature_template_addon` SET  `emote` =  '173' WHERE  `entry` in (24437,26409,29427);
UPDATE  `creature_template_addon` SET  `auras` =  '29266 0 42726 0' WHERE  `entry` =24444;
UPDATE  `creature_template_addon` SET  `auras` =  '43874 0' WHERE  `entry` =24464;
UPDATE  `creature_template_addon` SET  `bytes1` =  '0',`auras` =  '46598 0' WHERE  `entry` =24751;
UPDATE  `creature_template_addon` SET  `mount` =  '17545' WHERE  `entry` =24937;
UPDATE  `creature_template_addon` SET  `emote` =  '45' WHERE  `entry` in (25317,25764,28382);
UPDATE  `creature_template_addon` SET  `auras` =  '45658 0' WHERE  `entry` =25613;
UPDATE  `creature_template_addon` SET  `auras` =  '34427 0' WHERE  `entry` =25783;
UPDATE  `creature_template_addon` SET  `auras` =  '35357 0 46011 0' WHERE  `entry` =25781;
UPDATE  `creature_template_addon` SET  `auras` =  '40684 0' WHERE  `entry` =25986;
UPDATE  `creature_template_addon` SET  `auras` =  '32566 0' WHERE  `entry` =26093;
UPDATE  `creature_template_addon` SET  `emote` =  '0',`auras` =  '32423 0' WHERE  `entry` =26169;
UPDATE  `creature_template_addon` SET  `emote` =  '333' WHERE  `entry` =32340;
UPDATE  `creature_template_addon` SET  `auras` =  '47677 0' WHERE  `entry` =26467;
UPDATE  `creature_template_addon` SET  `bytes1` =  '1' WHERE  `entry` in (26494,26647,32474,36597);
UPDATE  `creature_template_addon` SET  `auras` =  '47273 0' WHERE  `entry` =26654;
UPDATE  `creature_template_addon` SET  `auras` =  '16245 0' WHERE  `entry` in (26683,26684,26685,26686);
UPDATE  `creature_template_addon` SET  `emote` =  '333' WHERE  `entry` =26800;
UPDATE  `creature_template_addon` SET  `emote` =  '375' WHERE  `entry` =26805;
UPDATE  `creature_template_addon` SET  `bytes1` =  '8' WHERE  `entry` =27204;
UPDATE  `creature_template_addon` SET  `auras` =  '48797 0' WHERE  `entry` =27314;
UPDATE  `creature_template_addon` SET  `bytes1` =  '65536',`emote` =  '412',`auras` =  '49774 0 48361 0' WHERE  `entry` in (27315,27336);
UPDATE  `creature_template_addon` SET  `auras` =  '43395 0' WHERE  `entry` =27510;
UPDATE  `creature_template_addon` SET  `auras` =  '49132 0 55795 0 61204 0' WHERE  `entry` =27530;
UPDATE  `creature_template_addon` SET  `auras` =  '46998 0' WHERE  `entry` =27872;
UPDATE  `creature_template_addon` SET  `auras` =  '52215 0' WHERE  `entry` =28107;
UPDATE  `creature_template_addon` SET  `auras` =  '50734 0' WHERE  `entry` =28161;
UPDATE  `creature_template_addon` SET  `auras` =  '51859 0' WHERE  `entry` in (28525,28542,28543,28544);
UPDATE  `creature_template_addon` SET  `auras` =  '46598 0' WHERE  `entry` =28616;
UPDATE  `creature_template_addon` SET  `emote` =  '27' WHERE  `entry` in (28667,28668);
UPDATE  `creature_template_addon` SET  `mount` =  '2409' WHERE  `entry` =28683;
UPDATE  `creature_template_addon` SET  `bytes1` =  '0', `auras` =  '51329 0' WHERE  `entry` in (29751,29811);
UPDATE  `creature_template_addon` SET  `auras` =  '56058 0' WHERE  `entry` =29915;
UPDATE  `creature_template_addon` SET  `auras` =  '54503 0' WHERE  `entry` =29975;
UPDATE  `creature_template_addon` SET  `auras` =  '31261 0' WHERE  `entry` =30177;
UPDATE  `creature_template_addon` SET  `auras` =  '54503 0' WHERE  `entry` =30401;
UPDATE  `creature_template_addon` SET  `mount` =  '28108' WHERE  `entry` =31082;
UPDATE  `creature_template_addon` SET  `mount` =  '25279' WHERE  `entry` =31084;
UPDATE  `creature_template_addon` SET  `auras` =  '29266 0' WHERE  `entry` =31402;
UPDATE  `creature_template_addon` SET  `auras` =  '35357 0 46011 0' WHERE  `entry` =31786;
UPDATE  `creature_template_addon` SET  `auras` =  '18950 0 12544 0' WHERE  `entry` in (32373,32374,32375);
UPDATE  `creature_template_addon` SET  `auras` =  '44153 0' WHERE  `entry` =32358;
UPDATE  `creature_template_addon` SET  `auras` =  '62594 0' WHERE  `entry` =33225;
UPDATE  `creature_template_addon` SET  `auras` =  '63606 0 63005 0' WHERE  `entry` =33522;
UPDATE  `creature_template_addon` SET  `auras` =  '70404 0 19818 0' WHERE  `entry` =37217;
UPDATE  `creature_template_addon` SET  `auras` =  '71805 0 19818 0 21862 0' WHERE  `entry` =37025;
UPDATE  `creature_template_addon` SET  `auras` =  '29266 0' WHERE  `entry` in (37123,37125);
UPDATE  `creature_template_addon` SET  `auras` =  '29266 0 70089 0' WHERE  `entry` =37124;
UPDATE  `creature_template_addon` SET  `auras` =  '29266 0 70089 0 63853 0' WHERE  `entry` =37122;
UPDATE  `creature_template_addon` SET  `auras` =  '18950 0 46598 0' WHERE  `entry` =36658;
UPDATE  `creature_template_addon` SET  `auras` =  '68589 0 71856 0' WHERE  `entry` =36296;
UPDATE  `creature_template_addon` SET  `auras` =  '68946 0 71869 0' WHERE  `entry` =36565;
UPDATE  `creature_template_addon` SET  `auras` =  '66763 0' WHERE  `entry` =35089;
REPLACE INTO `creature_template_addon` (`entry`, `mount`, `bytes1`, `auras`) VALUES
(33361, 0, 0, '63433 0'),
(33372, 0, 0, '63399 0'),
(33373, 0, 0, '63430 0'),
(33379, 0, 0, '63403 0'),
(33403, 0, 0, '63436 0'),
(33335, 0, 0, '63396 0'),
(33312, 0, 0, '63427 0'),
(33740, 28571, 0, '63396 0'),
(34702, 0, 0, '63396 0 18950 0'),
(36082, 0, 0, '63396 0 18950 0'),
(33747, 28912, 0, '62594 0'),
(34705, 0, 0, '62594 0 18950 0'),
(36088, 0, 0, '62594 0 18950 0'),
(33739, 28606, 0, '63423 0'),
(34701, 0, 0, '63423 0 18950 0'),
(36083, 0, 0, '63423 0 18950 0'),
(33743, 29258, 0, '63427 0'),
(34703, 0, 0, '63427 0 18950 0'),
(36087, 0, 0, '63427 0 18950 0'),
(33749, 28605, 0, '63430 0'),
(35617, 0, 0, '63430 0 18950 0'),
(36084, 0, 0, '63430 0 18950 0'),
(33738, 14333, 0, '63406 0'),
(34657, 0, 0, '63406 0 18950 0'),
(36086, 0, 0, '63406 0 18950 0'),
(33744, 14335, 0, '63433 0'),
(35572, 0, 0, '63433 0 18950 0'),
(36089, 0, 0, '63433 0 18950 0'),
(33748, 29259, 0, '63436 0'),
(35571, 0, 0, '63436 0 18950 0'),
(36090, 0, 0, '63436 0 18950 0'),
(33745, 29261, 0, '63399 0'),
(35570, 0, 0, '63399 0 18950 0'),
(36091, 0, 0, '63399 0 18950 0');
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(116967, 24371, 571, 1, 1, 0, 0, 2732.15, -5421.01, 410.783, 4.80685, 300, 0, 0, 27873, 3231, 0, 0);
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(107158, 24514, 571, 1, 1, 0, 0, 2454.95, -5272.98, 333.059, 5.37102, 300, 0, 0, 9291, 3231, 0, 0);
DELETE FROM `event_scripts` WHERE `id` = 15939 AND `delay` = 10 AND `command` = 8 AND `datalong` = 24381;
INSERT IGNORE INTO event_scripts (id, delay, command, datalong, datalong2, dataint, x, y, z, o) VALUES (15939,30, 15, 43693, 0x01, 0, 0, 0, 0, 0);
UPDATE quest_template SET PrevQuestId=12951 WHERE entry=12995;
UPDATE quest_template SET PrevQuestId=12951 WHERE entry=13085;
UPDATE quest_template SET PrevQuestId=12951 WHERE entry=13084;
UPDATE quest_template SET PrevQuestId=12951 WHERE entry=12992;
UPDATE quest_template SET PrevQuestId=13119 WHERE entry=13221;
UPDATE quest_template SET PrevQuestId=13119 WHERE entry=13229;
UPDATE quest_template SET PrevQuestId=13134 WHERE entry=13136;
UPDATE quest_template SET PrevQuestId=13119 WHERE entry=13482;
UPDATE quest_template SET PrevQuestId=13119 WHERE entry=13481;
UPDATE quest_template SET PrevQuestId=13092 WHERE entry=13042;
UPDATE quest_template SET PrevQuestId=13092 WHERE entry=13059;
UPDATE quest_template SET PrevQuestId=13171 WHERE entry=13172;
UPDATE quest_template SET PrevQuestId=13171 WHERE entry=13174;
UPDATE quest_template SET PrevQuestId=13174 WHERE entry=13155;
UPDATE quest_template SET NextQuestId=13117 WHERE entry=12896;
UPDATE quest_template SET NextQuestId=13117 WHERE entry=12897;
UPDATE quest_template SET NextQuestId=13168 WHERE entry=13263;
UPDATE quest_template SET NextQuestId=13168 WHERE entry=13389;
UPDATE quest_template SET PrevQuestId=13160 WHERE entry=13161;
UPDATE quest_template SET PrevQuestId=13160 WHERE entry=13163;
UPDATE quest_template SET PrevQuestId=13160 WHERE entry=13162;
UPDATE quest_template SET ExclusiveGroup=-13161 WHERE entry IN (13161,13163,13162);
UPDATE quest_template SET PrevQuestId=13163 WHERE entry=13164;
UPDATE  `creature` SET  `spawntimesecs` =  '300' WHERE  `id` =28362;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(104375, 28362, 571, 1, 1, 0, 0, 5432.09, 4315.3, -137.512, 4.67748, 300, 0, 0, 42, 0, 0, 0),
(104376, 28362, 571, 1, 1, 0, 0, 5488.86, 4306.88, -130.141, 2.00713, 300, 0, 0, 42, 0, 0, 0),
(104675, 28362, 571, 1, 1, 0, 0, 5479.12, 4363.98, -138.379, 4.17134, 300, 0, 0, 42, 0, 0, 0),
(104676, 28362, 571, 1, 1, 0, 0, 5566.85, 4608.07, -140.005, 0.087266, 300, 0, 0, 42, 0, 0, 0),
(104677, 28362, 571, 1, 1, 0, 0, 5733.78, 4598.79, -134.907, 0.802851, 300, 0, 0, 42, 0, 0, 0),
(104678, 28362, 571, 1, 1, 0, 0, 5586.91, 4715.22, -132.39, 0.942478, 300, 0, 0, 42, 0, 0, 0),
(104679, 28362, 571, 1, 1, 0, 0, 5789.39, 4640.83, -135.591, 5.53269, 300, 0, 0, 42, 0, 0, 0),
(104680, 28362, 571, 1, 1, 0, 0, 5551.06, 4750.33, -133.777, 1.81514, 300, 0, 0, 42, 0, 0, 0),
(108549, 28362, 571, 1, 1, 0, 0, 5608.23, 4691.19, -136.457, 2.6529, 300, 0, 0, 42, 0, 0, 0),
(108550, 28362, 571, 1, 1, 0, 0, 5494.54, 4597.56, -138.846, 3.05433, 300, 0, 0, 42, 0, 0, 0),
(108551, 28362, 571, 1, 1, 0, 0, 5586.24, 4668.07, -134.59, 1.78024, 300, 0, 0, 42, 0, 0, 0),
(108552, 28362, 571, 1, 1, 0, 0, 5743.72, 4645.34, -135.131, 3.07178, 300, 0, 0, 42, 0, 0, 0),
(108553, 28362, 571, 1, 1, 0, 0, 5626.6, 4317.26, -133.309, 1.90241, 300, 0, 0, 42, 0, 0, 0),
(108554, 28362, 571, 1, 1, 0, 0, 5663.73, 4370.93, -137.657, 4.72984, 300, 0, 0, 42, 0, 0, 0),
(108555, 28362, 571, 1, 1, 0, 0, 5539.42, 4358.89, -136.533, 2.07694, 300, 0, 0, 42, 0, 0, 0),
(108556, 28362, 571, 1, 1, 0, 0, 5586.07, 4504.85, -139.296, 0.820305, 300, 0, 0, 42, 0, 0, 0),
(108557, 28362, 571, 1, 1, 0, 0, 5677.12, 4725.34, -135.566, 3.57792, 300, 0, 0, 42, 0, 0, 0),
(109022, 28362, 571, 1, 1, 0, 0, 5507.06, 4662.85, -130.272, 2.44346, 300, 0, 0, 42, 0, 0, 0),
(111454, 28362, 571, 1, 1, 0, 0, 5470.7, 4678.43, -132.203, 3.89208, 300, 0, 0, 42, 0, 0, 0),
(111455, 28362, 571, 1, 1, 0, 0, 5704.71, 4763.64, -137.022, 5.0091, 300, 0, 0, 42, 0, 0, 0),
(111456, 28362, 571, 1, 1, 0, 0, 5917.02, 4735.48, -137.81, 1.43117, 300, 0, 0, 42, 0, 0, 0),
(111457, 28362, 571, 1, 1, 0, 0, 5544.33, 4436.61, -137.136, 4.24115, 300, 0, 0, 42, 0, 0, 0),
(111716, 28362, 571, 1, 1, 0, 0, 5682.9, 4479.21, -135.683, 4.81711, 300, 0, 0, 42, 0, 0, 0),
(111717, 28362, 571, 1, 1, 0, 0, 5579.44, 4388.16, -138.089, 3.80482, 300, 0, 0, 42, 0, 0, 0),
(111718, 28362, 571, 1, 1, 0, 0, 5534.53, 4324.63, -131.82, 5.41052, 300, 0, 0, 42, 0, 0, 0),
(111719, 28362, 571, 1, 1, 0, 0, 5906.66, 4612.75, -132.042, 2.60054, 300, 0, 0, 42, 0, 0, 0),
(111720, 28362, 571, 1, 1, 0, 0, 5726.51, 4370.49, -138.519, 3.10669, 300, 0, 0, 42, 0, 0, 0),
(111721, 28362, 571, 1, 1, 0, 0, 5693.35, 4629.68, -138.322, 4.92183, 300, 0, 0, 42, 0, 0, 0),
(111722, 28362, 571, 1, 1, 0, 0, 5726.52, 4535.19, -138.999, 1.25664, 300, 0, 0, 42, 0, 0, 0),
(111723, 28362, 571, 1, 1, 0, 0, 5525.25, 4436.55, -140.675, 1.95477, 300, 0, 0, 42, 0, 0, 0),
(111724, 28362, 571, 1, 1, 0, 0, 5705.06, 4435.87, -141.029, 5.98648, 300, 0, 0, 42, 0, 0, 0),
(111725, 28362, 571, 1, 1, 0, 0, 5847.39, 4599.29, -136.059, 5.53269, 300, 0, 0, 42, 0, 0, 0),
(111726, 28362, 571, 1, 1, 0, 0, 5531.43, 4402.83, -135.817, 3.36848, 300, 0, 0, 42, 0, 0, 0),
(111727, 28362, 571, 1, 1, 0, 0, 5700.94, 4711.59, -136.028, 4.04916, 300, 0, 0, 42, 0, 0, 0),
(111728, 28362, 571, 1, 1, 0, 0, 5578.79, 4703.9, -132.344, 0.715585, 300, 0, 0, 42, 0, 0, 0),
(111729, 28362, 571, 1, 1, 0, 0, 5607.36, 4355.13, -134.915, 4.45059, 300, 0, 0, 42, 0, 0, 0),
(111730, 28362, 571, 1, 1, 0, 0, 5865.93, 4563.6, -133.301, 3.52556, 300, 0, 0, 42, 0, 0, 0),
(111732, 28362, 571, 1, 1, 0, 0, 5731.34, 4688.48, -134.257, 3.4383, 300, 0, 0, 42, 0, 0, 0),
(111731, 28362, 571, 1, 1, 0, 0, 5594.8, 4733.19, -134.289, 0.10472, 300, 0, 0, 42, 0, 0, 0),
(111734, 28362, 571, 1, 1, 0, 0, 5773.98, 4439.41, -137.158, 4.17134, 300, 0, 0, 42, 0, 0, 0),
(112036, 28362, 571, 1, 1, 0, 0, 5863.84, 4759.62, -131.907, 5.16617, 300, 0, 0, 42, 0, 0, 0),
(112037, 28362, 571, 1, 1, 0, 0, 5736.98, 4459.44, -134.957, 1.29154, 300, 0, 0, 42, 0, 0, 0),
(112038, 28362, 571, 1, 1, 0, 0, 5806.82, 4481.87, -131.864, 4.60767, 300, 0, 0, 42, 0, 0, 0),
(112039, 28362, 571, 1, 1, 0, 0, 5776.42, 4713.71, -132.204, 4.15388, 300, 0, 0, 42, 0, 0, 0),
(112040, 28362, 571, 1, 1, 0, 0, 5794.37, 4567.62, -134.406, 4.59022, 300, 0, 0, 42, 0, 0, 0),
(112041, 28362, 571, 1, 1, 0, 0, 5801.27, 4529.37, -134.282, 3.22886, 300, 0, 0, 42, 0, 0, 0),
(112042, 28362, 571, 1, 1, 0, 0, 5760.65, 4690.13, -134.465, 5.58505, 300, 0, 0, 42, 0, 0, 0),
(112043, 28362, 571, 1, 1, 0, 0, 5868.02, 4498.96, -133.209, 3.52556, 300, 0, 0, 42, 0, 0, 0),
(112044, 28362, 571, 1, 1, 0, 0, 5652.97, 4494.59, -136.668, 2.60054, 300, 0, 0, 42, 0, 0, 0),
(112045, 28362, 571, 1, 1, 0, 0, 5861.11, 4827.21, -131.635, 5.55015, 300, 0, 0, 42, 0, 0, 0),
(112046, 28362, 571, 1, 1, 0, 0, 5606.67, 4545.54, -136.037, 4.95674, 300, 0, 0, 42, 0, 0, 0),
(112047, 28362, 571, 1, 1, 0, 0, 5786.58, 4751.95, -133.623, 0.767945, 300, 0, 0, 42, 0, 0, 0),
(112048, 28362, 571, 1, 1, 0, 0, 5752.65, 4496.54, -132.448, 4.88692, 300, 0, 0, 42, 0, 0, 0),
(112049, 28362, 571, 1, 1, 0, 0, 5738.6, 4740.34, -132.397, 1.36136, 300, 0, 0, 42, 0, 0, 0),
(112050, 28362, 571, 1, 1, 0, 0, 5523.42, 4590.13, -133.389, 1.37881, 300, 0, 0, 42, 0, 0, 0),
(112051, 28362, 571, 1, 1, 0, 0, 5634.23, 4725.39, -136.565, 4.67748, 300, 0, 0, 42, 0, 0, 0),
(112052, 28362, 571, 1, 1, 0, 0, 5822.07, 4726.69, -132.864, 6.19592, 300, 0, 0, 42, 0, 0, 0),
(112053, 28362, 571, 1, 1, 0, 0, 5616.78, 4507.51, -136.235, 2.79253, 300, 0, 0, 42, 0, 0, 0),
(112054, 28362, 571, 1, 1, 0, 0, 5826.18, 4610.77, -134.161, 3.56047, 300, 0, 0, 42, 0, 0, 0),
(112055, 28362, 571, 1, 1, 0, 0, 5523.1, 4547.95, -139.252, 0.034907, 300, 0, 0, 42, 0, 0, 0),
(112056, 28362, 571, 1, 1, 0, 0, 5656.22, 4645.32, -136.027, 2.9147, 300, 0, 0, 42, 0, 0, 0),
(112057, 28362, 571, 1, 1, 0, 0, 5807.02, 4767.91, -134.886, 3.56047, 300, 0, 0, 42, 0, 0, 0),
(112058, 28362, 571, 1, 1, 0, 0, 5579.51, 4442.72, -139.873, 5.5676, 300, 0, 0, 42, 0, 0, 0),
(112059, 28362, 571, 1, 1, 0, 0, 5656.49, 4679.36, -132.475, 0.855211, 300, 0, 0, 42, 0, 0, 0),
(112060, 28362, 571, 1, 1, 0, 0, 5548.25, 4563.07, -136.596, 0.244346, 300, 0, 0, 42, 0, 0, 0),
(112061, 28362, 571, 1, 1, 0, 0, 5751.76, 4767.77, -134.935, 3.97935, 300, 0, 0, 42, 0, 0, 0),
(112062, 28362, 571, 1, 1, 0, 0, 5539.76, 4518.49, -134.643, 5.89921, 300, 0, 0, 42, 0, 0, 0),
(112063, 28362, 571, 1, 1, 0, 0, 5538.02, 4635.59, -136.865, 1.0472, 300, 0, 0, 42, 0, 0, 0),
(112064, 28362, 571, 1, 1, 0, 0, 5842.54, 4682.01, -134.929, 4.67748, 300, 0, 0, 42, 0, 0, 0),
(112814, 28362, 571, 1, 1, 0, 0, 5768.06, 4605.94, -137.685, 3.87463, 300, 0, 0, 42, 0, 0, 0),
(112066, 28362, 571, 1, 1, 0, 0, 5651.16, 4450.16, -137.938, 5.96903, 300, 0, 0, 42, 0, 0, 0),
(112067, 28362, 571, 1, 1, 0, 0, 5699.09, 4671.95, -135.473, 5.98648, 300, 0, 0, 42, 0, 0, 0),
(112068, 28362, 571, 1, 1, 0, 0, 5484.12, 4632.12, -136.877, 2.23402, 300, 0, 0, 42, 0, 0, 0);
REPLACE INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(40242, 185939, 530, 1, 1, -5189.81, 627.107, 43.5186, 3.07167, 0, 0, 0.999389, 0.0349535, 120, 100, 1),
(40243, 185939, 530, 1, 1, -5112.25, 160.935, -9.40376, 0.63302, 0, 0, 0.311252, 0.950328, 120, 100, 1),
(40244, 185939, 530, 1, 1, -5138.9, 690.166, 42.1073, 5.2818, 0, 0, 0.480034, -0.87725, 120, 100, 1),
(40245, 185939, 530, 1, 1, -5103.78, 662.771, 33.5271, 5.89441, 0, 0, 0.193167, -0.981166, 120, 100, 1),
(40246, 185939, 530, 1, 1, -5105.03, 460.255, -9.67519, 1.11665, 0, 0, 0.529766, 0.848144, 120, 100, 1),
(40247, 185939, 530, 1, 1, -5062.76, 402.884, 0.763877, 0.106798, 0, 0, 0.0533735, 0.998575, 120, 100, 1),
(40248, 185939, 530, 1, 1, -5098.94, 371.462, 0.885829, 1.45769, 0, 0, 0.666008, 0.745945, 120, 100, 1),
(40249, 185939, 530, 1, 1, -5094.73, 444.284, -5.70656, 1.28097, 0, 0, 0.597585, 0.801806, 120, 100, 1),
(40250, 185939, 530, 1, 1, -5080.83, 335.975, 4.94704, 2.44729, 0, 0, 0.940345, 0.340221, 120, 100, 1),
(40251, 185939, 530, 1, 1, -5078.21, 277.921, -9.74248, 3.76677, 0, 0, 0.951541, -0.307521, 120, 100, 1),
(40252, 185939, 530, 1, 1, -5024.72, 504.442, 11.34, 4.53174, 0, 0, 0.768005, -0.640444, 120, 100, 1),
(40253, 185939, 530, 1, 1, -5028.88, 599.486, 19.7124, 5.1365, 0, 0, 0.542443, -0.840093, 120, 100, 1),
(40254, 185939, 530, 1, 1, -5154.33, 225.287, -20.1081, 0.742976, 0, 0, 0.363002, 0.931788, 120, 100, 1),
(40255, 185939, 530, 1, 1, -5122.69, 412, -11.7448, 4.39961, 0, 0, 0.80861, -0.588345, 120, 100, 1),
(40256, 185939, 530, 1, 1, -4955.91, 409.701, 1.61203, 4.72888, 0, 0, 0.701254, -0.712912, 120, 100, 1),
(5099, 185939, 530, 1, 1, -4931.72, 529.889, 6.94222, 2.21167, 0, 0, 0.893839, 0.448387, 120, 100, 1),
(5100, 185939, 530, 1, 1, -5005.62, 549.462, 20.7371, 5.01161, 0, 0, 0.59381, -0.804605, 120, 100, 1),
(5101, 185939, 530, 1, 1, -5007.28, 470.563, 18.8001, 1.46555, 0, 0, 0.668934, 0.743322, 120, 100, 1),
(5102, 185939, 530, 1, 1, -5060.08, 182.564, -10.4589, 0.464771, 0, 0, 0.230299, 0.97312, 120, 100, 1),
(5103, 185939, 530, 1, 1, -5042.78, 323.487, -3.05248, 1.02571, 0, 0, 0.490667, 0.871347, 120, 100, 1),
(5105, 185939, 530, 1, 1, -5037.07, 452.604, -10.9334, 5.3297, 0, 0, 0.458886, -0.888495, 120, 100, 1),
(5106, 185939, 530, 1, 1, -5205.37, 203.066, -13.3182, 5.21189, 0, 0, 0.510396, -0.85994, 120, 100, 1),
(5107, 185939, 530, 1, 1, -5155.35, 726.69, 45.245, 1.91321, 0, 0, 0.81724, 0.576298, 120, 100, 1),
(5108, 185939, 530, 1, 1, -5178.61, 362.202, -20.2691, 0.299837, 0, 0, 0.149358, 0.988783, 120, 100, 1),
(5109, 185939, 530, 1, 1, -5176.67, 160.591, -11.8483, 5.69884, 0, 0, 0.288036, -0.95762, 120, 100, 1),
(5114, 185939, 530, 1, 1, -5146.78, 659.46, 39.2763, 4.15159, 0, 0, 0.875174, -0.483808, 120, 100, 1),
(5115, 185939, 530, 1, 1, -5037.07, 302.368, 5.13704, 2.42373, 0, 0, 0.936272, 0.351275, 120, 100, 1),
(5116, 185939, 530, 1, 1, -5024.53, 372.361, 1.72313, 4.61028, 0, 0, 0.742269, -0.670102, 120, 100, 1),
(5119, 185939, 530, 1, 1, -5011.71, 237.713, -6.58554, 0.978595, 0, 0, 0.470006, 0.882663, 120, 100, 1),
(5120, 185939, 530, 1, 1, -4883.53, 475.869, -2.67198, -3.03684, 0, 0, 0, 1, 180, 33, 1),
(5125, 185939, 530, 1, 1, -5170.76, 167.798, -11.7985, 0.541051, 0, 0, 0, 1, 300, 255, 1),
(5126, 185939, 530, 1, 1, -4917.46, 309.583, -13.1415, 1.83259, 0, 0, 0, 1, 300, 255, 1),
(5131, 185939, 530, 1, 1, -5170.85, 254.96, -31.7537, -0.349065, 0, 0, 0, 1, 300, 255, 1),
(5132, 185939, 530, 1, 1, -5003.44, 525.828, 19.1116, 1.48353, 0, 0, 0, 1, 300, 255, 1),
(5133, 185939, 530, 1, 1, -4972.69, 334.418, -1.68185, -1.88495, 0, 0, 0, 1, 300, 255, 1),
(5135, 185939, 530, 1, 1, -5067.6, 624.055, 28.1315, 1.90241, 0, 0, 0, 1, 300, 255, 1),
(5136, 185939, 530, 1, 1, -4910.93, 592.504, 5.28092, 1.51844, 0, 0, 0, 1, 300, 255, 1),
(5139, 185939, 530, 1, 1, -5162.89, 310.071, -25.0638, 1.48353, 0, 0, 0, 1, 300, 255, 1),
(5141, 185939, 530, 1, 1, -5081.24, 190.113, -8.61309, 1.91986, 0, 0, 0, 1, 300, 255, 1),
(5148, 185939, 530, 1, 1, -5033.31, 470.331, -9.32264, -0.122173, 0, 0, 0, 1, 300, 255, 1),
(5159, 185939, 530, 1, 1, -5027.37, 482.105, -8.57508, -2.07694, 0, 0, 0, 1, 300, 255, 1),
(5162, 185939, 530, 1, 1, -5037.1, 596.536, 18.5783, 1.78023, 0, 0, 0, 1, 300, 255, 1),
(5165, 185939, 530, 1, 1, -5222.39, 196.002, -12.931, -1.79769, 0, 0, 0, 1, 300, 255, 1),
(5168, 185939, 530, 1, 1, -4908.91, 429.57, -3.17093, 0.279252, 0, 0, 0, 1, 300, 255, 1),
(5169, 185939, 530, 1, 1, -5135.19, 451.007, -11.4897, 1.02974, 0, 0, 0, 1, 300, 255, 1),
(5171, 185939, 530, 1, 1, -4976.8, 451.216, 3.51752, -2.35619, 0, 0, 0, 1, 300, 255, 1),
(5173, 185939, 530, 1, 1, -4932.08, 453.45, 1.32601, -1.74533, 0, 0, 0, 1, 300, 255, 1),
(5177, 185939, 530, 1, 1, -4985.45, 531.645, -6.27893, -1.46608, 0, 0, 0, 1, 300, 255, 1),
(5184, 185939, 530, 1, 1, -5063, 323.446, 6.62532, 2.51327, 0, 0, 0, 1, 300, 255, 1),
(5186, 185939, 530, 1, 1, -5051.17, 624.346, 23.028, 2.68781, 0, 0, 0, 1, 300, 255, 1),
(5187, 185939, 530, 1, 1, -4959.3, 362.391, -1.9749, 0.872664, 0, 0, 0, 1, 300, 255, 1),
(5188, 185939, 530, 1, 1, -5012.34, 426.711, 13.5566, -1.41372, 0, 0, 0, 1, 300, 255, 1),
(5195, 185939, 530, 1, 1, -4959.33, 576.761, 11.9238, -2.28638, 0, 0, 0, 1, 300, 255, 1),
(5198, 185939, 530, 1, 1, -5104.44, 165.22, -8.67575, 0.314158, 0, 0, 0, 1, 300, 255, 1),
(5200, 185939, 530, 1, 1, -4953.66, 468.525, 0.739507, -2.26892, 0, 0, 0, 1, 300, 255, 1),
(5202, 185939, 530, 1, 1, -5048.38, 403.73, 1.97754, 1.27409, 0, 0, 0, 1, 300, 255, 1),
(5205, 185939, 530, 1, 1, -5101.45, 473.739, -8.98286, -3.01941, 0, 0, 0, 1, 300, 255, 1),
(5207, 185939, 530, 1, 1, -4916.29, 545.349, 6.52156, 2.61799, 0, 0, 0, 1, 300, 255, 1),
(5208, 185939, 530, 1, 1, -4997.54, 158.95, -14.7979, 0.104719, 0, 0, 0, 1, 300, 255, 1),
(5213, 185939, 530, 1, 1, -5033.11, 427.561, -9.99404, -1.91986, 0, 0, 0, 1, 300, 255, 1),
(5221, 185939, 530, 1, 1, -5071.87, 398.519, -0.286157, 1.69297, 0, 0, 0, 1, 300, 255, 1),
(5226, 185939, 530, 1, 1, -4962.51, 405.349, 1.43439, 0.087266, 0, 0, 0, 1, 300, 255, 1),
(5228, 185939, 530, 1, 1, -5013.62, 404.31, -12.2255, 2.70526, 0, 0, 0, 1, 300, 255, 1),
(5229, 185939, 530, 1, 1, -5017.2, 365.171, 0.648494, 2.21656, 0, 0, 0, 1, 300, 255, 1),
(5230, 185939, 530, 1, 1, -4957.36, 334.104, -3.08167, 0.610864, 0, 0, 0, 1, 300, 255, 1),
(5231, 185939, 530, 1, 1, -4948.42, 283.201, -7.74535, 1.25664, 0, 0, 0, 1, 300, 255, 1),
(5235, 185939, 530, 1, 1, -5018.78, 271.518, -0.210369, 2.68781, 0, 0, 0, 1, 300, 255, 1),
(5236, 185939, 530, 1, 1, -4968.73, 624.278, 16.0225, -2.30383, 0, 0, 0, 1, 300, 255, 1),
(5237, 185939, 530, 1, 1, -4996.43, 264.861, -4.54931, -0.104719, 0, 0, 0, 1, 300, 255, 1),
(5238, 185939, 530, 1, 1, -4962.21, 298.344, -4.64944, -0.418879, 0, 0, 0, 1, 300, 255, 1),
(5240, 185939, 530, 1, 1, -4988.81, 280.268, -4.79425, -0.715585, 0, 0, 0, 1, 300, 255, 1),
(5241, 185939, 530, 1, 1, -5032.08, 432.775, -9.90734, -1.71042, 0, 0, 0, 1, 300, 255, 1),
(5242, 185939, 530, 1, 1, -5069.65, 662.32, 33.0581, 2.80997, 0, 0, 0, 1, 300, 255, 1),
(5243, 185939, 530, 1, 1, -5175.63, 231.512, -33.8192, 0.977383, 0, 0, 0, 1, 300, 255, 1),
(5244, 185939, 530, 1, 1, -5018.86, 299.244, 4.61528, 1.23918, 0, 0, 0, 1, 300, 255, 1),
(5246, 185939, 530, 1, 1, -4910.72, 480.099, 0.642428, -2.65289, 0, 0, 0, 1, 300, 255, 1),
(5247, 185939, 530, 1, 1, -5130.02, 347.811, -17.7808, -2.68781, 0, 0, 0, 1, 300, 255, 1),
(5249, 185939, 530, 1, 1, -5056.37, 137.68, -14.3643, -1.309, 0, 0, 0, 1, 300, 255, 1),
(5251, 185939, 530, 1, 1, -5116.07, 441.232, -10.9529, -1.41372, 0, 0, 0, 1, 300, 255, 1),
(5252, 185939, 530, 1, 1, -5155.65, 431.065, -10.451, -1.18682, 0, 0, 0, 1, 300, 255, 1),
(5253, 185939, 530, 1, 1, -5087.48, 429.858, -12.093, 1.51844, 0, 0, 0, 1, 300, 255, 1),
(5256, 185939, 530, 1, 1, -4962.56, 366.978, -1.46309, 0.296705, 0, 0, 0, 1, 300, 255, 1),
(5257, 185939, 530, 1, 1, -4939.6, 523.843, 7.77777, -2.58308, 0, 0, 0, 1, 300, 255, 1),
(5263, 185939, 530, 1, 1, -5107.48, 645.042, 33.7795, -0.157079, 0, 0, 0, 1, 300, 255, 1),
(5265, 185939, 530, 1, 1, -5057.35, 120.543, -17.2921, -0.418879, 0, 0, 0, 1, 300, 255, 1),
(5272, 185939, 530, 1, 1, -4900.04, 458.943, 0.135431, 1.11701, 0, 0, 0, 1, 300, 255, 1),
(5278, 185939, 530, 1, 1, -5021.91, 695.769, 18.8589, 3.00195, 0, 0, 0, 1, 300, 255, 1),
(5284, 185939, 530, 1, 1, -4940.06, 589.336, 11.0373, 2.70526, 0, 0, 0, 1, 300, 255, 1),
(5285, 185939, 530, 1, 1, -5037.21, 535.623, -1.97412, 3.10665, 0, 0, 0, 1, 300, 255, 1),
(5286, 185939, 530, 1, 1, -5185.91, 143.223, -12.5243, -3.01941, 0, 0, 0, 1, 300, 255, 1),
(5289, 185939, 530, 1, 1, -5087.68, 265.911, -30.9139, -2.87979, 0, 0, 0, 1, 300, 255, 1),
(5293, 185939, 530, 1, 1, -5106.07, 145.391, -11.9795, -2.11185, 0, 0, 0, 1, 300, 255, 1),
(5298, 185939, 530, 1, 1, -5032.45, 179.062, -15.242, -1.48353, 0, 0, 0, 1, 300, 255, 1),
(5299, 185939, 530, 1, 1, -5011.26, 558.087, -3.62893, 1.37881, 0, 0, 0, 1, 300, 255, 1),
(5301, 185939, 530, 1, 1, -5053.25, 456.724, -13.0223, -0.750491, 0, 0, 0, 1, 300, 255, 1),
(5306, 185939, 530, 1, 1, -4969.38, 523.027, -5.36902, 2.70526, 0, 0, 0, 1, 300, 255, 1),
(5308, 185939, 530, 1, 1, -5002.83, 448.958, -7.03501, 2.09439, 0, 0, 0, 1, 300, 255, 1),
(5309, 185939, 530, 1, 1, -5096.04, 353.769, 3.34744, -1.15192, 0, 0, 0, 1, 300, 255, 1),
(5317, 185939, 530, 1, 1, -5126.07, 135.752, -12.3584, 1.5708, 0, 0, 0, 1, 300, 255, 1),
(5318, 185939, 530, 1, 1, -4952.45, 487.301, 4.63682, -1.18682, 0, 0, 0, 1, 300, 255, 1),
(5319, 185939, 530, 1, 1, -5017.11, 654.159, 22.8074, 1.91986, 0, 0, 0, 1, 300, 255, 1),
(5320, 185939, 530, 1, 1, -5205.67, 141.088, -13.4083, -2.84488, 0, 0, 0, 1, 300, 255, 1),
(5321, 185939, 530, 1, 1, -5193.07, 248.559, -29.7597, -2.72271, 0, 0, 0, 1, 300, 255, 1),
(5323, 185939, 530, 1, 1, -5213.08, 237.306, -10.5168, -3.05433, 0, 0, 0, 1, 300, 255, 1),
(5327, 185939, 530, 1, 1, -5262.79, 209.27, -13.1274, 1.27409, 0, 0, 0, 1, 300, 255, 1),
(5329, 185939, 530, 1, 1, -5208.64, 213.153, -12.734, 0.90757, 0, 0, 0, 1, 300, 255, 1),
(5334, 185939, 530, 1, 1, -5196.39, 216.784, -13.7149, 0.925024, 0, 0, 0, 1, 300, 255, 1),
(5335, 185939, 530, 1, 1, -5239.61, 242.159, -10.8522, 0.820303, 0, 0, 0, 1, 300, 255, 1),
(5339, 185939, 530, 1, 1, -4975.86, 662.175, 22.0218, -0.034906, 0, 0, 0, 1, 300, 255, 1),
(5342, 185939, 530, 1, 1, -5021.31, 572.261, 21.96, 2.65289, 0, 0, 0, 1, 300, 255, 1),
(5343, 185939, 530, 1, 1, -5162.31, 415.791, -10.303, -2.23402, 0, 0, 0, 1, 300, 255, 1),
(5344, 185939, 530, 1, 1, -4996.59, 629.65, 22.7026, -1.37881, 0, 0, 0, 1, 300, 255, 1),
(5347, 185939, 530, 1, 1, -5033.93, 388.446, -13.2778, -0.226892, 0, 0, 0, 1, 300, 255, 1),
(5348, 185939, 530, 1, 1, -5045.86, 420.975, -10.681, -2.56563, 0, 0, 0, 1, 300, 255, 1),
(5349, 185939, 530, 1, 1, -4929.31, 297.951, -12.1268, -1.58825, 0, 0, 0, 1, 300, 255, 1),
(5356, 185939, 530, 1, 1, -5027.67, 545.317, 18.4923, 1.81514, 0, 0, 0, 1, 300, 255, 1),
(5357, 185939, 530, 1, 1, -5180.56, 383.743, -18.8471, 1.41372, 0, 0, 0, 1, 300, 255, 1),
(5358, 185939, 530, 1, 1, -4891.32, 531.999, 1.39411, 2.70526, 0, 0, 0, 1, 300, 255, 1),
(5359, 185939, 530, 1, 1, -5037.43, 424.579, 4.64012, 1.81514, 0, 0, 0, 1, 300, 255, 1),
(5362, 185939, 530, 1, 1, -5051.67, 632.156, 23.9043, -0.645772, 0, 0, 0, 1, 300, 255, 1),
(5363, 185939, 530, 1, 1, -5018.34, 150.108, -14.1947, -0.453785, 0, 0, 0, 1, 300, 255, 1),
(5365, 185939, 530, 1, 1, -5108.4, 405.713, -12.3955, -2.3911, 0, 0, 0, 1, 300, 255, 1),
(5367, 185939, 530, 1, 1, -4987.44, 668.217, 23.5955, 3.00195, 0, 0, 0, 1, 300, 255, 1),
(5368, 185939, 530, 1, 1, -4943.11, 423.362, 1.99854, -2.426, 0, 0, 0, 1, 300, 255, 1),
(5379, 185939, 530, 1, 1, -4943.78, 536.902, 7.24843, -2.82743, 0, 0, 0, 1, 300, 255, 1),
(5390, 185939, 530, 1, 1, -5033.96, 512.002, -5.49904, -1.71042, 0, 0, 0, 1, 300, 255, 1),
(5391, 185939, 530, 1, 1, -5217.55, 337.072, -22.0709, 1.22173, 0, 0, 0, 1, 300, 255, 1),
(5393, 185939, 530, 1, 1, -5038.92, 575.498, 19.7935, 1.65806, 0, 0, 0, 1, 300, 255, 1),
(5394, 185939, 530, 1, 1, -4971.06, 225.004, -11.3607, 2.70526, 0, 0, 0, 1, 300, 255, 1),
(5395, 185939, 530, 1, 1, -5066.43, 394.802, -12.9495, 0.767944, 0, 0, 0, 1, 300, 255, 1),
(5396, 185939, 530, 1, 1, -5026.17, 587.553, 21.0214, -0.017452, 0, 0, 0, 1, 300, 255, 1),
(5397, 185939, 530, 1, 1, -5024.83, 207.571, -11.9162, 1.0821, 0, 0, 0, 1, 300, 255, 1),
(5398, 185939, 530, 1, 1, -4987.25, 520.171, -5.70161, 0.017452, 0, 0, 0, 1, 300, 255, 1),
(5399, 185939, 530, 1, 1, -5026.1, 493.594, 10.4515, 1.44862, 0, 0, 0, 1, 300, 255, 1),
(5402, 185939, 530, 1, 1, -5228.15, 136.479, -13.7112, 0.890117, 0, 0, 0, 1, 300, 255, 1),
(5408, 185939, 530, 1, 1, -5103.53, 123.015, -13.9215, 1.15192, 0, 0, 0, 1, 300, 255, 1),
(5409, 185939, 530, 1, 1, -5140.1, 150.798, -11.5229, -1.95477, 0, 0, 0, 1, 300, 255, 1),
(5410, 185939, 530, 1, 1, -5135.53, 483.049, -14.8337, 2.46091, 0, 0, 0, 1, 300, 255, 1),
(5411, 185939, 530, 1, 1, -5036.11, 361.019, 2.36178, -2.33874, 0, 0, 0, 1, 300, 255, 1),
(5415, 185939, 530, 1, 1, -5111.9, 665.725, 35.3144, 2.79252, 0, 0, 0, 1, 300, 255, 1),
(5417, 185939, 530, 1, 1, -5092.58, 450.738, -6.41982, 1.0472, 0, 0, 0, 1, 300, 255, 1);
UPDATE  `gameobject` SET  `spawntimesecs` =  '300', `animprogress` =  '255' WHERE  `id` =185939;
UPDATE `creature_template` SET `gossip_menu_id` = 681 WHERE `entry` = 1309;
UPDATE `creature_template` SET `gossip_menu_id` = 681 WHERE `entry` = 1310;
UPDATE `creature_template` SET `gossip_menu_id` = 681 WHERE `entry` = 1314;
UPDATE `creature_template` SET `gossip_menu_id` = 685 WHERE `entry` = 1299;
UPDATE `creature_template` SET `gossip_menu_id` = 688 WHERE `entry` = 1333;
UPDATE `creature_template` SET `gossip_menu_id` = 4667 WHERE `entry` = 906;
UPDATE `creature_template` SET `gossip_menu_id` = 5665 WHERE `entry` = 1683;
UPDATE `creature_template` SET `gossip_menu_id` = 5665 WHERE `entry` = 2367;
UPDATE `creature_template` SET `gossip_menu_id` = 5746 WHERE `entry` = 11441;
UPDATE `creature_template` SET `gossip_menu_id` = 5746 WHERE `entry` = 11448;
UPDATE `creature_template` SET `gossip_menu_id` = 5746 WHERE `entry` = 11450;
UPDATE `creature_template` SET `gossip_menu_id` = 5382 WHERE `entry` = 12939;
UPDATE `creature_template` SET `gossip_menu_id` = 5602 WHERE `entry` = 11491;
UPDATE `creature_template` SET `gossip_menu_id` = 8522 WHERE `entry` = 22477;
UPDATE `creature_template` SET `gossip_menu_id` = 8117 WHERE `entry` = 21859;
UPDATE `creature_template` SET `gossip_menu_id` = 9823 WHERE `entry` = 29725;
UPDATE `creature_template` SET `gossip_menu_id` = 10221 WHERE `entry` = 30099;
UPDATE `creature_template` SET `gossip_menu_id` = 10188 WHERE `entry` = 31051;
UPDATE `creature_template` SET `gossip_menu_id` = 10203 WHERE `entry` = 32523;
INSERT IGNORE INTO gossip_menu (entry,text_id) VALUES (5382,6573);
INSERT IGNORE INTO gossip_menu (entry,text_id) VALUES (8522,7026);

# Lightunit
DELETE FROM `gameobject` WHERE `id` = 181597;

# FIX
UPDATE `creature_template` SET `minlevel` = 60, `maxlevel` = 60 WHERE `entry` = 15893;
UPDATE `creature_template` SET `minlevel` = 60, `maxlevel` = 60 WHERE `entry` = 15894;
DELETE FROM `creature` WHERE `id`=15893;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`) VALUES
(112069, 15893, 571, 1, 1, 0, 0, 5821.9, 642.763, 648.11, 2.47837, 300, 0, 0, 4120, 0, 0, 0),
(112070, 15893, 0, 1, 1, 0, 0, -4662.63, -957.069, 500.46, 4.86947, 300, 0, 0, 4120, 0, 0, 0),
(112071, 15893, 1, 1, 1, 0, 0, 10150.9, 2602.31, 1330.91, 2.47837, 300, 0, 0, 4120, 0, 0, 0),
(112072, 15893, 530, 1, 1, 0, 0, -1804.24, 5493.14, -12.3448, 3.82227, 300, 0, 0, 4120, 0, 0, 0),
(112073, 15893, 530, 1, 1, 0, 0, -1777.68, 5440.31, -12.3448, 2.47837, 300, 0, 0, 4120, 0, 0, 0);
DELETE FROM `creature` WHERE `id`=15894;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`) VALUES
(112074, 15894, 571, 1, 1, 0, 0, 5821.9, 642.784, 648.109, 6.23082, 300, 0, 0, 4120, 0, 0, 0),
(112075, 15894, 0, 1, 1, 0, 0, -4662.78, -956.093, 500.46, 4.72984, 300, 0, 0, 4120, 0, 0, 0),
(112076, 15894, 1, 1, 1, 0, 0, 10150.8, 2602.45, 1330.91, 6.23082, 300, 0, 0, 4120, 0, 0, 0),
(112077, 15894, 530, 1, 1, 0, 0, -1803.98, 5492.74, -12.3448, 0.017453, 300, 0, 0, 4120, 0, 0, 0),
(112186, 15894, 530, 1, 1, 0, 0, -1777.62, 5439.88, -12.3448, 6.23082, 300, 0, 0, 4120, 0, 0, 0);
UPDATE `creature_template` SET `flags_extra` = 130 WHERE `entry` = 23583;
REPLACE INTO `game_event_creature` SELECT `guid`,'7' FROM `creature` WHERE `id`=15893;
REPLACE INTO `game_event_creature` SELECT `guid`,'7' FROM `creature` WHERE `id`=15894;
DELETE FROM `creature` WHERE `id`=23583;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`) VALUES
(112503, 23583, 1, 1, 1, 0, 0, -3734.76, -2530.98, 72.4687, 2.49582, 300, 0, 0, 41, 60, 0, 0),
(112587, 23583, 1, 1, 1, 0, 0, -3721.84, -2541.22, 69.84, 5.20108, 300, 0, 0, 41, 60, 0, 0),
(112588, 23583, 1, 1, 1, 0, 0, -3700.94, -2534.58, 68.9021, 0.349066, 300, 0, 0, 41, 60, 0, 0);
UPDATE `creature_template` SET `flags_extra` = 130 WHERE `entry` = 28724;
UPDATE `creature_template` SET `flags_extra` = 130 WHERE `entry` = 26265;
UPDATE `creature_template` SET `flags_extra` = 130 WHERE `entry` = 26867;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`) VALUES
('142552', '28724', '571', '1', '2', '0', '0', '5742.73', '-4293.23', '375.259', '4.62512', '300', '0', '0', '1', '0', '0', '0'),
('142553', '28724', '571', '1', '2', '0', '0', '5613.82', '-4286.39', '375.374', '5.044', '300', '0', '0', '1', '0', '0', '0'),
('142554', '28724', '571', '1', '2', '0', '0', '5616.13', '-4236.8', '365.063', '1.58825', '300', '0', '0', '1', '0', '0', '0'),
('142555', '28724', '571', '1', '2', '0', '0', '5769.1', '-4148.13', '353.564', '1.5708', '300', '0', '0', '1', '0', '0', '0'),
('142556', '28724', '571', '1', '2', '0', '0', '5820.37', '-4211.1', '363.653', '4.66003', '300', '0', '0', '1', '0', '0', '0'),
('142557', '28724', '571', '1', '2', '0', '0', '5848.86', '-4433.83', '375.502', '3.15905', '300', '0', '0', '1', '0', '0', '0'),
('142558', '28724', '571', '1', '2', '0', '0', '5716.86', '-4227', '363.928', '1.44862', '300', '0', '0', '1', '0', '0', '0'),
('142559', '28724', '571', '1', '2', '0', '0', '5784.32', '-4450.26', '387.26', '1.58825', '300', '0', '0', '1', '0', '0', '0'),
('142560', '28724', '571', '1', '2', '0', '0', '5689.84', '-4294.69', '375.5', '4.62512', '300', '0', '0', '1', '0', '0', '0'),
('142561', '28724', '571', '1', '2', '0', '0', '5664.22', '-4085.71', '353.672', '4.76475', '300', '0', '0', '1', '0', '0', '0'),
('142562', '28724', '571', '1', '2', '0', '0', '5769.07', '-4085.21', '353.504', '4.76475', '300', '0', '0', '1', '0', '0', '0'),
('142563', '28724', '571', '1', '2', '0', '0', '5664.04', '-4147.33', '352.79', '1.55334', '300', '0', '0', '1', '0', '0', '0'),
('142564', '28724', '571', '1', '2', '0', '0', '5826.2', '-4297.68', '375.625', '3.21141', '300', '0', '0', '1', '0', '0', '0'),
('142565', '28724', '571', '1', '2', '0', '0', '5581.71', '-4435.31', '375.641', '6.26573', '300', '0', '0', '1', '0', '0', '0'),
('142566', '28724', '571', '1', '2', '0', '0', '5649.91', '-4448.59', '387.246', '1.5708', '300', '0', '0', '1', '0', '0', '0'),
('142567', '31564', '1', '1', '128', '0', '0', '1429.89', '-4393.2', '25.2354', '4.92588', '300', '0', '0', '31905', '0', '0', '0'),
('142568', '31564', '1', '1', '128', '0', '0', '1356.18', '-4361.85', '26.7058', '0.346665', '300', '0', '0', '31905', '0', '0', '0'),
('142569', '31564', '1', '1', '128', '0', '0', '1297.45', '-4493.71', '23.5998', '1.54834', '300', '5', '0', '31905', '0', '0', '1'),
('142570', '31564', '1', '1', '128', '0', '0', '1331.19', '-4388.35', '26.2572', '0.382886', '300', '0', '0', '31905', '0', '0', '0'),
('142571', '23519', '571', '1', '2', '0', '0', '-396.49', '-5725.86', '-8.9199', '4.81824', '300', '0', '0', '20038000', '0', '0', '0'),
('142572', '14688', '571', '1', '1', '0', '0', '8183.73', '3486.93', '625.696', '0.734203', '300', '0', '0', '252000', '39940', '0', '0'),
('142573', '26890', '571', '1', '1', '0', '0', '4770.54', '592.455', '150.594', '3.76145', '300', '0', '0', '10282', '3466', '0', '0'),
('142574', '26265', '571', '1', '1', '0', '0', '4143.77', '7387.28', '730.62', '1.06465', '300', '0', '0', '1', '0', '0', '0'),
('142575', '25768', '571', '1', '1', '0', '0', '3459.71', '4518.85', '-13.4549', '3.47321', '300', '0', '0', '11614', '3231', '0', '0'),
('142576', '26299', '571', '1', '1', '0', '0', '4032.4', '7086.21', '166.685', '4.32842', '300', '0', '0', '9642', '3319', '0', '0'),
('142577', '27180', '571', '1', '1', '0', '0', '4826.38', '-1262.59', '169.148', '5.51524', '300', '0', '0', '1', '0', '0', '0'),
('142578', '27180', '571', '1', '1', '0', '0', '4828.49', '-1359.48', '168.935', '3.59538', '300', '0', '0', '1', '0', '0', '0'),
('142579', '28996', '571', '1', '1', '0', '0', '6882.03', '-4571', '442.312', '2.37365', '300', '0', '0', '11770', '3809', '0', '0'),
('142580', '28535', '571', '1', '1', '0', '0', '5549.62', '5769.51', '-73.4282', '2.75762', '300', '0', '0', '1', '0', '0', '0'),
('142581', '28536', '571', '1', '1', '0', '0', '5549.62', '5769.5', '-73.7299', '4.32842', '300', '0', '0', '1', '0', '0', '0'),
('142582', '28537', '571', '1', '1', '0', '0', '5549.62', '5769.51', '-73.3463', '5.65487', '300', '0', '0', '1', '0', '0', '0'),
('142583', '29050', '571', '1', '1', '0', '0', '6348.41', '-4488.19', '458.212', '5.41052', '300', '0', '0', '35310', '0', '0', '0'),
('142584', '28540', '571', '1', '1', '0', '0', '5552.58', '5767.67', '-77.1431', '1.46608', '300', '0', '0', '1', '0', '0', '0'),
('142585', '29082', '571', '1', '1', '0', '0', '4589.83', '-5699.56', '184.59', '2.09439', '300', '0', '0', '9940', '0', '0', '0'),
('142586', '27839', '571', '1', '1', '0', '0', '4557.49', '30.8529', '80.2156', '1.95477', '300', '0', '0', '8982', '6310', '0', '0'),
('142587', '27839', '571', '1', '1', '0', '0', '4532.87', '29.0699', '78.5573', '1.3439', '300', '0', '0', '8982', '6310', '0', '0'),
('142588', '27839', '571', '1', '1', '0', '0', '4543.94', '28.0949', '79.034', '1.62316', '300', '0', '0', '8982', '6310', '0', '0'),
('142589', '27839', '571', '1', '1', '0', '0', '4522.23', '33.4378', '80.4205', '1.01229', '300', '0', '0', '8982', '6310', '0', '0'),
('142590', '27868', '571', '1', '1', '0', '0', '3682.22', '-910.085', '78.0075', '5.74213', '300', '0', '0', '1', '0', '0', '0'),
('142591', '26867', '571', '1', '1', '0', '0', '4914.76', '-4813.24', '32.5866', '3.01942', '300', '0', '0', '1', '0', '0', '0'),
('142592', '26867', '571', '1', '1', '0', '0', '4914.13', '-4802.8', '32.6696', '3.42085', '300', '0', '0', '1', '0', '0', '0'),
('142593', '26867', '571', '1', '1', '0', '0', '4908.68', '-4794.35', '32.6706', '3.97935', '300', '0', '0', '1', '0', '0', '0'),
('142594', '26867', '571', '1', '1', '0', '0', '4899.54', '-4789.86', '32.5981', '4.76475', '300', '0', '0', '1', '0', '0', '0'),
('142595', '26867', '571', '1', '1', '0', '0', '4889.96', '-4790.65', '32.5985', '5.20108', '300', '0', '0', '1', '0', '0', '0'),
('142596', '26867', '571', '1', '1', '0', '0', '4876.61', '-4805.58', '32.5825', '6.17846', '300', '0', '0', '1', '0', '0', '0'),
('142597', '26867', '571', '1', '1', '0', '0', '4877.39', '-4815.75', '32.5835', '0.15708', '300', '0', '0', '1', '0', '0', '0'),
('142598', '26867', '571', '1', '1', '0', '0', '4883.1', '-4823.98', '32.5884', '0.872665', '300', '0', '0', '1', '0', '0', '0'),
('142599', '26867', '571', '1', '1', '0', '0', '4892.31', '-4828.58', '32.5958', '1.5708', '300', '0', '0', '1', '0', '0', '0'),
('142600', '26867', '571', '1', '1', '0', '0', '4902.23', '-4827.56', '32.6125', '2.44346', '300', '0', '0', '1', '0', '0', '0'),
('142601', '31434', '1', '1', '129', '0', '0', '1588.21', '-4398.51', '5.86464', '0.226893', '300', '0', '0', '651', '0', '0', '0'),
('142602', '31434', '1', '1', '129', '0', '0', '1590.04', '-4400.21', '5.74734', '0.366519', '300', '0', '0', '651', '0', '0', '0'),
('142603', '31434', '1', '1', '129', '0', '0', '1591.08', '-4404.65', '6.6004', '0.558505', '300', '0', '0', '651', '0', '0', '0'),
('142604', '31434', '1', '1', '129', '0', '0', '1590.57', '-4398.07', '6.56506', '0.139626', '300', '0', '0', '651', '0', '0', '0'),
('142605', '31434', '1', '1', '129', '0', '0', '1588.6', '-4396.89', '6.69417', '0.226893', '300', '0', '0', '651', '0', '0', '0'),
('142606', '31434', '1', '1', '129', '0', '0', '1589.93', '-4402.51', '5.71301', '0.471239', '300', '0', '0', '651', '0', '0', '0'),
('142607', '31434', '1', '1', '129', '0', '0', '1590.39', '-4395.64', '7.02838', '0.401426', '300', '0', '0', '651', '0', '0', '0'),
('142608', '31434', '1', '1', '129', '0', '0', '1594.12', '-4403.51', '6.56479', '0.628319', '300', '0', '0', '651', '0', '0', '0'),
('142609', '31434', '1', '1', '129', '0', '0', '1587.99', '-4395', '6.50157', '6.26573', '300', '0', '0', '651', '0', '0', '0'),
('142610', '31564', '1', '1', '128', '0', '0', '1491.73', '-4411.57', '23.5107', '3.15863', '300', '0', '0', '31905', '0', '0', '0'),
('142611', '31564', '1', '1', '128', '0', '0', '1517.45', '-4419.16', '17.3082', '6.26724', '300', '0', '0', '31905', '0', '0', '0'),
('142612', '32364', '1', '1', '128', '0', '0', '1921.34', '-4146.44', '40.4888', '1.67552', '300', '0', '0', '5907158', '746240', '0', '0'),
('142613', '31416', '1', '1', '128', '0', '0', '1620.45', '-4252.84', '47.5273', '3.7001', '300', '0', '0', '16050', '0', '0', '0'),
('142614', '31416', '1', '1', '128', '0', '0', '1552.41', '-4324.75', '21.8029', '5.51524', '300', '0', '0', '16050', '0', '0', '0'),
('142615', '31416', '1', '1', '128', '0', '0', '1628.89', '-4274.76', '24.0855', '5.13127', '300', '0', '0', '16050', '0', '0', '0'),
('142616', '31416', '1', '1', '128', '0', '0', '1889.53', '-4485.08', '21.3103', '1.44862', '300', '0', '0', '16050', '0', '0', '0'),
('142617', '31416', '1', '1', '128', '0', '0', '1952.53', '-4368.57', '22.659', '3.68265', '300', '0', '0', '16050', '0', '0', '0'),
('142618', '31416', '1', '1', '128', '0', '0', '1817.08', '-4357.14', '-9.81641', '2.30383', '300', '0', '0', '16050', '0', '0', '0'),
('142619', '31416', '1', '1', '128', '0', '0', '1921.7', '-4375.67', '22.5724', '5.84685', '300', '0', '0', '16050', '0', '0', '2'),
('142620', '31416', '1', '1', '128', '0', '0', '1741.42', '-4217.94', '44.3144', '3.38795', '300', '0', '0', '16050', '0', '0', '2'),
('142621', '31416', '1', '1', '128', '0', '0', '1845.49', '-4395.95', '5.19264', '3.80482', '300', '0', '0', '16050', '0', '0', '2'),
('142622', '31416', '1', '1', '128', '0', '0', '1672.28', '-4473.2', '20.1537', '1.44862', '300', '0', '0', '16050', '0', '0', '2'),
('142623', '31416', '1', '1', '128', '0', '0', '1953.01', '-4431.15', '25.1469', '3.31613', '300', '0', '0', '16050', '0', '0', '0'),
('142624', '31416', '1', '1', '128', '0', '0', '1523.92', '-4429.44', '16.7349', '0.506145', '300', '0', '0', '16050', '0', '0', '0'),
('142625', '31416', '1', '1', '128', '0', '0', '1688.53', '-4474.58', '20.1537', '1.95477', '300', '0', '0', '16050', '0', '0', '0'),
('142626', '31416', '1', '1', '128', '0', '0', '1896.44', '-4603.17', '33.8937', '3.75642', '300', '0', '0', '16050', '0', '0', '0'),
('142627', '31416', '1', '1', '128', '0', '0', '1751.45', '-4208.82', '42.7326', '5.34071', '300', '0', '0', '16050', '0', '0', '0'),
('142628', '31416', '1', '1', '128', '0', '0', '1906.25', '-4564.21', '33.9758', '0.628319', '300', '0', '0', '16050', '0', '0', '0'),
('142629', '31416', '1', '1', '128', '0', '0', '2015.69', '-4719.41', '24.5092', '2.53025', '300', '5', '0', '16050', '0', '0', '1'),
('142630', '31416', '1', '1', '128', '0', '0', '1629.47', '-4400.14', '13.8212', '0.107557', '300', '0', '0', '16050', '0', '0', '0'),
('142631', '31416', '1', '1', '128', '0', '0', '2126.41', '-4738.09', '50.4491', '2.74017', '300', '0', '0', '16050', '0', '0', '0'),
('142632', '31416', '1', '1', '128', '0', '0', '1416.9', '-4365.66', '25.2354', '3.25185', '300', '5', '0', '16050', '0', '0', '1'),
('142633', '31416', '1', '1', '128', '0', '0', '1518.15', '-4425.35', '18.7986', '1.27409', '300', '0', '0', '16050', '0', '0', '0'),
('142634', '31416', '1', '1', '128', '0', '0', '1950.89', '-4374.69', '22.043', '2.70526', '300', '0', '0', '16050', '0', '0', '0'),
('142635', '31416', '1', '1', '128', '0', '0', '1929.52', '-4300.46', '24.1794', '4.6942', '300', '0', '0', '16050', '0', '0', '0'),
('142636', '31416', '1', '1', '128', '0', '0', '1596.65', '-4388.67', '9.98323', '5.98648', '300', '0', '0', '16050', '0', '0', '0'),
('142637', '31416', '1', '1', '128', '0', '0', '1668.56', '-4323.66', '61.3295', '5.96903', '300', '0', '0', '16050', '0', '0', '0'),
('142638', '31416', '1', '1', '128', '0', '0', '1690.52', '-4262.62', '53.7757', '2.61799', '300', '0', '0', '16050', '0', '0', '0'),
('142639', '31416', '1', '1', '128', '0', '0', '1775.07', '-4319.91', '-7.87855', '5.60251', '300', '0', '0', '16050', '0', '0', '0'),
('142640', '31416', '1', '1', '128', '0', '0', '1759.03', '-4301.89', '7.01614', '5.46288', '300', '0', '0', '16050', '0', '0', '0'),
('142641', '31416', '1', '1', '128', '0', '0', '1603.48', '-4449.95', '8.1165', '2.3911', '300', '0', '0', '16050', '0', '0', '0'),
('142642', '31416', '1', '1', '128', '0', '0', '1902.63', '-4628.79', '33.9763', '0.593412', '300', '0', '0', '16050', '0', '0', '0'),
('142643', '31416', '1', '1', '128', '0', '0', '1615.63', '-4376.11', '12.4018', '4.24115', '300', '0', '0', '16050', '0', '0', '0'),
('142644', '31416', '1', '1', '128', '0', '0', '1479.39', '-4406.25', '25.3187', '0.017453', '300', '0', '0', '16050', '0', '0', '0'),
('142645', '31416', '1', '1', '128', '0', '0', '1387.28', '-4379.89', '27.0983', '3.29867', '300', '0', '0', '16050', '0', '0', '0'),
('142646', '31416', '1', '1', '128', '0', '0', '1886.46', '-4415.86', '11.7157', '3.76991', '300', '0', '0', '16050', '0', '0', '0'),
('142647', '31416', '1', '1', '128', '0', '0', '1673.2', '-4250', '51.8765', '5.044', '300', '0', '0', '16050', '0', '0', '0'),
('142648', '31416', '1', '1', '128', '0', '0', '1623.15', '-4279.64', '22.5694', '6.16101', '300', '0', '0', '16050', '0', '0', '0'),
('142649', '31416', '1', '1', '128', '0', '0', '1537.41', '-4380.75', '16.7599', '3.42085', '300', '0', '0', '16050', '0', '0', '0'),
('142650', '31416', '1', '1', '128', '0', '0', '1923.98', '-4447.8', '44.9684', '0.715585', '300', '0', '0', '16050', '0', '0', '0'),
('142651', '31416', '1', '1', '128', '0', '0', '2079.58', '-4710.36', '38.8957', '6.0586', '300', '5', '0', '16050', '0', '0', '1'),
('142652', '31416', '1', '1', '128', '0', '0', '1481.77', '-4427.79', '25.3187', '0.191986', '300', '0', '0', '16050', '0', '0', '0'),
('142653', '31416', '1', '1', '128', '0', '0', '1689.99', '-4279.85', '32.1304', '4.11898', '300', '0', '0', '16050', '0', '0', '0'),
('142654', '31416', '1', '1', '128', '0', '0', '1557.74', '-4364.25', '1.07971', '0.226893', '300', '0', '0', '16050', '0', '0', '0'),
('142655', '31416', '1', '1', '128', '0', '0', '1900.53', '-4481.11', '20.727', '3.35369', '300', '0', '0', '16050', '0', '0', '0'),
('142656', '31416', '1', '1', '128', '0', '0', '1561.79', '-4360.5', '1.19455', '4.85202', '300', '0', '0', '16050', '0', '0', '0'),
('142657', '31416', '1', '1', '128', '0', '0', '2096.59', '-4668.5', '44.7122', '4.66795', '300', '5', '0', '16050', '0', '0', '1'),
('142658', '31416', '1', '1', '128', '0', '0', '1696.02', '-4463.71', '20.1522', '2.3911', '300', '0', '0', '16050', '0', '0', '0'),
('142659', '31416', '1', '1', '128', '0', '0', '1572.83', '-4318.32', '21.7125', '0.590477', '300', '5', '0', '16050', '0', '0', '1'),
('142660', '31416', '1', '1', '128', '0', '0', '1384.62', '-4358.56', '27.0983', '3.38594', '300', '0', '0', '16050', '0', '0', '0'),
('142661', '31416', '1', '1', '128', '0', '0', '2131.15', '-4729.88', '50.4302', '2.60054', '300', '0', '0', '16050', '0', '0', '0'),
('142662', '31416', '1', '1', '128', '0', '0', '1748.53', '-4260.13', '27.0722', '2.33874', '300', '0', '0', '16050', '0', '0', '0'),
('142663', '31416', '1', '1', '128', '0', '0', '1928.32', '-4424.41', '23.7505', '0.558505', '300', '0', '0', '16050', '0', '0', '0'),
('142664', '31416', '1', '1', '128', '0', '0', '1920.62', '-4365.93', '22.804', '0.296706', '300', '0', '0', '16050', '0', '0', '0'),
('142665', '31416', '1', '1', '128', '0', '0', '1566.22', '-4194.07', '42.6709', '0.15708', '300', '0', '0', '16050', '0', '0', '0'),
('142666', '31416', '1', '1', '128', '0', '0', '1576.2', '-4394.43', '6.55505', '4.57276', '300', '0', '0', '16050', '0', '0', '0'),
('142667', '31416', '1', '1', '128', '0', '0', '1902.14', '-4275.21', '31.7987', '4.17134', '300', '0', '0', '16050', '0', '0', '0'),
('142668', '31416', '1', '1', '128', '0', '0', '1879.63', '-4526.83', '26.4142', '3.65011', '300', '0', '0', '16050', '0', '0', '0'),
('142669', '31416', '1', '1', '128', '0', '0', '1762.71', '-4496.99', '44.6195', '2.13173', '300', '5', '0', '16050', '0', '0', '1'),
('142670', '31416', '1', '1', '128', '0', '0', '1913.71', '-4559.36', '33.9759', '3.71755', '300', '0', '0', '16050', '0', '0', '0'),
('142671', '31416', '1', '1', '128', '0', '0', '1882.15', '-4483.99', '20.6388', '2.09439', '300', '0', '0', '16050', '0', '0', '0'),
('142672', '31416', '1', '1', '128', '0', '0', '1910.24', '-4623.92', '33.9762', '3.735', '300', '0', '0', '16050', '0', '0', '0'),
('142673', '31416', '1', '1', '128', '0', '0', '1963.01', '-4730.91', '48.9608', '2.49582', '300', '0', '0', '16050', '0', '0', '0'),
('142674', '31416', '1', '1', '128', '0', '0', '2004.18', '-4719.8', '26.2996', '0.959931', '300', '0', '0', '16050', '0', '0', '0'),
('142675', '31416', '1', '1', '128', '0', '0', '1886.2', '-4546.68', '28.5148', '1.09956', '300', '0', '0', '16050', '0', '0', '0'),
('142676', '31416', '1', '1', '128', '0', '0', '1829.26', '-4507.27', '21.4564', '4.95674', '300', '0', '0', '16050', '0', '0', '0'),
('142677', '31420', '1', '1', '128', '0', '0', '1627.42', '-4376.04', '11.8113', '3.68265', '300', '0', '0', '5544', '0', '0', '0'),
('142678', '31421', '1', '1', '128', '0', '0', '1632.61', '-4381.89', '11.7685', '3.59538', '300', '0', '0', '5544', '0', '0', '0'),
('142679', '31422', '1', '1', '128', '0', '0', '1623.04', '-4368.92', '11.7852', '3.92699', '300', '0', '0', '5544', '0', '0', '0'),
('142680', '31423', '1', '1', '128', '0', '0', '1593.1', '-4401.22', '6.26454', '0.628319', '300', '0', '0', '1003', '0', '0', '0'),
('142681', '31424', '1', '1', '128', '0', '0', '1592.48', '-4399.12', '6.52479', '0.488692', '300', '0', '0', '247', '0', '0', '0'),
('142682', '31425', '1', '1', '128', '0', '0', '1594.78', '-4401.08', '6.66987', '0.628319', '300', '0', '0', '2769', '0', '0', '0'),
('142683', '31426', '1', '1', '128', '0', '0', '1675.79', '-4311.64', '61.6865', '4.46804', '300', '0', '0', '10572', '0', '0', '0'),
('142684', '31427', '1', '1', '128', '0', '0', '1596.3', '-4402.08', '7.03335', '0.645772', '300', '0', '0', '1003', '0', '0', '0'),
('142685', '31429', '1', '1', '128', '0', '0', '1595.3', '-4399.25', '6.85403', '0.523599', '300', '0', '0', '1003', '0', '0', '0'),
('142686', '31430', '1', '1', '128', '0', '0', '1592.8', '-4397.05', '7.21839', '0.139626', '300', '0', '0', '6645', '0', '0', '0'),
('142687', '31431', '1', '1', '128', '0', '0', '1600.79', '-4395.93', '8.79711', '5.84332', '300', '0', '0', '48832', '0', '0', '0'),
('142688', '31437', '1', '1', '128', '0', '0', '1430.77', '-4422.73', '25.3187', '3.80482', '300', '0', '0', '1395', '0', '0', '0'),
('142689', '31437', '1', '1', '128', '0', '0', '1501.08', '-4399.95', '22.6577', '0.610865', '300', '0', '0', '1395', '0', '0', '0'),
('142690', '31437', '1', '1', '128', '0', '0', '1346.63', '-4348.61', '27.2941', '5.89921', '300', '0', '0', '1395', '0', '0', '0'),
('142691', '31437', '1', '1', '128', '0', '0', '1511.79', '-4433.06', '21.1091', '4.2586', '300', '0', '0', '1395', '0', '0', '0'),
('142692', '31437', '1', '1', '128', '0', '0', '1438.44', '-4432.79', '25.3187', '1.6057', '300', '0', '0', '1395', '0', '0', '0'),
('142693', '31437', '1', '1', '128', '0', '0', '1492.76', '-4396.73', '24.7758', '0.506145', '300', '0', '0', '1395', '0', '0', '0'),
('142694', '31437', '1', '1', '128', '0', '0', '1439.46', '-4430.56', '25.3187', '0.087266', '300', '0', '0', '1395', '0', '0', '0'),
('142695', '31437', '1', '1', '128', '0', '0', '1510.11', '-4399.52', '20.1228', '0.959931', '300', '0', '0', '1395', '0', '0', '0'),
('142696', '31437', '1', '1', '128', '0', '0', '1370.87', '-4415.52', '29.7207', '3.21141', '300', '0', '0', '1395', '0', '0', '0'),
('142697', '31437', '1', '1', '128', '0', '0', '1341.92', '-4340.45', '27.4999', '4.85202', '300', '0', '0', '1395', '0', '0', '0'),
('142698', '31437', '1', '1', '128', '0', '0', '1437.46', '-4430.24', '25.3187', '1.64061', '300', '0', '0', '1395', '0', '0', '0'),
('142699', '31437', '1', '1', '128', '0', '0', '1373.46', '-4354.62', '26.4516', '0.680678', '300', '0', '0', '1395', '0', '0', '0'),
('142700', '31437', '1', '1', '128', '0', '0', '1429.84', '-4355.29', '25.3187', '4.50295', '300', '0', '0', '1395', '0', '0', '0'),
('142701', '31437', '1', '1', '128', '0', '0', '1422.9', '-4403.13', '28.0279', '1.37881', '300', '0', '0', '1395', '0', '0', '0'),
('142702', '31437', '1', '1', '128', '0', '0', '1418.51', '-4354.17', '27.9913', '4.74729', '300', '0', '0', '1395', '0', '0', '0'),
('142703', '31437', '1', '1', '128', '0', '0', '1444.13', '-4431.9', '25.3187', '1.71042', '300', '0', '0', '1395', '0', '0', '0'),
('142704', '31437', '1', '1', '128', '0', '0', '1429.54', '-4420.9', '25.3187', '5.70723', '300', '0', '0', '1395', '0', '0', '0'),
('142705', '31437', '1', '1', '128', '0', '0', '1507.59', '-4433.21', '22.5193', '0.733038', '300', '0', '0', '1395', '0', '0', '0'),
('142706', '31437', '1', '1', '128', '0', '0', '1434.89', '-4359.25', '25.3187', '3.48839', '300', '0', '0', '1395', '0', '0', '0'),
('142707', '31437', '1', '1', '128', '0', '0', '1509.96', '-4429.22', '21.4358', '1.8326', '300', '0', '0', '1395', '0', '0', '0'),
('142708', '31437', '1', '1', '128', '0', '0', '1588.52', '-4423.32', '8.55745', '4.60385', '300', '0', '0', '1395', '0', '0', '0'),
('142709', '31437', '1', '1', '128', '0', '0', '1293', '-4425.1', '26.7719', '2.32129', '300', '0', '0', '1395', '0', '0', '0'),
('142710', '31437', '1', '1', '128', '0', '0', '1438.97', '-4368.84', '25.3187', '6.05629', '300', '0', '0', '1395', '0', '0', '0'),
('142711', '31437', '1', '1', '128', '0', '0', '1421.35', '-4385.14', '27.9797', '0.034907', '300', '0', '0', '1395', '0', '0', '0'),
('142712', '31437', '1', '1', '128', '0', '0', '1506.25', '-4390.73', '21.2549', '0.383972', '300', '0', '0', '1395', '0', '0', '0'),
('142713', '31437', '1', '1', '128', '0', '0', '1590.13', '-4427.63', '8.5698', '4.08407', '300', '0', '0', '1395', '0', '0', '0'),
('142714', '31437', '1', '1', '128', '0', '0', '1501.9', '-4437.72', '24.7493', '0.069813', '300', '0', '0', '1395', '0', '0', '0'),
('142715', '31437', '1', '1', '128', '0', '0', '1329.38', '-4358.21', '28.4718', '1.37259', '300', '0', '0', '1395', '0', '0', '0'),
('142716', '31437', '1', '1', '128', '0', '0', '1341.65', '-4420.3', '27.241', '2.15036', '300', '0', '0', '1395', '0', '0', '0'),
('142717', '31437', '1', '1', '128', '0', '0', '1439.33', '-4364.56', '25.3187', '0.20944', '300', '0', '0', '1395', '0', '0', '0'),
('142718', '31437', '1', '1', '128', '0', '0', '1501.53', '-4395.09', '22.5012', '0.139626', '300', '0', '0', '1395', '0', '0', '0'),
('142719', '31437', '1', '1', '128', '0', '0', '1525.64', '-4435.69', '16.5148', '0.872665', '300', '0', '0', '1395', '0', '0', '0'),
('142720', '31437', '1', '1', '128', '0', '0', '1522.16', '-4437.87', '18.1303', '0.523599', '300', '0', '0', '1395', '0', '0', '0'),
('142721', '31437', '1', '1', '128', '0', '0', '1348.6', '-4427.49', '27.5116', '4.18879', '300', '0', '0', '1395', '0', '0', '0'),
('142722', '31437', '1', '1', '128', '0', '0', '1508.82', '-4393.75', '20.5281', '4.20624', '300', '0', '0', '1395', '0', '0', '0'),
('142723', '31437', '1', '1', '128', '0', '0', '1515.62', '-4424.49', '19.6616', '3.64774', '300', '0', '0', '1395', '0', '0', '0'),
('142724', '31437', '1', '1', '128', '0', '0', '1430.16', '-4376.73', '25.2354', '4.83093', '300', '5', '0', '1395', '0', '0', '1'),
('142725', '31437', '1', '1', '128', '0', '0', '1429.35', '-4374.5', '25.2354', '4.82928', '300', '5', '0', '1395', '0', '0', '1'),
('142726', '31437', '1', '1', '128', '0', '0', '1353.47', '-4401.82', '29.0612', '5.72889', '300', '5', '0', '1395', '0', '0', '1'),
('142727', '31437', '1', '1', '128', '0', '0', '1360.78', '-4373.65', '26.1952', '0.305098', '300', '5', '0', '1395', '0', '0', '1'),
('142728', '31437', '1', '1', '128', '0', '0', '1313.04', '-4393.01', '26.2498', '1.65851', '300', '5', '0', '1395', '0', '0', '1'),
('142729', '31437', '1', '1', '128', '0', '0', '1326.28', '-4436.94', '26.3456', '0.590713', '300', '5', '0', '1395', '0', '0', '1'),
('142730', '31437', '1', '1', '128', '0', '0', '1314.29', '-4548.93', '22.5108', '1.77181', '300', '5', '0', '1395', '0', '0', '1'),
('142731', '31437', '1', '1', '128', '0', '0', '1317.3', '-4569.04', '23.2873', '1.75938', '300', '5', '0', '1395', '0', '0', '1'),
('142732', '31437', '1', '1', '128', '0', '0', '1313.05', '-4558.77', '22.4257', '1.78925', '300', '5', '0', '1395', '0', '0', '1'),
('142733', '31437', '1', '1', '128', '0', '0', '1315.31', '-4561.24', '22.8135', '1.76455', '300', '5', '0', '1395', '0', '0', '1'),
('142734', '31437', '1', '1', '128', '0', '0', '1380.18', '-4367.96', '26.0744', '6.03816', '300', '5', '0', '1395', '0', '0', '1'),
('142735', '31437', '1', '1', '128', '0', '0', '1377.94', '-4368.01', '26.0744', '0.245054', '300', '5', '0', '1395', '0', '0', '1'),
('142736', '31467', '1', '1', '128', '0', '0', '1513.18', '-4439.38', '21.1171', '4.59022', '300', '0', '0', '905', '0', '0', '0'),
('142737', '31467', '1', '1', '128', '0', '0', '1427.52', '-4357.11', '25.3187', '5.91667', '300', '0', '0', '905', '0', '0', '0'),
('142738', '31467', '1', '1', '128', '0', '0', '1507.22', '-4401.21', '20.9239', '1.98968', '300', '0', '0', '905', '0', '0', '0'),
('142739', '31467', '1', '1', '128', '0', '0', '1434.66', '-4426.87', '25.3187', '1.16687', '300', '0', '0', '905', '0', '0', '0'),
('142740', '31467', '1', '1', '128', '0', '0', '1342.5', '-4416.78', '27.4217', '6.00393', '300', '0', '0', '905', '0', '0', '0'),
('142741', '31467', '1', '1', '128', '0', '0', '1421.8', '-4387.9', '27.9717', '0.087266', '300', '0', '0', '905', '0', '0', '0'),
('142742', '31467', '1', '1', '128', '0', '0', '1326.16', '-4358.72', '28.2629', '3.71755', '300', '0', '0', '905', '0', '0', '0'),
('142743', '31467', '1', '1', '128', '0', '0', '1348', '-4422.53', '27.5683', '2.67035', '300', '0', '0', '905', '0', '0', '0'),
('142744', '31467', '1', '1', '128', '0', '0', '1338.15', '-4424.22', '26.8887', '1.69297', '300', '0', '0', '905', '0', '0', '0'),
('142745', '31467', '1', '1', '128', '0', '0', '1406.44', '-4378.1', '25.3187', '1.62316', '300', '0', '0', '905', '0', '0', '0'),
('142746', '31467', '1', '1', '128', '0', '0', '1289.4', '-4421.72', '26.6863', '3.61283', '300', '0', '0', '905', '0', '0', '0'),
('142747', '31467', '1', '1', '128', '0', '0', '1451.82', '-4410.37', '25.3187', '4.99164', '300', '0', '0', '905', '0', '0', '0'),
('142748', '31467', '1', '1', '128', '0', '0', '1428.1', '-4425.13', '25.3187', '0.017453', '300', '0', '0', '905', '0', '0', '0'),
('142749', '31467', '1', '1', '128', '0', '0', '1503.74', '-4385.62', '21.9836', '0.366519', '300', '0', '0', '905', '0', '0', '0'),
('142750', '31467', '1', '1', '128', '0', '0', '1349.98', '-4347.57', '27.2651', '0.408181', '300', '0', '0', '905', '0', '0', '0'),
('142751', '31467', '1', '1', '128', '0', '0', '1290.51', '-4427.42', '26.8743', '1.65806', '300', '0', '0', '905', '0', '0', '0'),
('142752', '31467', '1', '1', '128', '0', '0', '1591.92', '-4421.75', '9.19134', '4.27606', '300', '0', '0', '905', '0', '0', '0'),
('142753', '31467', '1', '1', '128', '0', '0', '1327.41', '-4355.25', '28.5793', '2.26893', '300', '0', '0', '905', '0', '0', '0'),
('142754', '31467', '1', '1', '128', '0', '0', '1348.2', '-4342.35', '27.3154', '3.50811', '300', '0', '0', '905', '0', '0', '0'),
('142755', '31467', '1', '1', '128', '0', '0', '1370.66', '-4405.43', '29.8003', '5.70723', '300', '0', '0', '905', '0', '0', '0'),
('142756', '31467', '1', '1', '128', '0', '0', '1442.68', '-4382.87', '27.9692', '2.6529', '300', '0', '0', '905', '0', '0', '0'),
('142757', '31467', '1', '1', '128', '0', '0', '1514.34', '-4393.1', '19.2682', '5.02655', '300', '0', '0', '905', '0', '0', '0'),
('142758', '31467', '1', '1', '128', '0', '0', '1372.42', '-4417.69', '29.946', '4.7822', '300', '0', '0', '905', '0', '0', '0'),
('142759', '31467', '1', '1', '128', '0', '0', '1424.73', '-4402.81', '27.8919', '1.51844', '300', '0', '0', '905', '0', '0', '0'),
('142760', '31467', '1', '1', '128', '0', '0', '1506.26', '-4397.44', '21.1897', '4.49761', '300', '0', '0', '905', '0', '0', '0'),
('142761', '31467', '1', '1', '128', '0', '0', '1514.01', '-4428.42', '20.2095', '0.091911', '300', '0', '0', '905', '0', '0', '0'),
('142762', '31467', '1', '1', '128', '0', '0', '1343.96', '-4346.27', '27.32', '4.36332', '300', '0', '0', '905', '0', '0', '0'),
('142763', '31467', '1', '1', '128', '0', '0', '1449.22', '-4431.79', '27.9594', '0.698132', '300', '0', '0', '905', '0', '0', '0'),
('142764', '31467', '1', '1', '128', '0', '0', '1446.99', '-4432.07', '27.9606', '1.8326', '300', '0', '0', '905', '0', '0', '0'),
('142765', '31467', '1', '1', '128', '0', '0', '1286.08', '-4424.82', '26.7458', '4.60767', '300', '0', '0', '905', '0', '0', '0'),
('142766', '31467', '1', '1', '128', '0', '0', '1425.41', '-4355.51', '25.3187', '4.74729', '300', '0', '0', '905', '0', '0', '0'),
('142767', '31467', '1', '1', '128', '0', '0', '1374.79', '-4356.54', '26.3583', '4.01426', '300', '0', '0', '905', '0', '0', '0'),
('142768', '31467', '1', '1', '128', '0', '0', '1438.46', '-4362.51', '25.3187', '4.29351', '300', '0', '0', '905', '0', '0', '0'),
('142769', '31467', '1', '1', '128', '0', '0', '1337.31', '-4418.02', '27.0777', '3.9619', '300', '0', '0', '905', '0', '0', '0'),
('142770', '31467', '1', '1', '128', '0', '0', '1445.43', '-4401.04', '28.0069', '3.1765', '300', '0', '0', '905', '0', '0', '0'),
('142771', '31467', '1', '1', '128', '0', '0', '1370.44', '-4407.64', '29.7393', '2.70993', '300', '0', '0', '905', '0', '0', '0'),
('142772', '31467', '1', '1', '128', '0', '0', '1561.95', '-4431.2', '7.35178', '5.87336', '300', '5', '0', '905', '0', '0', '1'),
('142773', '31467', '1', '1', '128', '0', '0', '1498.22', '-4401.02', '23.5843', '0.881843', '300', '5', '0', '905', '0', '0', '1'),
('142774', '31467', '1', '1', '128', '0', '0', '1511.44', '-4414.09', '18.6863', '6.14799', '300', '5', '0', '905', '0', '0', '1'),
('142775', '31467', '1', '1', '128', '0', '0', '1450.26', '-4420.44', '25.2354', '6.18302', '300', '5', '0', '905', '0', '0', '1'),
('142776', '31467', '1', '1', '128', '0', '0', '1433.52', '-4400.56', '25.2354', '4.86987', '300', '5', '0', '905', '0', '0', '1'),
('142777', '31467', '1', '1', '128', '0', '0', '1432.46', '-4389.99', '25.2354', '4.87346', '300', '5', '0', '905', '0', '0', '1'),
('142778', '31467', '1', '1', '128', '0', '0', '1315.09', '-4454.26', '24.8666', '1.62166', '300', '5', '0', '905', '0', '0', '1'),
('142779', '31467', '1', '1', '128', '0', '0', '1314.06', '-4473.25', '24.0767', '1.44838', '300', '5', '0', '905', '0', '0', '1'),
('142780', '31467', '1', '1', '128', '0', '0', '1313.39', '-4473.52', '24.0781', '1.51996', '300', '5', '0', '905', '0', '0', '1'),
('142781', '31467', '1', '1', '128', '0', '0', '1312.37', '-4543.88', '22.4689', '1.64263', '300', '5', '0', '905', '0', '0', '1'),
('142782', '31467', '1', '1', '128', '0', '0', '1316.82', '-4578.19', '23.3084', '1.94786', '300', '5', '0', '905', '0', '0', '1'),
('142783', '31326', '571', '1', '4', '0', '0', '6254.01', '1946.15', '631.857', '0.823756', '300', '0', '0', '12600', '0', '0', '0'),
('142784', '31326', '571', '1', '4', '0', '0', '6258.28', '1924.36', '631.848', '5.66182', '300', '0', '0', '12600', '0', '0', '0'),
('142785', '31326', '571', '1', '4', '0', '0', '6265', '1947.88', '631.846', '0.792263', '300', '0', '0', '12600', '0', '0', '0'),
('142786', '31326', '571', '1', '4', '0', '0', '6268.72', '1925.74', '631.84', '5.70028', '300', '0', '0', '12600', '0', '0', '0'),
('142787', '31326', '571', '1', '4', '0', '0', '6276.51', '1949.8', '631.85', '0.849777', '300', '0', '0', '12600', '0', '0', '0'),
('142788', '31326', '571', '1', '4', '0', '0', '6280.15', '1927.21', '631.845', '5.71103', '300', '0', '0', '12600', '0', '0', '0'),
('142789', '31326', '571', '1', '4', '0', '0', '6288.14', '1951.45', '631.849', '0.969426', '300', '0', '0', '12600', '0', '0', '0'),
('142790', '31326', '571', '1', '4', '0', '0', '6291.56', '1928.92', '631.846', '5.69148', '300', '0', '0', '12600', '0', '0', '0'),
('142791', '31326', '571', '1', '4', '0', '0', '6299.69', '1953.39', '631.853', '0.815526', '300', '0', '0', '12600', '0', '0', '0'),
('142792', '31326', '571', '1', '4', '0', '0', '6303.14', '1930.49', '631.849', '5.67288', '300', '0', '0', '12600', '0', '0', '0'),
('142793', '31326', '571', '1', '4', '0', '0', '6311.42', '1955.28', '631.857', '0.80161', '300', '0', '0', '12600', '0', '0', '0'),
('142794', '31326', '571', '1', '4', '0', '0', '6314.37', '1932.47', '631.842', '5.6409', '300', '0', '0', '12600', '0', '0', '0'),
('142795', '31326', '571', '1', '4', '0', '0', '6335.24', '1961.79', '631.734', '0.504561', '300', '0', '0', '12600', '0', '0', '0'),
('142796', '31326', '571', '1', '4', '0', '0', '6339.55', '1932.42', '631.734', '5.91178', '300', '0', '0', '12600', '0', '0', '0'),
('142797', '31326', '571', '1', '4', '0', '0', '6350.3', '1964.71', '631.734', '5.95226', '300', '0', '0', '12600', '0', '0', '0'),
('142798', '31326', '571', '1', '4', '0', '0', '6355.59', '1934.22', '631.734', '0.489751', '300', '0', '0', '12600', '0', '0', '0'),
('142799', '31326', '571', '1', '4', '0', '0', '6512.19', '1854.76', '632.15', '0.104753', '300', '0', '0', '12600', '0', '0', '0'),
('142800', '31326', '571', '1', '4', '0', '0', '6512.74', '1837.83', '632.15', '5.97852', '300', '0', '0', '12600', '0', '0', '0'),
('142801', '31326', '571', '1', '4', '0', '0', '6514.89', '1751.23', '632.15', '5.98097', '300', '0', '0', '12600', '0', '0', '0'),
('142802', '31326', '571', '1', '4', '0', '0', '6515.39', '1769.18', '632.15', '0.281759', '300', '0', '0', '12600', '0', '0', '0'),
('142803', '31326', '571', '1', '4', '0', '0', '6516.86', '1682.72', '632.15', '0.443765', '300', '0', '0', '12600', '0', '0', '0'),
('142804', '31326', '571', '1', '4', '0', '0', '6517.89', '1667.16', '632.15', '5.95938', '300', '0', '0', '12600', '0', '0', '0'),
('142805', '31326', '571', '1', '4', '0', '0', '6561.27', '1840.23', '629.634', '4.7654', '300', '0', '0', '12600', '0', '0', '0'),
('142806', '31326', '571', '1', '4', '0', '0', '6561.95', '1822.64', '629.634', '4.75723', '300', '0', '0', '12600', '0', '0', '0'),
('142807', '31326', '571', '1', '4', '0', '0', '6562.28', '1804.74', '629.634', '4.97419', '300', '0', '0', '12600', '0', '0', '0'),
('142808', '31326', '571', '1', '4', '0', '0', '6562.87', '1787.74', '629.634', '4.83456', '300', '0', '0', '12600', '0', '0', '0'),
('142809', '31326', '571', '1', '4', '0', '0', '6563.36', '1767.41', '629.634', '4.7639', '300', '0', '0', '12600', '0', '0', '0'),
('142810', '31326', '571', '1', '4', '0', '0', '6564.12', '1746.82', '629.634', '4.69098', '300', '0', '0', '12600', '0', '0', '0'),
('142811', '31326', '571', '1', '4', '0', '0', '6564.51', '1725.59', '629.634', '4.83857', '300', '0', '0', '12600', '0', '0', '0'),
('142812', '31326', '571', '1', '4', '0', '0', '6565.26', '1706.1', '629.634', '4.71059', '300', '0', '0', '12600', '0', '0', '0'),
('142813', '31326', '571', '1', '4', '0', '0', '6565.9', '1684.19', '629.634', '4.74737', '300', '0', '0', '12600', '0', '0', '0');
INSERT INTO `gameobject` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecs`,`animprogress`,`state`) VALUES
('103090', '189305', '571', '1', '1', '3100.12', '-1240.79', '10.4961', '-1.13446', '0', '0', '0', '1', '180', '255', '1'),
('103091', '191201', '571', '1', '1', '4352.99', '-4139.9', '183.254', '0.925024', '0', '0', '0', '1', '180', '255', '1'),
('103092', '182272', '530', '1', '1', '-1517.45', '8140.24', '-20.1754', '-2.80997', '0', '0', '0', '1', '180', '255', '1'),
('103093', '185863', '530', '1', '1', '-2466.6', '4700.12', '155.715', '1.81514', '0', '0', '0', '1', '180', '255', '1'),
('103094', '182280', '530', '1', '1', '-1508.3', '8132.84', '-19.5771', '1.44862', '0', '0', '0', '1', '180', '255', '1'),
('103095', '184844', '530', '1', '1', '-3002.39', '5627.39', '-3.42608', '-1.98967', '0', '0', '0', '1', '180', '255', '1'),
('103096', '182304', '530', '1', '1', '-1649.99', '7732.57', '-15.4506', '-2.40855', '0', '0', '0', '1', '180', '255', '1'),
('103097', '182817', '530', '1', '1', '-161.425', '2517.6', '59.0981', '-1.01229', '0', '0', '0', '1', '180', '255', '1'),
('103098', '182817', '530', '1', '1', '-161.351', '2662.51', '61.4411', '0.069812', '0', '0', '0', '1', '180', '255', '1'),
('103099', '182817', '530', '1', '1', '-168.596', '2819.47', '42.8907', '-0.785397', '0', '0', '0', '1', '180', '255', '1'),
('103100', '182817', '530', '1', '1', '-184.078', '2772.92', '48.4773', '1.02974', '0', '0', '0', '1', '180', '255', '1'),
('103101', '182308', '530', '1', '1', '-1662.28', '7735', '-15.9663', '1.88495', '0', '0', '0', '1', '180', '255', '1'),
('103102', '186174', '530', '1', '1', '-1374.56', '9706.98', '205.306', '3.14159', '0', '0', '0', '1', '180', '255', '1'),
('103103', '186175', '530', '1', '1', '-1456.97', '9855.9', '200.637', '-3.13286', '0', '0', '0', '1', '180', '255', '1'),
('103104', '186176', '530', '1', '1', '-1547.62', '9744.4', '202.452', '0.069812', '0', '0', '0', '1', '180', '255', '1'),
('103105', '186177', '530', '1', '1', '-1537.95', '9728.84', '202.396', '3.14159', '0', '0', '0', '1', '180', '255', '1'),
('103106', '186178', '530', '1', '1', '-1374.64', '9581.06', '205.552', '0.881392', '0', '0', '0', '1', '180', '255', '1'),
('103107', '185708', '530', '1', '1', '2708.33', '7269.91', '368.64', '-3.13286', '0', '0', '0', '1', '180', '255', '1'),
('103108', '185709', '530', '1', '1', '2708.34', '7269.9', '368.64', '-3.13286', '0', '0', '0', '1', '180', '255', '1'),
('103109', '185712', '530', '1', '1', '2743.27', '7269.91', '368.64', '3.12412', '0', '0', '0', '1', '180', '255', '1'),
('103110', '185713', '530', '1', '1', '2743.27', '7269.9', '368.64', '3.12412', '0', '0', '0', '1', '180', '255', '1'),
('103111', '185715', '530', '1', '1', '2743.26', '7269.92', '368.64', '3.12412', '0', '0', '0', '1', '180', '255', '1'),
('103112', '185716', '530', '1', '1', '2708.46', '7299.04', '368.64', '3.14159', '0', '0', '0', '1', '180', '255', '1'),
('103113', '185717', '530', '1', '1', '2708.46', '7299.03', '368.64', '3.14159', '0', '0', '0', '1', '180', '255', '1'),
('103114', '185718', '530', '1', '1', '2708.46', '7299.03', '368.64', '3.14159', '0', '0', '0', '1', '180', '255', '1'),
('103115', '185721', '530', '1', '1', '2744.13', '7298.31', '368.64', '3.12412', '0', '0', '0', '1', '180', '255', '1'),
('103116', '185722', '530', '1', '1', '2744.13', '7298.32', '368.64', '3.12412', '0', '0', '0', '1', '180', '255', '1'),
('103117', '184442', '530', '1', '1', '-4143.95', '3772.09', '367.014', '3.14159', '0', '0', '0', '1', '180', '255', '1'),
('103118', '185723', '530', '1', '1', '2744.12', '7298.33', '368.64', '3.12412', '0', '0', '0', '1', '180', '255', '1'),
('103119', '185221', '530', '1', '1', '-3750.3', '4711.95', '-17.328', '-0.890117', '0', '0', '0', '1', '180', '255', '1'),
('103120', '182183', '530', '1', '1', '-878.137', '8686.02', '251.572', '-0.610864', '0', '0', '0', '1', '180', '255', '1'),
('103121', '182183', '530', '1', '1', '-875.274', '8688.51', '251.572', '2.04204', '0', '0', '0', '1', '180', '255', '1'),
('103122', '182183', '530', '1', '1', '-882.167', '8686.53', '251.572', '-2.65289', '0', '0', '0', '1', '180', '255', '1'),
('103123', '182183', '530', '1', '1', '-883.701', '8694.29', '251.572', '0.558504', '0', '0', '0', '1', '180', '255', '1'),
('103124', '182183', '530', '1', '1', '-878.873', '8696.01', '251.572', '2.04204', '0', '0', '0', '1', '180', '255', '1'),
('103125', '182183', '530', '1', '1', '-874.776', '8692.43', '251.572', '0.837757', '0', '0', '0', '1', '180', '255', '1'),
('103126', '182183', '530', '1', '1', '-884.623', '8689.52', '251.572', '0.349065', '0', '0', '0', '1', '180', '255', '1'),
('103127', '186312', '530', '1', '1', '-1751.67', '5140.7', '-36.2613', '-1.29154', '0', '0', '0', '1', '180', '255', '1'),
('103128', '185304', '530', '1', '1', '-3548.36', '5457.8', '-12.3544', '-2.44346', '0', '0', '0', '1', '180', '255', '1'),
('103129', '184804', '530', '1', '1', '9749.19', '-7075.55', '16.7546', '2.61799', '0', '0', '0', '1', '180', '255', '1'),
('103130', '184828', '530', '1', '1', '-2971.39', '4335.77', '-49.7976', '1.58825', '0', '0', '0', '1', '180', '255', '1'),
('103131', '182302', '530', '1', '1', '-1508.3', '8132.84', '-19.5771', '1.44862', '0', '0', '0', '1', '180', '255', '1'),
('103132', '153360', '0', '1', '1', '-11184.6', '-2834.55', '116.575', '0.802851', '0', '0', '0', '1', '180', '255', '1'),
('103133', '192835', '0', '1', '1', '2044.38', '-520.969', '46.0141', '-3.09738', '0', '0', '0', '1', '180', '255', '1'),
('103134', '147136', '0', '1', '1', '-4629.5', '-1279.51', '503.381', '2.32129', '0', '0', '0', '1', '180', '255', '1'),
('103135', '180875', '1', '1', '1', '7531.74', '-2851.11', '457.817', '2.40855', '0', '0', '0', '1', '180', '255', '1'),
('103136', '180875', '1', '1', '1', '7561.2', '-2872.2', '459.991', '2.58308', '0', '0', '0', '1', '180', '255', '1'),
('103137', '180910', '1', '1', '1', '7946.68', '-2621.33', '494.193', '-1.15192', '0', '0', '0', '1', '180', '255', '1'),
('103138', '75297', '189', '3', '1', '1743.48', '-407.254', '8.01026', '0.017452', '0', '0', '0', '1', '86400', '255', '1'),
('103139', '188450', '571', '1', '1', '4758.41', '682.646', '121.899', '1.58825', '0', '0', '0', '1', '300', '255', '1'),
('103140', '187707', '571', '1', '1', '2843.78', '7152.04', '-18.8606', '-0.331611', '0', '0', '0', '1', '300', '255', '1'),
('103141', '194152', '571', '1', '1', '4060.77', '7107.98', '169.905', '0.418879', '0', '0', '0', '1', '300', '255', '1'),
('103142', '191086', '571', '1', '1', '5641.61', '3788.81', '-95.3778', '-0.67937', '0', '0', '0', '1', '300', '255', '1'),
('103143', '191086', '571', '1', '1', '5648.33', '3781.2', '-98.4686', '-0.724085', '0', '0', '0', '1', '300', '255', '1'),
('103144', '191086', '571', '1', '1', '5662.32', '3768.83', '-103.198', '-0.70487', '0', '0', '0', '1', '300', '255', '1'),
('103145', '194006', '571', '1', '1', '3300.62', '5687.15', '59.1998', '-1.01311', '0', '0', '0', '1', '300', '255', '1'),
('103146', '194006', '571', '1', '1', '3307.48', '5687.95', '59.6998', '-0.013579', '0', '0', '0', '1', '300', '255', '1'),
('103147', '194006', '571', '1', '1', '3308.39', '5681.42', '58.9498', '-1.61378', '0', '0', '0', '1', '300', '255', '1'),
('103148', '194006', '571', '1', '1', '3296.35', '5685.46', '58.3537', '-2.09999', '0', '0', '0', '1', '300', '255', '1'),
('103149', '192474', '571', '1', '1', '7370.37', '4879.1', '1.0929', '2.92342', '0', '0', '0', '1', '300', '255', '1'),
('103150', '192475', '571', '1', '1', '7362.43', '4853.38', '0.244615', '2.86233', '0', '0', '0', '1', '300', '255', '1'),
('103151', '180870', '1', '1', '1', '10159.8', '2604.5', '1332.37', '-2.87979', '0', '0', '0', '1', '300', '0', '1'),
('103152', '180870', '530', '1', '1', '-1768.5', '5435.47', '-11.199', '-2.91469', '0', '0', '0', '1', '300', '0', '1'),
('103153', '180870', '530', '1', '1', '-1782.14', '5432.37', '-11.1087', '-2.96704', '0', '0', '0', '1', '300', '0', '1'),
('103154', '180870', '530', '1', '1', '-1771.73', '5447.55', '-11.1434', '-2.87979', '0', '0', '0', '1', '300', '0', '1'),
('103155', '180870', '571', '1', '1', '5822.37', '652.821', '648.454', '2.84488', '0', '0', '0', '1', '300', '0', '1'),
('103156', '180870', '530', '1', '1', '-1810.03', '5501.46', '-11.4559', '-2.47837', '0', '0', '0', '1', '300', '0', '1'),
('103157', '180870', '530', '1', '1', '-1812.15', '5493.6', '-11.4976', '-2.37364', '0', '0', '0', '1', '300', '0', '1'),
('103158', '180870', '530', '1', '1', '-1795.72', '5504.96', '-11.4906', '0.453785', '0', '0', '0', '1', '300', '0', '1'),
('103159', '180870', '530', '1', '1', '-1797.88', '5485.51', '-11.4143', '0.610864', '0', '0', '0', '1', '300', '0', '1'),
('103160', '180873', '530', '1', '1', '-1784.67', '5443.93', '-11.1018', '-2.93214', '0', '0', '0', '1', '300', '0', '1'),
('103161', '180873', '571', '1', '1', '5815.6', '643.039', '648.351', '0.890117', '0', '0', '0', '1', '300', '0', '1'),
('103162', '180873', '571', '1', '1', '5818.44', '635.468', '648.362', '2.80997', '0', '0', '0', '1', '300', '0', '1'),
('103163', '180873', '530', '1', '1', '-1802.42', '5503.25', '-11.3587', '-2.68781', '0', '0', '0', '1', '300', '0', '1'),
('103164', '180879', '1', '1', '1', '10146.3', '2573.1', '1320.67', '-0.418879', '0', '0', '0', '1', '300', '0', '1'),
('103165', '180879', '530', '1', '1', '-1764.91', '5448.85', '-12.4281', '1.20428', '0', '0', '0', '1', '300', '0', '1'),
('103166', '180879', '571', '1', '1', '5829.64', '654.443', '647.32', '-0.593412', '0', '0', '0', '1', '300', '0', '1'),
('103167', '180880', '530', '1', '1', '-1789.3', '5498.03', '-11.7268', '2.74016', '0', '0', '0', '1', '300', '0', '1'),
('103168', '180880', '530', '1', '1', '-1764.49', '5448.47', '-10.5879', '-2.86233', '0', '0', '0', '1', '300', '0', '1'),
('103169', '180880', '1', '1', '1', '10146.4', '2572.52', '1322.5', '-2.86233', '0', '0', '0', '1', '300', '0', '1'),
('103170', '180880', '530', '1', '1', '-1789.68', '5498.17', '-11.7129', '1.98967', '0', '0', '0', '1', '300', '0', '1'),
('103171', '180880', '571', '1', '1', '5828.16', '651.357', '647.522', '-2.86233', '0', '0', '0', '1', '300', '0', '1'),
('103172', '180881', '530', '1', '1', '-1764.79', '5449.2', '-10.6156', '-1.48353', '0', '0', '0', '1', '300', '0', '1'),
('103173', '180881', '530', '1', '1', '-1790.06', '5497.25', '-11.7406', '-1.71042', '0', '0', '0', '1', '300', '0', '1'),
('103174', '180881', '1', '1', '1', '10146.3', '2573.47', '1322.49', '-1.48353', '0', '0', '0', '1', '300', '0', '1'),
('103175', '180881', '530', '1', '1', '-1789.49', '5497.1', '-11.7476', '-0.139624', '0', '0', '0', '1', '300', '0', '1'),
('103176', '180881', '571', '1', '1', '5829.1', '651.775', '647.449', '-1.48353', '0', '0', '0', '1', '300', '0', '1'),
('103177', '180882', '530', '1', '1', '-1789.63', '5497.67', '-11.7337', '-2.63544', '0', '0', '0', '1', '300', '0', '1'),
('103178', '180882', '1', '1', '1', '10146.5', '2573.02', '1322.49', '-1.83259', '0', '0', '0', '1', '300', '0', '1'),
('103179', '180882', '530', '1', '1', '-1790.08', '5497.86', '-11.7337', '-1.32645', '0', '0', '0', '1', '300', '0', '1'),
('103180', '180882', '571', '1', '1', '5829.02', '651.124', '647.474', '-2.51327', '0', '0', '0', '1', '300', '0', '1'),
('103181', '180882', '530', '1', '1', '-1764.31', '5449.01', '-10.6087', '-2.51327', '0', '0', '0', '1', '300', '0', '1'),
('103182', '180883', '530', '1', '1', '-1789.06', '5497.52', '-11.7337', '-0.628317', '0', '0', '0', '1', '300', '0', '1'),
('103183', '180883', '1', '1', '1', '10145.7', '2573.4', '1322.48', '-0.837757', '0', '0', '0', '1', '300', '0', '1'),
('103184', '180883', '1', '1', '1', '10145.9', '2572.75', '1322.49', '-0.471238', '0', '0', '0', '1', '300', '0', '1'),
('103185', '180883', '530', '1', '1', '-1765.27', '5448.7', '-10.6087', '-0.471238', '0', '0', '0', '1', '300', '0', '1'),
('103186', '180883', '571', '1', '1', '5828.01', '651.922', '647.507', '-0.471238', '0', '0', '0', '1', '300', '0', '1'),
('103187', '180883', '571', '1', '1', '5828.46', '652.315', '647.464', '-0.837757', '0', '0', '0', '1', '300', '0', '1'),
('103188', '180883', '530', '1', '1', '-1764.88', '5448.25', '-10.5879', '-0.837757', '0', '0', '0', '1', '300', '0', '1'),
('103189', '193096', '571', '1', '129', '5379.88', '3008.09', '409.182', '-3.12412', '0', '0', '0', '1', '300', '255', '1'),
('103190', '193097', '571', '1', '129', '5381.74', '3008.15', '409.182', '2.9845', '0', '0', '0', '1', '300', '255', '1'),
('103191', '193098', '571', '1', '129', '5383.67', '3008.03', '409.182', '-3.11539', '0', '0', '0', '1', '300', '255', '1'),
('103192', '193099', '571', '1', '129', '5386.25', '3007.8', '409.182', '2.93214', '0', '0', '0', '1', '300', '255', '1'),
('103193', '193101', '571', '1', '129', '5381.13', '3010.1', '409.182', '-2.72271', '0', '0', '0', '1', '300', '255', '1'),
('103194', '193102', '571', '1', '129', '5383.12', '3007.91', '410.823', '-2.53072', '0', '0', '0', '1', '300', '255', '1'),
('103195', '193103', '571', '1', '129', '5381.1', '3007.9', '410.823', '-3.09792', '0', '0', '0', '1', '300', '255', '1'),
('103196', '193104', '571', '1', '129', '5376.78', '3010.62', '409.192', '-2.60926', '0', '0', '0', '1', '300', '255', '1'),
('103197', '193105', '571', '1', '129', '5381.48', '3010.25', '410.823', '-2.80997', '0', '0', '0', '1', '300', '255', '1'),
('103198', '193106', '571', '1', '129', '5381.06', '3009.86', '410.823', '2.66162', '0', '0', '0', '1', '300', '255', '1'),
('103199', '193107', '571', '1', '129', '5381.04', '3010.44', '410.816', '-2.05076', '0', '0', '0', '1', '300', '255', '1'),
('103200', '193108', '571', '1', '129', '5379.83', '3007.82', '410.816', '-2.02458', '0', '0', '0', '1', '300', '255', '1'),
('103201', '193109', '571', '1', '129', '5379.99', '3008.4', '410.816', '-3.03684', '0', '0', '0', '1', '300', '255', '1'),
('103202', '192627', '571', '1', '129', '4939.49', '3339.65', '376.875', '0.890117', '0', '0', '0', '1', '300', '255', '1'),
('103203', '192502', '571', '1', '129', '4380.36', '2822.38', '429.882', '-3.10665', '0', '0', '0', '1', '300', '255', '1'),
('103204', '192502', '571', '1', '129', '4397.66', '2840.3', '429.922', '1.58825', '0', '0', '0', '1', '300', '255', '1'),
('103205', '190487', '571', '1', '129', '4939.49', '3339.65', '376.875', '0.890117', '0', '0', '0', '1', '300', '255', '1'),
('103206', '192268', '571', '1', '129', '4526.51', '2810.18', '390.986', '-3.01941', '0', '0', '0', '1', '300', '255', '1'),
('103207', '192271', '571', '1', '129', '4424.74', '2975.6', '367.227', '1.7017', '0', '0', '0', '1', '300', '255', '1'),
('103208', '192272', '571', '1', '32', '4417.93', '2324.81', '371.219', '3.09792', '0', '0', '0', '1', '300', '255', '1'),
('103209', '192275', '571', '1', '129', '4424.03', '3286.61', '371.418', '3.14159', '0', '0', '0', '1', '300', '255', '1'),
('103210', '192276', '571', '1', '129', '4572.94', '3475.42', '362.805', '1.37881', '0', '0', '0', '1', '300', '255', '1'),
('103211', '192281', '571', '1', '32', '4857.97', '3335.42', '369.292', '-2.88851', '0', '0', '0', '1', '300', '255', '1'),
('103212', '192282', '571', '1', '32', '5006.32', '3280.36', '371.242', '2.24275', '0', '0', '0', '1', '300', '255', '1'),
('103213', '192288', '571', '1', '32', '4778.06', '2438.02', '345.706', '-2.93214', '0', '0', '0', '1', '300', '255', '1'),
('103214', '192291', '571', '1', '32', '5024.61', '2532.73', '344.431', '-1.94604', '0', '0', '0', '1', '300', '255', '1'),
('103215', '192308', '571', '1', '129', '5235.13', '2942.12', '444.279', '1.58825', '0', '0', '0', '1', '300', '255', '1'),
('103216', '192309', '571', '1', '129', '5272.55', '2976.54', '444.493', '3.13286', '0', '0', '0', '1', '300', '255', '1'),
('103217', '192312', '571', '1', '129', '5236.31', '2739.22', '444.993', '-1.6057', '0', '0', '0', '1', '300', '255', '1'),
('103218', '192313', '571', '1', '129', '5271.63', '2704.83', '445.183', '-3.12412', '0', '0', '0', '1', '300', '255', '1'),
('103219', '192314', '571', '1', '129', '5350.9', '2622.48', '444.649', '-1.56207', '0', '0', '0', '1', '300', '255', '1'),
('103220', '192324', '571', '1', '129', '5290.51', '2976.56', '435.087', '0.008724', '0', '0', '0', '1', '300', '255', '1'),
('103221', '192329', '571', '1', '129', '5235.32', '2924.31', '434.898', '-1.56207', '0', '0', '0', '1', '300', '255', '1'),
('103222', '192330', '571', '1', '129', '5237.02', '2757.36', '435.626', '1.55334', '0', '0', '0', '1', '300', '255', '1'),
('103223', '192331', '571', '1', '129', '5289.78', '2704.62', '435.714', '0.008724', '0', '0', '0', '1', '300', '255', '1'),
('103224', '192332', '571', '1', '129', '5350.94', '2640.43', '435.264', '1.56207', '0', '0', '0', '1', '300', '255', '1'),
('103225', '192333', '571', '1', '129', '5392.28', '2639.84', '435.208', '1.52716', '0', '0', '0', '1', '300', '255', '1'),
('103226', '192400', '571', '1', '32', '5041.65', '3294.32', '381.92', '-1.6057', '0', '0', '0', '1', '300', '255', '1'),
('103227', '192401', '571', '1', '32', '4855.44', '3297.6', '376.496', '-3.11539', '0', '0', '0', '1', '300', '255', '1'),
('103228', '192408', '571', '1', '129', '4399.64', '3231.54', '368.898', '1.49226', '0', '0', '0', '1', '300', '255', '1'),
('103229', '192424', '571', '1', '32', '4563.7', '2171.03', '367.607', '-1.82387', '0', '0', '0', '1', '300', '255', '1'),
('103230', '192425', '571', '1', '32', '4811.44', '2441.85', '357.982', '-2.02458', '0', '0', '0', '1', '300', '255', '1'),
('103231', '192426', '571', '1', '32', '4805.51', '2407.84', '357.941', '1.77151', '0', '0', '0', '1', '300', '255', '1'),
('103232', '192427', '571', '1', '32', '5004.23', '2486.53', '358.167', '2.17294', '0', '0', '0', '1', '300', '255', '1'),
('103233', '192428', '571', '1', '32', '4983.22', '2503.27', '357.96', '-0.436332', '0', '0', '0', '1', '300', '255', '1'),
('103234', '192432', '571', '1', '129', '4401.62', '3377.48', '363.12', '1.53589', '0', '0', '0', '1', '300', '255', '1'),
('103235', '192440', '571', '1', '129', '4438.38', '3361.01', '371.814', '-0.034904', '0', '0', '0', '1', '300', '255', '1'),
('103236', '192441', '571', '1', '129', '4448.15', '3235.61', '370.617', '-1.56207', '0', '0', '0', '1', '300', '255', '1'),
('103237', '192442', '571', '1', '129', '4350.04', '2885.61', '406.329', '1.58825', '0', '0', '0', '1', '300', '255', '1'),
('103238', '192443', '571', '1', '129', '4434.33', '2883.24', '406.346', '0.767944', '0', '0', '0', '1', '300', '255', '1'),
('103239', '192444', '571', '1', '129', '4464.17', '2855.32', '406.391', '0.802851', '0', '0', '0', '1', '300', '255', '1'),
('103240', '192451', '571', '1', '129', '4408.65', '2422.67', '377.454', '1.58825', '0', '0', '0', '1', '300', '255', '1'),
('103241', '192452', '571', '1', '129', '4416.8', '2414.04', '377.487', '0.008724', '0', '0', '0', '1', '300', '255', '1'),
('103242', '192453', '571', '1', '32', '4417.56', '2301.07', '377.43', '0.017452', '0', '0', '0', '1', '300', '255', '1'),
('103243', '192266', '571', '1', '65', '4452.8', '2639', '358.552', '-1.4748', '0', '0', '0', '1', '300', '255', '1'),
('103244', '192270', '571', '1', '65', '4424.71', '2975.6', '367.387', '1.69297', '0', '0', '0', '1', '300', '255', '1'),
('103245', '192279', '571', '1', '129', '4433.92', '3534.2', '359.942', '-1.91113', '0', '0', '0', '1', '300', '255', '1'),
('103246', '192310', '571', '1', '129', '5352.2', '3055.02', '444.565', '1.57952', '0', '0', '0', '1', '300', '255', '1'),
('103247', '192325', '571', '1', '1', '5352.38', '3036.95', '435.111', '-1.56207', '0', '0', '0', '1', '300', '255', '1'),
('103248', '192326', '571', '1', '129', '5392.64', '3036.97', '433.649', '-1.51843', '0', '0', '0', '1', '300', '255', '1'),
('103249', '193100', '571', '1', '1', '5387.35', '3009.65', '409.182', '-1.309', '0', '0', '0', '1', '300', '255', '1'),
('103250', '194959', '571', '1', '65', '4394.3', '2357.41', '376.298', '-2.51327', '0', '0', '0', '1', '300', '255', '1'),
('103251', '194962', '571', '1', '65', '4392.15', '3300.93', '372.429', '0.890117', '0', '0', '0', '1', '300', '255', '1'),
('103252', '192415', '571', '1', '65', '4517.78', '2716.99', '387.57', '-1.53589', '0', '0', '0', '1', '300', '255', '1'),
('103253', '192423', '571', '1', '1', '4563.73', '2171.15', '367.68', '1.30027', '0', '0', '0', '1', '300', '255', '1'),
('103254', '192430', '571', '1', '65', '4434.56', '2883.45', '406.025', '0.759217', '0', '0', '0', '1', '300', '255', '1'),
('103255', '192431', '571', '1', '65', '4349.9', '2885.56', '406.105', '1.6057', '0', '0', '0', '1', '300', '255', '1'),
('103256', '194960', '571', '1', '65', '4394.3', '2357.41', '376.298', '-2.51327', '0', '0', '0', '1', '300', '255', '1'),
('103257', '194963', '571', '1', '65', '4392.15', '3300.93', '372.429', '0.890117', '0', '0', '0', '1', '300', '255', '1'),
('103258', '192409', '571', '1', '65', '4399.59', '3231.43', '369.216', '-1.67552', '0', '0', '0', '1', '300', '255', '1'),
('103259', '192502', '571', '1', '129', '4416.01', '2822.7', '429.982', '0.017452', '0', '0', '0', '1', '300', '255', '1'),
('103260', '192502', '571', '1', '129', '4398.71', '2804.7', '429.905', '-1.55334', '0', '0', '0', '1', '300', '255', '1'),
('103261', '192502', '571', '1', '129', '4574.88', '3625.87', '420.203', '0.104719', '0', '0', '0', '1', '300', '255', '1'),
('103262', '192502', '571', '1', '129', '4559', '3606.2', '420.092', '-1.48353', '0', '0', '0', '1', '300', '255', '1'),
('103263', '192502', '571', '1', '129', '4539.4', '3622.7', '420.038', '-3.07177', '0', '0', '0', '1', '300', '255', '1'),
('103264', '192502', '571', '1', '129', '4555.39', '3641.66', '420.142', '1.67551', '0', '0', '0', '1', '300', '255', '1'),
('103265', '192502', '571', '1', '129', '4442.99', '1951.91', '459.228', '2.68781', '0', '0', '0', '1', '300', '255', '1'),
('103266', '192502', '571', '1', '129', '4466.94', '1960.35', '459.296', '1.15192', '0', '0', '0', '1', '300', '255', '1'),
('103267', '192502', '571', '1', '129', '4475.26', '1936.84', '459.239', '-0.418879', '0', '0', '0', '1', '300', '255', '1'),
('103268', '192502', '571', '1', '129', '4451.73', '1928.12', '459.249', '-2.00713', '0', '0', '0', '1', '300', '255', '1'),
('103269', '192834', '571', '1', '65', '5440.38', '2840.49', '430.282', '-1.83259', '0', '0', '0', '1', '180', '255', '1'),
('103270', '195346', '571', '1', '1', '7676.96', '2545.17', '397.447', '0', '0', '0', '0', '1', '300', '255', '1'),
('103271', '195346', '571', '1', '1', '7792.49', '2552.3', '404.737', '0', '0', '0', '0', '1', '300', '255', '1'),
('103272', '195346', '571', '1', '1', '7658.14', '2141.53', '371.874', '0', '0', '0', '0', '1', '300', '255', '1'),
('103273', '195346', '571', '1', '1', '7912.72', '2361.59', '403.348', '0', '0', '0', '0', '1', '300', '255', '1'),
('103274', '195346', '571', '1', '1', '7879.32', '2381.5', '395.993', '0', '0', '0', '0', '1', '300', '255', '1'),
('103275', '195346', '571', '1', '1', '7802.09', '2589.91', '404.13', '0', '0', '0', '0', '1', '300', '255', '1'),
('103276', '195346', '571', '1', '1', '7829.74', '2296.03', '378.059', '0', '0', '0', '0', '1', '300', '255', '1'),
('103277', '195346', '571', '1', '1', '7888.03', '2486.69', '412.185', '0', '0', '0', '0', '1', '300', '255', '1'),
('103278', '195346', '571', '1', '1', '7746.05', '2373', '376.394', '0', '0', '0', '0', '1', '300', '255', '1'),
('103279', '195346', '571', '1', '1', '7703.88', '2480.24', '385.491', '0', '0', '0', '0', '1', '300', '255', '1'),
('103280', '195346', '571', '1', '1', '7713.28', '2557.22', '396.82', '0', '0', '0', '0', '1', '300', '255', '1'),
('103281', '195346', '571', '1', '1', '7705.6', '2505.98', '391.187', '0', '0', '0', '0', '1', '300', '255', '1'),
('103282', '195346', '571', '1', '1', '7816.32', '2475.27', '396.899', '0', '0', '0', '0', '1', '300', '255', '1'),
('103283', '195346', '571', '1', '1', '7694.1', '2306.05', '370.416', '0', '0', '0', '0', '1', '300', '255', '1'),
('103284', '195346', '571', '1', '1', '7772.19', '2523.41', '397.553', '0', '0', '0', '0', '1', '300', '255', '1'),
('103285', '195346', '571', '1', '1', '7796.59', '2463.79', '393.289', '0', '0', '0', '0', '1', '300', '255', '1'),
('103286', '195346', '571', '1', '1', '7845.07', '2444.61', '400.599', '0', '0', '0', '0', '1', '300', '255', '1'),
('103287', '195346', '571', '1', '1', '7779.92', '2417.38', '384.435', '0', '0', '0', '0', '1', '300', '255', '1'),
('103288', '195346', '571', '1', '1', '7718.42', '2419.05', '378.136', '0', '0', '0', '0', '1', '300', '255', '1'),
('103289', '195346', '571', '1', '1', '7840.04', '2426.58', '393.604', '0', '0', '0', '0', '1', '300', '255', '1'),
('103290', '195346', '571', '1', '1', '7813.52', '2376.7', '383.758', '0', '0', '0', '0', '1', '300', '255', '1'),
('103291', '195346', '571', '1', '1', '7712.81', '2241.79', '366.496', '0', '0', '0', '0', '1', '300', '255', '1'),
('103292', '195346', '571', '1', '1', '7765.82', '2235.86', '368.622', '0', '0', '0', '0', '1', '300', '255', '1'),
('103293', '195346', '571', '1', '1', '7794.9', '2280.98', '375.543', '0', '0', '0', '0', '1', '300', '255', '1'),
('103294', '195346', '571', '1', '1', '7912.48', '2277.05', '387.872', '0', '0', '0', '0', '1', '300', '255', '1'),
('103295', '195346', '571', '1', '1', '7853.17', '2141', '367.559', '0', '0', '0', '0', '1', '300', '255', '1'),
('103296', '195346', '571', '1', '1', '7811.03', '2320.48', '378.264', '0', '0', '0', '0', '1', '300', '255', '1'),
('103297', '195346', '571', '1', '1', '7820.73', '2238.01', '372.776', '0', '0', '0', '0', '1', '300', '255', '1'),
('103298', '195346', '571', '1', '1', '7813.28', '2194.92', '368.565', '0', '0', '0', '0', '1', '300', '255', '1'),
('103299', '195346', '571', '1', '1', '7750.78', '2420.46', '380.734', '0', '0', '0', '0', '1', '300', '255', '1'),
('103300', '195346', '571', '1', '1', '7777.63', '2179.09', '365.452', '0', '0', '0', '0', '1', '300', '255', '1'),
('103301', '195346', '571', '1', '1', '7736.08', '2157.99', '364.475', '0', '0', '0', '0', '1', '300', '255', '1'),
('103302', '195346', '571', '1', '1', '7705.57', '2182.61', '365.275', '0', '0', '0', '0', '1', '300', '255', '1'),
('103303', '195346', '571', '1', '1', '7788.99', '2255.3', '371.706', '0', '0', '0', '0', '1', '300', '255', '1'),
('103304', '195346', '571', '1', '1', '7755.23', '2126.35', '362.332', '0', '0', '0', '0', '1', '300', '255', '1'),
('103305', '195346', '571', '1', '1', '7843.85', '2334.66', '382.39', '0', '0', '0', '0', '1', '300', '255', '1'),
('103306', '195346', '571', '1', '1', '7897.19', '2206.28', '375.886', '0', '0', '0', '0', '1', '300', '255', '1'),
('103307', '195346', '571', '1', '1', '7863.5', '2231.65', '375.172', '0', '0', '0', '0', '1', '300', '255', '1'),
('103308', '195346', '571', '1', '1', '7651.21', '2394.11', '374.719', '0', '0', '0', '0', '1', '300', '255', '1'),
('103309', '195346', '571', '1', '1', '7683.24', '2449.2', '381.064', '0', '0', '0', '0', '1', '300', '255', '1'),
('103310', '195346', '571', '1', '1', '7887.58', '2323.53', '389.297', '0', '0', '0', '0', '1', '300', '255', '1'),
('103311', '195346', '571', '1', '1', '7734.91', '2469.83', '385.78', '0', '0', '0', '0', '1', '300', '255', '1'),
('103312', '195346', '571', '1', '1', '7567.95', '2265.78', '384.713', '0', '0', '0', '0', '1', '300', '255', '1'),
('103313', '195346', '571', '1', '1', '7745.68', '2289.91', '371.991', '0', '0', '0', '0', '1', '300', '255', '1'),
('103314', '195346', '571', '1', '1', '7649.5', '2275.41', '370.921', '0', '0', '0', '0', '1', '300', '255', '1'),
('103315', '195346', '571', '1', '1', '7636.03', '2255.23', '370.7', '0', '0', '0', '0', '1', '300', '255', '1'),
('103316', '195346', '571', '1', '1', '7710.98', '2338.51', '373.022', '0', '0', '0', '0', '1', '300', '255', '1'),
('103317', '195346', '571', '1', '1', '7760.76', '2331.15', '374.805', '0', '0', '0', '0', '1', '300', '255', '1'),
('103318', '195346', '571', '1', '1', '7630.05', '2336.39', '372.913', '0', '0', '0', '0', '1', '300', '255', '1'),
('103319', '195346', '571', '1', '1', '7665.88', '2225.69', '369.02', '0', '0', '0', '0', '1', '300', '255', '1'),
('103320', '195346', '571', '1', '1', '7702.23', '2268.07', '367.593', '0', '0', '0', '0', '1', '300', '255', '1'),
('103321', '195346', '571', '1', '1', '7637.92', '2188.86', '371.916', '0', '0', '0', '0', '1', '300', '255', '1'),
('103322', '195346', '571', '1', '1', '7632.56', '2369.05', '376.192', '0', '0', '0', '0', '1', '300', '255', '1'),
('103323', '195346', '571', '1', '5', '7614.33', '2214.53', '375.922', '0', '0', '0', '0', '1', '300', '255', '1'),
('103324', '195346', '571', '1', '1', '7542.19', '2323.88', '378.223', '0', '0', '0', '0', '1', '300', '255', '1'),
('103325', '195346', '571', '1', '1', '7590.31', '2308.01', '376.749', '0', '0', '0', '0', '1', '300', '255', '1'),
('103326', '195346', '571', '1', '1', '7453.91', '2355.88', '380.035', '0', '0', '0', '0', '1', '300', '255', '1'),
('103327', '195346', '571', '1', '1', '7505.33', '2363.4', '378.051', '0', '0', '0', '0', '1', '300', '255', '1'),
('103328', '195346', '571', '1', '5', '7696.85', '2372.09', '374.58', '0', '0', '0', '0', '1', '300', '255', '1'),
('103329', '193407', '0', '1', '128', '1555.35', '329.307', '-62.1372', '2.14675', '0', '0', '0', '1', '300', '255', '1'),
('103330', '193409', '0', '1', '128', '1630.55', '275.15', '-43.1023', '0.767944', '0', '0', '0', '1', '300', '255', '1'),
('103331', '193409', '0', '1', '128', '1682.43', '326.504', '-62.1652', '-0.785397', '0', '0', '0', '1', '300', '255', '1'),
('103332', '193409', '0', '1', '128', '1475.66', '47.9851', '-62.2957', '-1.64061', '0', '0', '0', '1', '300', '255', '1'),
('103333', '193409', '0', '1', '128', '1538.1', '245.874', '-62.1778', '-0.191985', '0', '0', '0', '1', '300', '255', '1'),
('103334', '193409', '0', '1', '128', '1406.87', '338.234', '-66.001', '-2.05949', '0', '0', '0', '1', '300', '255', '1'),
('103335', '193409', '0', '1', '128', '1576.39', '193.66', '-43.085', '-1.95477', '0', '0', '0', '1', '300', '255', '1'),
('103336', '193410', '0', '1', '128', '1558.97', '349.041', '-62.1576', '-3.01941', '0', '0', '0', '1', '300', '255', '1'),
('103337', '193410', '0', '1', '128', '1563.25', '345.17', '-62.1434', '-2.79252', '0', '0', '0', '1', '300', '255', '1'),
('103338', '193411', '0', '1', '128', '1689.9', '777.613', '65.3829', '-2.11185', '0', '0', '0', '1', '300', '255', '1'),
('103339', '193411', '0', '1', '128', '1613.94', '290.671', '-43.1023', '-1.22173', '0', '0', '0', '1', '300', '255', '1'),
('103340', '193411', '0', '1', '128', '1689.34', '344.723', '-60.4777', '0.226892', '0', '0', '0', '1', '300', '255', '1'),
('103341', '193411', '0', '1', '128', '1599.63', '289.821', '-41.3606', '2.67035', '0', '0', '0', '1', '300', '255', '1'),
('103342', '193411', '0', '1', '128', '1591.12', '292.276', '-62.1778', '1.85005', '0', '0', '0', '1', '300', '255', '1'),
('103343', '193411', '0', '1', '128', '1594.62', '188.387', '-41.3606', '-2.9845', '0', '0', '0', '1', '300', '255', '1'),
('103344', '193411', '0', '1', '128', '1555.54', '125.3', '-62.1714', '-1.01229', '0', '0', '0', '1', '300', '255', '1'),
('103345', '193411', '0', '1', '128', '1544.85', '243.552', '-41.3606', '1.02974', '0', '0', '0', '1', '300', '255', '1'),
('103346', '193411', '0', '1', '128', '1478.1', '174.8', '-61.5027', '-2.60053', '0', '0', '0', '1', '300', '255', '1'),
('103347', '193411', '0', '1', '128', '1644.38', '214.804', '-43.103', '-1.20428', '0', '0', '0', '1', '300', '255', '1'),
('103348', '193411', '0', '1', '128', '1531.11', '305.188', '-62.1379', '2.37364', '0', '0', '0', '1', '300', '255', '1'),
('103349', '193411', '0', '1', '128', '1652.15', '265.885', '-62.1776', '-1.50098', '0', '0', '0', '1', '300', '255', '1'),
('103350', '193411', '0', '1', '128', '1672.65', '766.654', '78.3797', '1.48353', '0', '0', '0', '1', '300', '255', '1'),
('103351', '193411', '0', '1', '128', '1534.57', '309.985', '-62.1338', '2.58308', '0', '0', '0', '1', '300', '255', '1'),
('103352', '193411', '0', '1', '128', '1674.42', '762.948', '78.2124', '-1.309', '0', '0', '0', '1', '300', '255', '1'),
('103353', '193411', '0', '1', '128', '1597.53', '188.246', '-41.3606', '1.79769', '0', '0', '0', '1', '300', '255', '1'),
('103354', '193411', '0', '1', '128', '1644.87', '220.946', '-43.1032', '-1.18682', '0', '0', '0', '1', '300', '255', '1'),
('103355', '193411', '0', '1', '128', '1543.12', '238.006', '-41.3606', '0.261798', '0', '0', '0', '1', '300', '255', '1'),
('103356', '193411', '0', '1', '128', '1719.36', '178.111', '-60.7699', '0.872664', '0', '0', '0', '1', '300', '255', '1'),
('103357', '193411', '0', '1', '128', '1562.29', '206.573', '-43.1023', '-1.01229', '0', '0', '0', '1', '300', '255', '1'),
('103358', '193411', '0', '1', '128', '1699.98', '711.082', '66.8015', '1.23918', '0', '0', '0', '1', '300', '255', '1'),
('103359', '193411', '0', '1', '128', '1682.96', '200.872', '-62.1716', '-1.27409', '0', '0', '0', '1', '300', '255', '1'),
('103360', '193411', '0', '1', '128', '1557.55', '202.067', '-43.1022', '1.25664', '0', '0', '0', '1', '300', '255', '1'),
('103361', '193411', '0', '1', '128', '1678.97', '195.972', '-62.1716', '1.41372', '0', '0', '0', '1', '300', '255', '1'),
('103362', '193411', '0', '1', '128', '1530.12', '280.621', '-62.1776', '-1.44862', '0', '0', '0', '1', '300', '255', '1'),
('103363', '193411', '0', '1', '128', '1603.85', '239.709', '-44.6718', '0.575957', '0', '0', '0', '1', '300', '255', '1'),
('103364', '193411', '0', '1', '128', '1642.59', '178.146', '-62.1783', '-0.261798', '0', '0', '0', '1', '300', '255', '1'),
('103365', '193411', '0', '1', '128', '1533.91', '288.105', '-62.1779', '-2.79252', '0', '0', '0', '1', '300', '255', '1'),
('103366', '193411', '0', '1', '128', '1597.51', '293.949', '-62.1777', '-1.43117', '0', '0', '0', '1', '300', '255', '1'),
('103367', '193411', '0', '1', '128', '1590.78', '184.6', '-62.1778', '0.541051', '0', '0', '0', '1', '300', '255', '1'),
('103368', '193411', '0', '1', '128', '1689.78', '783.543', '63.5869', '2.02458', '0', '0', '0', '1', '300', '255', '1'),
('103369', '193411', '0', '1', '128', '1562.78', '124.93', '-62.1645', '0', '0', '0', '0', '1', '300', '255', '1'),
('103370', '193411', '0', '1', '128', '1701.92', '706.798', '63.8543', '0.436332', '0', '0', '0', '1', '300', '255', '1'),
('103371', '193411', '0', '1', '128', '1705.69', '268.705', '-62.1681', '1.22173', '0', '0', '0', '1', '300', '255', '1'),
('103372', '193411', '0', '1', '128', '1604.1', '291.726', '-62.1776', '-0.069812', '0', '0', '0', '1', '300', '255', '1'),
('103373', '193411', '0', '1', '128', '1505.66', '347.975', '-60.0895', '2.87979', '0', '0', '0', '1', '300', '255', '1'),
('103374', '193411', '0', '1', '128', '1592.21', '292.847', '-41.3606', '2.25147', '0', '0', '0', '1', '300', '255', '1'),
('103375', '193411', '0', '1', '128', '1694.77', '785.005', '65.853', '2.18166', '0', '0', '0', '1', '300', '255', '1'),
('103376', '193411', '0', '1', '128', '1616.12', '284.173', '-43.1024', '0.994837', '0', '0', '0', '1', '300', '255', '1'),
('103377', '193411', '0', '1', '128', '1545.94', '231.799', '-62.1777', '-0.575957', '0', '0', '0', '1', '300', '255', '1'),
('103378', '193411', '0', '1', '128', '1504.03', '346.454', '-60.0896', '3.14159', '0', '0', '0', '1', '300', '255', '1'),
('103379', '193411', '0', '1', '128', '1593.58', '189.097', '-41.3606', '2.07694', '0', '0', '0', '1', '300', '255', '1'),
('103380', '193411', '0', '1', '128', '1825.67', '273.237', '60.6767', '-0.052359', '0', '0', '0', '1', '300', '255', '1'),
('103381', '193411', '0', '1', '128', '1784.18', '204.161', '60.0846', '2.16421', '0', '0', '0', '1', '300', '255', '1'),
('103382', '193411', '0', '1', '128', '1830.77', '265.903', '62.826', '0.506145', '0', '0', '0', '1', '300', '255', '1'),
('103383', '193411', '0', '1', '128', '1841.95', '262.513', '60.1825', '2.54818', '0', '0', '0', '1', '300', '255', '1'),
('103384', '193411', '0', '1', '128', '1777.58', '205.75', '60.0713', '-1.0472', '0', '0', '0', '1', '300', '255', '1'),
('103385', '193411', '0', '1', '128', '1789.05', '273.004', '60.2142', '-2.11185', '0', '0', '0', '1', '300', '255', '1'),
('103386', '193411', '0', '1', '128', '1841.5', '254.541', '60.0008', '1.37881', '0', '0', '0', '1', '300', '255', '1'),
('103387', '193411', '0', '1', '128', '1778.36', '271.688', '60.1236', '1.8675', '0', '0', '0', '1', '300', '255', '1'),
('103388', '193412', '0', '1', '128', '1559.34', '350.713', '-62.1584', '-1.44862', '0', '0', '0', '1', '300', '255', '1'),
('103389', '193412', '0', '1', '128', '1560.06', '347.314', '-62.1535', '-1.06465', '0', '0', '0', '1', '300', '255', '1'),
('103390', '193413', '0', '1', '128', '1587.34', '243.225', '-45.1419', '2.70526', '0', '0', '0', '1', '300', '255', '1'),
('103391', '193413', '0', '1', '128', '1587.53', '236.399', '-44.6591', '-0.785397', '0', '0', '0', '1', '300', '255', '1'),
('103392', '193413', '0', '1', '128', '1597.9', '232.358', '-44.2318', '-2.30383', '0', '0', '0', '1', '300', '255', '1'),
('103393', '193413', '0', '1', '128', '1592.74', '231.815', '-45.383', '0.104719', '0', '0', '0', '1', '300', '255', '1'),
('103394', '193413', '0', '1', '128', '1594.04', '232.018', '-44.9632', '2.75761', '0', '0', '0', '1', '300', '255', '1'),
('103395', '193413', '0', '1', '128', '1592.61', '232.366', '-44.3059', '-0.506145', '0', '0', '0', '1', '300', '255', '1'),
('103396', '193413', '0', '1', '128', '1697.68', '746.448', '72.2679', '-2.02458', '0', '0', '0', '1', '300', '255', '1'),
('103397', '193413', '0', '1', '128', '1538.09', '260.915', '-55.0005', '2.42601', '0', '0', '0', '1', '300', '255', '1'),
('103398', '193413', '0', '1', '128', '1536.96', '260.264', '-54.9985', '-1.51844', '0', '0', '0', '1', '300', '255', '1'),
('103399', '193413', '0', '1', '128', '1688.43', '723.941', '73.324', '1.8675', '0', '0', '0', '1', '300', '255', '1'),
('103400', '193413', '0', '1', '128', '1591.72', '248.572', '-44.8338', '-0.994837', '0', '0', '0', '1', '300', '255', '1'),
('103401', '193413', '0', '1', '128', '1521.02', '217.054', '-60.4762', '-1.97222', '0', '0', '0', '1', '300', '255', '1'),
('103402', '193413', '0', '1', '128', '1712.47', '746.768', '65.1409', '1.91986', '0', '0', '0', '1', '300', '255', '1'),
('103403', '193413', '0', '1', '128', '1549.16', '265', '-40.8808', '2.51327', '0', '0', '0', '1', '300', '255', '1'),
('103404', '193413', '0', '1', '128', '1644.74', '256.843', '-41.1102', '-1.16937', '0', '0', '0', '1', '300', '255', '1'),
('103405', '193413', '0', '1', '128', '1594.14', '248.888', '-45.5204', '1.81514', '0', '0', '0', '1', '300', '255', '1'),
('103406', '193413', '0', '1', '128', '1708.62', '716.61', '61.2928', '2.30383', '0', '0', '0', '1', '300', '255', '1'),
('103407', '193413', '0', '1', '128', '1594.1', '248.659', '-45.045', '-1.74533', '0', '0', '0', '1', '300', '255', '1'),
('103408', '193413', '0', '1', '128', '1587.4', '237.708', '-44.9197', '0.663223', '0', '0', '0', '1', '300', '255', '1'),
('103409', '193420', '0', '1', '128', '1561.79', '279.404', '-43.1025', '-2.96704', '0', '0', '0', '1', '300', '255', '1'),
('103410', '193420', '0', '1', '128', '1558.28', '354.458', '-62.1639', '2.18166', '0', '0', '0', '1', '300', '255', '1'),
('103411', '193420', '0', '1', '128', '1635.49', '329.722', '-62.1785', '-1.95477', '0', '0', '0', '1', '300', '255', '1'),
('103412', '193420', '0', '1', '128', '1650.84', '234.671', '-62.1777', '-1.18682', '0', '0', '0', '1', '300', '255', '1'),
('103413', '193420', '0', '1', '128', '1387.75', '120.87', '-62.4307', '1.91986', '0', '0', '0', '1', '300', '255', '1'),
('103414', '193420', '0', '1', '128', '1561.46', '273.463', '-43.1022', '1.53589', '0', '0', '0', '1', '300', '255', '1'),
('103415', '193420', '0', '1', '128', '1631.17', '206.76', '-43.1022', '-1.76278', '0', '0', '0', '1', '300', '255', '1'),
('103416', '193420', '0', '1', '128', '1386.27', '347.817', '-66.0206', '-1.20428', '0', '0', '0', '1', '300', '255', '1'),
('103417', '193420', '0', '1', '128', '1602.04', '188.686', '-62.1778', '-1.93731', '0', '0', '0', '1', '300', '255', '1'),
('103418', '193420', '0', '1', '128', '1387.54', '125.862', '-62.4274', '-0.541051', '0', '0', '0', '1', '300', '255', '1'),
('103419', '193420', '0', '1', '128', '1508.61', '197.873', '-62.1372', '0.087266', '0', '0', '0', '1', '300', '255', '1'),
('103420', '193420', '0', '1', '128', '1507.43', '201.335', '-62.1372', '0.383971', '0', '0', '0', '1', '300', '255', '1'),
('103421', '193420', '0', '1', '128', '1488.89', '438.438', '-83.5422', '2.02458', '0', '0', '0', '1', '300', '255', '1'),
('103422', '193420', '0', '1', '128', '1653.87', '243.721', '-62.1781', '-2.51327', '0', '0', '0', '1', '300', '255', '1'),
('103423', '193420', '0', '1', '128', '1486.3', '433.56', '-83.5422', '1.15192', '0', '0', '0', '1', '300', '255', '1'),
('103424', '193420', '0', '1', '128', '1574.22', '236.745', '-62.0773', '-1.78023', '0', '0', '0', '1', '300', '255', '1'),
('103425', '193420', '0', '1', '128', '1655.48', '291.696', '-62.1782', '-1.0821', '0', '0', '0', '1', '300', '255', '1'),
('103426', '193420', '0', '1', '128', '1491.39', '434.378', '-83.5422', '-0.994837', '0', '0', '0', '1', '300', '255', '1'),
('103427', '193420', '0', '1', '128', '1649.16', '245.772', '-62.1779', '1.53589', '0', '0', '0', '1', '300', '255', '1'),
('103428', '193420', '0', '1', '128', '1600.31', '184.676', '-62.178', '0.628317', '0', '0', '0', '1', '300', '255', '1'),
('103429', '193420', '0', '1', '128', '1402.16', '152.301', '-62.4192', '1.09956', '0', '0', '0', '1', '300', '255', '1'),
('103430', '193420', '0', '1', '128', '1388.88', '341.997', '-66.0226', '-0.122173', '0', '0', '0', '1', '300', '255', '1'),
('103431', '193420', '0', '1', '128', '1483.77', '438.159', '-83.5422', '1.88495', '0', '0', '0', '1', '300', '255', '1'),
('103432', '193420', '0', '1', '128', '1615.57', '245.317', '-62.0773', '-0.017452', '0', '0', '0', '1', '300', '255', '1'),
('103433', '193420', '0', '1', '128', '1634.84', '200.921', '-43.1023', '0.558504', '0', '0', '0', '1', '300', '255', '1'),
('103434', '193420', '0', '1', '128', '1639.65', '327.075', '-62.1765', '-2.68781', '0', '0', '0', '1', '300', '255', '1'),
('103435', '193420', '0', '1', '128', '1616.88', '240.985', '-62.0773', '-1.79769', '0', '0', '0', '1', '300', '255', '1'),
('103436', '193420', '0', '1', '128', '1609.83', '186.749', '-56.8756', '2.18166', '0', '0', '0', '1', '300', '255', '1'),
('103437', '193420', '0', '1', '128', '1664.42', '173.203', '-62.1401', '0.226892', '0', '0', '0', '1', '300', '255', '1'),
('103438', '193956', '0', '1', '128', '1777.23', '762.609', '54.1443', '3.08918', '0', '0', '0', '1', '300', '255', '1'),
('103439', '193217', '1', '1', '128', '1427.4', '-4355.75', '25.0687', '-1.41372', '0', '0', '0', '1', '300', '255', '1'),
('103440', '193217', '1', '1', '128', '1428.25', '-4422.29', '25.1243', '-2.9845', '0', '0', '0', '1', '300', '255', '1'),
('103441', '193217', '1', '1', '128', '1327.95', '-4357.13', '27.4334', '-1.39626', '0', '0', '0', '1', '300', '255', '1'),
('103442', '193218', '1', '1', '128', '1438.4', '-4363.5', '25.8465', '-1.46608', '0', '0', '0', '1', '300', '255', '1'),
('103443', '193218', '1', '1', '128', '1374.88', '-4354.89', '26.2083', '2.60053', '0', '0', '0', '1', '300', '255', '1'),
('103444', '193218', '1', '1', '128', '1438.47', '-4431.58', '25.2354', '0.034906', '0', '0', '0', '1', '300', '255', '1'),
('103445', '193219', '1', '1', '128', '1589.77', '-4423.56', '8.23726', '1.93731', '0', '0', '0', '1', '300', '255', '1'),
('103446', '193219', '1', '1', '128', '1371.21', '-4416.96', '29.6913', '3.14159', '0', '0', '0', '1', '300', '255', '1'),
('103447', '193219', '1', '1', '128', '1370.57', '-4405.97', '29.6971', '3.05433', '0', '0', '0', '1', '300', '255', '1');
REPLACE INTO `game_event_gameobject` SELECT `guid`,'7' FROM `gameobject` WHERE `id` IN (180870,180873,180879,180880,180881,180882,180883);

# NeatElves
DELETE FROM `creature_loot_template` WHERE `item` = 4610;
DELETE FROM `gameobject_loot_template` WHERE `entry` = 333 AND `item` = 23779;
DELETE FROM `gameobject_loot_template` WHERE `entry` = 333 AND `item` = 2658;
DELETE FROM `gameobject_loot_template` WHERE `entry` = 333 AND `item` = 2659;
UPDATE  `gameobject_loot_template` SET  `ChanceOrQuestChance` =  '-100' WHERE  `entry` =333 AND  `item` =2660;
DELETE FROM `creature_loot_template` WHERE `entry` = 5780 AND `item` = 5339;
UPDATE  `creature_template` SET  `lootid` =  '0' WHERE  `entry` =5780;
DELETE FROM `creature` WHERE `id` = 5780;
UPDATE  `quest_template` SET  `RequiredRaces` =  '690',`PrevQuestId` =  '4102' WHERE  `entry` in (5883,5885,5886);
UPDATE  `quest_template` SET  `RequiredRaces` =  '1101',`PrevQuestId` =  '4101' WHERE  `entry` in (5889,5887,5891,5890,5888);
UPDATE  `quest_template` SET  `SpecialFlags` =  '0' WHERE  `entry` in (5889,5891,5887,5890,5888);
UPDATE  `quest_template` SET  `SpecialFlags` =  '1' WHERE  `entry` in (4105,4103,4104,4106,4107);
UPDATE  `quest_template` SET  `RequiredRaces` =  '1101' WHERE  `entry` in (4109,4111,4112);
UPDATE  `quest_template` SET  `RequiredRaces` =  '690' WHERE  `entry` in (4105,4103);
UPDATE  `quest_template` SET  `PrevQuestId` =  '5891' WHERE  `entry` =4112;
UPDATE  `quest_template` SET  `PrevQuestId` =  '5886' WHERE  `entry` =4107;
UPDATE  `quest_template` SET  `PrevQuestId` =  '5887' WHERE  `entry` =4108;
UPDATE  `quest_template` SET  `PrevQuestId` =  '5882' WHERE  `entry` =4103;
UPDATE  `quest_template` SET  `PrevQuestId` =  '5890' WHERE  `entry` =4111;
UPDATE  `quest_template` SET  `PrevQuestId` =  '5885' WHERE  `entry` =4106;
UPDATE  `quest_template` SET  `PrevQuestId` =  '5884' WHERE  `entry` =4105;
UPDATE  `quest_template` SET  `PrevQuestId` =  '5889' WHERE  `entry` =4110;
UPDATE  `quest_template` SET  `PrevQuestId` =  '5883' WHERE  `entry` =4104;
UPDATE  `quest_template` SET  `PrevQuestId` =  '5888' WHERE  `entry` =4109;
UPDATE  `creature_involvedrelation` SET  `id` =  '9528' WHERE  `quest` in (4109,5889,4111,5887,4112);
UPDATE  `creature_questrelation` SET  `id` =  '9528' WHERE  `quest` in (4109,5889,4111,5887,4112);
UPDATE  `creature_involvedrelation` SET  `id` =  '9529' WHERE  `quest` in (5883,4105,5885,4103,5886);
UPDATE  `creature_questrelation` SET  `id` =  '9529' WHERE  `quest` in (5883,4105,5885,4103,5886);
INSERT IGNORE INTO gossip_menu (entry,text_id) VALUES (4941,5994);
UPDATE creature_template SET gossip_menu_id=4941 WHERE entry=332;
UPDATE creature_template SET gossip_menu_id=2745 WHERE entry=957;
UPDATE creature_template SET gossip_menu_id=4261 WHERE entry=1103;
INSERT IGNORE INTO gossip_menu (entry,text_id) VALUES (4261,5413);
UPDATE creature_template SET gossip_menu_id=2801 WHERE entry=1154;
INSERT IGNORE INTO gossip_menu (entry,text_id) VALUES (2801,3495);
INSERT IGNORE INTO gossip_menu (entry,text_id) VALUES (2831,3523);
UPDATE creature_template SET gossip_menu_id=2831 WHERE entry=1156;
UPDATE creature_template SET gossip_menu_id=687 WHERE entry=1286;
INSERT IGNORE INTO gossip_menu (entry,text_id) VALUES (687,1237);
INSERT IGNORE INTO gossip_menu (entry,text_id) VALUES (648,1210);
UPDATE creature_template SET gossip_menu_id=648 WHERE entry=1292;
UPDATE creature_template SET gossip_menu_id=4262 WHERE entry=1300;
INSERT IGNORE INTO gossip_menu (entry,text_id) VALUES (4262,5416);
INSERT IGNORE INTO gossip_menu (entry,text_id) VALUES (701,1253);
UPDATE creature_template SET gossip_menu_id=701 WHERE entry=1305;
UPDATE creature_template SET gossip_menu_id=1632 WHERE entry=1340;
INSERT IGNORE INTO gossip_menu (entry,text_id) VALUES (1632,2288);
INSERT IGNORE INTO gossip_menu (entry,text_id) VALUES (1632,2289);
DELETE FROM `creature_loot_template` WHERE `item` = 28564;
REPLACE INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(5419, 180501, 1, 1, 1, -6230.4, 1548.1, 15.1153, 1.20428, 0, 0, 0.566406, 0.824126, 7200, 100, 1),
(5425, 180501, 1, 1, 1, -6327.62, 1616.49, 23.1831, 0.994838, 0, 0, 0.477159, 0.878817, 7200, 100, 1),
(5431, 180501, 1, 1, 1, -6134.29, 1789.29, 33.9167, 1.74533, 0, 0, 0.766044, 0.642788, 7200, 100, 1),
(5437, 180501, 1, 1, 1, -6196.44, 1815.9, 21.6988, -1.51844, 0, 0, 0.688354, -0.725374, 7200, 100, 1),
(5438, 180501, 1, 1, 1, -6151.03, 1747.77, 28.9163, -1.91986, 0, 0, 0.819152, -0.573576, 7200, 100, 1),
(5439, 180501, 1, 1, 1, -6471.72, 1850.61, 3.59942, 0.645772, 0, 0, 0.317305, 0.948324, 7200, 100, 1);
UPDATE `gameobject` SET `spawntimesecs` = -604800 WHERE `guid` = 39998;
UPDATE `gameobject_template` SET `flags` = 0 WHERE `entry` = 187021;
UPDATE `creature_template` SET `gossip_menu_id` = 689 WHERE `entry` = 1341;
UPDATE `creature_template` SET `gossip_menu_id` = 4353 WHERE `entry` = 1346;
UPDATE `creature_template` SET `gossip_menu_id` = 4322 WHERE `entry` = 2057;
UPDATE `creature_template` SET `gossip_menu_id` = 4046 WHERE `entry` = 2079;
UPDATE `creature_template` SET `gossip_menu_id` = 2601 WHERE `entry` = 2788;
UPDATE `creature_template` SET `gossip_menu_id` = 2784 WHERE `entry` = 2836;
UPDATE `creature_template` SET `gossip_menu_id` = 5348 WHERE `entry` = 2916;
UPDATE `creature_template` SET `gossip_menu_id` = 4009 WHERE `entry` = 3601;
UPDATE `creature_template` SET `gossip_menu_id` = 1201 WHERE `entry` = 3836;
UPDATE `creature_template` SET `gossip_menu_id` = 7406 WHERE `entry` = 3848;
UPDATE `creature_template` SET `gossip_menu_id` = 8840 WHERE `entry` = 4921;
UPDATE `creature_template` SET `gossip_menu_id` = 1161 WHERE `entry` = 4944;
UPDATE `creature_template` SET `gossip_menu_id` = 1100 WHERE `entry` = 4963;
UPDATE `creature_template` SET `gossip_menu_id` = 5301 WHERE `entry` = 4967;
UPDATE `creature_template` SET `gossip_menu_id` = 8793 WHERE `entry` = 5086;
UPDATE `creature_template` SET `gossip_menu_id` = 4748 WHERE `entry` = 5159;
UPDATE `creature_template` SET `gossip_menu_id` = 646 WHERE `entry` = 5482;
UPDATE `creature_template` SET `gossip_menu_id` = 4468 WHERE `entry` = 5484;
UPDATE `creature_template` SET `gossip_menu_id` = 645 WHERE `entry` = 5493;
UPDATE `creature_template` SET `gossip_menu_id` = 4505 WHERE `entry` = 5495;
UPDATE `creature_template` SET `gossip_menu_id` = 4504 WHERE `entry` = 5496;
UPDATE `creature_template` SET `gossip_menu_id` = 4484 WHERE `entry` = 5498;
UPDATE `creature_template` SET `gossip_menu_id` = 4508 WHERE `entry` = 5504;
UPDATE `creature_template` SET `gossip_menu_id` = 4507 WHERE `entry` = 5506;
UPDATE `creature_template` SET `gossip_menu_id` = 581 WHERE `entry` = 5511;
UPDATE `creature_template` SET `gossip_menu_id` = 693 WHERE `entry` = 5512;
UPDATE `creature_template` SET `gossip_menu_id` = 660 WHERE `entry` = 5513;
UPDATE `creature_template` SET `gossip_menu_id` = 693 WHERE `entry` = 5514;
UPDATE `creature_template` SET `gossip_menu_id` = 698 WHERE `entry` = 5519;
UPDATE `creature_template` SET `gossip_menu_id` = 1281 WHERE `entry` = 5901;
UPDATE `creature_template` SET `gossip_menu_id` = 5641 WHERE `entry` = 6122;
UPDATE `creature_template` SET `gossip_menu_id` = 2603 WHERE `entry` = 6266;
UPDATE `creature_template` SET `gossip_menu_id` = 2916 WHERE `entry` = 6546;
UPDATE `creature_template` SET `gossip_menu_id` = 1301 WHERE `entry` = 6568;
UPDATE `creature_template` SET `gossip_menu_id` = 562 WHERE `entry` = 7172;
UPDATE `creature_template` SET `gossip_menu_id` = 1041 WHERE `entry` = 7232;
UPDATE `creature_template` SET `gossip_menu_id` = 941 WHERE `entry` = 7604;
UPDATE `creature_template` SET `gossip_menu_id` = 940 WHERE `entry` = 7607;
UPDATE `creature_template` SET `gossip_menu_id` = 1422 WHERE `entry` = 7772;
UPDATE `creature_template` SET `gossip_menu_id` = 1421 WHERE `entry` = 7773;
UPDATE `creature_template` SET `gossip_menu_id` = 1965 WHERE `entry` = 7852;
UPDATE `creature_template` SET `gossip_menu_id` = 3072 WHERE `entry` = 7870;
UPDATE `creature_template` SET `gossip_menu_id` = 4164 WHERE `entry` = 7949;
UPDATE `creature_template` SET `gossip_menu_id` = 4662 WHERE `entry` = 8140;
UPDATE `creature_template` SET `gossip_menu_id` = 1641 WHERE `entry` = 8380;
UPDATE `creature_template` SET `gossip_menu_id` = 1362 WHERE `entry` = 8399;
UPDATE `creature_template` SET `gossip_menu_id` = 1285 WHERE `entry` = 8436;
UPDATE `creature_template` SET `gossip_menu_id` = 1470 WHERE `entry` = 8579;
UPDATE `creature_template` SET `gossip_menu_id` = 1405 WHERE `entry` = 8612;
UPDATE `creature_template` SET `gossip_menu_id` = 1443 WHERE `entry` = 8696;
UPDATE `creature_template` SET `gossip_menu_id` = 1961 WHERE `entry` = 8737;
UPDATE `creature_template` SET `gossip_menu_id` = 1622 WHERE `entry` = 8965;
UPDATE `creature_template` SET `gossip_menu_id` = 3142 WHERE `entry` = 9116;
UPDATE `creature_template` SET `gossip_menu_id` = 2208 WHERE `entry` = 9528;
UPDATE `creature_template` SET `gossip_menu_id` = 1970 WHERE `entry` = 9543;
UPDATE `creature_template` SET `gossip_menu_id` = 5541 WHERE `entry` = 9544;
UPDATE `creature_template` SET `gossip_menu_id` = 2061 WHERE `entry` = 9563;
UPDATE `creature_template` SET `gossip_menu_id` = 4844 WHERE `entry` = 9584;
UPDATE `creature_template` SET `gossip_menu_id` = 2063 WHERE `entry` = 9598;
UPDATE `creature_template` SET `gossip_menu_id` = 2464 WHERE `entry` = 9676;
UPDATE `creature_template` SET `gossip_menu_id` = 2602 WHERE `entry` = 10267;
UPDATE `creature_template` SET `gossip_menu_id` = 3131 WHERE `entry` = 10300;
UPDATE `creature_template` SET `gossip_menu_id` = 4743 WHERE `entry` = 10304;
UPDATE `creature_template` SET `gossip_menu_id` = 3648 WHERE `entry` = 10432;
UPDATE `creature_template` SET `gossip_menu_id` = 3649 WHERE `entry` = 10433;
UPDATE `creature_template` SET `gossip_menu_id` = 2921 WHERE `entry` = 10739;
UPDATE `creature_template` SET `gossip_menu_id` = 3063 WHERE `entry` = 10740;
UPDATE `creature_template` SET `gossip_menu_id` = 2961 WHERE `entry` = 10778;
UPDATE `creature_template` SET `gossip_menu_id` = 3043 WHERE `entry` = 10917;
UPDATE `creature_template` SET `gossip_menu_id` = 3074 WHERE `entry` = 10922;
UPDATE `creature_template` SET `gossip_menu_id` = 5482 WHERE `entry` = 10929;
UPDATE `creature_template` SET `gossip_menu_id` = 3861 WHERE `entry` = 10936;
UPDATE `creature_template` SET `gossip_menu_id` = 3922 WHERE `entry` = 10945;
UPDATE `creature_template` SET `gossip_menu_id` = 3129 WHERE `entry` = 11016;
UPDATE `creature_template` SET `gossip_menu_id` = 3128 WHERE `entry` = 11019;
UPDATE `creature_template` SET `gossip_menu_id` = 4355 WHERE `entry` = 11052;
UPDATE `creature_template` SET `gossip_menu_id` = 4169 WHERE `entry` = 11072;
UPDATE `creature_template` SET `gossip_menu_id` = 4171 WHERE `entry` = 11073;
UPDATE `creature_template` SET `gossip_menu_id` = 3362 WHERE `entry` = 11277;
UPDATE `creature_template` SET `gossip_menu_id` = 3363 WHERE `entry` = 11279;
UPDATE `creature_template` SET `gossip_menu_id` = 3363 WHERE `entry` = 11281;
UPDATE `creature_template` SET `gossip_menu_id` = 3372 WHERE `entry` = 11286;
UPDATE `creature_template` SET `gossip_menu_id` = 5736 WHERE `entry` = 11486;
UPDATE `creature_template` SET `gossip_menu_id` = 3602 WHERE `entry` = 11609;
UPDATE `creature_template` SET `gossip_menu_id` = 4041 WHERE `entry` = 11800;
UPDATE `creature_template` SET `gossip_menu_id` = 3901 WHERE `entry` = 11802;
UPDATE `creature_template` SET `gossip_menu_id` = 3962 WHERE `entry` = 11878;
UPDATE `creature_template` SET `gossip_menu_id` = 5241 WHERE `entry` = 12096;
UPDATE `creature_template` SET `gossip_menu_id` = 4601 WHERE `entry` = 12866;
UPDATE `creature_template` SET `gossip_menu_id` = 6445 WHERE `entry` = 12919;
UPDATE `creature_template` SET `gossip_menu_id` = 5021 WHERE `entry` = 13257;
UPDATE `creature_template` SET `gossip_menu_id` = 5065 WHERE `entry` = 13278;
UPDATE `creature_template` SET `gossip_menu_id` = 5109 WHERE `entry` = 13322;
UPDATE `creature_template` SET `gossip_menu_id` = 5146 WHERE `entry` = 13437;
UPDATE `creature_template` SET `gossip_menu_id` = 5148 WHERE `entry` = 13438;
UPDATE `creature_template` SET `gossip_menu_id` = 5147 WHERE `entry` = 13439;
UPDATE `creature_template` SET `gossip_menu_id` = 5281 WHERE `entry` = 13577;
UPDATE `creature_template` SET `gossip_menu_id` = 5321 WHERE `entry` = 13717;
UPDATE `creature_template` SET `gossip_menu_id` = 6261 WHERE `entry` = 13776;
UPDATE `creature_template` SET `gossip_menu_id` = 6262 WHERE `entry` = 13777;
UPDATE `creature_template` SET `gossip_menu_id` = 5441 WHERE `entry` = 13840;
UPDATE `creature_template` SET `gossip_menu_id` = 5667 WHERE `entry` = 14338;
UPDATE `creature_template` SET `gossip_menu_id` = 5709 WHERE `entry` = 14354;
UPDATE `creature_template` SET `gossip_menu_id` = 5747 WHERE `entry` = 14368;
UPDATE `creature_template` SET `gossip_menu_id` = 5737 WHERE `entry` = 14369;
UPDATE `creature_template` SET `gossip_menu_id` = 5755 WHERE `entry` = 14381;
UPDATE `creature_template` SET `gossip_menu_id` = 5756 WHERE `entry` = 14382;
UPDATE `creature_template` SET `gossip_menu_id` = 5748 WHERE `entry` = 14383;
UPDATE `creature_template` SET `gossip_menu_id` = 5845 WHERE `entry` = 14469;
UPDATE `creature_template` SET `gossip_menu_id` = 5921 WHERE `entry` = 14508;
UPDATE `creature_template` SET `gossip_menu_id` = 5868 WHERE `entry` = 14527;
UPDATE `creature_template` SET `gossip_menu_id` = 5869 WHERE `entry` = 14528;
UPDATE `creature_template` SET `gossip_menu_id` = 6041 WHERE `entry` = 14722;
UPDATE `creature_template` SET `gossip_menu_id` = 6523 WHERE `entry` = 14733;
UPDATE `creature_template` SET `gossip_menu_id` = 6323 WHERE `entry` = 14983;
UPDATE `creature_template` SET `gossip_menu_id` = 6361 WHERE `entry` = 15021;
UPDATE `creature_template` SET `gossip_menu_id` = 7524 WHERE `entry` = 15165;
UPDATE `creature_template` SET `gossip_menu_id` = 6527 WHERE `entry` = 15176;
UPDATE `creature_template` SET `gossip_menu_id` = 6940 WHERE `entry` = 15403;
UPDATE `creature_template` SET `gossip_menu_id` = 6629 WHERE `entry` = 15471;
UPDATE `creature_template` SET `gossip_menu_id` = 6925 WHERE `entry` = 15499;
UPDATE `creature_template` SET `gossip_menu_id` = 7993 WHERE `entry` = 15991;
UPDATE `creature_template` SET `gossip_menu_id` = 7091 WHERE `entry` = 16031;
UPDATE `creature_template` SET `gossip_menu_id` = 7084 WHERE `entry` = 16032;
UPDATE `creature_template` SET `gossip_menu_id` = 7143 WHERE `entry` = 16169;
UPDATE `creature_template` SET `gossip_menu_id` = 7435 WHERE `entry` = 16388;
UPDATE `creature_template` SET `gossip_menu_id` = 7305 WHERE `entry` = 16477;
UPDATE `creature_template` SET `gossip_menu_id` = 7304 WHERE `entry` = 16514;
UPDATE `creature_template` SET `gossip_menu_id` = 7811 WHERE `entry` = 16615;
UPDATE `creature_template` SET `gossip_menu_id` = 7396 WHERE `entry` = 16798;
UPDATE `creature_template` SET `gossip_menu_id` = 7421 WHERE `entry` = 16812;
UPDATE `creature_template` SET `gossip_menu_id` = 8404 WHERE `entry` = 16816;
UPDATE `creature_template` SET `gossip_menu_id` = 7351 WHERE `entry` = 16830;
UPDATE `creature_template` SET `gossip_menu_id` = 7376 WHERE `entry` = 17087;
UPDATE `creature_template` SET `gossip_menu_id` = 7379 WHERE `entry` = 17209;
UPDATE `creature_template` SET `gossip_menu_id` = 7413 WHERE `entry` = 17211;
UPDATE `creature_template` SET `gossip_menu_id` = 7432 WHERE `entry` = 17443;
UPDATE `creature_template` SET `gossip_menu_id` = 7433 WHERE `entry` = 17445;
UPDATE `creature_template` SET `gossip_menu_id` = 7431 WHERE `entry` = 17446;
UPDATE `creature_template` SET `gossip_menu_id` = 7461 WHERE `entry` = 17599;
UPDATE `creature_template` SET `gossip_menu_id` = 7462 WHERE `entry` = 17649;
UPDATE `creature_template` SET `gossip_menu_id` = 7614 WHERE `entry` = 18003;
UPDATE `creature_template` SET `gossip_menu_id` = 7610 WHERE `entry` = 18004;
UPDATE `creature_template` SET `gossip_menu_id` = 7612 WHERE `entry` = 18005;
UPDATE `creature_template` SET `gossip_menu_id` = 7611 WHERE `entry` = 18006;
UPDATE `creature_template` SET `gossip_menu_id` = 7613 WHERE `entry` = 18007;
UPDATE `creature_template` SET `gossip_menu_id` = 7589 WHERE `entry` = 18009;
UPDATE `creature_template` SET `gossip_menu_id` = 7588 WHERE `entry` = 18010;
UPDATE `creature_template` SET `gossip_menu_id` = 7563 WHERE `entry` = 18074;
UPDATE `creature_template` SET `gossip_menu_id` = 8236 WHERE `entry` = 18098;
UPDATE `creature_template` SET `gossip_menu_id` = 7582 WHERE `entry` = 18197;
UPDATE `creature_template` SET `gossip_menu_id` = 7592 WHERE `entry` = 18200;
UPDATE `creature_template` SET `gossip_menu_id` = 7607 WHERE `entry` = 18218;
UPDATE `creature_template` SET `gossip_menu_id` = 7738 WHERE `entry` = 18252;
UPDATE `creature_template` SET `gossip_menu_id` = 8441 WHERE `entry` = 18253;
UPDATE `creature_template` SET `gossip_menu_id` = 7675 WHERE `entry` = 18261;
UPDATE `creature_template` SET `gossip_menu_id` = 7625 WHERE `entry` = 18265;
UPDATE `creature_template` SET `gossip_menu_id` = 7626 WHERE `entry` = 18276;
UPDATE `creature_template` SET `gossip_menu_id` = 7628 WHERE `entry` = 18278;
UPDATE `creature_template` SET `gossip_menu_id` = 7683 WHERE `entry` = 18295;
UPDATE `creature_template` SET `gossip_menu_id` = 7723 WHERE `entry` = 18333;
UPDATE `creature_template` SET `gossip_menu_id` = 7631 WHERE `entry` = 18335;
UPDATE `creature_template` SET `gossip_menu_id` = 7674 WHERE `entry` = 18369;
UPDATE `creature_template` SET `gossip_menu_id` = 7753 WHERE `entry` = 18387;
UPDATE `creature_template` SET `gossip_menu_id` = 7743 WHERE `entry` = 18389;
UPDATE `creature_template` SET `gossip_menu_id` = 7752 WHERE `entry` = 18390;
UPDATE `creature_template` SET `gossip_menu_id` = 7695 WHERE `entry` = 18416;
UPDATE `creature_template` SET `gossip_menu_id` = 7719 WHERE `entry` = 18417;
UPDATE `creature_template` SET `gossip_menu_id` = 7692 WHERE `entry` = 18424;
UPDATE `creature_template` SET `gossip_menu_id` = 7698 WHERE `entry` = 18459;
UPDATE `creature_template` SET `gossip_menu_id` = 7699 WHERE `entry` = 18471;
UPDATE `creature_template` SET `gossip_menu_id` = 7704 WHERE `entry` = 18482;
UPDATE `creature_template` SET `gossip_menu_id` = 7751 WHERE `entry` = 18565;
UPDATE `creature_template` SET `gossip_menu_id` = 7724 WHERE `entry` = 18581;
UPDATE `creature_template` SET `gossip_menu_id` = 7730 WHERE `entry` = 18586;
UPDATE `creature_template` SET `gossip_menu_id` = 7732 WHERE `entry` = 18588;
UPDATE `creature_template` SET `gossip_menu_id` = 7741 WHERE `entry` = 18675;
UPDATE `creature_template` SET `gossip_menu_id` = 7745 WHERE `entry` = 18704;
UPDATE `creature_template` SET `gossip_menu_id` = 7773 WHERE `entry` = 18713;
UPDATE `creature_template` SET `gossip_menu_id` = 7816 WHERE `entry` = 18771;
UPDATE `creature_template` SET `gossip_menu_id` = 7820 WHERE `entry` = 18775;
UPDATE `creature_template` SET `gossip_menu_id` = 7891 WHERE `entry` = 19035;
UPDATE `creature_template` SET `gossip_menu_id` = 7940 WHERE `entry` = 19137;
UPDATE `creature_template` SET `gossip_menu_id` = 8029 WHERE `entry` = 19417;
UPDATE `creature_template` SET `gossip_menu_id` = 8074 WHERE `entry` = 19466;
UPDATE `creature_template` SET `gossip_menu_id` = 8006 WHERE `entry` = 19468;
UPDATE `creature_template` SET `gossip_menu_id` = 8022 WHERE `entry` = 19676;
UPDATE `creature_template` SET `gossip_menu_id` = 8021 WHERE `entry` = 19679;
UPDATE `creature_template` SET `gossip_menu_id` = 8030 WHERE `entry` = 19709;
UPDATE `creature_template` SET `gossip_menu_id` = 8031 WHERE `entry` = 19718;
UPDATE `creature_template` SET `gossip_menu_id` = 8034 WHERE `entry` = 19773;
UPDATE `creature_template` SET `gossip_menu_id` = 8048 WHERE `entry` = 19880;
UPDATE `creature_template` SET `gossip_menu_id` = 8054 WHERE `entry` = 20066;
UPDATE `creature_template` SET `gossip_menu_id` = 8083 WHERE `entry` = 20084;
UPDATE `creature_template` SET `gossip_menu_id` = 8063 WHERE `entry` = 20092;
UPDATE `creature_template` SET `gossip_menu_id` = 8070 WHERE `entry` = 20112;
UPDATE `creature_template` SET `gossip_menu_id` = 8094 WHERE `entry` = 20231;
UPDATE `creature_template` SET `gossip_menu_id` = 8100 WHERE `entry` = 20236;
UPDATE `creature_template` SET `gossip_menu_id` = 8107 WHERE `entry` = 20393;
UPDATE `creature_template` SET `gossip_menu_id` = 8120 WHERE `entry` = 20448;
UPDATE `creature_template` SET `gossip_menu_id` = 7674 WHERE `entry` = 20812;
UPDATE `creature_template` SET `gossip_menu_id` = 8232 WHERE `entry` = 21006;
UPDATE `creature_template` SET `gossip_menu_id` = 8235 WHERE `entry` = 21066;
UPDATE `creature_template` SET `gossip_menu_id` = 8243 WHERE `entry` = 21145;
UPDATE `creature_template` SET `gossip_menu_id` = 8251 WHERE `entry` = 21151;
UPDATE `creature_template` SET `gossip_menu_id` = 8247 WHERE `entry` = 21158;
UPDATE `creature_template` SET `gossip_menu_id` = 8345 WHERE `entry` = 21160;
UPDATE `creature_template` SET `gossip_menu_id` = 8249 WHERE `entry` = 21172;
UPDATE `creature_template` SET `gossip_menu_id` = 8252 WHERE `entry` = 21197;
UPDATE `creature_template` SET `gossip_menu_id` = 8346 WHERE `entry` = 21664;
UPDATE `creature_template` SET `gossip_menu_id` = 8347 WHERE `entry` = 21682;
UPDATE `creature_template` SET `gossip_menu_id` = 8348 WHERE `entry` = 21683;
UPDATE `creature_template` SET `gossip_menu_id` = 8349 WHERE `entry` = 21684;
UPDATE `creature_template` SET `gossip_menu_id` = 8351 WHERE `entry` = 21690;
UPDATE `creature_template` SET `gossip_menu_id` = 8355 WHERE `entry` = 21726;
UPDATE `creature_template` SET `gossip_menu_id` = 8367 WHERE `entry` = 21750;
UPDATE `creature_template` SET `gossip_menu_id` = 8368 WHERE `entry` = 21752;
UPDATE `creature_template` SET `gossip_menu_id` = 8493 WHERE `entry` = 22113;
UPDATE `creature_template` SET `gossip_menu_id` = 8555 WHERE `entry` = 22278;
UPDATE `creature_template` SET `gossip_menu_id` = 8559 WHERE `entry` = 22364;
UPDATE `creature_template` SET `gossip_menu_id` = 8753 WHERE `entry` = 23038;
UPDATE `creature_template` SET `gossip_menu_id` = 8630 WHERE `entry` = 23048;
UPDATE `creature_template` SET `gossip_menu_id` = 6981 WHERE `entry` = 16002;
UPDATE `creature_template` SET `gossip_menu_id` = 7054 WHERE `entry` = 16075;
UPDATE `creature_template` SET `gossip_menu_id` = 8642 WHERE `entry` = 23120;
UPDATE `creature_template` SET `gossip_menu_id` = 8681 WHERE `entry` = 23233;
UPDATE `creature_template` SET `gossip_menu_id` = 8679 WHERE `entry` = 23253;
UPDATE `creature_template` SET `gossip_menu_id` = 8680 WHERE `entry` = 23300;
UPDATE `creature_template` SET `gossip_menu_id` = 8725 WHERE `entry` = 23093;
UPDATE `creature_template` SET `gossip_menu_id` = 8701 WHERE `entry` = 23309;
UPDATE `creature_template` SET `gossip_menu_id` = 11387 WHERE `entry` = 23872;
UPDATE `creature_template` SET `gossip_menu_id` = 8775 WHERE `entry` = 23559;
UPDATE `creature_template` SET `gossip_menu_id` = 8788 WHERE `entry` = 23568;
UPDATE `creature_template` SET `gossip_menu_id` = 8837 WHERE `entry` = 23569;
UPDATE `creature_template` SET `gossip_menu_id` = 8801 WHERE `entry` = 23579;
UPDATE `creature_template` SET `gossip_menu_id` = 8811 WHERE `entry` = 23600;
UPDATE `creature_template` SET `gossip_menu_id` = 8812 WHERE `entry` = 23601;
UPDATE `creature_template` SET `gossip_menu_id` = 8762 WHERE `entry` = 23602;
UPDATE `creature_template` SET `gossip_menu_id` = 8782 WHERE `entry` = 23704;
UPDATE `creature_template` SET `gossip_menu_id` = 8787 WHERE `entry` = 23723;
UPDATE `creature_template` SET `gossip_menu_id` = 8830 WHERE `entry` = 23797;
UPDATE `creature_template` SET `gossip_menu_id` = 8831 WHERE `entry` = 23835;
UPDATE `creature_template` SET `gossip_menu_id` = 8826 WHERE `entry` = 23896;
UPDATE `creature_template` SET `gossip_menu_id` = 8835 WHERE `entry` = 23949;
UPDATE `creature_template` SET `gossip_menu_id` = 8881 WHERE `entry` = 24024;
UPDATE `creature_template` SET `gossip_menu_id` = 8932 WHERE `entry` = 24358;
UPDATE `creature_template` SET `gossip_menu_id` = 9038 WHERE `entry` = 24833;
UPDATE `creature_template` SET `gossip_menu_id` = 9054 WHERE `entry` = 25021;
UPDATE `creature_template` SET `gossip_menu_id` = 9056 WHERE `entry` = 25022;
UPDATE `creature_template` SET `gossip_menu_id` = 9057 WHERE `entry` = 25023;
UPDATE `creature_template` SET `gossip_menu_id` = 9054 WHERE `entry` = 25024;
UPDATE `creature_template` SET `gossip_menu_id` = 9077 WHERE `entry` = 25025;
UPDATE `creature_template` SET `gossip_menu_id` = 9030 WHERE `entry` = 24866;
UPDATE `creature_template` SET `gossip_menu_id` = 9580 WHERE `entry` = 27704;
UPDATE `creature_template` SET `gossip_menu_id` = 9517 WHERE `entry` = 27398;
UPDATE `creature_template` SET `gossip_menu_id` = 9247 WHERE `entry` = 25395;
UPDATE `creature_template` SET `gossip_menu_id` = 9216 WHERE `entry` = 25285;
UPDATE `creature_template` SET `gossip_menu_id` = 8808 WHERE `entry` = 23732;
UPDATE `creature_template` SET `gossip_menu_id` = 8803 WHERE `entry` = 23737;
UPDATE `creature_template` SET `gossip_menu_id` = 8852 WHERE `entry` = 23749;
UPDATE `creature_template` SET `gossip_menu_id` = 8832 WHERE `entry` = 23770;
UPDATE `creature_template` SET `gossip_menu_id` = 8957 WHERE `entry` = 23833;
UPDATE `creature_template` SET `gossip_menu_id` = 8820 WHERE `entry` = 23862;
UPDATE `creature_template` SET `gossip_menu_id` = 8853 WHERE `entry` = 23888;
UPDATE `creature_template` SET `gossip_menu_id` = 8839 WHERE `entry` = 23906;
UPDATE `creature_template` SET `gossip_menu_id` = 8885 WHERE `entry` = 24038;
UPDATE `creature_template` SET `gossip_menu_id` = 8893 WHERE `entry` = 24106;
UPDATE `creature_template` SET `gossip_menu_id` = 8895 WHERE `entry` = 24111;
UPDATE `creature_template` SET `gossip_menu_id` = 8985 WHERE `entry` = 24544;
UPDATE `creature_template` SET `gossip_menu_id` = 9335 WHERE `entry` = 24713;
UPDATE `creature_template` SET `gossip_menu_id` = 9013 WHERE `entry` = 24788;
UPDATE `creature_template` SET `gossip_menu_id` = 9138 WHERE `entry` = 25198;
UPDATE `creature_template` SET `gossip_menu_id` = 9133 WHERE `entry` = 25199;
UPDATE `creature_template` SET `gossip_menu_id` = 9134 WHERE `entry` = 25205;
UPDATE `creature_template` SET `gossip_menu_id` = 9137 WHERE `entry` = 25208;
UPDATE `creature_template` SET `gossip_menu_id` = 9170 WHERE `entry` = 25589;
UPDATE `creature_template` SET `gossip_menu_id` = 9224 WHERE `entry` = 26083;
UPDATE `creature_template` SET `gossip_menu_id` = 9214 WHERE `entry` = 26084;
UPDATE `creature_template` SET `gossip_menu_id` = 9210 WHERE `entry` = 26085;
UPDATE `creature_template` SET `gossip_menu_id` = 9280 WHERE `entry` = 26219;
UPDATE `creature_template` SET `gossip_menu_id` = 9342 WHERE `entry` = 26546;
UPDATE `creature_template` SET `gossip_menu_id` = 9420 WHERE `entry` = 26647;
UPDATE `creature_template` SET `gossip_menu_id` = 9690 WHERE `entry` = 26664;
UPDATE `creature_template` SET `gossip_menu_id` = 9431 WHERE `entry` = 26814;
UPDATE `creature_template` SET `gossip_menu_id` = 9985 WHERE `entry` = 26905;
UPDATE `creature_template` SET `gossip_menu_id` = 10116 WHERE `entry` = 26914;
UPDATE `creature_template` SET `gossip_menu_id` = 10220 WHERE `entry` = 26924;
UPDATE `creature_template` SET `gossip_menu_id` = 9475 WHERE `entry` = 27060;
UPDATE `creature_template` SET `gossip_menu_id` = 9496 WHERE `entry` = 27328;
UPDATE `creature_template` SET `gossip_menu_id` = 9740 WHERE `entry` = 28082;
UPDATE `creature_template` SET `gossip_menu_id` = 9744 WHERE `entry` = 28107;
UPDATE `creature_template` SET `gossip_menu_id` = 9743 WHERE `entry` = 28114;
UPDATE `creature_template` SET `gossip_menu_id` = 9747 WHERE `entry` = 28121;
UPDATE `creature_template` SET `gossip_menu_id` = 9659 WHERE `entry` = 28136;
UPDATE `creature_template` SET `gossip_menu_id` = 9658 WHERE `entry` = 28148;
UPDATE `creature_template` SET `gossip_menu_id` = 9748 WHERE `entry` = 28216;
UPDATE `creature_template` SET `gossip_menu_id` = 9678 WHERE `entry` = 28315;
UPDATE `creature_template` SET `gossip_menu_id` = 9723 WHERE `entry` = 28374;
UPDATE `creature_template` SET `gossip_menu_id` = 9685 WHERE `entry` = 28375;
UPDATE `creature_template` SET `gossip_menu_id` = 9688 WHERE `entry` = 28376;
UPDATE `creature_template` SET `gossip_menu_id` = 9717 WHERE `entry` = 28589;
UPDATE `creature_template` SET `gossip_menu_id` = 9738 WHERE `entry` = 28771;
UPDATE `creature_template` SET `gossip_menu_id` = 9806 WHERE `entry` = 29344;
UPDATE `creature_template` SET `gossip_menu_id` = 9813 WHERE `entry` = 29396;
UPDATE `creature_template` SET `gossip_menu_id` = 9859 WHERE `entry` = 29434;
UPDATE `creature_template` SET `gossip_menu_id` = 9848 WHERE `entry` = 29688;
UPDATE `creature_template` SET `gossip_menu_id` = 9861 WHERE `entry` = 29689;
UPDATE `creature_template` SET `gossip_menu_id` = 9928 WHERE `entry` = 30399;
UPDATE `creature_template` SET `gossip_menu_id` = 10208 WHERE `entry` = 31109;
UPDATE `creature_template` SET `gossip_menu_id` = 10194 WHERE `entry` = 32401;
UPDATE `creature_template` SET `gossip_menu_id` = 10209 WHERE `entry` = 32594;
UPDATE `creature_template` SET `gossip_menu_id` = 10710 WHERE `entry` = 36097;
UPDATE `creature_template` SET `gossip_menu_id` = 10709 WHERE `entry` = 36095;
UPDATE `creature_template` SET `gossip_menu_id` = 11384 WHERE `entry` = 40436;
REPLACE INTO `gossip_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `dataint`, `x`, `y`, `z`, `o`) VALUES
(9686, 0, 15, 51469, 0, 0, 0, 0, 0, 0),
(9686, 0, 7, 12573, 10, 0, 0, 0, 0, 0),
(9686, 0, 0, 0, 0, 2000000462, 0, 0, 0, 0);
REPLACE INTO `db_script_string` (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`) VALUES
(2000000462, 'Frenzyheart kill you if you come back. You no welcome here no more!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
UPDATE  `creature_template` SET  `faction_A` =  '168',`faction_H` =  '168' WHERE  `entry` =20923;
UPDATE `creature_template` SET `gossip_menu_id` = 5021 WHERE `entry` in  (22567,32048,37369);
UPDATE `creature_template` SET `gossip_menu_id` = 5148 WHERE `entry` in  (22698,31824,37483);
REPLACE INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(66481, 181598, 1, 1, 1, -7935.15, 836.743, -1.24116, -0.523599, 0, 0, 0.258819, -0.965926, 180, 100, 1),
(66480, 181598, 1, 1, 1, -7851.41, 1617.03, 3.51614, 3.07178, 0, 0, 0.999391, 0.034899, 180, 100, 1),
(66479, 181598, 1, 1, 1, -7849.86, 1811.71, 1.97516, -0.191986, 0, 0, 0.095846, -0.995396, 180, 100, 1),
(66478, 181598, 1, 1, 1, -7836.4, 1182.2, -1.61276, -0.523599, 0, 0, 0.258819, -0.965926, 180, 100, 1),
(66477, 181598, 1, 1, 1, -7822.73, 1879.87, 5.44712, 3.12414, 0, 0, 0.999962, 0.008727, 180, 100, 1),
(66476, 181598, 1, 1, 1, -7757.84, 1258.98, -2.27307, -0.558505, 0, 0, 0.275637, -0.961262, 180, 100, 1),
(66475, 181598, 1, 1, 1, -7604.34, 307.644, 5.16781, -0.349066, 0, 0, 0.173648, -0.984808, 180, 100, 1),
(66474, 181598, 1, 1, 1, -7478.8, 1447.77, 6.12544, 2.68781, 0, 0, 0.97437, 0.224951, 180, 100, 1),
(66473, 181598, 1, 1, 1, -7421.76, 426.214, 0.29064, -1.43117, 0, 0, 0.656059, -0.75471, 180, 100, 1),
(66472, 181598, 1, 1, 1, -7323.53, 473.756, 9.38878, 0.610865, 0, 0, 0.300706, 0.953717, 180, 100, 1),
(66471, 181598, 1, 1, 1, -7135.93, 780.037, 7.27633, -1.91986, 0, 0, 0.819152, -0.573576, 180, 100, 1),
(66470, 181598, 1, 1, 1, -7118.89, 514.718, 5.04252, 0.383972, 0, 0, 0.190809, 0.981627, 180, 100, 1),
(66469, 181598, 1, 1, 1, -6999.92, 823.196, 13.1457, -1.50098, 0, 0, 0.681998, -0.731354, 180, 100, 1),
(5443, 181598, 1, 1, 1, -6849.17, 1282.89, -0.140266, -3.03687, 0, 0, 0.99863, -0.052336, 180, 100, 1),
(5444, 181598, 1, 1, 1, -6653.26, 1280.47, 4.89185, -1.72788, 0, 0, 0.760406, -0.649448, 180, 100, 1),
(5446, 181598, 1, 1, 1, -6477.6, 1146.2, 2.60009, 1.95477, 0, 0, 0.829038, 0.559193, 180, 100, 1);
UPDATE `creature_template` SET `gossip_menu_id` = 8851 WHERE `entry` = 4979;
DELETE FROM `gossip_menu` WHERE `entry` = 4979 AND `text_id` = 11492;
UPDATE gossip_menu_option SET menu_id = 8851 WHERE menu_id = 4979;
UPDATE locales_gossip_menu_option SET menu_id = 8851 WHERE menu_id =4979;
UPDATE `creature_template` SET `gossip_menu_id` = 6866 WHERE `entry` = 15563;
UPDATE gossip_menu SET entry = 6866 WHERE entry = 15563;
UPDATE gossip_menu_option SET menu_id = 6866 WHERE menu_id = 15563;
UPDATE locales_gossip_menu_option SET menu_id = 6866 WHERE menu_id =15563;
UPDATE `creature_template` SET `gossip_menu_id` = 6823 WHERE `entry` = 15569;
UPDATE gossip_menu SET entry = 6823 WHERE entry = 15569;
UPDATE gossip_menu_option SET menu_id = 6823 WHERE menu_id = 15569;
UPDATE locales_gossip_menu_option SET menu_id = 6823 WHERE menu_id =15569;
UPDATE `creature_template` SET `gossip_menu_id` = 6825 WHERE `entry` = 15577;
UPDATE gossip_menu SET entry = 6825 WHERE entry = 15577;
UPDATE gossip_menu_option SET menu_id = 6825 WHERE menu_id = 15577;
UPDATE locales_gossip_menu_option SET menu_id = 6825 WHERE menu_id =15577;
UPDATE `creature_template` SET `gossip_menu_id` = 6831 WHERE `entry` = 15586;
UPDATE gossip_menu SET entry = 6831 WHERE entry = 15586;
UPDATE gossip_menu_option SET menu_id = 6831 WHERE menu_id = 15586;
UPDATE locales_gossip_menu_option SET menu_id = 6831 WHERE menu_id =15586;
UPDATE `creature_template` SET `gossip_menu_id` = 6826 WHERE `entry` = 15601;
UPDATE gossip_menu SET entry = 6826 WHERE entry = 15601;
UPDATE gossip_menu_option SET menu_id = 6826 WHERE menu_id = 15601;
UPDATE locales_gossip_menu_option SET menu_id = 6826 WHERE menu_id = 15601;
UPDATE `creature_template` SET `gossip_menu_id` = 6827 WHERE `entry` = 15605;
UPDATE gossip_menu SET entry = 6827 WHERE entry = 15605;
UPDATE gossip_menu_option SET menu_id = 6827 WHERE menu_id = 15605;
UPDATE locales_gossip_menu_option SET menu_id = 6827 WHERE menu_id = 15605;
UPDATE `creature_template` SET `gossip_menu_id` = 6917 WHERE `entry` = 15864;
UPDATE gossip_menu SET entry = 6917 WHERE entry = 15864;
UPDATE gossip_menu_option SET menu_id = 6917 WHERE menu_id = 15864;
UPDATE locales_gossip_menu_option SET menu_id = 6917 WHERE menu_id = 15864;
UPDATE `creature_template` SET `gossip_menu_id` = 6841 WHERE `entry` = 15871;
UPDATE gossip_menu SET entry = 6841 WHERE entry = 15871;
UPDATE gossip_menu_option SET menu_id = 6841 WHERE menu_id = 15871;
UPDATE locales_gossip_menu_option SET menu_id = 6841 WHERE menu_id = 15871;
UPDATE `creature_template` SET `gossip_menu_id` = 7579 WHERE `entry` = 18180;
UPDATE gossip_menu SET entry = 7579 WHERE entry = 18180;
UPDATE gossip_menu_option SET menu_id = 7579 WHERE menu_id = 18180;
UPDATE locales_gossip_menu_option SET menu_id = 7579 WHERE menu_id = 18180;
UPDATE `creature_template` SET `gossip_menu_id` = 7669 WHERE `entry` = 18351;
UPDATE gossip_menu SET entry = 7669 WHERE entry = 18351;
UPDATE gossip_menu_option SET menu_id = 7669 WHERE menu_id = 18351;
UPDATE locales_gossip_menu_option SET menu_id = 7669 WHERE menu_id = 18351;
UPDATE `creature_template` SET `gossip_menu_id` = 7771 WHERE `entry` = 18715;
UPDATE gossip_menu SET entry = 7771 WHERE entry = 18715;
UPDATE gossip_menu_option SET menu_id = 7771 WHERE menu_id = 18715;
UPDATE locales_gossip_menu_option SET menu_id = 7771 WHERE menu_id = 18715;
UPDATE `creature_template` SET `gossip_menu_id` = 7983 WHERE `entry` = 19542;
UPDATE gossip_menu SET entry = 7983 WHERE entry = 19542;
UPDATE gossip_menu_option SET menu_id = 7983 WHERE menu_id = 19542;
UPDATE locales_gossip_menu_option SET menu_id = 7983 WHERE menu_id = 19542;
UPDATE `creature_template` SET `gossip_menu_id` = 8886 WHERE `entry` = 24060;
UPDATE gossip_menu SET entry = 8886 WHERE entry = 24060;
UPDATE gossip_menu_option SET menu_id = 8886 WHERE menu_id = 24060;
UPDATE locales_gossip_menu_option SET menu_id = 8886 WHERE menu_id = 24060;
UPDATE `creature_template` SET `gossip_menu_id` = 9130 WHERE `entry` = 25206;
UPDATE gossip_menu SET entry = 9130 WHERE entry = 25206;
UPDATE gossip_menu_option SET menu_id = 9130 WHERE menu_id = 25206;
UPDATE locales_gossip_menu_option SET menu_id = 9130 WHERE menu_id = 25206;
UPDATE `creature_template` SET `gossip_menu_id` = 9539 WHERE `entry` = 25705;
UPDATE gossip_menu SET entry = 9539 WHERE entry = 25705;
UPDATE gossip_menu_option SET menu_id = 9539 WHERE menu_id = 25705;
UPDATE locales_gossip_menu_option SET menu_id = 9539 WHERE menu_id = 25705;
UPDATE `creature_template` SET `gossip_menu_id` = 9219 WHERE `entry` = 25828;
UPDATE gossip_menu SET entry = 9219 WHERE entry = 25828;
UPDATE gossip_menu_option SET menu_id = 9219 WHERE menu_id = 25828;
UPDATE locales_gossip_menu_option SET menu_id = 9219 WHERE menu_id = 25828;
UPDATE `creature_template` SET `gossip_menu_id` = 9190 WHERE `entry` = 25841;
UPDATE gossip_menu SET entry = 9190 WHERE entry = 25841;
UPDATE gossip_menu_option SET menu_id = 9190 WHERE menu_id = 25841;
UPDATE locales_gossip_menu_option SET menu_id = 9190 WHERE menu_id = 25841;
UPDATE `creature_template` SET `gossip_menu_id` = 9262 WHERE `entry` = 26206;
UPDATE gossip_menu SET entry = 9262 WHERE entry = 26206;
UPDATE gossip_menu_option SET menu_id = 9262 WHERE menu_id = 26206;
UPDATE locales_gossip_menu_option SET menu_id = 9262 WHERE menu_id = 26206;
UPDATE `creature_template` SET `gossip_menu_id` = 9518 WHERE `entry` = 27155;
UPDATE gossip_menu SET entry = 9518 WHERE entry = 27155;
UPDATE gossip_menu_option SET menu_id = 9518 WHERE menu_id = 27155;
UPDATE locales_gossip_menu_option SET menu_id = 9518 WHERE menu_id = 27155;
UPDATE `creature_template` SET `gossip_menu_id` = 9550 WHERE `entry` = 27495;
UPDATE gossip_menu SET entry = 9550 WHERE entry = 27495;
UPDATE gossip_menu_option SET menu_id = 9550 WHERE menu_id = 27495;
UPDATE locales_gossip_menu_option SET menu_id = 9550 WHERE menu_id = 27495;
UPDATE `creature_template` SET `gossip_menu_id` = 9574 WHERE `entry` = 27659;
UPDATE gossip_menu SET entry = 9574 WHERE entry = 27659;
DELETE FROM `gossip_menu_option` WHERE `menu_id` = 27659;
UPDATE `creature_template` SET `gossip_menu_id` = 9677 WHERE `entry` = 28217;
UPDATE gossip_menu SET entry = 9677 WHERE entry = 28217;
UPDATE gossip_menu_option SET menu_id = 9677 WHERE menu_id = 28217;
UPDATE locales_gossip_menu_option SET menu_id = 9677 WHERE menu_id = 28217;
UPDATE `creature_template` SET `gossip_menu_id` = 9724 WHERE `entry` = 28604;
UPDATE gossip_menu SET entry = 9724 WHERE entry = 28604;
UPDATE gossip_menu_option SET menu_id = 9724 WHERE menu_id = 28604;
UPDATE locales_gossip_menu_option SET menu_id = 9724 WHERE menu_id = 28604;
UPDATE `creature_template` SET `gossip_menu_id` = 9900 WHERE `entry` = 30105;
UPDATE gossip_menu SET entry = 9900 WHERE entry = 30105;
UPDATE gossip_menu_option SET menu_id = 9900 WHERE menu_id = 30105;
UPDATE locales_gossip_menu_option SET menu_id = 9900 WHERE menu_id = 30105;
UPDATE `creature_template` SET `gossip_menu_id` = 9931 WHERE `entry` = 30348;
UPDATE gossip_menu SET entry = 9931 WHERE entry = 30348;
UPDATE gossip_menu_option SET menu_id = 9931 WHERE menu_id = 30348;
UPDATE locales_gossip_menu_option SET menu_id = 9931 WHERE menu_id = 30348;
UPDATE `creature_template` SET `gossip_menu_id` = 9964 WHERE `entry` = 30357;
UPDATE gossip_menu SET entry = 9964 WHERE entry = 30357;
UPDATE gossip_menu_option SET menu_id = 9964 WHERE menu_id = 30357;
UPDATE locales_gossip_menu_option SET menu_id = 9964 WHERE menu_id = 30357;
UPDATE `creature_template` SET `gossip_menu_id` = 9954 WHERE `entry` = 30358;
UPDATE gossip_menu SET entry = 9954 WHERE entry = 30358;
UPDATE gossip_menu_option SET menu_id = 9954 WHERE menu_id = 30358;
UPDATE locales_gossip_menu_option SET menu_id = 9954 WHERE menu_id = 30358;
UPDATE `creature_template` SET `gossip_menu_id` = 9975 WHERE `entry` = 30359;
UPDATE gossip_menu SET entry = 9975 WHERE entry = 30359;
UPDATE gossip_menu_option SET menu_id = 9975 WHERE menu_id = 30359;
UPDATE locales_gossip_menu_option SET menu_id = 9975 WHERE menu_id = 30359;
UPDATE `creature_template` SET `gossip_menu_id` = 9938 WHERE `entry` = 30360;
UPDATE gossip_menu SET entry = 9938 WHERE entry = 30360;
UPDATE gossip_menu_option SET menu_id = 9938 WHERE menu_id = 30360;
UPDATE locales_gossip_menu_option SET menu_id = 9938 WHERE menu_id = 30360;
UPDATE `creature_template` SET `gossip_menu_id` = 9946 WHERE `entry` = 30362;
UPDATE gossip_menu SET entry = 9946 WHERE entry = 30362;
UPDATE gossip_menu_option SET menu_id = 9946 WHERE menu_id = 30362;
UPDATE locales_gossip_menu_option SET menu_id = 9946 WHERE menu_id = 30362;
UPDATE `creature_template` SET `gossip_menu_id` = 9953 WHERE `entry` = 30363;
UPDATE gossip_menu SET entry = 9953 WHERE entry = 30363;
UPDATE gossip_menu_option SET menu_id = 9953 WHERE menu_id = 30363;
UPDATE locales_gossip_menu_option SET menu_id = 9953 WHERE menu_id = 30363;
UPDATE `creature_template` SET `gossip_menu_id` = 9935 WHERE `entry` = 30364;
UPDATE gossip_menu SET entry = 9935 WHERE entry = 30364;
UPDATE gossip_menu_option SET menu_id = 9935 WHERE menu_id = 30364;
UPDATE locales_gossip_menu_option SET menu_id = 9935 WHERE menu_id = 30364;
UPDATE `creature_template` SET `gossip_menu_id` = 9945 WHERE `entry` = 30365;
UPDATE gossip_menu SET entry = 9945 WHERE entry = 30365;
UPDATE gossip_menu_option SET menu_id = 9945 WHERE menu_id = 30365;
UPDATE locales_gossip_menu_option SET menu_id = 9945 WHERE menu_id = 30365;
UPDATE `creature_template` SET `gossip_menu_id` = 9963 WHERE `entry` = 30367;
UPDATE gossip_menu SET entry = 9963 WHERE entry = 30367;
UPDATE gossip_menu_option SET menu_id = 9963 WHERE menu_id = 30367;
UPDATE locales_gossip_menu_option SET menu_id = 9963 WHERE menu_id = 30367;
UPDATE `creature_template` SET `gossip_menu_id` = 9941 WHERE `entry` = 30368;
UPDATE gossip_menu SET entry = 9941 WHERE entry = 30368;
UPDATE gossip_menu_option SET menu_id = 9941 WHERE menu_id = 30368;
UPDATE locales_gossip_menu_option SET menu_id = 9941 WHERE menu_id = 30368;
UPDATE `creature_template` SET `gossip_menu_id` = 9968 WHERE `entry` = 30369;
UPDATE gossip_menu SET entry = 9968 WHERE entry = 30369;
UPDATE gossip_menu_option SET menu_id = 9968 WHERE menu_id = 30369;
UPDATE locales_gossip_menu_option SET menu_id = 9968 WHERE menu_id = 30369;
UPDATE `creature_template` SET `gossip_menu_id` = 9980 WHERE `entry` = 30370;
UPDATE gossip_menu SET entry = 9980 WHERE entry = 30370;
UPDATE gossip_menu_option SET menu_id = 9980 WHERE menu_id = 30370;
UPDATE locales_gossip_menu_option SET menu_id = 9980 WHERE menu_id = 30370;
UPDATE `creature_template` SET `gossip_menu_id` = 9961 WHERE `entry` = 30372;
UPDATE gossip_menu SET entry = 9961 WHERE entry = 30372;
UPDATE gossip_menu_option SET menu_id = 9961 WHERE menu_id = 30372;
UPDATE locales_gossip_menu_option SET menu_id = 9961 WHERE menu_id = 30372;
UPDATE `creature_template` SET `gossip_menu_id` = 9948 WHERE `entry` = 30533;
UPDATE gossip_menu SET entry = 9948 WHERE entry = 30533;
UPDATE gossip_menu_option SET menu_id = 9948 WHERE menu_id = 30533;
UPDATE locales_gossip_menu_option SET menu_id = 9948 WHERE menu_id = 30533;
UPDATE `creature_template` SET `gossip_menu_id` = 9966 WHERE `entry` = 30534;
UPDATE gossip_menu SET entry = 9966 WHERE entry = 30534;
UPDATE gossip_menu_option SET menu_id = 9966 WHERE menu_id = 30534;
UPDATE locales_gossip_menu_option SET menu_id = 9966 WHERE menu_id = 30534;
UPDATE `creature_template` SET `gossip_menu_id` = 9972 WHERE `entry` = 30535;
UPDATE gossip_menu SET entry = 9972 WHERE entry = 30535;
UPDATE gossip_menu_option SET menu_id = 9972 WHERE menu_id = 30535;
UPDATE locales_gossip_menu_option SET menu_id = 9972 WHERE menu_id = 30535;
UPDATE `creature_template` SET `gossip_menu_id` = 9937 WHERE `entry` = 30536;
UPDATE gossip_menu SET entry = 9937 WHERE entry = 30536;
UPDATE gossip_menu_option SET menu_id = 9937 WHERE menu_id = 30536;
UPDATE locales_gossip_menu_option SET menu_id = 9937 WHERE menu_id = 30536;
UPDATE `creature_template` SET `gossip_menu_id` = 9971 WHERE `entry` = 30537;
UPDATE gossip_menu SET entry = 9971 WHERE entry = 30537;
UPDATE gossip_menu_option SET menu_id = 9971 WHERE menu_id = 30537;
UPDATE locales_gossip_menu_option SET menu_id = 9971 WHERE menu_id = 30537;
UPDATE `creature_template` SET `gossip_menu_id` = 9959 WHERE `entry` = 30538;
UPDATE gossip_menu SET entry = 9959 WHERE entry = 30538;
UPDATE gossip_menu_option SET menu_id = 9959 WHERE menu_id = 30538;
UPDATE locales_gossip_menu_option SET menu_id = 9959 WHERE menu_id = 30538;
UPDATE `creature_template` SET `gossip_menu_id` = 10189 WHERE `entry` = 32346;
DELETE FROM `gossip_menu` WHERE `entry` = 32346 AND `text_id` = 14131;
UPDATE gossip_menu_option SET menu_id = 10189 WHERE menu_id = 32346;
UPDATE locales_gossip_menu_option SET menu_id = 10189 WHERE menu_id = 32346;
UPDATE `creature_template` SET `gossip_menu_id` = 10929 WHERE `entry` = 37715;
UPDATE gossip_menu SET entry = 10929 WHERE entry = 37715;
UPDATE gossip_menu_option SET menu_id = 10929 WHERE menu_id = 37715;
UPDATE locales_gossip_menu_option SET menu_id = 10929 WHERE menu_id = 37715;
UPDATE  `gossip_menu` SET  `entry` =  '10945' WHERE  `entry` =50051 AND  `text_id` =15209;
UPDATE  `gossip_menu_option` SET  `action_menu_id` =  '10945' WHERE  `menu_id` =10929 AND  `id` =0;
UPDATE  `gossip_menu_option` SET  `menu_id` =  '10945',`action_menu_id` =  '10946' WHERE  `menu_id` =50051 AND  `id` =0;
UPDATE  `gossip_menu` SET  `entry` =  '10946' WHERE  `entry` =50052 AND  `text_id` =15210;
UPDATE  `gossip_menu_option` SET  `menu_id` =  '10946',`action_menu_id` =  '10947' WHERE  `menu_id` =50052 AND  `id` =0;
UPDATE  `gossip_menu` SET  `entry` =  '10947' WHERE  `entry` =50053 AND  `text_id` =15211;
UPDATE  `gossip_menu_option` SET  `action_menu_id` =  '50014' WHERE  `menu_id` =11032 AND  `id` =1;
UPDATE  `gossip_menu_option` SET  `menu_id` =  '50014' WHERE  `menu_id` =50053;
UPDATE  `gossip_menu` SET  `entry` =  '9899' WHERE  `entry` =50032 AND  `text_id` =13749;
UPDATE  `gossip_menu_option` SET  `action_menu_id` =  '9899' WHERE  `menu_id` =9900 AND  `id` =1;
UPDATE  `gossip_menu_option` SET  `menu_id` =  '9899' WHERE  `menu_id` =50032 AND  `id` =0;
UPDATE  `gossip_menu_option` SET  `action_menu_id` =  '9555' WHERE  `menu_id` =9550 AND  `id` =1;
UPDATE  `gossip_menu` SET  `entry` =  '9555' WHERE  `entry` =50396 AND  `text_id` =12868;
UPDATE  `gossip_menu_option` SET  `menu_id` =  '9555',`option_text` =  'Where can I get a Refurbished Shredder Key?',`action_menu_id` =  '9557' WHERE  `menu_id` =50396 AND  `id` =0;
UPDATE  `gossip_menu` SET  `entry` =  '9557' WHERE  `entry` =50398 AND  `text_id` =12871;
UPDATE  `gossip_menu_option` SET  `action_menu_id` =  '7673' WHERE  `menu_id` =7669 AND  `id` =0;
UPDATE  `gossip_menu` SET  `entry` =  '7673' WHERE  `entry` =50000 AND  `text_id` =9353;
UPDATE  `gossip_menu_option` SET  `menu_id` =  '7673',`action_menu_id` =  '7672' WHERE  `menu_id` =50000 AND  `id` =0;
UPDATE  `gossip_menu` SET  `entry` =  '7672' WHERE  `entry` =50001 AND  `text_id` =9354;
UPDATE  `gossip_menu_option` SET  `menu_id` =  '7672',`action_menu_id` =  '7671' WHERE  `menu_id` =50001 AND  `id` =0;
UPDATE  `gossip_menu` SET  `entry` =  '7671' WHERE  `entry` =50002 AND  `text_id` =9355;
UPDATE  `gossip_menu_option` SET  `menu_id` =  '7671',`action_menu_id` =  '7670' WHERE  `menu_id` =50002 AND  `id` =0;
UPDATE  `gossip_menu` SET  `entry` =  '7670' WHERE  `entry` =50008 AND  `text_id` =9356;
UPDATE  `gossip_menu_option` SET  `action_menu_id` =  '6936' WHERE  `menu_id` =6917 AND  `id` =1;
UPDATE  `gossip_menu` SET  `entry` =  '6936' WHERE  `entry` =50054 AND  `text_id` =8225;
UPDATE  `locales_gossip_menu_option` SET  `menu_id` =  '9555' WHERE  `menu_id` =50396 AND  `id` =0;
UPDATE  `locales_gossip_menu_option` SET  `menu_id` =  '50014' WHERE  `menu_id` =50053 AND  `id` =0;
UPDATE  `locales_gossip_menu_option` SET  `menu_id` =  '50014' WHERE  `menu_id` =50053 AND  `id` =1;
UPDATE  `locales_gossip_menu_option` SET  `menu_id` =  '10945' WHERE  `menu_id` =50051 AND  `id` =0;
UPDATE  `locales_gossip_menu_option` SET  `menu_id` =  '10946' WHERE  `menu_id` =50052 AND  `id` =0;
UPDATE  `locales_gossip_menu_option` SET  `menu_id` =  '9899' WHERE  `menu_id` =50032 AND  `id` =0;
UPDATE `creature_template` SET `gossip_menu_id` = 9829 WHERE `entry` = 29670;
UPDATE gossip_menu SET entry =9829 WHERE entry =50358;
UPDATE gossip_menu_option SET menu_id =9829 WHERE menu_id =50358;
UPDATE locales_gossip_menu_option SET menu_id =9829 WHERE menu_id =50358;
UPDATE `creature_template` SET `gossip_menu_id` = 9981 WHERE `entry` = 29671;
UPDATE gossip_menu SET entry =9981 WHERE entry =50370;
UPDATE gossip_menu_option SET menu_id =9981 WHERE menu_id =50370;
UPDATE locales_gossip_menu_option SET menu_id =9981 WHERE menu_id =50370;
UPDATE `creature_template` SET `gossip_menu_id` = 9829 WHERE `entry` = 32621;
UPDATE `creature_template` SET `gossip_menu_id` = 9981 WHERE `entry` = 32622;
UPDATE `creature_template` SET `gossip_menu_id` = 6471 WHERE `entry` = 857;
UPDATE gossip_menu SET entry =6471 WHERE entry =50333;
UPDATE gossip_menu_option SET menu_id =6471 WHERE menu_id =50333;
UPDATE locales_gossip_menu_option SET menu_id =6471 WHERE menu_id =50333;
UPDATE `creature_template` SET `gossip_menu_id` = 381 WHERE `entry` = 917;
UPDATE gossip_menu SET entry =381 WHERE entry =50200;
UPDATE gossip_menu_option SET menu_id =381 WHERE menu_id =50200;
UPDATE locales_gossip_menu_option SET menu_id =381 WHERE menu_id =50200;
UPDATE `creature_template` SET `gossip_menu_id` = 4502 WHERE `entry` = 918;
UPDATE `creature_template` SET `gossip_menu_id` = 4502 WHERE `entry` = 13283;
UPDATE gossip_menu SET entry =4502 WHERE entry =50195;
UPDATE gossip_menu_option SET menu_id =4502 WHERE menu_id =50195;
UPDATE locales_gossip_menu_option SET menu_id =4502 WHERE menu_id =50195;
UPDATE `creature_template` SET `gossip_menu_id` = 2465 WHERE `entry` = 4968;
DELETE FROM `gossip_menu` WHERE `entry` in (50384);
UPDATE gossip_menu_option SET menu_id =2465 WHERE menu_id =50384;
UPDATE locales_gossip_menu_option SET menu_id =2465 WHERE menu_id =50384;
UPDATE `creature_template` SET `gossip_menu_id` = 2304 WHERE `entry` = 5149;
UPDATE gossip_menu SET entry =2304 WHERE entry =50208;
UPDATE gossip_menu_option SET menu_id =2304 WHERE menu_id =50208;
UPDATE locales_gossip_menu_option SET menu_id =2304 WHERE menu_id =50208;
UPDATE `creature_template` SET `gossip_menu_id` = 3925 WHERE `entry` = 5505;
UPDATE gossip_menu SET entry =3925 WHERE entry =50233;
UPDATE gossip_menu_option SET menu_id =3925 WHERE menu_id =50233;
UPDATE locales_gossip_menu_option SET menu_id =3925 WHERE menu_id =50233;
UPDATE `creature_template` SET `gossip_menu_id` = 4474 WHERE `entry` = 5515;
UPDATE gossip_menu SET entry =4474 WHERE entry =50230;
UPDATE gossip_menu_option SET menu_id =4474 WHERE menu_id =50230;
UPDATE locales_gossip_menu_option SET menu_id =4474 WHERE menu_id =50230;
UPDATE `creature_template` SET `gossip_menu_id` = 3647 WHERE `entry` = 10475;
UPDATE gossip_menu SET entry =3647 WHERE entry =50141;
UPDATE gossip_menu_option SET menu_id =3647 WHERE menu_id =50141;
UPDATE locales_gossip_menu_option SET menu_id =3647 WHERE menu_id =50141;
UPDATE `creature_template` SET `gossip_menu_id` = 3441 WHERE `entry` = 10857;
UPDATE gossip_menu SET entry =3441 WHERE entry =50004;
UPDATE gossip_menu_option SET menu_id =3441 WHERE menu_id =50004;
UPDATE locales_gossip_menu_option SET menu_id =3441 WHERE menu_id =50004;
UPDATE `creature_template` SET `gossip_menu_id` = 3643 WHERE `entry` = 11397;
UPDATE gossip_menu SET entry =3643 WHERE entry =50213;
UPDATE gossip_menu_option SET menu_id =3643 WHERE menu_id =50213;
UPDATE locales_gossip_menu_option SET menu_id =3643 WHERE menu_id =50213;
UPDATE `creature_template` SET `gossip_menu_id` = 1522 WHERE `entry` = 23534;
UPDATE `creature_template` SET `gossip_menu_id` = 2385 WHERE `entry` = 6251;
UPDATE gossip_menu SET entry =2385 WHERE entry =50183;
UPDATE gossip_menu_option SET menu_id =2385 WHERE menu_id =50183;
UPDATE locales_gossip_menu_option SET menu_id =2385 WHERE menu_id =50183;
UPDATE `creature_template` SET `gossip_menu_id` = 3622 WHERE `entry` = 11554;
DELETE FROM `gossip_menu` WHERE `entry` in (50411);
UPDATE gossip_menu_option SET menu_id =3622 WHERE menu_id =50411;
UPDATE locales_gossip_menu_option SET menu_id =3622 WHERE menu_id =50411;
UPDATE `creature_template` SET `gossip_menu_id` = 6465 WHERE `entry` = 12197;
UPDATE gossip_menu SET entry =6465 WHERE entry =50325;
UPDATE gossip_menu_option SET menu_id =6465 WHERE menu_id =50325;
UPDATE locales_gossip_menu_option SET menu_id =6465 WHERE menu_id =50325;
UPDATE `creature_template` SET `gossip_menu_id` = 6463 WHERE `entry` = 14982;
UPDATE gossip_menu SET entry =6463 WHERE entry =50313;
UPDATE gossip_menu_option SET menu_id =6463 WHERE menu_id =50313;
UPDATE locales_gossip_menu_option SET menu_id =6463 WHERE menu_id =50313;
UPDATE `creature_template` SET `gossip_menu_id` = 7495 WHERE `entry` = 17831;
DELETE FROM `gossip_menu` WHERE `entry` in (50012);
UPDATE gossip_menu_option SET menu_id =7495 WHERE menu_id =50012;
UPDATE locales_gossip_menu_option SET menu_id =7495 WHERE menu_id =50012;
UPDATE `creature_template` SET `gossip_menu_id` = 7590 WHERE `entry` = 18019;
UPDATE gossip_menu SET entry =7590 WHERE entry =50010;
UPDATE gossip_menu_option SET menu_id =7590 WHERE menu_id =50010;
UPDATE locales_gossip_menu_option SET menu_id =7590 WHERE menu_id =50010;
UPDATE `creature_template` SET `gossip_menu_id` = 10513 WHERE `entry` = 19173;
UPDATE gossip_menu SET entry =10513 WHERE entry =50262;
UPDATE gossip_menu_option SET menu_id =10513 WHERE menu_id =50262;
UPDATE locales_gossip_menu_option SET menu_id =10513 WHERE menu_id =50262;
UPDATE `creature_template` SET `gossip_menu_id` = 8077 WHERE `entry` = 19908;
UPDATE gossip_menu SET entry =8077 WHERE entry =50315;
UPDATE gossip_menu_option SET menu_id =8077 WHERE menu_id =50315;
UPDATE locales_gossip_menu_option SET menu_id =8077 WHERE menu_id =50315;
UPDATE `creature_template` SET `gossip_menu_id` = 8105 WHERE `entry` = 20374;
DELETE FROM `gossip_menu` WHERE `entry` in (50350);
DELETE FROM `gossip_menu_option` WHERE `menu_id` = 50350;
DELETE FROM `locales_gossip_menu_option` WHERE `menu_id` = 50350;
UPDATE `creature_template` SET `gossip_menu_id` = 8761 WHERE `entry` = 23567;
UPDATE gossip_menu SET entry =8761 WHERE entry =50409;
UPDATE gossip_menu_option SET menu_id =8761 WHERE menu_id =50409;
UPDATE locales_gossip_menu_option SET menu_id =8761 WHERE menu_id =50409;
UPDATE `creature_template` SET `gossip_menu_id` = 9136 WHERE `entry` = 25197;
UPDATE gossip_menu SET entry =9136 WHERE entry =50272;
UPDATE gossip_menu_option SET menu_id =9136 WHERE menu_id =50272;
UPDATE locales_gossip_menu_option SET menu_id =9136 WHERE menu_id =50272;
UPDATE `creature_template` SET `gossip_menu_id` = 9770 WHERE `entry` = 26935;
UPDATE gossip_menu SET entry =9770 WHERE entry =50147;
UPDATE gossip_menu_option SET menu_id =9770 WHERE menu_id =50147;
UPDATE locales_gossip_menu_option SET menu_id =9770 WHERE menu_id =50147;
UPDATE `creature_template` SET `gossip_menu_id` = 9873 WHERE `entry` = 28701;
UPDATE gossip_menu SET entry =9873 WHERE entry =50201;
UPDATE gossip_menu_option SET menu_id =9873 WHERE menu_id =50201;
UPDATE locales_gossip_menu_option SET menu_id =9873 WHERE menu_id =50201;
UPDATE `creature_template` SET `gossip_menu_id` = 9830 WHERE `entry` in (29667,29672,32624,32625);
UPDATE gossip_menu SET entry =9830 WHERE entry =50345;
UPDATE gossip_menu_option SET menu_id =9830 WHERE menu_id =50345;
UPDATE locales_gossip_menu_option SET menu_id =9830 WHERE menu_id =50345;
UPDATE `creature_template` SET `gossip_menu_id` = 9827 WHERE `entry` in (29668,29673,32618,32619);
UPDATE gossip_menu SET entry =9827 WHERE entry =50346;
UPDATE gossip_menu_option SET menu_id =9827 WHERE menu_id =50346;
UPDATE locales_gossip_menu_option SET menu_id =9827 WHERE menu_id =50346;
UPDATE `creature_template` SET `gossip_menu_id` = 9828 WHERE `entry` in (29669,29674,32616,32617);
UPDATE gossip_menu SET entry =9828 WHERE entry =50347;
UPDATE gossip_menu_option SET menu_id =9828 WHERE menu_id =50347;
UPDATE locales_gossip_menu_option SET menu_id =9828 WHERE menu_id =50347;
UPDATE `creature_template` SET `gossip_menu_id` = 9981 WHERE `entry` = 30566;
UPDATE `creature_template` SET `gossip_menu_id` = 9981 WHERE `entry` = 30578;
UPDATE `creature_template` SET `gossip_menu_id` = 9981 WHERE `entry` = 30579;
DELETE FROM `gossip_menu` WHERE `entry` in (50359,50367);
DELETE FROM `gossip_menu_option` WHERE `menu_id` in (50359,50367);
DELETE FROM `locales_gossip_menu_option` WHERE `menu_id` in (50359,50367);
UPDATE  `gossip_menu_option` SET  `action_menu_id` =  '7526' WHERE  `menu_id` =7495 AND  `id` =1;
UPDATE  `gossip_menu` SET  `entry` =  '7526' WHERE  `entry` =50013 AND  `text_id` =9128;
DELETE FROM `gossip_menu` WHERE `entry` = 4474 AND `text_id` = 2820;
UPDATE  `gossip_menu_option` SET  `action_menu_id` =  '50015' WHERE  `menu_id` =2187 AND  `id` =0;
UPDATE `gameobject_template` SET `flags` = 0 WHERE `entry` = 190586;
UPDATE `quest_template` SET `ReqSpellCast1` = 0, `ReqSpellCast2` = 0 WHERE `entry` = 10087;
UPDATE  `creature_ai_scripts` SET  `action2_type` =  '41' WHERE  `id` =2299151;
REPLACE INTO `creature_ai_scripts` VALUES ('3492551', '34925', '6', '0', '100', '0', '0', '0', '0', '0', '11', '66994', '6', '6', '0', '0', '0', '0', '0', '0', '0', '0', 'ytdb');
DELETE FROM `creature_loot_template` WHERE (`entry`=11980) AND (`item`=31664);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (11980, 31664, -100, 0, 1, 1);
# FIX
REPLACE INTO `page_text` (`entry`, `text`, `next_page`) VALUES
(3281, 'The Chieftain''s brother, Stormhoof gathered all his strength and set out to conquer the Storm Peaks from its rightful ruler, the North Wind.', 0);
DELETE FROM `creature` WHERE `id` IN (37547,37519,37215,36971,37227,36961,36969,36950,37116,36978,37540,37488);
UPDATE `creature_template` SET `InhabitType`=7 WHERE `entry` IN (37181,37183,38153,38558,38557);
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`) VALUES
(1966,38558,631,15,1,0,0,4637.27,2786.25,424.639,3.57357,604800,0,0,945000,0,0,0);
UPDATE `creature_model_info` SET `bounding_radius`=0.208,`combat_reach`=1.5,`gender`=1 WHERE `modelid`=30684; -- Archmage Elandra
UPDATE `creature_model_info` SET `bounding_radius`=0.347,`combat_reach`=1.5,`gender`=0 WHERE `modelid`=30638; -- Coliseum Champion
UPDATE `creature_model_info` SET `bounding_radius`=0.465,`combat_reach`=0,`gender`=1 WHERE `modelid`=30867; -- Lady Jaina Proudmoore
UPDATE `creature_model_info` SET `bounding_radius`=0.354,`combat_reach`=2.25,`gender`=1 WHERE `modelid`=30168; -- Soulguard Animator
UPDATE `creature_model_info` SET `bounding_radius`=0.465,`combat_reach`=1.5,`gender`=0 WHERE `modelid`=30270; -- Soulguard Bonecaster
UPDATE `creature_model_info` SET `bounding_radius`=0.459,`combat_reach`=2.25,`gender`=1 WHERE `modelid`=30240; -- Soulguard Adept
UPDATE `creature_model_info` SET `bounding_radius`=0.5,`combat_reach`=1,`gender`=2 WHERE `modelid`=25942; -- Spiteful Apparition (Ambient)
UPDATE `creature_model_info` SET `bounding_radius`=2.5,`combat_reach`=3.75,`gender`=0 WHERE `modelid`=30283; -- Spectral Warden
UPDATE `creature_model_info` SET `bounding_radius`=0.383,`combat_reach`=1.5,`gender`=0 WHERE `modelid`=30862; -- Ebon Blade Commander
UPDATE `creature_model_info` SET `bounding_radius`=0.372,`combat_reach`=1.2,`gender`=1 WHERE `modelid`=28213; -- Lady Sylvanas Windrunner
UPDATE `creature_model_info` SET `bounding_radius`=0.5,`combat_reach`=1,`gender`=2 WHERE `modelid`=11686; -- Soulguard Beam Focus Target

# Conditioms
REPLACE INTO `conditions` VALUES ('13', '0', '26286', '0', '18', '0', '180771', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '26286', '0', '18', '0', '180850', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '26286', '0', '18', '0', '180868', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '26291', '0', '18', '0', '180771', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '26291', '0', '18', '0', '180850', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '26291', '0', '18', '0', '180868', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '26292', '0', '18', '0', '180771', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '26292', '0', '18', '0', '180850', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '26292', '0', '18', '0', '180868', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '26293', '0', '18', '0', '180771', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '26293', '0', '18', '0', '180850', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '26293', '0', '18', '0', '180868', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '26294', '0', '18', '0', '180771', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '26294', '0', '18', '0', '180850', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '26294', '0', '18', '0', '180868', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '26295', '0', '18', '0', '180771', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '26295', '0', '18', '0', '180850', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '26295', '0', '18', '0', '180868', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '26304', '0', '18', '0', '180772', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '26304', '0', '18', '0', '180859', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '26304', '0', '18', '0', '180869', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '26325', '0', '18', '0', '180772', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '26325', '0', '18', '0', '180859', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '26325', '0', '18', '0', '180869', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '26326', '0', '18', '0', '180772', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '26326', '0', '18', '0', '180859', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '26326', '0', '18', '0', '180869', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '26327', '0', '18', '0', '180772', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '26327', '0', '18', '0', '180859', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '26327', '0', '18', '0', '180869', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '26328', '0', '18', '0', '180772', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '26328', '0', '18', '0', '180859', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '26328', '0', '18', '0', '180869', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '26329', '0', '18', '0', '180772', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '26329', '0', '18', '0', '180859', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '26329', '0', '18', '0', '180869', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '26333', '0', '18', '0', '180771', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '26333', '0', '18', '0', '180850', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '26333', '0', '18', '0', '180868', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '26334', '0', '18', '0', '180771', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '26334', '0', '18', '0', '180850', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '26334', '0', '18', '0', '180868', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '26335', '0', '18', '0', '180771', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '26335', '0', '18', '0', '180850', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '26335', '0', '18', '0', '180868', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '26336', '0', '18', '0', '180771', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '26336', '0', '18', '0', '180850', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '26336', '0', '18', '0', '180868', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '26337', '0', '18', '0', '180771', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '26337', '0', '18', '0', '180850', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '26337', '0', '18', '0', '180868', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '26338', '0', '18', '0', '180771', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '26338', '0', '18', '0', '180850', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '26338', '0', '18', '0', '180868', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '26344', '0', '18', '1', '15879', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '26345', '0', '18', '1', '15880', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '26346', '0', '18', '1', '15881', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '26347', '0', '18', '1', '15882', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '26348', '0', '18', '1', '15884', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '26349', '0', '18', '1', '15883', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '26351', '0', '18', '1', '15885', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '26352', '0', '18', '1', '15886', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '26353', '0', '18', '1', '15887', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '26354', '0', '18', '1', '15888', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '26355', '0', '18', '1', '15889', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '26356', '0', '18', '1', '15890', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '26488', '0', '18', '0', '180772', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '26488', '0', '18', '0', '180859', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '26488', '0', '18', '0', '180869', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '26490', '0', '18', '0', '180772', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '26490', '0', '18', '0', '180859', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '26490', '0', '18', '0', '180869', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '26516', '0', '18', '0', '180772', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '26516', '0', '18', '0', '180859', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '26516', '0', '18', '0', '180869', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '26517', '0', '18', '0', '180772', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '26517', '0', '18', '0', '180859', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '26517', '0', '18', '0', '180869', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '26518', '0', '18', '0', '180772', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '26518', '0', '18', '0', '180859', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '26518', '0', '18', '0', '180869', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '26519', '0', '18', '0', '180772', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '26519', '0', '18', '0', '180859', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '26519', '0', '18', '0', '180869', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '26521', '0', '18', '0', '180772', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '26521', '0', '18', '0', '180859', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '26521', '0', '18', '0', '180869', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '31324', '0', '18', '1', '17845', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '47110', '0', '18', '1', '26559', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '47110', '0', '18', '1', '26700', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '47110', '0', '18', '1', '26789', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '47110', '0', '18', '1', '28015', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '50440', '0', '18', '1', '28015', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '51859', '0', '18', '1', '28525', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '51859', '0', '18', '1', '28542', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '51859', '0', '18', '1', '28543', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '51859', '0', '18', '1', '28544', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '50160', '5938', '0', '5', '349', '3', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '50159', '5933', '0', '5', '349', '3', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '50159', '5934', '0', '5', '349', '4', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4515', '5008', '0', '27', '1471', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4516', '5006', '0', '27', '1471', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '5123', '5006', '0', '27', '1471', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '3645', '4442', '0', '27', '1519', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4667', '2193', '0', '27', '256', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4009', '4316', '0', '27', '4', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4009', '4993', '0', '27', '1531', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4484', '538', '0', '27', '128', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4484', '539', '0', '27', '1407', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4502', '4835', '0', '27', '8', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4502', '4837', '0', '27', '1527', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4667', '5722', '0', '27', '1279', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '9781', '13461', '0', '6', '67', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '50160', '5939', '0', '5', '349', '4', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4512', '2', '0', '27', '40', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4512', '3', '0', '27', '10', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4603', '2', '0', '27', '40', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4603', '3', '0', '27', '10', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '2384', '2', '0', '27', '40', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '2384', '3', '0', '27', '10', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4604', '2', '0', '27', '40', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4604', '3', '0', '27', '10', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4653', '2', '0', '27', '40', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4653', '3', '0', '27', '10', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4655', '2', '0', '27', '40', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4655', '3', '0', '27', '10', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4484', '1', '0', '27', '10', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4505', '1', '0', '27', '10', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4508', '1', '0', '27', '10', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4504', '1', '0', '27', '10', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4662', '1', '0', '27', '10', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4009', '1', '0', '27', '10', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9678', '0', '0', '9', '12573', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4504', '2', '0', '27', '40', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4505', '2', '0', '27', '40', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4662', '2', '0', '27', '40', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4009', '2', '0', '27', '40', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4484', '2', '0', '27', '40', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4508', '2', '0', '27', '40', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '1522', '1', '0', '27', '10', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '1522', '2', '0', '27', '40', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7757', '0', '0', '11', '32756', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7759', '0', '0', '11', '32756', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7760', '0', '0', '11', '32756', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4485', '1', '0', '27', '10', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4664', '3', '0', '27', '10', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9691', '1', '0', '27', '10', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9692', '1', '0', '27', '10', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9693', '1', '0', '27', '10', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4651', '2', '0', '27', '40', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4517', '2', '0', '27', '40', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '141', '2', '0', '27', '40', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '410', '2', '0', '27', '40', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '523', '2', '0', '27', '40', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '655', '2', '0', '27', '40', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '1403', '3', '0', '27', '40', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '1503', '2', '0', '27', '40', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '2383', '2', '0', '27', '40', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '3644', '2', '0', '27', '40', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4517', '3', '0', '27', '10', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '3921', '2', '0', '27', '40', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '3926', '2', '0', '27', '40', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4010', '2', '0', '27', '40', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4011', '2', '0', '27', '40', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4012', '2', '0', '27', '40', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4017', '2', '0', '27', '40', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4023', '2', '0', '27', '40', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4103', '2', '0', '27', '40', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4104', '2', '0', '27', '40', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4463', '2', '0', '27', '40', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4469', '2', '0', '27', '40', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4470', '2', '0', '27', '40', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4471', '2', '0', '27', '40', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4485', '3', '0', '27', '40', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4506', '2', '0', '27', '40', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4516', '2', '0', '27', '40', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4524', '2', '0', '27', '40', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4525', '2', '0', '27', '40', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4526', '2', '0', '27', '40', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4527', '2', '0', '27', '40', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4528', '2', '0', '27', '40', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4529', '2', '0', '27', '40', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4530', '2', '0', '27', '40', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4537', '2', '0', '27', '40', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4538', '2', '0', '27', '40', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4539', '2', '0', '27', '40', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4552', '2', '0', '27', '40', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4571', '2', '0', '27', '40', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4576', '2', '0', '27', '40', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4606', '2', '0', '27', '40', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4607', '2', '0', '27', '40', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4609', '2', '0', '27', '40', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4641', '2', '0', '27', '40', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4645', '2', '0', '27', '40', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4647', '2', '0', '27', '40', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4649', '2', '0', '27', '40', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4650', '2', '0', '27', '40', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4657', '2', '0', '27', '40', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4659', '2', '0', '27', '40', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4660', '2', '0', '27', '40', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4661', '2', '0', '27', '40', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4663', '2', '0', '27', '40', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4666', '2', '0', '27', '40', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4667', '2', '0', '27', '40', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4675', '2', '0', '27', '40', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4676', '2', '0', '27', '40', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4677', '2', '0', '27', '40', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4678', '2', '0', '27', '40', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4680', '2', '0', '27', '40', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4683', '2', '0', '27', '40', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4684', '2', '0', '27', '40', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4685', '2', '0', '27', '40', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4691', '2', '0', '27', '40', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4697', '2', '0', '27', '40', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '436', '3', '0', '27', '10', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '410', '3', '0', '27', '10', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '141', '3', '0', '27', '10', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '5123', '2', '0', '27', '40', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7377', '0', '0', '27', '40', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '8111', '2', '0', '27', '40', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '523', '3', '0', '27', '10', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9692', '2', '0', '27', '40', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9691', '2', '0', '27', '40', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4515', '2', '0', '27', '40', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '23127', '1', '0', '27', '40', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4515', '1', '0', '27', '10', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '23127', '3', '0', '27', '10', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4542', '1', '0', '27', '40', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4513', '2', '0', '27', '40', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '50184', '2', '0', '27', '40', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '50185', '2', '0', '27', '40', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4533', '1', '0', '27', '40', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '655', '3', '0', '27', '10', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '50187', '2', '0', '27', '40', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '50188', '2', '0', '27', '40', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4681', '2', '0', '27', '40', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7357', '2', '0', '27', '40', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4541', '1', '0', '27', '40', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '50194', '2', '0', '27', '40', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4502', '2', '0', '27', '40', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4695', '2', '0', '27', '40', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '436', '2', '0', '27', '40', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4551', '1', '0', '27', '40', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9693', '2', '0', '27', '40', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4568', '2', '0', '27', '40', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4568', '3', '0', '27', '10', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '50199', '2', '0', '27', '40', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '50199', '3', '0', '27', '10', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '381', '2', '0', '27', '40', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '381', '3', '0', '27', '10', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7262', '2', '0', '27', '40', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7262', '3', '0', '27', '10', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '50202', '2', '0', '27', '40', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '50202', '3', '0', '27', '10', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7349', '2', '0', '27', '40', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7349', '3', '0', '27', '10', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '50204', '2', '0', '27', '40', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '50204', '3', '0', '27', '10', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '50205', '2', '0', '27', '40', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '50205', '3', '0', '27', '10', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7567', '2', '0', '27', '40', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7567', '3', '0', '27', '10', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7265', '2', '0', '27', '40', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7265', '3', '0', '27', '10', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '2304', '2', '0', '27', '40', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '2304', '3', '0', '27', '10', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7260', '2', '0', '27', '40', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7368', '4', '0', '27', '40', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7368', '5', '0', '27', '10', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '8110', '2', '0', '27', '40', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '8110', '3', '0', '27', '10', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4664', '2', '0', '27', '40', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4570', '2', '0', '27', '40', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4570', '3', '0', '27', '10', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '3643', '2', '0', '27', '40', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '3643', '3', '0', '27', '10', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '50214', '2', '0', '27', '40', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '50214', '3', '0', '27', '10', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '50215', '2', '0', '27', '40', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '50215', '3', '0', '27', '10', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '50216', '2', '0', '27', '40', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '50216', '3', '0', '27', '10', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6647', '2', '0', '27', '40', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6647', '3', '0', '27', '10', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '50218', '2', '0', '27', '40', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '50218', '3', '0', '27', '10', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4665', '2', '0', '27', '40', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4665', '3', '0', '27', '10', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4688', '2', '0', '27', '40', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4688', '3', '0', '27', '10', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '50223', '2', '0', '27', '40', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '50223', '3', '0', '27', '10', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '50224', '2', '0', '27', '40', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '50224', '3', '0', '27', '10', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '50225', '2', '0', '27', '40', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '50225', '3', '0', '27', '10', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9990', '2', '0', '27', '40', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9990', '3', '0', '27', '10', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4540', '1', '0', '27', '40', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4541', '2', '0', '27', '10', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4474', '2', '0', '27', '40', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4474', '3', '0', '27', '10', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '1403', '4', '0', '27', '10', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '1503', '3', '0', '27', '10', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '2383', '3', '0', '27', '10', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '3644', '3', '0', '27', '10', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '3921', '3', '0', '27', '10', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '3926', '3', '0', '27', '10', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4010', '3', '0', '27', '10', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4011', '3', '0', '27', '10', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4012', '3', '0', '27', '10', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4017', '3', '0', '27', '10', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4023', '3', '0', '27', '10', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4103', '3', '0', '27', '10', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4104', '3', '0', '27', '10', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4463', '3', '0', '27', '10', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4469', '3', '0', '27', '10', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4470', '3', '0', '27', '10', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4471', '3', '0', '27', '10', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4506', '3', '0', '27', '10', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4516', '3', '0', '27', '10', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4524', '3', '0', '27', '10', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4525', '3', '0', '27', '10', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4526', '3', '0', '27', '10', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4527', '3', '0', '27', '10', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4528', '3', '0', '27', '10', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4529', '3', '0', '27', '10', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4530', '3', '0', '27', '10', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4537', '3', '0', '27', '10', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4538', '3', '0', '27', '10', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4539', '3', '0', '27', '10', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4551', '3', '0', '27', '10', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4552', '3', '0', '27', '10', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4571', '3', '0', '27', '10', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4576', '3', '0', '27', '10', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4606', '3', '0', '27', '10', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4607', '3', '0', '27', '10', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4609', '3', '0', '27', '10', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4641', '3', '0', '27', '10', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4645', '3', '0', '27', '10', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4647', '3', '0', '27', '10', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4649', '3', '0', '27', '10', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4650', '3', '0', '27', '10', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4657', '3', '0', '27', '10', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4659', '3', '0', '27', '10', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4660', '3', '0', '27', '10', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4661', '3', '0', '27', '10', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4663', '3', '0', '27', '10', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4666', '3', '0', '27', '10', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4667', '3', '0', '27', '10', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4675', '3', '0', '27', '10', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4676', '3', '0', '27', '10', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4677', '3', '0', '27', '10', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4678', '3', '0', '27', '10', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4680', '3', '0', '27', '10', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4683', '3', '0', '27', '10', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4684', '3', '0', '27', '10', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4685', '3', '0', '27', '10', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4691', '3', '0', '27', '10', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4697', '3', '0', '27', '10', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '5123', '3', '0', '27', '10', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7357', '3', '0', '27', '10', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7377', '4', '0', '27', '10', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '8111', '3', '0', '27', '10', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4542', '2', '0', '27', '10', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '50184', '3', '0', '27', '10', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '50185', '3', '0', '27', '10', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4533', '3', '0', '27', '10', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '50188', '3', '0', '27', '10', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4681', '3', '0', '27', '10', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '50194', '3', '0', '27', '10', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4502', '3', '0', '27', '10', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4695', '3', '0', '27', '10', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '3925', '2', '0', '27', '40', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '3925', '3', '0', '27', '10', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7368', '1', '0', '9', '9454', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7368', '2', '0', '9', '10324', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7260', '3', '0', '27', '10', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7467', '2', '0', '27', '40', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7467', '3', '0', '27', '10', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7522', '2', '0', '27', '40', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7522', '3', '0', '27', '10', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7264', '2', '0', '27', '40', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7264', '3', '0', '27', '10', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7263', '1', '0', '27', '10', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7263', '2', '0', '27', '40', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6648', '2', '0', '27', '40', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6648', '3', '0', '27', '10', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6649', '2', '0', '27', '40', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6649', '3', '0', '27', '10', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6650', '2', '0', '27', '40', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6650', '3', '0', '27', '10', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6652', '2', '0', '27', '40', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6652', '3', '0', '27', '10', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7566', '1', '0', '27', '40', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7566', '2', '0', '27', '10', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4687', '2', '0', '27', '40', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4687', '3', '0', '27', '10', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4605', '2', '0', '27', '40', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4605', '3', '0', '27', '10', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6628', '2', '0', '27', '40', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6628', '3', '0', '27', '10', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7438', '2', '0', '27', '40', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7438', '3', '0', '27', '10', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4682', '2', '0', '27', '40', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4682', '3', '0', '27', '10', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4518', '2', '0', '27', '40', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4518', '3', '0', '27', '10', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4520', '2', '0', '27', '40', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4520', '3', '0', '27', '10', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4519', '2', '0', '27', '40', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4519', '3', '0', '27', '10', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4654', '2', '0', '27', '40', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4654', '3', '0', '27', '10', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4521', '2', '0', '27', '40', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4521', '3', '0', '27', '10', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4523', '1', '0', '27', '40', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4523', '2', '0', '27', '10', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4679', '2', '0', '27', '40', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4679', '3', '0', '27', '10', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4686', '2', '0', '27', '40', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4686', '3', '0', '27', '10', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '63', '2', '0', '27', '40', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '63', '3', '0', '27', '10', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4656', '1', '0', '27', '40', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4656', '2', '0', '27', '10', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '3645', '2', '0', '27', '40', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '3645', '3', '0', '27', '10', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '85', '2', '0', '27', '40', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '85', '3', '0', '27', '10', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4651', '3', '0', '27', '10', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4550', '1', '0', '27', '40', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4550', '2', '0', '27', '10', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4008', '2', '0', '27', '40', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4008', '3', '0', '27', '10', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4690', '2', '0', '27', '40', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4690', '3', '0', '27', '10', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4696', '2', '0', '27', '40', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4696', '3', '0', '27', '10', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4575', '1', '0', '27', '40', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4575', '2', '0', '27', '10', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4578', '1', '0', '27', '40', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4578', '2', '0', '27', '10', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4579', '2', '0', '27', '40', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4579', '3', '0', '27', '10', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4581', '1', '0', '27', '40', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4581', '2', '0', '27', '10', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4801', '1', '0', '27', '40', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4801', '2', '0', '27', '10', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4573', '1', '0', '27', '40', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4573', '2', '0', '27', '10', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4572', '1', '0', '27', '40', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4572', '2', '0', '27', '10', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7366', '2', '0', '27', '40', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7366', '3', '0', '27', '10', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4574', '2', '0', '27', '40', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4574', '3', '0', '27', '10', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4540', '2', '0', '27', '10', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4548', '2', '0', '27', '10', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4548', '3', '0', '27', '40', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4547', '2', '0', '27', '10', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4547', '3', '0', '27', '40', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4546', '1', '0', '27', '10', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4546', '2', '0', '27', '40', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '50187', '3', '0', '27', '10', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4511', '2', '0', '27', '10', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4511', '3', '0', '27', '40', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4509', '1', '0', '27', '10', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4509', '2', '0', '27', '40', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4644', '2', '0', '27', '40', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4644', '3', '0', '27', '10', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4531', '2', '0', '27', '40', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4531', '3', '0', '27', '10', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4534', '2', '0', '27', '40', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4534', '3', '0', '27', '10', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4512', '2', '0', '25', '63680', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4512', '3', '0', '14', '0', '8', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4603', '2', '0', '25', '63680', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4603', '3', '0', '14', '0', '256', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '2384', '2', '0', '25', '63680', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '2384', '3', '0', '14', '0', '256', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4604', '2', '0', '25', '63680', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4604', '3', '0', '14', '0', '256', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4653', '2', '0', '25', '63680', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4653', '3', '0', '14', '0', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4655', '2', '0', '25', '63680', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4655', '3', '0', '14', '0', '256', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4484', '1', '0', '14', '0', '128', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4505', '1', '0', '14', '0', '256', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4508', '1', '0', '14', '0', '1024', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4504', '1', '0', '14', '0', '256', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4662', '1', '0', '14', '0', '2', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4009', '1', '0', '14', '0', '4', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9678', '0', '0', '2', '40364', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4662', '2', '0', '14', '0', '2', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4009', '2', '0', '14', '0', '4', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4484', '2', '0', '14', '0', '128', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4508', '2', '0', '14', '0', '1024', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '1522', '1', '0', '14', '0', '256', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '1522', '2', '0', '25', '63680', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4485', '1', '0', '14', '0', '128', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4664', '3', '0', '14', '0', '2', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9691', '1', '0', '14', '0', '32', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9692', '1', '0', '14', '0', '32', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9693', '1', '0', '14', '0', '32', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4651', '2', '0', '25', '63680', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4517', '2', '0', '25', '63680', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '141', '2', '0', '25', '63680', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '410', '2', '0', '25', '63680', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '523', '2', '0', '25', '63680', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '655', '2', '0', '25', '63680', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '1403', '3', '0', '25', '63680', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '1503', '2', '0', '25', '63680', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '2383', '2', '0', '25', '63680', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '3644', '2', '0', '25', '63680', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4517', '3', '0', '14', '0', '128', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '3921', '2', '0', '25', '63680', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '3926', '2', '0', '25', '63680', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4010', '2', '0', '25', '63680', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4011', '2', '0', '25', '63680', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4012', '2', '0', '25', '63680', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4017', '2', '0', '25', '63680', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4023', '2', '0', '25', '63680', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4103', '2', '0', '25', '63680', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4104', '2', '0', '25', '63680', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4463', '2', '0', '25', '63680', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4469', '2', '0', '25', '63680', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4470', '2', '0', '25', '63680', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4471', '2', '0', '25', '63680', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4485', '3', '0', '25', '63680', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4506', '2', '0', '25', '63680', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4516', '2', '0', '25', '63680', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4524', '2', '0', '25', '63680', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4525', '2', '0', '25', '63680', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4526', '2', '0', '25', '63680', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4527', '2', '0', '25', '63680', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4528', '2', '0', '25', '63680', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4529', '2', '0', '25', '63680', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4530', '2', '0', '25', '63680', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4537', '2', '0', '25', '63680', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4538', '2', '0', '25', '63680', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4539', '2', '0', '25', '63680', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4552', '2', '0', '25', '63680', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4571', '2', '0', '25', '63680', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4576', '2', '0', '25', '63680', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4606', '2', '0', '25', '63680', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4607', '2', '0', '25', '63680', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4609', '2', '0', '25', '63680', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4641', '2', '0', '25', '63680', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4645', '2', '0', '25', '63680', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4647', '2', '0', '25', '63680', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4649', '2', '0', '25', '63680', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4650', '2', '0', '25', '63680', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4657', '2', '0', '25', '63680', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4659', '2', '0', '25', '63680', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4660', '2', '0', '25', '63680', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4661', '2', '0', '25', '63680', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4663', '2', '0', '25', '63680', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4666', '2', '0', '25', '63680', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4667', '2', '0', '25', '63680', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4675', '2', '0', '25', '63680', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4676', '2', '0', '25', '63680', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4677', '2', '0', '25', '63680', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4678', '2', '0', '25', '63680', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4680', '2', '0', '25', '63680', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4683', '2', '0', '25', '63680', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4684', '2', '0', '25', '63680', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4685', '2', '0', '25', '63680', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4691', '2', '0', '25', '63680', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4697', '2', '0', '25', '63680', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '436', '3', '0', '14', '0', '8', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '410', '3', '0', '14', '0', '8', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '141', '3', '0', '14', '0', '8', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '5123', '2', '0', '25', '63680', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7377', '0', '0', '25', '63680', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '8111', '2', '0', '25', '63680', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '523', '3', '0', '14', '0', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9692', '2', '0', '25', '63680', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9691', '2', '0', '25', '63680', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4515', '2', '0', '25', '63680', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '23127', '1', '0', '25', '63680', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4515', '1', '0', '14', '0', '64', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '23127', '3', '0', '14', '0', '64', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4542', '1', '0', '25', '63680', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4513', '2', '0', '25', '63680', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '50184', '2', '0', '25', '63680', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '50185', '2', '0', '25', '63680', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4533', '1', '0', '25', '63680', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '655', '3', '0', '14', '0', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '50187', '2', '0', '25', '63680', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '50188', '2', '0', '25', '63680', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4681', '2', '0', '25', '63680', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7357', '2', '0', '25', '63680', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4541', '1', '0', '25', '63680', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '50194', '2', '0', '25', '63680', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4502', '2', '0', '25', '63680', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4695', '2', '0', '25', '63680', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '436', '2', '0', '25', '63680', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4551', '1', '0', '25', '63680', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9693', '2', '0', '25', '63680', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4568', '2', '0', '25', '63680', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4568', '3', '0', '14', '0', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '50199', '2', '0', '25', '63680', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '50199', '3', '0', '14', '0', '8', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '381', '2', '0', '25', '63680', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '381', '3', '0', '14', '0', '8', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7262', '2', '0', '25', '63680', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7262', '3', '0', '14', '0', '4', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '50202', '2', '0', '25', '63680', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '50202', '3', '0', '14', '0', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7349', '2', '0', '25', '63680', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7349', '3', '0', '14', '0', '16', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '50204', '2', '0', '25', '63680', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '50204', '3', '0', '14', '0', '8', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '50205', '2', '0', '25', '63680', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '50205', '3', '0', '14', '0', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7567', '2', '0', '25', '63680', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7567', '3', '0', '14', '0', '1024', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7265', '2', '0', '25', '63680', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7265', '3', '0', '14', '0', '16', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '2304', '2', '0', '25', '63680', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '2304', '3', '0', '14', '0', '2', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7260', '2', '0', '25', '63680', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7368', '4', '0', '25', '63680', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7368', '5', '0', '14', '0', '4', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '8110', '2', '0', '25', '63680', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '8110', '3', '0', '14', '0', '64', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4664', '2', '0', '25', '63680', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4570', '2', '0', '25', '63680', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4570', '3', '0', '14', '0', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '3643', '2', '0', '25', '63680', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '3643', '3', '0', '14', '0', '16', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '50214', '2', '0', '25', '63680', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '50214', '3', '0', '14', '0', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '50215', '2', '0', '25', '63680', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '50215', '3', '0', '14', '0', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '50216', '2', '0', '25', '63680', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '50216', '3', '0', '14', '0', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6647', '2', '0', '25', '63680', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6647', '3', '0', '14', '0', '2', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '50218', '2', '0', '25', '63680', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '50218', '3', '0', '14', '0', '8', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4665', '2', '0', '25', '63680', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4665', '3', '0', '14', '0', '16', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4688', '2', '0', '25', '63680', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4688', '3', '0', '14', '0', '1024', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '50223', '2', '0', '25', '63680', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '50223', '3', '0', '14', '0', '1024', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '50224', '2', '0', '25', '63680', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '50224', '3', '0', '14', '0', '4', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '50225', '2', '0', '25', '63680', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '50225', '3', '0', '14', '0', '4', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9990', '2', '0', '25', '63680', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9990', '3', '0', '14', '0', '128', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4540', '1', '0', '25', '63680', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4541', '2', '0', '14', '0', '8', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4474', '2', '0', '25', '63680', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4474', '3', '0', '14', '0', '4', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '1403', '4', '0', '14', '0', '1024', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '1503', '3', '0', '14', '0', '256', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '2383', '3', '0', '14', '0', '256', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '3644', '3', '0', '14', '0', '16', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '3921', '3', '0', '14', '0', '1024', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '3926', '3', '0', '14', '0', '1024', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4010', '3', '0', '14', '0', '4', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4011', '3', '0', '14', '0', '4', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4012', '3', '0', '14', '0', '4', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4017', '3', '0', '14', '0', '4', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4023', '3', '0', '14', '0', '4', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4103', '3', '0', '14', '0', '64', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4104', '3', '0', '14', '0', '64', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4463', '3', '0', '14', '0', '16', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4469', '3', '0', '14', '0', '2', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4470', '3', '0', '14', '0', '2', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4471', '3', '0', '14', '0', '2', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4506', '3', '0', '14', '0', '4', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4516', '3', '0', '14', '0', '64', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4524', '3', '0', '14', '0', '4', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4525', '3', '0', '14', '0', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4526', '3', '0', '14', '0', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4527', '3', '0', '14', '0', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4528', '3', '0', '14', '0', '64', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4529', '3', '0', '14', '0', '64', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4530', '3', '0', '14', '0', '64', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4537', '3', '0', '14', '0', '128', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4538', '3', '0', '14', '0', '128', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4539', '3', '0', '14', '0', '128', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4551', '3', '0', '14', '0', '4', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4552', '3', '0', '14', '0', '128', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4571', '3', '0', '14', '0', '1024', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4576', '3', '0', '14', '0', '8', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4606', '3', '0', '14', '0', '1024', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4607', '3', '0', '14', '0', '1024', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4609', '3', '0', '14', '0', '256', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4641', '3', '0', '14', '0', '256', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4645', '3', '0', '14', '0', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4647', '3', '0', '14', '0', '4', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4649', '3', '0', '14', '0', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4650', '3', '0', '14', '0', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4657', '3', '0', '14', '0', '4', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4659', '3', '0', '14', '0', '8', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4660', '3', '0', '14', '0', '128', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4661', '3', '0', '14', '0', '128', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4663', '3', '0', '14', '0', '2', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4666', '3', '0', '14', '0', '16', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4667', '3', '0', '14', '0', '256', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4675', '3', '0', '14', '0', '4', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4676', '3', '0', '14', '0', '8', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4677', '3', '0', '14', '0', '2', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4678', '3', '0', '14', '0', '2', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4680', '3', '0', '14', '0', '16', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4683', '3', '0', '14', '0', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4684', '3', '0', '14', '0', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4685', '3', '0', '14', '0', '128', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4691', '3', '0', '14', '0', '16', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4697', '3', '0', '14', '0', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '5123', '3', '0', '14', '0', '64', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7357', '3', '0', '14', '0', '64', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7377', '4', '0', '14', '0', '64', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '8111', '3', '0', '14', '0', '2', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4542', '2', '0', '14', '0', '8', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '50184', '3', '0', '14', '0', '2', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '50185', '3', '0', '14', '0', '16', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4533', '3', '0', '14', '0', '16', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '50188', '3', '0', '14', '0', '64', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4681', '3', '0', '14', '0', '256', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '50194', '3', '0', '14', '0', '16', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4502', '3', '0', '14', '0', '8', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4695', '3', '0', '14', '0', '4', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '3925', '2', '0', '25', '63680', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '3925', '3', '0', '14', '0', '1024', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7260', '3', '0', '14', '0', '2', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7467', '2', '0', '25', '63680', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7467', '3', '0', '14', '0', '64', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7522', '2', '0', '25', '63680', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7522', '3', '0', '14', '0', '64', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7264', '2', '0', '25', '63680', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7264', '3', '0', '14', '0', '128', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7263', '1', '0', '14', '0', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7263', '2', '0', '25', '63680', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6648', '2', '0', '25', '63680', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6648', '3', '0', '14', '0', '128', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6649', '2', '0', '25', '63680', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6649', '3', '0', '14', '0', '16', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6650', '2', '0', '25', '63680', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6650', '3', '0', '14', '0', '8', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6652', '2', '0', '25', '63680', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6652', '3', '0', '14', '0', '4', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7566', '1', '0', '25', '63680', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7566', '2', '0', '14', '0', '256', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4687', '2', '0', '25', '63680', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4687', '3', '0', '14', '0', '1024', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4605', '2', '0', '25', '63680', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4605', '3', '0', '14', '0', '1024', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6628', '2', '0', '25', '63680', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6628', '3', '0', '14', '0', '256', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7438', '2', '0', '25', '63680', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7438', '3', '0', '14', '0', '16', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4682', '2', '0', '25', '63680', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4682', '3', '0', '14', '0', '256', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4518', '2', '0', '25', '63680', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4518', '3', '0', '14', '0', '128', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4520', '2', '0', '25', '63680', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4520', '3', '0', '14', '0', '128', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4519', '2', '0', '25', '63680', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4519', '3', '0', '14', '0', '128', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4654', '2', '0', '25', '63680', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4654', '3', '0', '14', '0', '128', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4521', '2', '0', '25', '63680', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4521', '3', '0', '14', '0', '16', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4523', '1', '0', '25', '63680', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4523', '2', '0', '14', '0', '16', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4679', '2', '0', '25', '63680', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4679', '3', '0', '14', '0', '16', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4686', '2', '0', '25', '63680', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4686', '3', '0', '14', '0', '128', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '63', '2', '0', '25', '63680', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '63', '3', '0', '14', '0', '128', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4656', '1', '0', '25', '63680', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4656', '2', '0', '14', '0', '256', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '3645', '2', '0', '25', '63680', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '3645', '3', '0', '14', '0', '16', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '85', '2', '0', '25', '63680', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '85', '3', '0', '14', '0', '8', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4651', '3', '0', '14', '0', '128', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4550', '1', '0', '25', '63680', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4550', '2', '0', '14', '0', '4', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4008', '2', '0', '25', '63680', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4008', '3', '0', '14', '0', '4', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4690', '2', '0', '25', '63680', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4690', '3', '0', '14', '0', '8', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4696', '2', '0', '25', '63680', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4696', '3', '0', '14', '0', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4575', '1', '0', '25', '63680', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4575', '2', '0', '14', '0', '8', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4578', '1', '0', '25', '63680', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4578', '2', '0', '14', '0', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4579', '2', '0', '25', '63680', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4579', '3', '0', '14', '0', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4581', '1', '0', '25', '63680', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4581', '2', '0', '14', '0', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4801', '1', '0', '25', '63680', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4801', '2', '0', '14', '0', '16', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4573', '1', '0', '25', '63680', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4573', '2', '0', '14', '0', '16', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4572', '1', '0', '25', '63680', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4572', '2', '0', '14', '0', '16', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7366', '2', '0', '25', '63680', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7366', '3', '0', '14', '0', '128', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4574', '2', '0', '25', '63680', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4574', '3', '0', '14', '0', '16', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4540', '2', '0', '14', '0', '8', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4548', '2', '0', '14', '0', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4548', '3', '0', '25', '63680', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4547', '2', '0', '14', '0', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4547', '3', '0', '25', '63680', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4546', '1', '0', '14', '0', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4546', '2', '0', '25', '63680', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '50187', '3', '0', '14', '0', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4511', '2', '0', '14', '0', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4511', '3', '0', '25', '63680', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4509', '1', '0', '14', '0', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4509', '2', '0', '25', '63680', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4644', '2', '0', '25', '63680', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4644', '3', '0', '14', '0', '1024', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4531', '2', '0', '25', '63680', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4531', '3', '0', '14', '0', '16', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4534', '2', '0', '25', '63680', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4534', '3', '0', '14', '0', '128', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4512', '2', '0', '14', '0', '8', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4603', '2', '0', '14', '0', '256', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '2384', '2', '0', '14', '0', '256', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4604', '2', '0', '14', '0', '256', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4653', '2', '0', '14', '0', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4655', '2', '0', '14', '0', '256', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4504', '2', '0', '25', '63680', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4505', '2', '0', '25', '63680', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4662', '2', '0', '25', '63680', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4009', '2', '0', '25', '63680', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4484', '2', '0', '25', '63680', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4508', '2', '0', '25', '63680', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '1522', '2', '0', '14', '0', '256', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4651', '2', '0', '14', '0', '128', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4517', '2', '0', '14', '0', '128', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '141', '2', '0', '14', '0', '8', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '410', '2', '0', '14', '0', '8', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '523', '2', '0', '14', '0', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '655', '2', '0', '14', '0', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '1403', '3', '0', '14', '0', '1024', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '1503', '2', '0', '14', '0', '256', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '2383', '2', '0', '14', '0', '256', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '3644', '2', '0', '14', '0', '16', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '3921', '2', '0', '14', '0', '1024', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '3926', '2', '0', '14', '0', '1024', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4010', '2', '0', '14', '0', '4', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4011', '2', '0', '14', '0', '4', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4012', '2', '0', '14', '0', '4', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4017', '2', '0', '14', '0', '4', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4023', '2', '0', '14', '0', '4', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4103', '2', '0', '14', '0', '64', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4104', '2', '0', '14', '0', '64', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4463', '2', '0', '14', '0', '16', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4469', '2', '0', '14', '0', '2', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4470', '2', '0', '14', '0', '2', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4471', '2', '0', '14', '0', '2', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4485', '3', '0', '14', '0', '128', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4506', '2', '0', '14', '0', '4', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4516', '2', '0', '14', '0', '64', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4524', '2', '0', '14', '0', '4', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4525', '2', '0', '14', '0', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4526', '2', '0', '14', '0', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4527', '2', '0', '14', '0', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4528', '2', '0', '14', '0', '64', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4529', '2', '0', '14', '0', '64', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4530', '2', '0', '14', '0', '64', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4537', '2', '0', '14', '0', '128', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4538', '2', '0', '14', '0', '128', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4539', '2', '0', '14', '0', '128', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4552', '2', '0', '14', '0', '128', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4571', '2', '0', '14', '0', '1024', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4576', '2', '0', '14', '0', '8', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4606', '2', '0', '14', '0', '1024', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4607', '2', '0', '14', '0', '1024', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4609', '2', '0', '14', '0', '256', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4641', '2', '0', '14', '0', '256', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4645', '2', '0', '14', '0', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4647', '2', '0', '14', '0', '4', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4649', '2', '0', '14', '0', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4650', '2', '0', '14', '0', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4657', '2', '0', '14', '0', '4', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4659', '2', '0', '14', '0', '8', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4660', '2', '0', '14', '0', '128', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4661', '2', '0', '14', '0', '128', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4663', '2', '0', '14', '0', '2', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4666', '2', '0', '14', '0', '16', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4667', '2', '0', '14', '0', '256', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4675', '2', '0', '14', '0', '4', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4676', '2', '0', '14', '0', '8', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4677', '2', '0', '14', '0', '2', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4678', '2', '0', '14', '0', '2', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4680', '2', '0', '14', '0', '16', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4683', '2', '0', '14', '0', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4684', '2', '0', '14', '0', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4685', '2', '0', '14', '0', '128', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4691', '2', '0', '14', '0', '16', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4697', '2', '0', '14', '0', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '5123', '2', '0', '14', '0', '64', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7377', '0', '0', '14', '0', '64', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '8111', '2', '0', '14', '0', '2', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9692', '2', '0', '14', '0', '32', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9691', '2', '0', '14', '0', '32', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4515', '2', '0', '14', '0', '64', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '23127', '1', '0', '14', '0', '64', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4542', '1', '0', '14', '0', '8', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4513', '2', '0', '14', '0', '8', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '50184', '2', '0', '14', '0', '2', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '50185', '2', '0', '14', '0', '16', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4533', '1', '0', '14', '0', '16', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '50187', '2', '0', '14', '0', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '50188', '2', '0', '14', '0', '64', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4681', '2', '0', '14', '0', '256', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7357', '2', '0', '14', '0', '64', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4541', '1', '0', '14', '0', '8', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '50194', '2', '0', '14', '0', '16', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4502', '2', '0', '14', '0', '8', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4695', '2', '0', '14', '0', '4', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '436', '2', '0', '14', '0', '8', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4551', '1', '0', '14', '0', '4', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9693', '2', '0', '14', '0', '32', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4568', '2', '0', '14', '0', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '50199', '2', '0', '14', '0', '8', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '381', '2', '0', '14', '0', '8', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7262', '2', '0', '14', '0', '4', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '50202', '2', '0', '14', '0', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7349', '2', '0', '14', '0', '16', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '50204', '2', '0', '14', '0', '8', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '50205', '2', '0', '14', '0', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7567', '2', '0', '14', '0', '1024', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7265', '2', '0', '14', '0', '16', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '2304', '2', '0', '14', '0', '2', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7260', '2', '0', '14', '0', '2', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7368', '4', '0', '14', '0', '4', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '8110', '2', '0', '14', '0', '64', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4664', '2', '0', '14', '0', '2', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4570', '2', '0', '14', '0', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '3643', '2', '0', '14', '0', '16', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '50214', '2', '0', '14', '0', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '50215', '2', '0', '14', '0', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '50216', '2', '0', '14', '0', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6647', '2', '0', '14', '0', '2', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '50218', '2', '0', '14', '0', '8', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4665', '2', '0', '14', '0', '16', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4688', '2', '0', '14', '0', '1024', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '50223', '2', '0', '14', '0', '1024', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '50224', '2', '0', '14', '0', '4', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '50225', '2', '0', '14', '0', '4', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9990', '2', '0', '14', '0', '128', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4540', '1', '0', '14', '0', '8', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4474', '2', '0', '14', '0', '4', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '3925', '2', '0', '14', '0', '1024', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7467', '2', '0', '14', '0', '64', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7522', '2', '0', '14', '0', '64', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7264', '2', '0', '14', '0', '128', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7263', '2', '0', '14', '0', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6648', '2', '0', '14', '0', '128', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6649', '2', '0', '14', '0', '16', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6650', '2', '0', '14', '0', '8', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6652', '2', '0', '14', '0', '4', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7566', '1', '0', '14', '0', '256', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4687', '2', '0', '14', '0', '1024', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4605', '2', '0', '14', '0', '1024', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6628', '2', '0', '14', '0', '256', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7438', '2', '0', '14', '0', '16', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4682', '2', '0', '14', '0', '256', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4518', '2', '0', '14', '0', '128', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4520', '2', '0', '14', '0', '128', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4519', '2', '0', '14', '0', '128', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4654', '2', '0', '14', '0', '128', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4521', '2', '0', '14', '0', '16', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4523', '1', '0', '14', '0', '16', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4679', '2', '0', '14', '0', '16', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4686', '2', '0', '14', '0', '128', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '63', '2', '0', '14', '0', '128', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4656', '1', '0', '14', '0', '256', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '3645', '2', '0', '14', '0', '16', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '85', '2', '0', '14', '0', '8', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4550', '1', '0', '14', '0', '4', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4008', '2', '0', '14', '0', '4', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4690', '2', '0', '14', '0', '8', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4696', '2', '0', '14', '0', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4575', '1', '0', '14', '0', '8', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4578', '1', '0', '14', '0', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4579', '2', '0', '14', '0', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4581', '1', '0', '14', '0', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4801', '1', '0', '14', '0', '16', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4573', '1', '0', '14', '0', '16', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4572', '1', '0', '14', '0', '16', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7366', '2', '0', '14', '0', '128', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4574', '2', '0', '14', '0', '16', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4548', '3', '0', '14', '0', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4547', '3', '0', '14', '0', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4546', '2', '0', '14', '0', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4511', '3', '0', '14', '0', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4509', '2', '0', '14', '0', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4644', '2', '0', '14', '0', '1024', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4531', '2', '0', '14', '0', '16', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4534', '2', '0', '14', '0', '128', '0', '0', '', null);
REPLACE INTO `gossip_menu` VALUES ('561', '1080');
REPLACE INTO `gossip_menu` VALUES ('562', '1079');
REPLACE INTO `gossip_menu` VALUES ('563', '1081');
REPLACE INTO `gossip_menu` VALUES ('564', '1082');
REPLACE INTO `gossip_menu` VALUES ('565', '1083');
REPLACE INTO `gossip_menu` VALUES ('566', '1084');
REPLACE INTO `gossip_menu` VALUES ('567', '1085');
REPLACE INTO `gossip_menu` VALUES ('568', '1086');
REPLACE INTO `gossip_menu` VALUES ('569', '1087');
REPLACE INTO `gossip_menu` VALUES ('570', '1088');
REPLACE INTO `gossip_menu` VALUES ('571', '1089');
REPLACE INTO `gossip_menu` VALUES ('572', '1090');
REPLACE INTO `gossip_menu` VALUES ('573', '1091');
REPLACE INTO `gossip_menu` VALUES ('574', '1092');
REPLACE INTO `gossip_menu` VALUES ('575', '1093');
REPLACE INTO `gossip_menu` VALUES ('576', '1094');
REPLACE INTO `gossip_menu` VALUES ('581', '1262');
REPLACE INTO `gossip_menu` VALUES ('645', '1206');
REPLACE INTO `gossip_menu` VALUES ('645', '6959');
REPLACE INTO `gossip_menu` VALUES ('646', '1207');
REPLACE INTO `gossip_menu` VALUES ('646', '7016');
REPLACE INTO `gossip_menu` VALUES ('646', '7017');
REPLACE INTO `gossip_menu` VALUES ('660', '1225');
REPLACE INTO `gossip_menu` VALUES ('660', '1226');
REPLACE INTO `gossip_menu` VALUES ('689', '1239');
REPLACE INTO `gossip_menu` VALUES ('693', '1243');
REPLACE INTO `gossip_menu` VALUES ('698', '1249');
REPLACE INTO `gossip_menu` VALUES ('940', '1514');
REPLACE INTO `gossip_menu` VALUES ('941', '1516');
REPLACE INTO `gossip_menu` VALUES ('941', '1517');
REPLACE INTO `gossip_menu` VALUES ('1100', '1713');
REPLACE INTO `gossip_menu` VALUES ('1161', '1793');
REPLACE INTO `gossip_menu` VALUES ('1162', '1794');
REPLACE INTO `gossip_menu` VALUES ('1201', '1833');
REPLACE INTO `gossip_menu` VALUES ('1281', '1916');
REPLACE INTO `gossip_menu` VALUES ('1285', '1920');
REPLACE INTO `gossip_menu` VALUES ('1286', '1922');
REPLACE INTO `gossip_menu` VALUES ('1287', '1921');
REPLACE INTO `gossip_menu` VALUES ('1301', '1933');
REPLACE INTO `gossip_menu` VALUES ('1301', '1934');
REPLACE INTO `gossip_menu` VALUES ('1362', '1994');
REPLACE INTO `gossip_menu` VALUES ('1421', '2053');
REPLACE INTO `gossip_menu` VALUES ('1422', '2054');
REPLACE INTO `gossip_menu` VALUES ('1443', '2113');
REPLACE INTO `gossip_menu` VALUES ('1501', '2173');
REPLACE INTO `gossip_menu` VALUES ('1522', '2193');
REPLACE INTO `gossip_menu` VALUES ('1622', '2276');
REPLACE INTO `gossip_menu` VALUES ('1641', '2293');
REPLACE INTO `gossip_menu` VALUES ('1970', '2643');
REPLACE INTO `gossip_menu` VALUES ('2061', '2713');
REPLACE INTO `gossip_menu` VALUES ('2063', '2726');
REPLACE INTO `gossip_menu` VALUES ('2063', '2809');
REPLACE INTO `gossip_menu` VALUES ('2208', '2844');
REPLACE INTO `gossip_menu` VALUES ('2208', '2848');
REPLACE INTO `gossip_menu` VALUES ('2464', '3156');
REPLACE INTO `gossip_menu` VALUES ('2601', '3293');
REPLACE INTO `gossip_menu` VALUES ('2601', '3294');
REPLACE INTO `gossip_menu` VALUES ('2602', '3296');
REPLACE INTO `gossip_menu` VALUES ('2603', '3298');
REPLACE INTO `gossip_menu` VALUES ('2603', '3299');
REPLACE INTO `gossip_menu` VALUES ('2603', '3594');
REPLACE INTO `gossip_menu` VALUES ('2784', '3488');
REPLACE INTO `gossip_menu` VALUES ('2802', '3496');
REPLACE INTO `gossip_menu` VALUES ('2916', '3590');
REPLACE INTO `gossip_menu` VALUES ('2921', '3635');
REPLACE INTO `gossip_menu` VALUES ('2961', '3668');
REPLACE INTO `gossip_menu` VALUES ('3043', '3755');
REPLACE INTO `gossip_menu` VALUES ('3043', '3756');
REPLACE INTO `gossip_menu` VALUES ('3043', '3757');
REPLACE INTO `gossip_menu` VALUES ('3063', '3797');
REPLACE INTO `gossip_menu` VALUES ('3064', '3800');
REPLACE INTO `gossip_menu` VALUES ('3065', '3799');
REPLACE INTO `gossip_menu` VALUES ('3066', '3798');
REPLACE INTO `gossip_menu` VALUES ('3072', '3805');
REPLACE INTO `gossip_menu` VALUES ('3074', '3807');
REPLACE INTO `gossip_menu` VALUES ('3128', '3864');
REPLACE INTO `gossip_menu` VALUES ('3129', '3865');
REPLACE INTO `gossip_menu` VALUES ('3129', '4113');
REPLACE INTO `gossip_menu` VALUES ('3142', '3874');
REPLACE INTO `gossip_menu` VALUES ('3362', '4118');
REPLACE INTO `gossip_menu` VALUES ('3363', '4119');
REPLACE INTO `gossip_menu` VALUES ('3364', '4129');
REPLACE INTO `gossip_menu` VALUES ('3365', '4128');
REPLACE INTO `gossip_menu` VALUES ('3366', '4127');
REPLACE INTO `gossip_menu` VALUES ('3367', '4126');
REPLACE INTO `gossip_menu` VALUES ('3368', '4125');
REPLACE INTO `gossip_menu` VALUES ('3369', '4124');
REPLACE INTO `gossip_menu` VALUES ('3370', '4123');
REPLACE INTO `gossip_menu` VALUES ('3371', '4122');
REPLACE INTO `gossip_menu` VALUES ('3372', '4130');
REPLACE INTO `gossip_menu` VALUES ('3602', '4354');
REPLACE INTO `gossip_menu` VALUES ('3645', '4442');
REPLACE INTO `gossip_menu` VALUES ('3648', '4446');
REPLACE INTO `gossip_menu` VALUES ('3649', '4447');
REPLACE INTO `gossip_menu` VALUES ('3861', '4713');
REPLACE INTO `gossip_menu` VALUES ('3901', '4753');
REPLACE INTO `gossip_menu` VALUES ('3922', '4776');
REPLACE INTO `gossip_menu` VALUES ('3962', '4814');
REPLACE INTO `gossip_menu` VALUES ('4009', '4316');
REPLACE INTO `gossip_menu` VALUES ('4009', '4993');
REPLACE INTO `gossip_menu` VALUES ('4041', '4913');
REPLACE INTO `gossip_menu` VALUES ('4046', '4936');
REPLACE INTO `gossip_menu` VALUES ('4164', '5218');
REPLACE INTO `gossip_menu` VALUES ('4169', '5243');
REPLACE INTO `gossip_menu` VALUES ('4171', '5253');
REPLACE INTO `gossip_menu` VALUES ('4322', '5494');
REPLACE INTO `gossip_menu` VALUES ('4353', '5561');
REPLACE INTO `gossip_menu` VALUES ('4355', '5571');
REPLACE INTO `gossip_menu` VALUES ('4468', '4434');
REPLACE INTO `gossip_menu` VALUES ('4484', '538');
REPLACE INTO `gossip_menu` VALUES ('4484', '539');
REPLACE INTO `gossip_menu` VALUES ('4502', '4835');
REPLACE INTO `gossip_menu` VALUES ('4502', '4837');
REPLACE INTO `gossip_menu` VALUES ('4504', '5693');
REPLACE INTO `gossip_menu` VALUES ('4505', '5693');
REPLACE INTO `gossip_menu` VALUES ('4515', '5008');
REPLACE INTO `gossip_menu` VALUES ('4516', '5006');
REPLACE INTO `gossip_menu` VALUES ('4601', '5713');
REPLACE INTO `gossip_menu` VALUES ('4662', '3976');
REPLACE INTO `gossip_menu` VALUES ('4667', '2193');
REPLACE INTO `gossip_menu` VALUES ('4667', '5722');
REPLACE INTO `gossip_menu` VALUES ('4748', '5800');
REPLACE INTO `gossip_menu` VALUES ('4748', '7016');
REPLACE INTO `gossip_menu` VALUES ('4748', '7017');
REPLACE INTO `gossip_menu` VALUES ('4844', '5919');
REPLACE INTO `gossip_menu` VALUES ('5021', '6073');
REPLACE INTO `gossip_menu` VALUES ('5021', '6218');
REPLACE INTO `gossip_menu` VALUES ('5065', '6108');
REPLACE INTO `gossip_menu` VALUES ('5109', '6161');
REPLACE INTO `gossip_menu` VALUES ('5123', '5006');
REPLACE INTO `gossip_menu` VALUES ('5146', '6178');
REPLACE INTO `gossip_menu` VALUES ('5147', '6179');
REPLACE INTO `gossip_menu` VALUES ('5148', '6180');
REPLACE INTO `gossip_menu` VALUES ('5241', '6255');
REPLACE INTO `gossip_menu` VALUES ('5281', '6313');
REPLACE INTO `gossip_menu` VALUES ('5301', '6333');
REPLACE INTO `gossip_menu` VALUES ('5321', '6353');
REPLACE INTO `gossip_menu` VALUES ('5348', '6383');
REPLACE INTO `gossip_menu` VALUES ('5441', '6475');
REPLACE INTO `gossip_menu` VALUES ('5482', '6534');
REPLACE INTO `gossip_menu` VALUES ('5541', '6594');
REPLACE INTO `gossip_menu` VALUES ('5626', '6733');
REPLACE INTO `gossip_menu` VALUES ('5641', '6755');
REPLACE INTO `gossip_menu` VALUES ('5667', '6795');
REPLACE INTO `gossip_menu` VALUES ('5709', '6877');
REPLACE INTO `gossip_menu` VALUES ('5736', '6909');
REPLACE INTO `gossip_menu` VALUES ('5737', '6911');
REPLACE INTO `gossip_menu` VALUES ('5747', '6925');
REPLACE INTO `gossip_menu` VALUES ('5748', '6927');
REPLACE INTO `gossip_menu` VALUES ('5755', '6939');
REPLACE INTO `gossip_menu` VALUES ('5756', '6940');
REPLACE INTO `gossip_menu` VALUES ('5845', '7001');
REPLACE INTO `gossip_menu` VALUES ('5868', '7041');
REPLACE INTO `gossip_menu` VALUES ('5869', '7042');
REPLACE INTO `gossip_menu` VALUES ('5921', '7074');
REPLACE INTO `gossip_menu` VALUES ('6041', '7196');
REPLACE INTO `gossip_menu` VALUES ('6261', '7434');
REPLACE INTO `gossip_menu` VALUES ('6262', '7435');
REPLACE INTO `gossip_menu` VALUES ('6323', '7516');
REPLACE INTO `gossip_menu` VALUES ('6361', '7554');
REPLACE INTO `gossip_menu` VALUES ('6445', '7638');
REPLACE INTO `gossip_menu` VALUES ('6523', '7725');
REPLACE INTO `gossip_menu` VALUES ('6527', '7729');
REPLACE INTO `gossip_menu` VALUES ('6925', '8214');
REPLACE INTO `gossip_menu` VALUES ('6940', '8229');
REPLACE INTO `gossip_menu` VALUES ('6981', '8243');
REPLACE INTO `gossip_menu` VALUES ('6981', '8282');
REPLACE INTO `gossip_menu` VALUES ('6981', '8285');
REPLACE INTO `gossip_menu` VALUES ('7053', '8312');
REPLACE INTO `gossip_menu` VALUES ('7054', '8313');
REPLACE INTO `gossip_menu` VALUES ('7084', '8336');
REPLACE INTO `gossip_menu` VALUES ('7091', '8344');
REPLACE INTO `gossip_menu` VALUES ('7143', '8406');
REPLACE INTO `gossip_menu` VALUES ('7304', '8664');
REPLACE INTO `gossip_menu` VALUES ('7304', '8666');
REPLACE INTO `gossip_menu` VALUES ('7305', '8667');
REPLACE INTO `gossip_menu` VALUES ('7305', '8669');
REPLACE INTO `gossip_menu` VALUES ('7351', '8771');
REPLACE INTO `gossip_menu` VALUES ('7376', '8826');
REPLACE INTO `gossip_menu` VALUES ('7376', '8827');
REPLACE INTO `gossip_menu` VALUES ('7406', '8875');
REPLACE INTO `gossip_menu` VALUES ('7413', '8952');
REPLACE INTO `gossip_menu` VALUES ('7421', '8970');
REPLACE INTO `gossip_menu` VALUES ('7431', '8993');
REPLACE INTO `gossip_menu` VALUES ('7432', '8994');
REPLACE INTO `gossip_menu` VALUES ('7433', '8996');
REPLACE INTO `gossip_menu` VALUES ('7435', '9003');
REPLACE INTO `gossip_menu` VALUES ('7461', '9037');
REPLACE INTO `gossip_menu` VALUES ('7462', '9041');
REPLACE INTO `gossip_menu` VALUES ('7563', '9181');
REPLACE INTO `gossip_menu` VALUES ('7582', '9226');
REPLACE INTO `gossip_menu` VALUES ('7583', '9227');
REPLACE INTO `gossip_menu` VALUES ('7585', '9229');
REPLACE INTO `gossip_menu` VALUES ('7586', '9231');
REPLACE INTO `gossip_menu` VALUES ('7588', '9236');
REPLACE INTO `gossip_menu` VALUES ('7589', '9237');
REPLACE INTO `gossip_menu` VALUES ('7592', '9240');
REPLACE INTO `gossip_menu` VALUES ('7592', '9283');
REPLACE INTO `gossip_menu` VALUES ('7607', '9258');
REPLACE INTO `gossip_menu` VALUES ('7610', '9261');
REPLACE INTO `gossip_menu` VALUES ('7611', '9262');
REPLACE INTO `gossip_menu` VALUES ('7612', '9263');
REPLACE INTO `gossip_menu` VALUES ('7613', '9264');
REPLACE INTO `gossip_menu` VALUES ('7614', '9265');
REPLACE INTO `gossip_menu` VALUES ('7625', '9287');
REPLACE INTO `gossip_menu` VALUES ('7626', '9288');
REPLACE INTO `gossip_menu` VALUES ('7628', '9290');
REPLACE INTO `gossip_menu` VALUES ('7631', '9312');
REPLACE INTO `gossip_menu` VALUES ('7674', '9357');
REPLACE INTO `gossip_menu` VALUES ('7675', '9361');
REPLACE INTO `gossip_menu` VALUES ('7675', '9369');
REPLACE INTO `gossip_menu` VALUES ('7676', '9368');
REPLACE INTO `gossip_menu` VALUES ('7677', '9367');
REPLACE INTO `gossip_menu` VALUES ('7678', '9366');
REPLACE INTO `gossip_menu` VALUES ('7679', '9365');
REPLACE INTO `gossip_menu` VALUES ('7680', '9364');
REPLACE INTO `gossip_menu` VALUES ('7681', '9363');
REPLACE INTO `gossip_menu` VALUES ('7682', '9362');
REPLACE INTO `gossip_menu` VALUES ('7683', '9370');
REPLACE INTO `gossip_menu` VALUES ('7692', '9383');
REPLACE INTO `gossip_menu` VALUES ('7695', '9389');
REPLACE INTO `gossip_menu` VALUES ('7698', '9393');
REPLACE INTO `gossip_menu` VALUES ('7699', '9394');
REPLACE INTO `gossip_menu` VALUES ('7704', '9405');
REPLACE INTO `gossip_menu` VALUES ('7714', '9424');
REPLACE INTO `gossip_menu` VALUES ('7715', '9423');
REPLACE INTO `gossip_menu` VALUES ('7716', '9422');
REPLACE INTO `gossip_menu` VALUES ('7717', '9421');
REPLACE INTO `gossip_menu` VALUES ('7718', '9420');
REPLACE INTO `gossip_menu` VALUES ('7719', '9419');
REPLACE INTO `gossip_menu` VALUES ('7719', '9427');
REPLACE INTO `gossip_menu` VALUES ('7723', '9429');
REPLACE INTO `gossip_menu` VALUES ('7724', '9433');
REPLACE INTO `gossip_menu` VALUES ('7730', '9441');
REPLACE INTO `gossip_menu` VALUES ('7731', '9443');
REPLACE INTO `gossip_menu` VALUES ('7732', '9442');
REPLACE INTO `gossip_menu` VALUES ('7738', '9471');
REPLACE INTO `gossip_menu` VALUES ('7741', '9477');
REPLACE INTO `gossip_menu` VALUES ('7743', '9481');
REPLACE INTO `gossip_menu` VALUES ('7745', '9484');
REPLACE INTO `gossip_menu` VALUES ('7751', '9490');
REPLACE INTO `gossip_menu` VALUES ('7752', '9492');
REPLACE INTO `gossip_menu` VALUES ('7753', '9493');
REPLACE INTO `gossip_menu` VALUES ('7773', '9521');
REPLACE INTO `gossip_menu` VALUES ('7811', '9563');
REPLACE INTO `gossip_menu` VALUES ('7820', '9546');
REPLACE INTO `gossip_menu` VALUES ('7891', '9654');
REPLACE INTO `gossip_menu` VALUES ('7891', '9659');
REPLACE INTO `gossip_menu` VALUES ('7940', '9733');
REPLACE INTO `gossip_menu` VALUES ('7993', '9845');
REPLACE INTO `gossip_menu` VALUES ('8006', '9871');
REPLACE INTO `gossip_menu` VALUES ('8021', '9896');
REPLACE INTO `gossip_menu` VALUES ('8022', '9897');
REPLACE INTO `gossip_menu` VALUES ('8029', '9914');
REPLACE INTO `gossip_menu` VALUES ('8030', '9916');
REPLACE INTO `gossip_menu` VALUES ('8031', '9917');
REPLACE INTO `gossip_menu` VALUES ('8034', '9921');
REPLACE INTO `gossip_menu` VALUES ('8048', '9960');
REPLACE INTO `gossip_menu` VALUES ('8054', '9947');
REPLACE INTO `gossip_menu` VALUES ('8063', '9959');
REPLACE INTO `gossip_menu` VALUES ('8070', '9970');
REPLACE INTO `gossip_menu` VALUES ('8074', '9980');
REPLACE INTO `gossip_menu` VALUES ('8083', '9993');
REPLACE INTO `gossip_menu` VALUES ('8094', '10009');
REPLACE INTO `gossip_menu` VALUES ('8100', '10717');
REPLACE INTO `gossip_menu` VALUES ('8107', '10032');
REPLACE INTO `gossip_menu` VALUES ('8120', '10058');
REPLACE INTO `gossip_menu` VALUES ('8232', '10234');
REPLACE INTO `gossip_menu` VALUES ('8235', '10245');
REPLACE INTO `gossip_menu` VALUES ('8236', '10246');
REPLACE INTO `gossip_menu` VALUES ('8243', '10258');
REPLACE INTO `gossip_menu` VALUES ('8247', '10264');
REPLACE INTO `gossip_menu` VALUES ('8249', '10266');
REPLACE INTO `gossip_menu` VALUES ('8251', '10270');
REPLACE INTO `gossip_menu` VALUES ('8252', '10271');
REPLACE INTO `gossip_menu` VALUES ('8345', '10413');
REPLACE INTO `gossip_menu` VALUES ('8346', '10414');
REPLACE INTO `gossip_menu` VALUES ('8347', '10416');
REPLACE INTO `gossip_menu` VALUES ('8348', '10417');
REPLACE INTO `gossip_menu` VALUES ('8349', '10418');
REPLACE INTO `gossip_menu` VALUES ('8351', '10422');
REPLACE INTO `gossip_menu` VALUES ('8355', '10426');
REPLACE INTO `gossip_menu` VALUES ('8367', '10440');
REPLACE INTO `gossip_menu` VALUES ('8368', '10442');
REPLACE INTO `gossip_menu` VALUES ('8404', '10506');
REPLACE INTO `gossip_menu` VALUES ('8404', '10718');
REPLACE INTO `gossip_menu` VALUES ('8441', '10546');
REPLACE INTO `gossip_menu` VALUES ('8441', '10884');
REPLACE INTO `gossip_menu` VALUES ('8493', '10606');
REPLACE INTO `gossip_menu` VALUES ('8493', '10655');
REPLACE INTO `gossip_menu` VALUES ('8493', '10854');
REPLACE INTO `gossip_menu` VALUES ('8555', '10680');
REPLACE INTO `gossip_menu` VALUES ('8559', '10721');
REPLACE INTO `gossip_menu` VALUES ('8630', '10819');
REPLACE INTO `gossip_menu` VALUES ('8642', '10995');
REPLACE INTO `gossip_menu` VALUES ('8679', '11028');
REPLACE INTO `gossip_menu` VALUES ('8680', '11021');
REPLACE INTO `gossip_menu` VALUES ('8681', '11011');
REPLACE INTO `gossip_menu` VALUES ('8695', '10941');
REPLACE INTO `gossip_menu` VALUES ('8696', '10946');
REPLACE INTO `gossip_menu` VALUES ('8697', '10945');
REPLACE INTO `gossip_menu` VALUES ('8698', '10944');
REPLACE INTO `gossip_menu` VALUES ('8699', '10943');
REPLACE INTO `gossip_menu` VALUES ('8700', '10942');
REPLACE INTO `gossip_menu` VALUES ('8701', '10940');
REPLACE INTO `gossip_menu` VALUES ('8725', '11030');
REPLACE INTO `gossip_menu` VALUES ('8753', '11089');
REPLACE INTO `gossip_menu` VALUES ('8775', '11217');
REPLACE INTO `gossip_menu` VALUES ('8775', '11299');
REPLACE INTO `gossip_menu` VALUES ('8775', '11313');
REPLACE INTO `gossip_menu` VALUES ('8775', '11354');
REPLACE INTO `gossip_menu` VALUES ('8787', '11243');
REPLACE INTO `gossip_menu` VALUES ('8788', '11245');
REPLACE INTO `gossip_menu` VALUES ('8793', '11264');
REPLACE INTO `gossip_menu` VALUES ('8801', '11281');
REPLACE INTO `gossip_menu` VALUES ('8803', '11287');
REPLACE INTO `gossip_menu` VALUES ('8808', '11297');
REPLACE INTO `gossip_menu` VALUES ('8811', '11309');
REPLACE INTO `gossip_menu` VALUES ('8812', '11311');
REPLACE INTO `gossip_menu` VALUES ('8820', '11352');
REPLACE INTO `gossip_menu` VALUES ('8826', '11376');
REPLACE INTO `gossip_menu` VALUES ('8830', '11403');
REPLACE INTO `gossip_menu` VALUES ('8831', '11406');
REPLACE INTO `gossip_menu` VALUES ('8832', '11418');
REPLACE INTO `gossip_menu` VALUES ('8835', '11426');
REPLACE INTO `gossip_menu` VALUES ('8837', '11432');
REPLACE INTO `gossip_menu` VALUES ('8839', '11436');
REPLACE INTO `gossip_menu` VALUES ('8840', '11457');
REPLACE INTO `gossip_menu` VALUES ('8852', '11494');
REPLACE INTO `gossip_menu` VALUES ('8853', '11496');
REPLACE INTO `gossip_menu` VALUES ('8881', '11596');
REPLACE INTO `gossip_menu` VALUES ('8885', '11614');
REPLACE INTO `gossip_menu` VALUES ('8893', '11655');
REPLACE INTO `gossip_menu` VALUES ('8895', '11667');
REPLACE INTO `gossip_menu` VALUES ('8932', '11943');
REPLACE INTO `gossip_menu` VALUES ('8957', '11746');
REPLACE INTO `gossip_menu` VALUES ('8985', '12124');
REPLACE INTO `gossip_menu` VALUES ('8985', '12130');
REPLACE INTO `gossip_menu` VALUES ('9013', '12178');
REPLACE INTO `gossip_menu` VALUES ('9030', '12208');
REPLACE INTO `gossip_menu` VALUES ('9038', '12216');
REPLACE INTO `gossip_menu` VALUES ('9054', '12243');
REPLACE INTO `gossip_menu` VALUES ('9057', '12245');
REPLACE INTO `gossip_menu` VALUES ('9077', '12275');
REPLACE INTO `gossip_menu` VALUES ('9133', '12350');
REPLACE INTO `gossip_menu` VALUES ('9134', '12352');
REPLACE INTO `gossip_menu` VALUES ('9137', '12361');
REPLACE INTO `gossip_menu` VALUES ('9138', '12362');
REPLACE INTO `gossip_menu` VALUES ('9138', '12363');
REPLACE INTO `gossip_menu` VALUES ('9170', '12433');
REPLACE INTO `gossip_menu` VALUES ('9210', '12521');
REPLACE INTO `gossip_menu` VALUES ('9214', '12525');
REPLACE INTO `gossip_menu` VALUES ('9216', '12527');
REPLACE INTO `gossip_menu` VALUES ('9224', '12538');
REPLACE INTO `gossip_menu` VALUES ('9247', '12555');
REPLACE INTO `gossip_menu` VALUES ('9280', '12585');
REPLACE INTO `gossip_menu` VALUES ('9335', '12634');
REPLACE INTO `gossip_menu` VALUES ('9342', '12642');
REPLACE INTO `gossip_menu` VALUES ('9420', '12666');
REPLACE INTO `gossip_menu` VALUES ('9431', '12694');
REPLACE INTO `gossip_menu` VALUES ('9475', '12733');
REPLACE INTO `gossip_menu` VALUES ('9496', '12785');
REPLACE INTO `gossip_menu` VALUES ('9497', '12787');
REPLACE INTO `gossip_menu` VALUES ('9517', '12822');
REPLACE INTO `gossip_menu` VALUES ('9580', '12930');
REPLACE INTO `gossip_menu` VALUES ('9658', '13081');
REPLACE INTO `gossip_menu` VALUES ('9659', '13082');
REPLACE INTO `gossip_menu` VALUES ('9678', '13137');
REPLACE INTO `gossip_menu` VALUES ('9685', '13135');
REPLACE INTO `gossip_menu` VALUES ('9686', '13138');
REPLACE INTO `gossip_menu` VALUES ('9688', '13147');
REPLACE INTO `gossip_menu` VALUES ('9690', '13157');
REPLACE INTO `gossip_menu` VALUES ('9717', '13300');
REPLACE INTO `gossip_menu` VALUES ('9723', '13306');
REPLACE INTO `gossip_menu` VALUES ('9738', '13352');
REPLACE INTO `gossip_menu` VALUES ('9743', '13362');
REPLACE INTO `gossip_menu` VALUES ('9744', '13363');
REPLACE INTO `gossip_menu` VALUES ('9747', '13367');
REPLACE INTO `gossip_menu` VALUES ('9748', '13366');
REPLACE INTO `gossip_menu` VALUES ('9781', '13459');
REPLACE INTO `gossip_menu` VALUES ('9781', '13461');
REPLACE INTO `gossip_menu` VALUES ('9806', '13525');
REPLACE INTO `gossip_menu` VALUES ('9807', '13526');
REPLACE INTO `gossip_menu` VALUES ('9808', '13527');
REPLACE INTO `gossip_menu` VALUES ('9809', '13528');
REPLACE INTO `gossip_menu` VALUES ('9810', '13529');
REPLACE INTO `gossip_menu` VALUES ('9811', '13530');
REPLACE INTO `gossip_menu` VALUES ('9812', '13531');
REPLACE INTO `gossip_menu` VALUES ('9813', '13534');
REPLACE INTO `gossip_menu` VALUES ('9848', '13619');
REPLACE INTO `gossip_menu` VALUES ('9859', '13650');
REPLACE INTO `gossip_menu` VALUES ('9861', '13658');
REPLACE INTO `gossip_menu` VALUES ('9928', '13800');
REPLACE INTO `gossip_menu` VALUES ('9985', '13839');
REPLACE INTO `gossip_menu` VALUES ('10116', '14042');
REPLACE INTO `gossip_menu` VALUES ('10220', '14208');
REPLACE INTO `gossip_menu` VALUES ('10709', '14865');
REPLACE INTO `gossip_menu` VALUES ('10710', '14866');
REPLACE INTO `gossip_menu` VALUES ('50014', '15343');
REPLACE INTO `gossip_menu` VALUES ('50015', '2820');
REPLACE INTO `gossip_menu` VALUES ('50159', '5933');
REPLACE INTO `gossip_menu` VALUES ('50159', '5934');
REPLACE INTO `gossip_menu` VALUES ('50160', '5938');
REPLACE INTO `gossip_menu` VALUES ('50160', '5939');
REPLACE INTO `gossip_menu_option` VALUES ('12056', '0', '1', 'I want to browse your goods.', '3', '128', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4747', '1', '3', 'Train me.', '5', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4512', '1', '3', 'Train me.', '5', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4512', '2', '0', 'Learn about Dual Talent Specialization.', '1', '1', '10371', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('4512', '3', '0', 'I wish to unlearn my talents.', '16', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4603', '1', '3', 'Train me.', '5', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4603', '2', '0', 'Learn about Dual Talent Specialization.', '1', '1', '10371', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('4603', '3', '0', 'I wish to unlearn my talents.', '16', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('2384', '1', '3', 'Train me.', '5', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('2384', '2', '0', 'Learn about Dual Talent Specialization.', '1', '1', '10371', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('2384', '3', '0', 'I wish to unlearn my talents.', '16', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4604', '1', '3', 'Train me.', '5', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4604', '2', '0', 'Learn about Dual Talent Specialization.', '1', '1', '10371', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('4604', '3', '0', 'I wish to unlearn my talents.', '16', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4653', '1', '3', 'Train me.', '5', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4653', '2', '0', 'Learn about Dual Talent Specialization.', '1', '1', '10371', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('4653', '3', '0', 'I wish to unlearn my talents.', '16', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4655', '1', '3', 'Train me.', '5', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4655', '2', '0', 'Learn about Dual Talent Specialization.', '1', '1', '10371', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('4655', '3', '0', 'I wish to unlearn my talents.', '16', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('10641', '0', '0', 'Tell me about the nearest ruins.', '1', '1', '10642', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('10642', '0', '0', 'What are you doing here?', '1', '1', '10643', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('10643', '0', '0', 'No, please go ahead.', '1', '1', '10644', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('10644', '0', '0', 'What happened to mages?', '1', '1', '10645', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('10645', '0', '0', 'They were able to survive?', '1', '1', '10646', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('10646', '0', '0', 'And we\'reare going to to disturb them .', '1', '1', '10647', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('9821', '2', '0', 'I\'ve lost Miniwing.', '1', '1', '0', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('4261', '0', '3', 'Train me.', '5', '16', '0', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('687', '0', '1', 'I want to browse your goods.', '3', '128', '0', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('648', '0', '3', 'Train me.', '5', '16', '0', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('701', '0', '1', 'I want to browse your goods.', '3', '128', '0', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('7704', '0', '0', 'Empoor, you\'re going to tell me what I want to know, or else!', '1', '1', '1', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('5709', '0', '0', 'Game? Are you crazy?', '1', '1', '1', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('8243', '0', '1', 'I want to browse your goods.', '3', '128', '0', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('7811', '0', '6', 'I would like to check my deposit box.', '9', '131072', '0', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('7431', '0', '1', 'Hello, Parkat. I wish to purchase something.', '3', '128', '0', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('7379', '2', '0', 'Take me to Crown Guard Tower.', '1', '1', '0', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('7379', '1', '0', 'Take me to Eastwall Tower.', '1', '1', '0', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('7379', '0', '0', 'Take me to Northpass Tower.', '1', '1', '0', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('5241', '2', '1', 'I want to browse your goods.', '3', '128', '0', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('5148', '0', '0', 'I got your back, Slidore, but to be honest, you do stink. Take a shower, man.', '1', '1', '0', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('5146', '0', '0', 'I got your back, Ichman. GO GO GO!', '1', '1', '0', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('5021', '5', '0', 'How many more supplies are needed for the next upgrade?', '1', '1', '0', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('645', '0', '3', 'Train me.', '5', '16', '0', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('646', '0', '3', 'Train me.', '5', '16', '0', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('660', '0', '3', 'Train me.', '5', '16', '0', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('693', '0', '1', 'I want to browse your goods.', '3', '128', '0', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('940', '0', '0', 'Will you blow up that door now?', '1', '1', '0', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('941', '0', '0', 'Hey Bly!  Bilgewizzle wants his divino-matic rod back!', '1', '1', '0', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('941', '1', '0', 'That\'s it!  I\'m tired of helping you out.  It\'s time we settled things on the battlefield!', '1', '1', '0', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('1201', '0', '0', 'What\'s the worst that could happen?', '1', '1', '0', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('1301', '0', '1', 'I wish to browse your wares.', '3', '128', '0', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('1965', '0', '1', 'I would like to buy from you.', '3', '128', '0', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('1970', '1', '0', 'You\'re good for nothing, Ribbly.  It\'s time to pay for your wickedness!', '1', '1', '0', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('2208', '0', '0', 'I need a Cenarion beacon.', '1', '1', '0', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('2208', '1', '0', 'What plants are in Felwood that might be corrupted?', '1', '1', '0', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('2464', '0', '1', 'Let me browse your goods.', '3', '128', '0', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('2784', '0', '3', 'Train me.', '5', '16', '0', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('4009', '0', '3', 'I am in need of training.', '5', '16', '0', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('4164', '0', '3', 'Train me.', '5', '16', '0', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('4169', '0', '3', 'Train me.', '5', '16', '0', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('4171', '0', '3', 'Train me.', '5', '16', '0', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('4353', '0', '3', 'Train me.', '5', '16', '0', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('4484', '0', '3', 'I am interested in mage training.', '5', '16', '0', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('4505', '0', '3', 'I am interested in warlock training.', '5', '16', '0', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('4508', '0', '3', 'I seek training as a druid.', '5', '16', '0', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('4662', '0', '3', 'I would like to train further in the ways of the Light.', '5', '16', '0', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('4748', '0', '3', 'I require training, Daryl.', '5', '16', '0', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('6527', '0', '1', 'Let me browse your goods.', '3', '128', '0', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('6981', '0', '0', 'Here, I\'d like to give you this token of my love.', '1', '1', '0', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('7396', '0', '1', 'I want to browse your goods.', '3', '128', '0', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('7435', '0', '1', 'I\'m in need of your skill as a blacksmith, Koren.', '3', '128', '0', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('7524', '0', '1', 'I want to browse your goods.', '3', '128', '0', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('7588', '0', '1', 'Show me your wares, Maktu.', '3', '128', '0', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('7589', '0', '1', 'I wish to browse your wares.', '3', '128', '0', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('7611', '0', '1', 'I would like to buy from you.', '3', '128', '0', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('7612', '0', '1', 'I wish to buy from you.', '3', '128', '0', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('7628', '0', '1', 'I would like to buy from you.', '3', '128', '0', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('7724', '1', '1', 'I have marks to redeem!', '3', '128', '0', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('7730', '0', '0', 'I have been sent by Sal\'salabim to collect a debt that you owe. Pay up or I\'m going to have to hurt you.', '1', '1', '0', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('7816', '0', '3', 'I would like to train.', '5', '16', '0', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('7816', '1', '1', 'Let me browse your goods.', '3', '128', '0', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('8034', '0', '1', 'Let\'s see what you have.', '3', '128', '0', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('8063', '0', '1', 'Dealer Hazzin, what do you have to offer?', '3', '128', '0', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('8070', '0', '1', 'What do you have to sell, Tuluman?', '3', '128', '0', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('8094', '0', '1', 'What do you have for sale?', '3', '128', '0', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('8120', '0', '0', 'What are Ethereum?', '1', '1', '0', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('8249', '0', '1', 'I want to browse your goods.', '3', '128', '0', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('8679', '0', '0', 'Kronk, tell me about the charged crystal foci.', '1', '1', '0', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('8725', '0', '0', 'I am an envoy of Balthas. He has sent me to collect a flawless arcane essence.', '1', '1', '0', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('8762', '0', '0', 'Your propaganda won\'t work on me. Spout your treasonous filth elsewhere, traitor!', '1', '1', '0', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('8803', '0', '1', 'I need some booze, Coot.', '3', '128', '0', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('8808', '0', '1', 'I require some components, Sorely.', '3', '128', '0', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('8820', '0', '1', 'Finlay, let me see what you have for sale.', '3', '128', '0', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('8826', '0', '1', 'Show me what you have for sale.', '3', '128', '0', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('9013', '0', '0', '<Discreetly search the pirate\'s pockets for Taruk\'s payment.>', '1', '1', '0', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('9038', '0', '0', 'The Lady Mehley', '1', '1', '0', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('9038', '1', '0', 'Food & Drink', '1', '1', '0', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('9038', '2', '0', 'Goods & Gear', '1', '1', '0', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('9038', '3', '0', '\"Stash?\"', '1', '1', '0', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('9280', '0', '0', '<Search corpse for Issliruk\'s Totem.>', '1', '1', '0', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('9335', '0', '0', 'Ummm... the frog says you\'re a traitor, \"matey.\"', '1', '1', '0', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('9517', '0', '0', 'I would like to enter the secret code to receive my Competitor\'s Souvenir.', '1', '1', '0', '0', '0', '1', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('9717', '0', '1', 'What are you hiding under that fold of flesh?', '3', '128', '0', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('9848', '0', '1', 'Can you repair my gear?', '3', '128', '0', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('9928', '0', '0', 'I\'m with you, Thorim.', '1', '1', '0', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('9985', '0', '3', 'Train me.', '5', '16', '0', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('10116', '0', '3', 'Train me.', '5', '16', '0', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('10194', '0', '0', 'Reporting for duty, your majesty! Let the assault begin!', '1', '1', '0', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('10209', '0', '1', 'Let me browse your goods.', '3', '128', '0', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('10220', '0', '0', 'I am ready to return to the realm of the living.', '1', '1', '0', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('1422', '0', '1', 'Can you help me get down?', '3', '128', '0', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('4355', '0', '3', 'Train me.', '5', '16', '0', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('4504', '0', '3', 'I am interested in warlock training.', '5', '16', '0', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('4743', '0', '0', 'Where can I get Enchanted Thorium?', '1', '1', '0', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('4743', '1', '0', 'Where can I find Crystal Restore?', '1', '1', '0', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('4844', '0', '3', 'Train me.', '5', '16', '0', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('5541', '0', '1', 'I want to browse your goods.', '3', '128', '0', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('5845', '0', '0', 'I am in search of a great and powerful Warlock.', '1', '1', '0', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('8031', '0', '1', 'I would like to buy from you.', '3', '128', '0', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('8782', '0', '0', 'Lady Jaina told me to speak to you about using a gryphon to survey Alcaz Island.', '1', '1', '0', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('698', '0', '1', 'I want to browse your goods.', '3', '128', '0', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('5667', '1', '0', 'Why should I bother fixing the trap?  Why not just eliminate the guard the old fashioned way?', '1', '1', '0', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('8021', '0', '1', 'Show me what you have for sale, \"Slim.\"', '3', '128', '0', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('6629', '0', '0', 'Let\'s find out.', '1', '1', '0', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('7820', '1', '1', 'I want to browse your goods.', '3', '128', '0', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('8100', '0', '0', 'Send me to Shatter Point.', '1', '1', '0', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('11387', '0', '0', 'Insult Coren Direbrew\'s brew.', '1', '1', '0', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('562', '0', '0', 'Who are the Earthen?', '1', '1', '561', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('1161', '0', '0', 'What have you heard of the Shady Rest Inn?', '1', '1', '1162', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('1285', '0', '0', 'I wish to hear your tale.', '1', '1', '1287', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('1443', '2', '0', 'You can cook?  So can I!  Is there a recipe you can teach me?', '1', '1', '1501', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('2061', '2', '0', 'Milk me, John.', '1', '1', '2802', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('3063', '0', '0', 'You will be ok, Awbee. Your assailants have been terminated.', '1', '1', '3064', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('3372', '0', '0', 'Tell me about the Cult of the Damned.', '1', '1', '3371', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('4484', '1', '0', 'I wish to unlearn my talents.', '1', '1', '4461', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('4505', '1', '0', 'I wish to unlearn my talents.', '1', '1', '4461', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('4508', '1', '0', 'I wish to unlearn my talents.', '1', '1', '4461', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('4504', '1', '0', 'I wish to unlearn my talents.', '1', '1', '4461', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('4662', '1', '0', 'I wish to unlearn my talents.', '1', '1', '4461', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('4009', '1', '0', 'I wish to unlearn my talents.', '1', '1', '4461', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('5241', '0', '0', 'How many more supplies are needed to send ground assaults?', '1', '1', '5626', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('7054', '0', '0', 'How are the gift standings?  Who\'s the most popular?', '1', '1', '7053', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('7582', '0', '0', 'Greetings, elder. It is time for your people to end their hostility toward the draenei and their allies.', '1', '1', '7583', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('7675', '0', '0', 'I have killed many of your ogres, Lantresor. I have no fear.', '1', '1', '7682', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('7719', '0', '0', 'I see twisted steel and smell sundered earth.', '1', '1', '7718', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('7732', '0', '0', 'I have been sent by Sal\'salabim to collect a debt that you owe. Pay up or I\'m going to have to hurt you.', '1', '1', '7731', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('8701', '0', '0', 'I am here for you, overseer.', '1', '1', '8695', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('9496', '0', '0', 'We have the purified ashes of Vordrassil\'s sapling.  If we can subdue Ursoc, we might be able to heal his soul.', '1', '1', '9497', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('9678', '0', '0', 'Shaman Vekjik, I have spoken with the big-tongues and they desire peace. I have brought this offering on their behalf.', '1', '1', '9686', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('9806', '0', '0', 'Lord-Commander, I would hear your tale.', '1', '1', '9807', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('4504', '2', '0', 'Learn about Dual Talent Specialization.', '1', '1', '10371', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('4505', '2', '0', 'Learn about Dual Talent Specialization.', '1', '1', '10371', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('4662', '2', '0', 'Learn about Dual Talent Specialization.', '1', '1', '10371', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('4009', '2', '0', 'Learn about Dual Talent Specialization.', '1', '1', '10371', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('4484', '2', '0', 'Learn about Dual Talent Specialization.', '1', '1', '10371', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('4508', '2', '0', 'Learn about Dual Talent Specialization.', '1', '1', '10371', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('7731', '0', '0', 'He wants his \"golds.\" Pay up or die... again...', '1', '1', '1', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('9497', '0', '0', 'Assume your druidic bear form, Tur.', '1', '1', '1', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('9497', '1', '0', 'Help us subdue him.', '1', '1', '0', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('9497', '2', '0', 'We could use a healer.', '1', '1', '0', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('9686', '0', '0', 'No no... I had no intentions of betraying your people. I was only defending myself. It was all a misunderstanding.', '1', '1', '0', '0', '9686', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('4461', '0', '11', 'Yes. I do.', '16', '16', '0', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('2802', '0', '0', 'Do it... Do it now.', '1', '1', '0', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('561', '0', '0', 'What is a \"subterranean being matrix\"?', '1', '1', '563', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('1287', '0', '0', 'Please continue, Zamael.', '1', '1', '1286', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('3064', '0', '0', 'Absolutely.', '1', '1', '3065', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('3371', '0', '0', 'Impossible.', '1', '1', '3370', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('7583', '0', '0', 'I did not mean to deceive you, elder. The draenei of Telredor thought to approach you in a way that would be familiar to you.', '1', '1', '7585', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('7682', '0', '0', 'Should I know? You look like an orc to me.', '1', '1', '7681', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('7718', '0', '0', 'Legion?', '1', '1', '7717', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('8695', '0', '0', 'How dare you question an overseer of the Dragonmaw!', '1', '1', '8700', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('9807', '0', '0', '<You nod slightly but do not complete the motion as the lord-commander narrows his eyes before he continues.>', '1', '1', '9808', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('563', '0', '0', 'What are the anomalies you speak of?', '1', '1', '564', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('1286', '0', '0', 'Let me think about it, Zamael.', '1', '1', '1285', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('3065', '0', '0', 'Horrifying.', '1', '1', '3066', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('3370', '0', '0', 'This is disheartening. Is there anything I can do to stop this?', '1', '1', '3369', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('7585', '0', '0', 'I will tell them. Farewell, elder.', '1', '1', '7586', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('7681', '0', '0', 'And the other half?', '1', '1', '7680', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('7717', '0', '0', 'And now?', '1', '1', '7716', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('8700', '0', '0', 'Who speaks of me? What are you talking about, broken?', '1', '1', '8699', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('9808', '0', '0', 'I thought that they now called themselves the Scarlet Onslaught?', '1', '1', '9809', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('9808', '1', '0', 'Lord-Commander, would you repeat what you said before?', '1', '1', '9807', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('564', '0', '0', 'What is a \"resilient foundation of construction\"?', '1', '1', '565', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('3066', '0', '0', 'Continue please...', '1', '1', '0', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('3369', '0', '0', 'Who do I need to kill?', '1', '1', '3368', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('7680', '0', '0', 'I have heard of your kind, but I never thought to see the day when I would meet a half-breed.', '1', '1', '7679', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('7716', '0', '0', 'How do you see them now?', '1', '1', '7715', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('8699', '0', '0', 'Continue please.', '1', '1', '8698', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('9809', '0', '0', 'Where did the grand admiral go?', '1', '1', '9810', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('9809', '1', '0', 'Lord-Commander, would you repeat what you said before?', '1', '1', '9808', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('565', '0', '0', 'So... the Earthen were made out of stone?', '1', '1', '566', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('3368', '0', '0', 'What is this plan?', '1', '1', '3367', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('7679', '0', '0', 'My apologies. I did not mean to offend. I am here on behalf of my people.', '1', '1', '7678', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('7715', '0', '0', 'Forge camps?', '1', '1', '7714', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('8698', '0', '0', 'Who are these bidders?', '1', '1', '8697', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('9810', '0', '0', 'That\'s fine. When do I start?', '1', '1', '9811', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('9810', '1', '0', 'Lord-Commander, would you repeat what you said before?', '1', '1', '9809', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('566', '0', '0', 'Anything else I should know about the Earthen?', '1', '1', '567', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('3367', '0', '0', 'Ras Frostwhat? Who is that?', '1', '1', '3366', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('7678', '0', '0', 'My people ask that you pull back your Boulderfist ogres and cease all attacks on our territories. In return, we will also pull back our forces.', '1', '1', '7677', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('8697', '0', '0', 'Well... yes.', '1', '1', '8696', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('9811', '0', '0', 'Let\'s finish this!', '1', '1', '9812', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('9811', '1', '0', 'Lord-Commander, would you repeat what you said before?', '1', '1', '9810', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('567', '0', '0', 'I think I understand the Creators\' design intent for the Earthen now.  What are the Earthen\'s anomalies that you spoke of earlier?', '1', '1', '568', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('3366', '0', '0', 'Continue, please.', '1', '1', '3365', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('7677', '0', '0', 'We will fight you until the end, then, Lantresor. We will not stand idly by as you pillage our towns and kill our people.', '1', '1', '7676', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('9812', '0', '0', 'That\'s quite a tale, lord-commander.', '1', '1', '9806', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('9812', '1', '0', 'Lord-Commander, would you repeat what you said before?', '1', '1', '9811', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('568', '0', '0', 'What high-stress environments would cause the Earthen to destabilize?', '1', '1', '569', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('3365', '0', '0', 'Yes I do.', '1', '1', '3364', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('7676', '0', '0', 'What do I need to do?', '1', '1', '7675', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('569', '0', '0', 'What happens when the Earthen destabilize?', '1', '1', '570', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('3364', '0', '0', 'Yes I am.', '1', '1', '3372', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('570', '0', '0', 'Troggs?!  Are the troggs you mention the same as the ones in the world today?', '1', '1', '571', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('571', '0', '0', 'You mentioned two results when the Earthen destabilize.  What is the second?', '1', '1', '572', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('572', '0', '0', 'Dwarves!!!  Now you\'re telling me that dwarves originally came from the Earthen?!', '1', '1', '573', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('573', '0', '0', 'These dwarves are the same ones today, yes?  Do dwarves maintain any other links to the Earthen?', '1', '1', '574', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('574', '0', '0', 'Who are the Creators?', '1', '1', '575', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('575', '0', '0', 'This is a lot to think about.', '1', '1', '576', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('576', '0', '0', 'I will access the discs now.', '1', '1', '1', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('1522', '0', '3', 'I am interested in warlock training.', '5', '16', '0', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('1522', '1', '0', 'I wish to unlearn my talents.', '1', '1', '4461', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('1522', '2', '0', 'Learn about Dual Talent Specialization.', '1', '1', '10371', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('7757', '0', '0', 'Why are you all repair?', '1', '1', '7755', '0', '18717', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('7759', '0', '0', 'What are you doing here?', '1', '1', '7758', '0', '18716', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('7760', '0', '0', 'Advisor, what are the latest news?', '1', '1', '7761', '0', '18719', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4485', '0', '3', 'I am interested in mage training.', '5', '16', '0', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('4485', '1', '0', 'I wish to unlearn my talents.', '16', '16', '0', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('4659', '0', '3', 'Can you train me how to use rogue skills?', '5', '16', '0', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('4660', '0', '3', 'I am interested in mage training.', '5', '16', '0', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('4661', '0', '3', 'I am interested in mage training.', '5', '16', '0', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('4664', '3', '0', 'I wish to unlearn my talents.', '16', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('9691', '0', '3', 'I seek training, Lady Alistra.', '5', '16', '0', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('9691', '1', '0', 'I wish to unlearn my talents.', '16', '16', '0', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('9692', '0', '3', 'I seek training, Lord Thorval.', '5', '16', '0', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('9692', '1', '0', 'I wish to unlearn my talents.', '16', '16', '0', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('9693', '0', '3', 'I seek training, Amal\'thazad.', '5', '16', '0', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('9693', '1', '0', 'I wish to unlearn my talents.', '16', '16', '0', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('4651', '2', '0', 'Learn about Dual Talent Specialization.', '1', '1', '10371', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('7377', '1', '0', 'Tell me about your past, forecaster...', '1', '1', '7502', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('7377', '3', '3', 'Train me.', '5', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4651', '0', '3', 'I am interested in mage training.', '5', '16', '0', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('4103', '0', '3', 'Teach me the ways of the spirits.', '5', '16', '0', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('4104', '0', '3', 'Teach me the ways of the spirits.', '5', '16', '0', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('4469', '0', '3', 'I would like to train further in the ways of the Light.', '5', '16', '0', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('4470', '0', '3', 'I would like to train further in the ways of the Light.', '5', '16', '0', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('4471', '0', '3', 'I would like to train further in the ways of the Light.', '5', '16', '0', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('4516', '0', '3', 'Teach me the ways of the spirits.', '5', '16', '0', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('4528', '0', '3', 'Teach me the ways of the spirits.', '5', '16', '0', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('4529', '0', '3', 'Teach me the ways of the spirits.', '5', '16', '0', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('4530', '0', '3', 'Teach me the ways of the spirits.', '5', '16', '0', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('4663', '0', '3', 'I would like to train further in the ways of the Light.', '5', '16', '0', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('4677', '0', '3', 'I would like to train further in the ways of the Light.', '5', '16', '0', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('4678', '0', '3', 'I would like to train further in the ways of the Light.', '5', '16', '0', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('5123', '0', '3', 'Teach me the ways of the spirits.', '5', '16', '0', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('4517', '1', '3', 'Train me.', '5', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('141', '1', '3', 'Train me.', '5', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('410', '1', '3', 'Train me.', '5', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('523', '1', '3', 'Train me.', '5', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('655', '1', '3', 'Train me.', '5', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('1403', '1', '3', 'Train me.', '5', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('1503', '1', '3', 'Train me.', '5', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('2383', '1', '3', 'Train me.', '5', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('3644', '1', '3', 'Train me.', '5', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('3921', '1', '3', 'Train me.', '5', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('3926', '1', '3', 'Train me.', '5', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4010', '1', '3', 'Train me.', '5', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4011', '1', '3', 'Train me.', '5', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4012', '1', '3', 'Train me.', '5', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4017', '1', '3', 'Train me.', '5', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4023', '1', '3', 'Train me.', '5', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4463', '1', '3', 'Train me.', '5', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4506', '1', '3', 'Train me.', '5', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4524', '1', '3', 'Train me.', '5', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4525', '1', '3', 'I require warrior training.', '5', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4526', '1', '3', 'I require warrior training.', '5', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4527', '1', '3', 'I require warrior training.', '5', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4537', '1', '3', 'Train me.', '5', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4538', '1', '3', 'Train me.', '5', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4539', '1', '3', 'Train me.', '5', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4552', '1', '3', 'Train me.', '5', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4571', '1', '3', 'Train me.', '5', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4576', '1', '3', 'Train me.', '5', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4606', '1', '3', 'Train me.', '5', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4607', '1', '3', 'Train me.', '5', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4609', '1', '3', 'Train me.', '5', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4641', '1', '3', 'Train me.', '5', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4645', '1', '3', 'Train me.', '5', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4647', '1', '3', 'Train me.', '5', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4649', '1', '3', 'Train me.', '5', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4650', '1', '3', 'Train me.', '5', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4657', '1', '3', 'Train me.', '5', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4666', '1', '3', 'Train me.', '5', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4667', '1', '3', 'Train me.', '5', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4675', '1', '3', 'I seek training in the ways of the Hunter.', '5', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4676', '1', '3', 'Train me.', '5', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4680', '1', '3', 'Train me.', '5', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4683', '1', '3', 'Train me.', '5', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4684', '1', '3', 'Train me.', '5', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4685', '1', '3', 'Train me.', '5', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4691', '1', '3', 'Train me.', '5', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4697', '1', '3', 'Train me.', '5', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('8111', '1', '3', 'Train me.', '5', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('1403', '2', '1', 'I want to browse your goods.', '3', '128', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4517', '2', '0', 'Learn about Dual Talent Specialization.', '1', '1', '10371', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('141', '2', '0', 'Learn about Dual Talent Specialization.', '1', '1', '10371', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('410', '2', '0', 'Learn about Dual Talent Specialization.', '1', '1', '10371', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('523', '2', '0', 'Learn about Dual Talent Specialization.', '1', '1', '10371', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('655', '2', '0', 'Learn about Dual Talent Specialization.', '1', '1', '10371', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('1403', '3', '0', 'Learn about Dual Talent Specialization.', '1', '1', '10371', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('1503', '2', '0', 'Learn about Dual Talent Specialization.', '1', '1', '10371', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('2383', '2', '0', 'Learn about Dual Talent Specialization.', '1', '1', '10371', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('3644', '2', '0', 'Learn about Dual Talent Specialization.', '1', '1', '10371', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('4517', '3', '0', 'I wish to unlearn my talents.', '16', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('3921', '2', '0', 'Learn about Dual Talent Specialization.', '1', '1', '10371', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('3926', '2', '0', 'Learn about Dual Talent Specialization.', '1', '1', '10371', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('4010', '2', '0', 'Learn about Dual Talent Specialization.', '1', '1', '10371', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('4011', '2', '0', 'Learn about Dual Talent Specialization.', '1', '1', '10371', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('4012', '2', '0', 'Learn about Dual Talent Specialization.', '1', '1', '10371', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('4017', '2', '0', 'Learn about Dual Talent Specialization.', '1', '1', '10371', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('4023', '2', '0', 'Learn about Dual Talent Specialization.', '1', '1', '10371', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('4103', '2', '0', 'Learn about Dual Talent Specialization.', '1', '1', '10371', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('4104', '2', '0', 'Learn about Dual Talent Specialization.', '1', '1', '10371', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('4463', '2', '0', 'Learn about Dual Talent Specialization.', '1', '1', '10371', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('4469', '2', '0', 'Learn about Dual Talent Specialization.', '1', '1', '10371', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('4470', '2', '0', 'Learn about Dual Talent Specialization.', '1', '1', '10371', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('4471', '2', '0', 'Learn about Dual Talent Specialization.', '1', '1', '10371', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('4485', '3', '0', 'Learn about Dual Talent Specialization.', '1', '1', '10371', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('4506', '2', '0', 'Learn about Dual Talent Specialization.', '1', '1', '10371', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('4516', '2', '0', 'Learn about Dual Talent Specialization.', '1', '1', '10371', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('4524', '2', '0', 'Learn about Dual Talent Specialization.', '1', '1', '10371', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('4525', '2', '0', 'Learn about Dual Talent Specialization.', '1', '1', '10371', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('4526', '2', '0', 'Learn about Dual Talent Specialization.', '1', '1', '10371', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('4527', '2', '0', 'Learn about Dual Talent Specialization.', '1', '1', '10371', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('4528', '2', '0', 'Learn about Dual Talent Specialization.', '1', '1', '10371', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('4529', '2', '0', 'Learn about Dual Talent Specialization.', '1', '1', '10371', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('4530', '2', '0', 'Learn about Dual Talent Specialization.', '1', '1', '10371', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('4537', '2', '0', 'Learn about Dual Talent Specialization.', '1', '1', '10371', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('4538', '2', '0', 'Learn about Dual Talent Specialization.', '1', '1', '10371', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('4539', '2', '0', 'Learn about Dual Talent Specialization.', '1', '1', '10371', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('4552', '2', '0', 'Learn about Dual Talent Specialization.', '1', '1', '10371', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('4571', '2', '0', 'Learn about Dual Talent Specialization.', '1', '1', '10371', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('4576', '2', '0', 'Learn about Dual Talent Specialization.', '1', '1', '10371', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('4606', '2', '0', 'Learn about Dual Talent Specialization.', '1', '1', '10371', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('4607', '2', '0', 'Learn about Dual Talent Specialization.', '1', '1', '10371', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('4609', '2', '0', 'Learn about Dual Talent Specialization.', '1', '1', '10371', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('4641', '2', '0', 'Learn about Dual Talent Specialization.', '1', '1', '10371', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('4645', '2', '0', 'Learn about Dual Talent Specialization.', '1', '1', '10371', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('4647', '2', '0', 'Learn about Dual Talent Specialization.', '1', '1', '10371', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('4649', '2', '0', 'Learn about Dual Talent Specialization.', '1', '1', '10371', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('4650', '2', '0', 'Learn about Dual Talent Specialization.', '1', '1', '10371', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('4657', '2', '0', 'Learn about Dual Talent Specialization.', '1', '1', '10371', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('4659', '2', '0', 'Learn about Dual Talent Specialization.', '1', '1', '10371', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('4660', '2', '0', 'Learn about Dual Talent Specialization.', '1', '1', '10371', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('4661', '2', '0', 'Learn about Dual Talent Specialization.', '1', '1', '10371', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('4663', '2', '0', 'Learn about Dual Talent Specialization.', '1', '1', '10371', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('4666', '2', '0', 'Learn about Dual Talent Specialization.', '1', '1', '10371', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('4667', '2', '0', 'Learn about Dual Talent Specialization.', '1', '1', '10371', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('4675', '2', '0', 'Learn about Dual Talent Specialization.', '1', '1', '10371', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('4676', '2', '0', 'Learn about Dual Talent Specialization.', '1', '1', '10371', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('4677', '2', '0', 'Learn about Dual Talent Specialization.', '1', '1', '10371', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('4678', '2', '0', 'Learn about Dual Talent Specialization.', '1', '1', '10371', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('4680', '2', '0', 'Learn about Dual Talent Specialization.', '1', '1', '10371', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('4683', '2', '0', 'Learn about Dual Talent Specialization.', '1', '1', '10371', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('4684', '2', '0', 'Learn about Dual Talent Specialization.', '1', '1', '10371', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('4685', '2', '0', 'Learn about Dual Talent Specialization.', '1', '1', '10371', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('4691', '2', '0', 'Learn about Dual Talent Specialization.', '1', '1', '10371', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('4697', '2', '0', 'Learn about Dual Talent Specialization.', '1', '1', '10371', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('436', '3', '0', 'I wish to unlearn my talents.', '16', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('410', '3', '0', 'I wish to unlearn my talents.', '16', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('141', '3', '0', 'I wish to unlearn my talents.', '16', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('5123', '2', '0', 'Learn about Dual Talent Specialization.', '1', '1', '10371', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('7377', '0', '0', 'Learn about Dual Talent Specialization.', '1', '1', '10371', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('8111', '2', '0', 'Learn about Dual Talent Specialization.', '1', '1', '10371', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('523', '3', '0', 'I wish to unlearn my talents.', '16', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('9692', '2', '0', 'Learn about Dual Talent Specialization.', '1', '1', '10371', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('9691', '2', '0', 'Learn about Dual Talent Specialization.', '1', '1', '10371', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('4515', '2', '0', 'Learn about Dual Talent Specialization.', '1', '1', '10371', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('23127', '1', '0', 'Learn about Dual Talent Specialization.', '1', '1', '10371', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('4515', '0', '3', 'Teach me the ways of the spirits.', '5', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4515', '1', '0', 'I wish to unlearn my talents.', '16', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('23127', '2', '3', 'Teach me the ways of the spirits.', '5', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('23127', '3', '0', 'I wish to unlearn my talents.', '16', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4542', '0', '3', 'Train me.', '5', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4542', '1', '0', 'Learn about Dual Talent Specialization.', '1', '1', '10371', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('4513', '1', '3', 'Train me.', '5', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4513', '2', '0', 'Learn about Dual Talent Specialization.', '1', '1', '10371', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('50184', '1', '3', 'Train me.', '5', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('50184', '2', '0', 'Learn about Dual Talent Specialization.', '1', '1', '10371', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('50185', '1', '3', 'Train me.', '5', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('50185', '2', '0', 'Learn about Dual Talent Specialization.', '1', '1', '10371', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('4533', '0', '3', 'Train me.', '5', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4533', '1', '0', 'Learn about Dual Talent Specialization.', '1', '1', '10371', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('655', '3', '0', 'I wish to unlearn my talents.', '16', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('50187', '1', '3', 'Train me.', '5', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('50187', '2', '0', 'Learn about Dual Talent Specialization.', '1', '1', '10371', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('50188', '1', '3', 'Train me.', '5', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('50188', '2', '0', 'Learn about Dual Talent Specialization.', '1', '1', '10371', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('4681', '1', '3', 'Train me.', '5', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4681', '2', '0', 'Learn about Dual Talent Specialization.', '1', '1', '10371', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('7357', '1', '3', 'Train me.', '5', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('7357', '2', '0', 'Learn about Dual Talent Specialization.', '1', '1', '10371', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('4541', '0', '3', 'Train me.', '5', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4541', '1', '0', 'Learn about Dual Talent Specialization.', '1', '1', '10371', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('50194', '1', '3', 'Train me.', '5', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('50194', '2', '0', 'Learn about Dual Talent Specialization.', '1', '1', '10371', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('4502', '1', '3', 'Train me.', '5', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4502', '2', '0', 'Learn about Dual Talent Specialization.', '1', '1', '10371', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('4695', '1', '3', 'Train me.', '5', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4695', '2', '0', 'Learn about Dual Talent Specialization.', '1', '1', '10371', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('436', '1', '3', 'Train me.', '5', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('436', '2', '0', 'Learn about Dual Talent Specialization.', '1', '1', '10371', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('4551', '0', '3', 'Train me.', '5', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4551', '1', '0', 'Learn about Dual Talent Specialization.', '1', '1', '10371', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('9693', '2', '0', 'Learn about Dual Talent Specialization.', '1', '1', '10371', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('4568', '1', '3', 'Train me.', '5', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4568', '2', '0', 'Learn about Dual Talent Specialization.', '1', '1', '10371', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('4568', '3', '0', 'I wish to unlearn my talents.', '16', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('50199', '1', '3', 'Train me.', '5', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('50199', '2', '0', 'Learn about Dual Talent Specialization.', '1', '1', '10371', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('50199', '3', '0', 'I wish to unlearn my talents.', '16', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('381', '1', '3', 'Train me.', '5', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('381', '2', '0', 'Learn about Dual Talent Specialization.', '1', '1', '10371', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('381', '3', '0', 'I wish to unlearn my talents.', '16', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('7262', '1', '3', 'Train me.', '5', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('7262', '2', '0', 'Learn about Dual Talent Specialization.', '1', '1', '10371', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('7262', '3', '0', 'I wish to unlearn my talents.', '16', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('50202', '1', '3', 'Train me.', '5', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('50202', '2', '0', 'Learn about Dual Talent Specialization.', '1', '1', '10371', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('50202', '3', '0', 'I wish to unlearn my talents.', '16', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('7349', '1', '3', 'Train me.', '5', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('7349', '2', '0', 'Learn about Dual Talent Specialization.', '1', '1', '10371', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('7349', '3', '0', 'I wish to unlearn my talents.', '16', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('50204', '1', '3', 'Train me.', '5', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('50204', '2', '0', 'Learn about Dual Talent Specialization.', '1', '1', '10371', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('50204', '3', '0', 'I wish to unlearn my talents.', '16', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('50205', '1', '3', 'Train me.', '5', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('50205', '2', '0', 'Learn about Dual Talent Specialization.', '1', '1', '10371', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('50205', '3', '0', 'I wish to unlearn my talents.', '16', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('7567', '1', '3', 'Train me.', '5', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('7567', '2', '0', 'Learn about Dual Talent Specialization.', '1', '1', '10371', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('7567', '3', '0', 'I wish to unlearn my talents.', '16', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('7265', '1', '3', 'Train me.', '5', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('7265', '2', '0', 'Learn about Dual Talent Specialization.', '1', '1', '10371', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('7265', '3', '0', 'I wish to unlearn my talents.', '16', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('2304', '1', '3', 'Train me.', '5', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('2304', '2', '0', 'Learn about Dual Talent Specialization.', '1', '1', '10371', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('2304', '3', '0', 'I wish to unlearn my talents.', '16', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('7260', '2', '0', 'Learn about Dual Talent Specialization.', '1', '1', '10371', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('7368', '4', '0', 'Learn about Dual Talent Specialization.', '1', '1', '10371', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('7368', '5', '0', 'I wish to unlearn my talents.', '16', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('8110', '0', '3', 'Teach me the ways of the spirits.', '5', '16', '0', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('8110', '2', '0', 'Learn about Dual Talent Specialization.', '1', '1', '10371', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('8110', '3', '0', 'I wish to unlearn my talents.', '16', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4664', '2', '0', 'Learn about Dual Talent Specialization.', '1', '1', '10371', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('4664', '1', '3', 'I would like to train further in the ways of the Light.', '5', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4570', '1', '3', 'Train me.', '5', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4570', '2', '0', 'Learn about Dual Talent Specialization.', '1', '1', '10371', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('4570', '3', '0', 'I wish to unlearn my talents.', '16', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('3643', '1', '3', 'Train me.', '5', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('3643', '2', '0', 'Learn about Dual Talent Specialization.', '1', '1', '10371', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('3643', '3', '0', 'I wish to unlearn my talents.', '16', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('50214', '1', '3', 'Train me.', '5', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('50214', '2', '0', 'Learn about Dual Talent Specialization.', '1', '1', '10371', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('50214', '3', '0', 'I wish to unlearn my talents.', '16', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('50215', '1', '3', 'Train me.', '5', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('50215', '2', '0', 'Learn about Dual Talent Specialization.', '1', '1', '10371', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('50215', '3', '0', 'I wish to unlearn my talents.', '16', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('50216', '1', '3', 'Train me.', '5', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('50216', '2', '0', 'Learn about Dual Talent Specialization.', '1', '1', '10371', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('50216', '3', '0', 'I wish to unlearn my talents.', '16', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('6647', '1', '3', 'Train me.', '5', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('6647', '2', '0', 'Learn about Dual Talent Specialization.', '1', '1', '10371', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('6647', '3', '0', 'I wish to unlearn my talents.', '16', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('50218', '1', '3', 'Train me.', '5', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('50218', '2', '0', 'Learn about Dual Talent Specialization.', '1', '1', '10371', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('50218', '3', '0', 'I wish to unlearn my talents.', '16', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4665', '1', '3', 'Train me.', '5', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4665', '2', '0', 'Learn about Dual Talent Specialization.', '1', '1', '10371', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('4665', '3', '0', 'I wish to unlearn my talents.', '16', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4688', '1', '3', 'Train me.', '5', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4688', '2', '0', 'Learn about Dual Talent Specialization.', '1', '1', '10371', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('4688', '3', '0', 'I wish to unlearn my talents.', '16', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('50223', '1', '3', 'Train me.', '5', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('50223', '2', '0', 'Learn about Dual Talent Specialization.', '1', '1', '10371', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('50223', '3', '0', 'I wish to unlearn my talents.', '16', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('50224', '1', '3', 'Train me.', '5', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('50224', '2', '0', 'Learn about Dual Talent Specialization.', '1', '1', '10371', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('50224', '3', '0', 'I wish to unlearn my talents.', '16', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('50225', '1', '3', 'Train me.', '5', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('50225', '2', '0', 'Learn about Dual Talent Specialization.', '1', '1', '10371', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('50225', '3', '0', 'I wish to unlearn my talents.', '16', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('9990', '1', '3', 'I am interested in mage training.', '5', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('9990', '2', '0', 'Learn about Dual Talent Specialization.', '1', '1', '10371', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('9990', '3', '0', 'I wish to unlearn my talents.', '16', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4540', '0', '3', 'Train me.', '5', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4540', '1', '0', 'Learn about Dual Talent Specialization.', '1', '1', '10371', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('4541', '2', '0', 'I wish to unlearn my talents.', '16', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4474', '1', '3', 'Train me.', '5', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4474', '2', '0', 'Learn about Dual Talent Specialization.', '1', '1', '10371', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('4474', '3', '0', 'I wish to unlearn my talents.', '16', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('1403', '4', '0', 'I wish to unlearn my talents.', '16', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('1503', '3', '0', 'I wish to unlearn my talents.', '16', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('2383', '3', '0', 'I wish to unlearn my talents.', '16', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('3644', '3', '0', 'I wish to unlearn my talents.', '16', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('3921', '3', '0', 'I wish to unlearn my talents.', '16', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('3926', '3', '0', 'I wish to unlearn my talents.', '16', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4010', '3', '0', 'I wish to unlearn my talents.', '16', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4011', '3', '0', 'I wish to unlearn my talents.', '16', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4012', '3', '0', 'I wish to unlearn my talents.', '16', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4017', '3', '0', 'I wish to unlearn my talents.', '16', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4023', '3', '0', 'I wish to unlearn my talents.', '16', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4103', '3', '0', 'I wish to unlearn my talents.', '16', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4104', '3', '0', 'I wish to unlearn my talents.', '16', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4463', '3', '0', 'I wish to unlearn my talents.', '16', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4469', '3', '0', 'I wish to unlearn my talents.', '16', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4470', '3', '0', 'I wish to unlearn my talents.', '16', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4471', '3', '0', 'I wish to unlearn my talents.', '16', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4506', '3', '0', 'I wish to unlearn my talents.', '16', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4516', '3', '0', 'I wish to unlearn my talents.', '16', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4524', '3', '0', 'I wish to unlearn my talents.', '16', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4525', '3', '0', 'I wish to unlearn my talents.', '16', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4526', '3', '0', 'I wish to unlearn my talents.', '16', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4527', '3', '0', 'I wish to unlearn my talents.', '16', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4528', '3', '0', 'I wish to unlearn my talents.', '16', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4529', '3', '0', 'I wish to unlearn my talents.', '16', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4530', '3', '0', 'I wish to unlearn my talents.', '16', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4537', '3', '0', 'I wish to unlearn my talents.', '16', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4538', '3', '0', 'I wish to unlearn my talents.', '16', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4539', '3', '0', 'I wish to unlearn my talents.', '16', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4551', '3', '0', 'I wish to unlearn my talents.', '16', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4552', '3', '0', 'I wish to unlearn my talents.', '16', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4571', '3', '0', 'I wish to unlearn my talents.', '16', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4576', '3', '0', 'I wish to unlearn my talents.', '16', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4606', '3', '0', 'I wish to unlearn my talents.', '16', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4607', '3', '0', 'I wish to unlearn my talents.', '16', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4609', '3', '0', 'I wish to unlearn my talents.', '16', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4641', '3', '0', 'I wish to unlearn my talents.', '16', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4645', '3', '0', 'I wish to unlearn my talents.', '16', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4647', '3', '0', 'I wish to unlearn my talents.', '16', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4649', '3', '0', 'I wish to unlearn my talents.', '16', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4650', '3', '0', 'I wish to unlearn my talents.', '16', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4657', '3', '0', 'I wish to unlearn my talents.', '16', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4659', '3', '0', 'I wish to unlearn my talents.', '16', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4660', '3', '0', 'I wish to unlearn my talents.', '16', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4661', '3', '0', 'I wish to unlearn my talents.', '16', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4663', '3', '0', 'I wish to unlearn my talents.', '16', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4666', '3', '0', 'I wish to unlearn my talents.', '16', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4667', '3', '0', 'I wish to unlearn my talents.', '16', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4675', '3', '0', 'I wish to unlearn my talents.', '16', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4676', '3', '0', 'I wish to unlearn my talents.', '16', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4677', '3', '0', 'I wish to unlearn my talents.', '16', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4678', '3', '0', 'I wish to unlearn my talents.', '16', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4680', '3', '0', 'I wish to unlearn my talents.', '16', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4683', '3', '0', 'I wish to unlearn my talents.', '16', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4684', '3', '0', 'I wish to unlearn my talents.', '16', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4685', '3', '0', 'I wish to unlearn my talents.', '16', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4691', '3', '0', 'I wish to unlearn my talents.', '16', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4697', '3', '0', 'I wish to unlearn my talents.', '16', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('5123', '3', '0', 'I wish to unlearn my talents.', '16', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('7357', '3', '0', 'I wish to unlearn my talents.', '16', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('7377', '4', '0', 'I wish to unlearn my talents.', '16', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('8111', '3', '0', 'I wish to unlearn my talents.', '16', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4542', '2', '0', 'I wish to unlearn my talents.', '16', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('50184', '3', '0', 'I wish to unlearn my talents.', '16', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('50185', '3', '0', 'I wish to unlearn my talents.', '16', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4533', '3', '0', 'I wish to unlearn my talents.', '16', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('50188', '3', '0', 'I wish to unlearn my talents.', '16', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4681', '3', '0', 'I wish to unlearn my talents.', '16', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('50194', '3', '0', 'I wish to unlearn my talents.', '16', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4502', '3', '0', 'I wish to unlearn my talents.', '16', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4695', '3', '0', 'I wish to unlearn my talents.', '16', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('3925', '1', '3', 'Train me.', '5', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('3925', '2', '0', 'Learn about Dual Talent Specialization.', '1', '1', '10371', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('3925', '3', '0', 'I wish to unlearn my talents.', '16', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('7260', '0', '3', 'I would like to train further in the ways of the Light.', '5', '16', '0', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('7368', '0', '3', 'Train me.', '5', '16', '0', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('7368', '1', '0', 'Acteon, where is the best area to hunt for moongraze stags?', '1', '1', '7423', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('7368', '2', '0', 'Acteon, where is the best place to hunt moongraze bucks?', '1', '1', '7424', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('7260', '3', '0', 'I wish to unlearn my talents.', '16', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('7467', '0', '3', 'Teach me the ways of the spirits.', '5', '16', '0', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('7467', '2', '0', 'Learn about Dual Talent Specialization.', '1', '1', '10371', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('7467', '3', '0', 'I wish to unlearn my talents.', '16', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('7522', '0', '3', 'Teach me the ways of the spirits.', '5', '16', '0', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('7522', '2', '0', 'Learn about Dual Talent Specialization.', '1', '1', '10371', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('7522', '3', '0', 'I wish to unlearn my talents.', '16', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('7264', '1', '3', 'Train me.', '5', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('7264', '2', '0', 'Learn about Dual Talent Specialization.', '1', '1', '10371', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('7264', '3', '0', 'I wish to unlearn my talents.', '16', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('7263', '0', '3', 'I require warrior training.', '5', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('7263', '1', '0', 'I wish to unlearn my talents.', '16', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('7263', '2', '0', 'Learn about Dual Talent Specialization.', '1', '1', '10371', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('6648', '1', '3', 'Train me.', '5', '16', '0', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('6648', '2', '0', 'Learn about Dual Talent Specialization.', '1', '1', '10371', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('6648', '3', '0', 'I wish to unlearn my talents.', '16', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('6649', '1', '3', 'Train me.', '5', '16', '0', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('6649', '2', '0', 'Learn about Dual Talent Specialization.', '1', '1', '10371', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('6649', '3', '0', 'I wish to unlearn my talents.', '16', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('6650', '1', '3', 'Train me.', '5', '16', '0', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('6650', '2', '0', 'Learn about Dual Talent Specialization.', '1', '1', '10371', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('6650', '3', '0', 'I wish to unlearn my talents.', '16', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('6652', '1', '3', 'Train me.', '5', '16', '0', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('6652', '2', '0', 'Learn about Dual Talent Specialization.', '1', '1', '10371', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('6652', '3', '0', 'I wish to unlearn my talents.', '16', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('7566', '0', '3', 'Train me.', '5', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('7566', '1', '0', 'Learn about Dual Talent Specialization.', '1', '1', '10371', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('7566', '2', '0', 'I wish to unlearn my talents.', '16', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4687', '1', '3', 'Train me.', '5', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4687', '2', '0', 'Learn about Dual Talent Specialization.', '1', '1', '10371', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('4687', '3', '0', 'I wish to unlearn my talents.', '16', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4605', '1', '3', 'Train me.', '5', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4605', '2', '0', 'Learn about Dual Talent Specialization.', '1', '1', '10371', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('4605', '3', '0', 'I wish to unlearn my talents.', '16', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('6628', '1', '3', 'I am interested in warlock training.', '5', '16', '0', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('6628', '2', '0', 'Learn about Dual Talent Specialization.', '1', '1', '10371', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('6628', '3', '0', 'I wish to unlearn my talents.', '16', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('7438', '1', '3', 'Train me.', '5', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('7438', '2', '0', 'Learn about Dual Talent Specialization.', '1', '1', '10371', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('7438', '3', '0', 'I wish to unlearn my talents.', '16', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4682', '1', '3', 'Train me.', '5', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4682', '2', '0', 'Learn about Dual Talent Specialization.', '1', '1', '10371', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('4682', '3', '0', 'I wish to unlearn my talents.', '16', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4518', '1', '3', 'Train me.', '5', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4518', '2', '0', 'Learn about Dual Talent Specialization.', '1', '1', '10371', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('4518', '3', '0', 'I wish to unlearn my talents.', '16', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4520', '1', '3', 'Train me.', '5', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4520', '2', '0', 'Learn about Dual Talent Specialization.', '1', '1', '10371', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('4520', '3', '0', 'I wish to unlearn my talents.', '16', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4519', '1', '3', 'Train me.', '5', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4519', '2', '0', 'Learn about Dual Talent Specialization.', '1', '1', '10371', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('4519', '3', '0', 'I wish to unlearn my talents.', '16', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4523', '0', '3', 'Train me.', '5', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4654', '1', '3', 'Train me.', '5', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4654', '2', '0', 'Learn about Dual Talent Specialization.', '1', '1', '10371', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('4654', '3', '0', 'I wish to unlearn my talents.', '16', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4521', '1', '3', 'Train me.', '5', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4521', '2', '0', 'Learn about Dual Talent Specialization.', '1', '1', '10371', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('4521', '3', '0', 'I wish to unlearn my talents.', '16', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4523', '1', '0', 'Learn about Dual Talent Specialization.', '1', '1', '10371', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('4523', '2', '0', 'I wish to unlearn my talents.', '16', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4679', '1', '3', 'Train me.', '5', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4679', '2', '0', 'Learn about Dual Talent Specialization.', '1', '1', '10371', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('4679', '3', '0', 'I wish to unlearn my talents.', '16', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4686', '1', '3', 'Train me.', '5', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4686', '2', '0', 'Learn about Dual Talent Specialization.', '1', '1', '10371', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('4686', '3', '0', 'I wish to unlearn my talents.', '16', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('63', '1', '3', 'I am interested in mage training.', '5', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('63', '2', '0', 'Learn about Dual Talent Specialization.', '1', '1', '10371', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('63', '3', '0', 'I wish to unlearn my talents.', '16', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4656', '0', '3', 'Train me.', '5', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4656', '1', '0', 'Learn about Dual Talent Specialization.', '1', '1', '10371', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('4656', '2', '0', 'I wish to unlearn my talents.', '16', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('3645', '1', '3', 'Train me.', '5', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('3645', '2', '0', 'Learn about Dual Talent Specialization.', '1', '1', '10371', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('3645', '3', '0', 'I wish to unlearn my talents.', '16', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('85', '1', '3', 'Train me.', '5', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('85', '2', '0', 'Learn about Dual Talent Specialization.', '1', '1', '10371', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('85', '3', '0', 'I wish to unlearn my talents.', '16', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4651', '3', '0', 'I wish to unlearn my talents.', '16', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4550', '0', '3', 'Train me.', '5', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4550', '1', '0', 'Learn about Dual Talent Specialization.', '1', '1', '10371', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('4550', '2', '0', 'I wish to unlearn my talents.', '16', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4008', '1', '3', 'Train me.', '5', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4008', '2', '0', 'Learn about Dual Talent Specialization.', '1', '1', '10371', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('4008', '3', '0', 'I wish to unlearn my talents.', '16', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4690', '1', '3', 'Train me.', '5', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4690', '2', '0', 'Learn about Dual Talent Specialization.', '1', '1', '10371', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('4690', '3', '0', 'I wish to unlearn my talents.', '16', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4696', '1', '3', 'Train me.', '5', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4696', '2', '0', 'Learn about Dual Talent Specialization.', '1', '1', '10371', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('4696', '3', '0', 'I wish to unlearn my talents.', '16', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4575', '0', '3', 'Train me.', '5', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4575', '1', '0', 'Learn about Dual Talent Specialization.', '1', '1', '10371', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('4575', '2', '0', 'I wish to unlearn my talents.', '16', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4578', '0', '3', 'Train me.', '5', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4578', '1', '0', 'Learn about Dual Talent Specialization.', '1', '1', '10371', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('4578', '2', '0', 'I wish to unlearn my talents.', '16', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4579', '1', '3', 'Train me.', '5', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4579', '2', '0', 'Learn about Dual Talent Specialization.', '1', '1', '10371', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('4579', '3', '0', 'I wish to unlearn my talents.', '16', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4581', '0', '3', 'Train me.', '5', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4581', '1', '0', 'Learn about Dual Talent Specialization.', '1', '1', '10371', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('4581', '2', '0', 'I wish to unlearn my talents.', '16', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4801', '0', '3', 'Train me.', '5', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4801', '1', '0', 'Learn about Dual Talent Specialization.', '1', '1', '10371', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('4801', '2', '0', 'I wish to unlearn my talents.', '16', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4573', '0', '3', 'Train me.', '5', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4573', '1', '0', 'Learn about Dual Talent Specialization.', '1', '1', '10371', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('4573', '2', '0', 'I wish to unlearn my talents.', '16', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4572', '0', '3', 'Train me.', '5', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4572', '1', '0', 'Learn about Dual Talent Specialization.', '1', '1', '10371', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('4572', '2', '0', 'I wish to unlearn my talents.', '16', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('7366', '0', '3', 'I am interested in mage training.', '5', '16', '0', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('7366', '2', '0', 'Learn about Dual Talent Specialization.', '1', '1', '10371', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('7366', '3', '0', 'I wish to unlearn my talents.', '16', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4574', '1', '3', 'Train me.', '5', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4574', '2', '0', 'Learn about Dual Talent Specialization.', '1', '1', '10371', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('4574', '3', '0', 'I wish to unlearn my talents.', '16', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4540', '2', '0', 'I wish to unlearn my talents.', '16', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4548', '1', '3', 'Train me.', '5', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4548', '2', '0', 'I wish to unlearn my talents.', '16', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4548', '3', '0', 'Learn about Dual Talent Specialization.', '1', '1', '10371', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('4547', '1', '3', 'Train me.', '5', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4547', '2', '0', 'I wish to unlearn my talents.', '16', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4547', '3', '0', 'Learn about Dual Talent Specialization.', '1', '1', '10371', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('4546', '0', '3', 'Train me.', '5', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4546', '1', '0', 'I wish to unlearn my talents.', '16', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4546', '2', '0', 'Learn about Dual Talent Specialization.', '1', '1', '10371', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('50187', '3', '0', 'I wish to unlearn my talents.', '16', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4511', '1', '3', 'Train me.', '5', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4511', '2', '0', 'I wish to unlearn my talents.', '16', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4511', '3', '0', 'Learn about Dual Talent Specialization.', '1', '1', '10371', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('4509', '0', '3', 'Train me.', '5', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4509', '1', '0', 'I wish to unlearn my talents.', '16', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4509', '2', '0', 'Learn about Dual Talent Specialization.', '1', '1', '10371', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('4644', '1', '3', 'Train me.', '5', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4644', '2', '0', 'Learn about Dual Talent Specialization.', '1', '1', '10371', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('4644', '3', '0', 'I wish to unlearn my talents.', '16', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4531', '1', '3', 'Train me.', '5', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4531', '2', '0', 'Learn about Dual Talent Specialization.', '1', '1', '10371', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('4531', '3', '0', 'I wish to unlearn my talents.', '16', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4534', '1', '3', 'Train me.', '5', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4534', '2', '0', 'Learn about Dual Talent Specialization.', '1', '1', '10371', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('4534', '3', '0', 'I wish to unlearn my talents.', '16', '16', '0', '0', '0', '0', '0', null);

# FIX
UPDATE `gameobject` SET `spawnMask` = 1 WHERE `guid` = 103138;
DELETE FROM conditions WHERE SourceTypeOrReferenceId=15 AND SourceGroup=50359;
DELETE FROM conditions WHERE SourceTypeOrReferenceId=14 AND SourceGroup=50359;
DELETE FROM conditions WHERE SourceTypeOrReferenceId=15 AND SourceGroup=50367;
DELETE FROM conditions WHERE SourceTypeOrReferenceId=14 AND SourceGroup=50367;
DELETE FROM conditions WHERE SourceTypeOrReferenceId=15 AND SourceGroup=50350;
DELETE FROM conditions WHERE SourceTypeOrReferenceId=14 AND SourceGroup=50350;
DELETE FROM conditions WHERE SourceTypeOrReferenceId=15 AND SourceGroup=50181;
DELETE FROM conditions WHERE SourceTypeOrReferenceId=14 AND SourceGroup=50181;
DELETE FROM conditions WHERE SourceTypeOrReferenceId=15 AND SourceGroup=50233;
DELETE FROM conditions WHERE SourceTypeOrReferenceId=15 AND SourceGroup=50195;
DELETE FROM conditions WHERE SourceTypeOrReferenceId=15 AND SourceGroup=50230;
DELETE FROM conditions WHERE SourceTypeOrReferenceId=15 AND SourceGroup=50213;
DELETE FROM conditions WHERE SourceTypeOrReferenceId=15 AND SourceGroup=50208;
DELETE FROM conditions WHERE SourceTypeOrReferenceId=15 AND SourceGroup=50200;
DELETE FROM conditions WHERE SourceTypeOrReferenceId=15 AND SourceGroup=50195;
DELETE FROM conditions WHERE SourceTypeOrReferenceId=15 AND SourceGroup=50182;
DELETE FROM conditions WHERE SourceTypeOrReferenceId=15 AND SourceGroup=3403;
DELETE FROM conditions WHERE SourceTypeOrReferenceId=15 AND SourceGroup=25206;
DELETE FROM conditions WHERE SourceTypeOrReferenceId=14 AND SourceGroup=50233;
DELETE FROM conditions WHERE SourceTypeOrReferenceId=14 AND SourceGroup=50195;
DELETE FROM conditions WHERE SourceTypeOrReferenceId=14 AND SourceGroup=50230;
DELETE FROM conditions WHERE SourceTypeOrReferenceId=14 AND SourceGroup=50213;
DELETE FROM conditions WHERE SourceTypeOrReferenceId=14 AND SourceGroup=50208;
DELETE FROM conditions WHERE SourceTypeOrReferenceId=14 AND SourceGroup=50200;
DELETE FROM conditions WHERE SourceTypeOrReferenceId=14 AND SourceGroup=50195;
DELETE FROM conditions WHERE SourceTypeOrReferenceId=14 AND SourceGroup=50182;
DELETE FROM conditions WHERE SourceTypeOrReferenceId=14 AND SourceGroup=3403;
DELETE FROM conditions WHERE SourceTypeOrReferenceId=14 AND SourceGroup=25206;
UPDATE IGNORE conditions SET SourceGroup='9981' WHERE SourceTypeOrReferenceId=15 AND SourceGroup=50370;
UPDATE IGNORE conditions SET SourceGroup='9829' WHERE SourceTypeOrReferenceId=15 AND SourceGroup=50358;
UPDATE IGNORE conditions SET SourceGroup='9219' WHERE SourceTypeOrReferenceId=15 AND SourceGroup=25828;
UPDATE IGNORE conditions SET SourceGroup='10189' WHERE SourceTypeOrReferenceId=15 AND SourceGroup=32346;
UPDATE IGNORE conditions SET SourceGroup='6465' WHERE SourceTypeOrReferenceId=15 AND SourceGroup=50325;
UPDATE IGNORE conditions SET SourceGroup='8761' WHERE SourceTypeOrReferenceId=15 AND SourceGroup=50409;
UPDATE IGNORE conditions SET SourceGroup='10513' WHERE SourceTypeOrReferenceId=15 AND SourceGroup=50262;
UPDATE IGNORE conditions SET SourceGroup='6471' WHERE SourceTypeOrReferenceId=15 AND SourceGroup=50333;
UPDATE IGNORE conditions SET SourceGroup='2465' WHERE SourceTypeOrReferenceId=15 AND SourceGroup=50384;
UPDATE IGNORE conditions SET SourceGroup='9828' WHERE SourceTypeOrReferenceId=15 AND SourceGroup=50347;
UPDATE IGNORE conditions SET SourceGroup='9827' WHERE SourceTypeOrReferenceId=15 AND SourceGroup=50346;
UPDATE IGNORE conditions SET SourceGroup='9830' WHERE SourceTypeOrReferenceId=15 AND SourceGroup=50345;
UPDATE IGNORE conditions SET SourceGroup='8077' WHERE SourceTypeOrReferenceId=15 AND SourceGroup=50315;
UPDATE IGNORE conditions SET SourceGroup='6463' WHERE SourceTypeOrReferenceId=15 AND SourceGroup=50313;
UPDATE IGNORE conditions SET SourceGroup='3925' WHERE SourceTypeOrReferenceId=15 AND SourceGroup=50233;
UPDATE IGNORE conditions SET SourceGroup='4502' WHERE SourceTypeOrReferenceId=15 AND SourceGroup=50195;
UPDATE IGNORE conditions SET SourceGroup='2385' WHERE SourceTypeOrReferenceId=15 AND SourceGroup=50183;
UPDATE IGNORE conditions SET SourceGroup='4474' WHERE SourceTypeOrReferenceId=15 AND SourceGroup=50230;
UPDATE IGNORE conditions SET SourceGroup='3643' WHERE SourceTypeOrReferenceId=15 AND SourceGroup=50213;
UPDATE IGNORE conditions SET SourceGroup='2304' WHERE SourceTypeOrReferenceId=15 AND SourceGroup=50208;
UPDATE IGNORE conditions SET SourceGroup='381' WHERE SourceTypeOrReferenceId=15 AND SourceGroup=50200;
UPDATE IGNORE conditions SET SourceGroup='4513' WHERE SourceTypeOrReferenceId=15 AND SourceGroup=50182;
UPDATE IGNORE conditions SET SourceGroup='4515' WHERE SourceTypeOrReferenceId=15 AND SourceGroup=3403;
UPDATE IGNORE conditions SET SourceGroup='9724' WHERE SourceTypeOrReferenceId=15 AND SourceGroup=28604;
UPDATE IGNORE conditions SET SourceGroup='9190' WHERE SourceTypeOrReferenceId=15 AND SourceGroup=25841;
UPDATE IGNORE conditions SET SourceGroup='9972' WHERE SourceTypeOrReferenceId=15 AND SourceGroup=30535;
UPDATE IGNORE conditions SET SourceGroup='9961' WHERE SourceTypeOrReferenceId=15 AND SourceGroup=30372;
UPDATE IGNORE conditions SET SourceGroup='9945' WHERE SourceTypeOrReferenceId=15 AND SourceGroup=30365;
UPDATE IGNORE conditions SET SourceGroup='9953' WHERE SourceTypeOrReferenceId=15 AND SourceGroup=30363;
UPDATE IGNORE conditions SET SourceGroup='9968' WHERE SourceTypeOrReferenceId=15 AND SourceGroup=30369;
UPDATE IGNORE conditions SET SourceGroup='6826' WHERE SourceTypeOrReferenceId=15 AND SourceGroup=15601;
UPDATE IGNORE conditions SET SourceGroup='6825' WHERE SourceTypeOrReferenceId=15 AND SourceGroup=15577;
UPDATE IGNORE conditions SET SourceGroup='9931' WHERE SourceTypeOrReferenceId=15 AND SourceGroup=30348;
UPDATE IGNORE conditions SET SourceGroup='9946' WHERE SourceTypeOrReferenceId=15 AND SourceGroup=30362;
UPDATE IGNORE conditions SET SourceGroup='6827' WHERE SourceTypeOrReferenceId=15 AND SourceGroup=15605;
UPDATE IGNORE conditions SET SourceGroup='9971' WHERE SourceTypeOrReferenceId=15 AND SourceGroup=30537;
UPDATE IGNORE conditions SET SourceGroup='9948' WHERE SourceTypeOrReferenceId=15 AND SourceGroup=30533;
UPDATE IGNORE conditions SET SourceGroup='9938' WHERE SourceTypeOrReferenceId=15 AND SourceGroup=30360;
UPDATE IGNORE conditions SET SourceGroup='9954' WHERE SourceTypeOrReferenceId=15 AND SourceGroup=30358;
UPDATE IGNORE conditions SET SourceGroup='9963' WHERE SourceTypeOrReferenceId=15 AND SourceGroup=30367;
UPDATE IGNORE conditions SET SourceGroup='9966' WHERE SourceTypeOrReferenceId=15 AND SourceGroup=30534;
UPDATE IGNORE conditions SET SourceGroup='9937' WHERE SourceTypeOrReferenceId=15 AND SourceGroup=30536;
UPDATE IGNORE conditions SET SourceGroup='9980' WHERE SourceTypeOrReferenceId=15 AND SourceGroup=30370;
UPDATE IGNORE conditions SET SourceGroup='6823' WHERE SourceTypeOrReferenceId=15 AND SourceGroup=15569;
UPDATE IGNORE conditions SET SourceGroup='9975' WHERE SourceTypeOrReferenceId=15 AND SourceGroup=30359;
UPDATE IGNORE conditions SET SourceGroup='6831' WHERE SourceTypeOrReferenceId=15 AND SourceGroup=15586;
UPDATE IGNORE conditions SET SourceGroup='9959' WHERE SourceTypeOrReferenceId=15 AND SourceGroup=30538;
UPDATE IGNORE conditions SET SourceGroup='6841' WHERE SourceTypeOrReferenceId=15 AND SourceGroup=15871;
UPDATE IGNORE conditions SET SourceGroup='9941' WHERE SourceTypeOrReferenceId=15 AND SourceGroup=30368;
UPDATE IGNORE conditions SET SourceGroup='6866' WHERE SourceTypeOrReferenceId=15 AND SourceGroup=15563;
UPDATE IGNORE conditions SET SourceGroup='9964' WHERE SourceTypeOrReferenceId=15 AND SourceGroup=30357;
UPDATE IGNORE conditions SET SourceGroup='9935' WHERE SourceTypeOrReferenceId=15 AND SourceGroup=30364;
UPDATE IGNORE conditions SET SourceGroup='6917' WHERE SourceTypeOrReferenceId=15 AND SourceGroup=15864;
UPDATE IGNORE conditions SET SourceGroup='50014' WHERE SourceTypeOrReferenceId=15 AND SourceGroup=50053;
UPDATE IGNORE conditions SET SourceGroup='8851' WHERE SourceTypeOrReferenceId=15 AND SourceGroup=4979;
UPDATE IGNORE conditions SET SourceGroup='9899' WHERE SourceTypeOrReferenceId=15 AND SourceGroup=50032;
UPDATE IGNORE conditions SET SourceGroup='9900' WHERE SourceTypeOrReferenceId=15 AND SourceGroup=30105;
UPDATE IGNORE conditions SET SourceGroup='9677' WHERE SourceTypeOrReferenceId=15 AND SourceGroup=28217;
UPDATE IGNORE conditions SET SourceGroup='9262' WHERE SourceTypeOrReferenceId=15 AND SourceGroup=26206;
UPDATE IGNORE conditions SET SourceGroup='7772' WHERE SourceTypeOrReferenceId=15 AND SourceGroup=18714;
UPDATE IGNORE conditions SET SourceGroup='7771' WHERE SourceTypeOrReferenceId=15 AND SourceGroup=18715;
UPDATE IGNORE conditions SET SourceGroup='7669' WHERE SourceTypeOrReferenceId=15 AND SourceGroup=18351;
UPDATE IGNORE conditions SET SourceGroup='9981' WHERE SourceTypeOrReferenceId=14 AND SourceGroup=50370;
UPDATE IGNORE conditions SET SourceGroup='9829' WHERE SourceTypeOrReferenceId=14 AND SourceGroup=50358;
UPDATE IGNORE conditions SET SourceGroup='9219' WHERE SourceTypeOrReferenceId=14 AND SourceGroup=25828;
UPDATE IGNORE conditions SET SourceGroup='10189' WHERE SourceTypeOrReferenceId=14 AND SourceGroup=32346;
UPDATE IGNORE conditions SET SourceGroup='6465' WHERE SourceTypeOrReferenceId=14 AND SourceGroup=50325;
UPDATE IGNORE conditions SET SourceGroup='8761' WHERE SourceTypeOrReferenceId=14 AND SourceGroup=50409;
UPDATE IGNORE conditions SET SourceGroup='10513' WHERE SourceTypeOrReferenceId=14 AND SourceGroup=50262;
UPDATE IGNORE conditions SET SourceGroup='6471' WHERE SourceTypeOrReferenceId=14 AND SourceGroup=50333;
UPDATE IGNORE conditions SET SourceGroup='2465' WHERE SourceTypeOrReferenceId=14 AND SourceGroup=50384;
UPDATE IGNORE conditions SET SourceGroup='9828' WHERE SourceTypeOrReferenceId=14 AND SourceGroup=50347;
UPDATE IGNORE conditions SET SourceGroup='9827' WHERE SourceTypeOrReferenceId=14 AND SourceGroup=50346;
UPDATE IGNORE conditions SET SourceGroup='9830' WHERE SourceTypeOrReferenceId=14 AND SourceGroup=50345;
UPDATE IGNORE conditions SET SourceGroup='8077' WHERE SourceTypeOrReferenceId=14 AND SourceGroup=50315;
UPDATE IGNORE conditions SET SourceGroup='6463' WHERE SourceTypeOrReferenceId=14 AND SourceGroup=50313;
UPDATE IGNORE conditions SET SourceGroup='3925' WHERE SourceTypeOrReferenceId=14 AND SourceGroup=50233;
UPDATE IGNORE conditions SET SourceGroup='4502' WHERE SourceTypeOrReferenceId=14 AND SourceGroup=50195;
UPDATE IGNORE conditions SET SourceGroup='2385' WHERE SourceTypeOrReferenceId=14 AND SourceGroup=50183;
UPDATE IGNORE conditions SET SourceGroup='4474' WHERE SourceTypeOrReferenceId=14 AND SourceGroup=50230;
UPDATE IGNORE conditions SET SourceGroup='3643' WHERE SourceTypeOrReferenceId=14 AND SourceGroup=50213;
UPDATE IGNORE conditions SET SourceGroup='2304' WHERE SourceTypeOrReferenceId=14 AND SourceGroup=50208;
UPDATE IGNORE conditions SET SourceGroup='381' WHERE SourceTypeOrReferenceId=14 AND SourceGroup=50200;
UPDATE IGNORE conditions SET SourceGroup='4513' WHERE SourceTypeOrReferenceId=14 AND SourceGroup=50182;
UPDATE IGNORE conditions SET SourceGroup='4515' WHERE SourceTypeOrReferenceId=14 AND SourceGroup=3403;
UPDATE IGNORE conditions SET SourceGroup='9724' WHERE SourceTypeOrReferenceId=14 AND SourceGroup=28604;
UPDATE IGNORE conditions SET SourceGroup='9190' WHERE SourceTypeOrReferenceId=14 AND SourceGroup=25841;
UPDATE IGNORE conditions SET SourceGroup='9972' WHERE SourceTypeOrReferenceId=14 AND SourceGroup=30535;
UPDATE IGNORE conditions SET SourceGroup='9961' WHERE SourceTypeOrReferenceId=14 AND SourceGroup=30372;
UPDATE IGNORE conditions SET SourceGroup='9945' WHERE SourceTypeOrReferenceId=14 AND SourceGroup=30365;
UPDATE IGNORE conditions SET SourceGroup='9953' WHERE SourceTypeOrReferenceId=14 AND SourceGroup=30363;
UPDATE IGNORE conditions SET SourceGroup='9968' WHERE SourceTypeOrReferenceId=14 AND SourceGroup=30369;
UPDATE IGNORE conditions SET SourceGroup='6826' WHERE SourceTypeOrReferenceId=14 AND SourceGroup=15601;
UPDATE IGNORE conditions SET SourceGroup='6825' WHERE SourceTypeOrReferenceId=14 AND SourceGroup=15577;
UPDATE IGNORE conditions SET SourceGroup='9931' WHERE SourceTypeOrReferenceId=14 AND SourceGroup=30348;
UPDATE IGNORE conditions SET SourceGroup='9946' WHERE SourceTypeOrReferenceId=14 AND SourceGroup=30362;
UPDATE IGNORE conditions SET SourceGroup='6827' WHERE SourceTypeOrReferenceId=14 AND SourceGroup=15605;
UPDATE IGNORE conditions SET SourceGroup='9971' WHERE SourceTypeOrReferenceId=14 AND SourceGroup=30537;
UPDATE IGNORE conditions SET SourceGroup='9948' WHERE SourceTypeOrReferenceId=14 AND SourceGroup=30533;
UPDATE IGNORE conditions SET SourceGroup='9938' WHERE SourceTypeOrReferenceId=14 AND SourceGroup=30360;
UPDATE IGNORE conditions SET SourceGroup='9954' WHERE SourceTypeOrReferenceId=14 AND SourceGroup=30358;
UPDATE IGNORE conditions SET SourceGroup='9963' WHERE SourceTypeOrReferenceId=14 AND SourceGroup=30367;
UPDATE IGNORE conditions SET SourceGroup='9966' WHERE SourceTypeOrReferenceId=14 AND SourceGroup=30534;
UPDATE IGNORE conditions SET SourceGroup='9937' WHERE SourceTypeOrReferenceId=14 AND SourceGroup=30536;
UPDATE IGNORE conditions SET SourceGroup='9980' WHERE SourceTypeOrReferenceId=14 AND SourceGroup=30370;
UPDATE IGNORE conditions SET SourceGroup='6823' WHERE SourceTypeOrReferenceId=14 AND SourceGroup=15569;
UPDATE IGNORE conditions SET SourceGroup='9975' WHERE SourceTypeOrReferenceId=14 AND SourceGroup=30359;
UPDATE IGNORE conditions SET SourceGroup='6831' WHERE SourceTypeOrReferenceId=14 AND SourceGroup=15586;
UPDATE IGNORE conditions SET SourceGroup='9959' WHERE SourceTypeOrReferenceId=14 AND SourceGroup=30538;
UPDATE IGNORE conditions SET SourceGroup='6841' WHERE SourceTypeOrReferenceId=14 AND SourceGroup=15871;
UPDATE IGNORE conditions SET SourceGroup='9941' WHERE SourceTypeOrReferenceId=14 AND SourceGroup=30368;
UPDATE IGNORE conditions SET SourceGroup='6866' WHERE SourceTypeOrReferenceId=14 AND SourceGroup=15563;
UPDATE IGNORE conditions SET SourceGroup='9964' WHERE SourceTypeOrReferenceId=14 AND SourceGroup=30357;
UPDATE IGNORE conditions SET SourceGroup='9935' WHERE SourceTypeOrReferenceId=14 AND SourceGroup=30364;
UPDATE IGNORE conditions SET SourceGroup='6917' WHERE SourceTypeOrReferenceId=14 AND SourceGroup=15864;
UPDATE IGNORE conditions SET SourceGroup='50014' WHERE SourceTypeOrReferenceId=14 AND SourceGroup=50053;
UPDATE IGNORE conditions SET SourceGroup='8851' WHERE SourceTypeOrReferenceId=14 AND SourceGroup=4979;
UPDATE IGNORE conditions SET SourceGroup='9899' WHERE SourceTypeOrReferenceId=14 AND SourceGroup=50032;
UPDATE IGNORE conditions SET SourceGroup='9900' WHERE SourceTypeOrReferenceId=14 AND SourceGroup=30105;
UPDATE IGNORE conditions SET SourceGroup='9677' WHERE SourceTypeOrReferenceId=14 AND SourceGroup=28217;
UPDATE IGNORE conditions SET SourceGroup='9262' WHERE SourceTypeOrReferenceId=14 AND SourceGroup=26206;
UPDATE IGNORE conditions SET SourceGroup='7772' WHERE SourceTypeOrReferenceId=14 AND SourceGroup=18714;
UPDATE IGNORE conditions SET SourceGroup='7771' WHERE SourceTypeOrReferenceId=14 AND SourceGroup=18715;
UPDATE IGNORE conditions SET SourceGroup='7669' WHERE SourceTypeOrReferenceId=14 AND SourceGroup=18351;



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

UPDATE version SET `cache_id`= '589';
UPDATE version SET `core_revision`= '11463';
UPDATE version SET `db_version`= 'YTDB_0.14.1_R589_TC_R11463_TDBAI_335.0.3_RuDB_R38.7';
