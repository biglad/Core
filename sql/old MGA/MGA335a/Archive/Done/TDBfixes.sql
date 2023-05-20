-- Add Equipment Templates for Alliance Champions
DELETE FROM `creature_equip_template` WHERE `entry` IN (1895,1896,1897,1898,1899,1900,1901,1902);
INSERT INTO `creature_equip_template` (`entry`,`equipentry1`,`equipentry2`,`equipentry3`) VALUES
(1895,46069,143,0),   -- Stormwind Valiant
(1896,46069,21572,0), -- Stormwind Champion
(1897,46069,6254,0),  -- Ironforge Valiant & Champion
(1898,46069,12453,0), -- Darnassus Valiant & Champion
(1899,46069,24331,0), -- Exodar Valiant
(1900,46069,29821,0), -- Exodar Champion
(1901,46069,11199,0), -- Gnomeregan Valiant
(1902,46069,11200,0); -- Gnomeregan Champion
-- Fix for Stormwind Champions "Argent Tournament"
UPDATE `creature_addon` SET `bytes2`=1,`emote`=50,`auras`= '62596 0 62852 0 64723 0' WHERE `guid` IN (72212,72213);
UPDATE `creature_addon` SET `bytes2`=1,`emote`=50,`auras`= '62594 0 62852 0 64723 0' WHERE `guid` IN (85089,85090);
UPDATE `creature` SET `equipment_id`=1895 WHERE `guid` IN (72212,72213);
UPDATE `creature` SET `equipment_id`=1896 WHERE `guid` IN (85089,85090);
-- Fix for Ironforge Champions "Argent Tournament"
UPDATE `creature_addon` SET `bytes2`=1,`emote`=50,`auras`= '63426 0 62852 0 64723 0' WHERE `guid` IN (72349,72402);
UPDATE `creature_addon` SET `bytes2`=1,`emote`=50,`auras`= '63427 0 62852 0 64723 0' WHERE `guid` IN (85073,85074);
UPDATE `creature` SET `equipment_id`=1897 WHERE `guid` IN (72349,72402,85073,85074);
-- Fix for Darnassus Champions "Argent Tournament"
UPDATE `creature_addon` SET `bytes2`=1,`emote`=50,`auras`= '63405 0 62852 0 64723 0' WHERE `guid` IN (134702,134703);
UPDATE `creature_addon` SET `bytes2`=1,`emote`=50,`auras`= '63406 0 62852 0 64723 0' WHERE `guid` IN (85054,85055);
UPDATE `creature` SET `equipment_id`=1898 WHERE `guid` IN (134702,134703,85054,85055);
-- Fix for Exodar Champions "Argent Tournament"
UPDATE `creature_addon` SET `bytes2`=1,`emote`=50,`auras`= '63422 0 62852 0 64723 0' WHERE `guid` IN (72217,72218);
UPDATE `creature_addon` SET `bytes2`=1,`emote`=50,`auras`= '63423 0 62852 0 64723 0' WHERE `guid` IN (85058,85059);
UPDATE `creature` SET `equipment_id`=1899 WHERE `guid` IN (72217,72218);
UPDATE `creature` SET `equipment_id`=1900 WHERE `guid` IN (85058,85059);
-- Fix for Gnomeregan Champions "Argent Tournament"
UPDATE `creature_addon` SET `bytes2`=1,`emote`=50,`auras`= '63395 0 62852 0 64723 0' WHERE `guid` IN (70551,70950);
UPDATE `creature_addon` SET `bytes2`=1,`emote`=50,`auras`= '63396 0 62852 0 64723 0' WHERE `guid` IN (85061,85062);
UPDATE `creature` SET `equipment_id`=1901 WHERE `guid` IN (70551,70950);
UPDATE `creature` SET `equipment_id`=1902 WHERE `guid` IN (85061,85062);

-- Add Equipment Templates for Horde Champions
DELETE FROM `creature_equip_template` WHERE `entry` IN (1903,1904,1905,1906,1907,1908,1909,1910,1911);
INSERT INTO `creature_equip_template` (`entry`,`equipentry1`,`equipentry2`,`equipentry3`) VALUES
(1903,46070,24322,0), -- Silvermoon Valiant
(1904,46070,46093,0), -- Silvermoon Champion
(1905,46070,38635,0), -- ThunderBluff Valiant & Champion
(1906,46070,39926,0), -- Orgimmar Valiant
(1907,46070,46092,0), -- Orgimmar Champion
(1908,46070,39922,0), -- Sen'jin Valiant
(1909,46070,42938,0), -- Sen'jin Champion
(1910,46070,25818,0), -- Undercity Valiant
(1911,46070,18166,0); -- Undercity Champion
-- Fix for Silvermoon Champions "Argent Tournament"
-- UPDATE `creature_addon` SET `bytes2`=1,`emote`=50,`auras`= '63402 0 62852 0 64723 0' WHERE `guid` IN (xxxx,xxxx);
UPDATE `creature_addon` SET `bytes2`=1,`emote`=50,`auras`= '63403 0 62852 0 64723 0' WHERE `guid` IN (85084,85085);
-- UPDATE `creature` SET `equipment_id`=1903 WHERE `guid` IN (xxxx,xxxx);
UPDATE `creature` SET `equipment_id`=1904 WHERE `guid` IN (85084,85085);
-- Fix for Thunder Bluff Champions "Argent Tournament"
-- UPDATE `creature_addon` SET `bytes2`=1,`emote`=50,`auras`= '63435 0 62852 0 64723 0' WHERE `guid` IN (xxxx,xxxx);
UPDATE `creature_addon` SET `bytes2`=1,`emote`=50,`auras`= '63436 0 62852 0 64723 0' WHERE `guid` IN (85095,85096);
UPDATE `creature` SET `equipment_id`=1905 WHERE `guid` IN (85095,85096); -- add valiants here
-- Fix for Orgrimmar Champions "Argent Tournament"
UPDATE `creature_addon` SET `bytes2`=1,`emote`=50,`auras`= '63432 0 62852 0 64723 0' WHERE `guid` IN (72219,72220);
UPDATE `creature_addon` SET `bytes2`=1,`emote`=50,`auras`= '63433 0 62852 0 64723 0' WHERE `guid` IN (85078,85079);
UPDATE `creature` SET `equipment_id`=1906 WHERE `guid` IN (72219,72220);
UPDATE `creature` SET `equipment_id`=1907 WHERE `guid` IN (85078,85079);
-- Fix for Sen'jin Champions "Argent Tournament"
UPDATE `creature_addon` SET `bytes2`=1,`emote`=50,`auras`= '63398 0 62852 0 64723 0' WHERE `guid` IN (65451,65522);
UPDATE `creature_addon` SET `bytes2`=1,`emote`=50,`auras`= '63399 0 62852 0 64723 0' WHERE `guid` IN (85080,85081);
UPDATE `creature` SET `equipment_id`=1908 WHERE `guid` IN (65451,65522);
UPDATE `creature` SET `equipment_id`=1909 WHERE `guid` IN (85080,85081);
-- Fix for Undercity Champions "Argent Tournament"
-- UPDATE `creature_addon` SET `bytes2`=1,`emote`=50,`auras`= '63429 0 62852 0 64723 0' WHERE `guid` IN (xxxx,xxxx);
UPDATE `creature_addon` SET `bytes2`=1,`emote`=50,`auras`= '63430 0 62852 0 64723 0' WHERE `guid` IN (85099,85100);
-- UPDATE `creature` SET `equipment_id`=1910 WHERE `guid` IN (xxxx,xxxx);
UPDATE `creature` SET `equipment_id`=1911 WHERE `guid` IN (85099,85100);

-- Fix scarlet canons
DELETE FROM `creature` WHERE `id`=28887;
DELETE FROM `creature` WHERE `id`=28833;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`) VALUES
(130112, 28833, 609, 1, 1, 25723, 0, 2104.74, -6179.82, 13.47, 1.22173, 360, 5, 0, 26140, 0, 0, 0),
(130113, 28833, 609, 1, 1, 25723, 0, 2253.24, -6193.09, 13.4068, 1.85005, 360, 5, 0, 26140, 0, 0, 0),
(130114, 28833, 609, 1, 1, 25723, 0, 2264.77, -6189.18, 13.6959, 1.8326, 360, 5, 0, 26140, 0, 0, 0),
(130115, 28833, 609, 1, 1, 25723, 0, 2259.07, -6191.02, 13.4886, 1.8326, 360, 5, 0, 26140, 0, 0, 0),
(130116, 28833, 609, 1, 1, 25723, 0, 2116.39, -6183.81, 13.7587, 1.22173, 360, 5, 0, 26140, 0, 0, 0),
(130117, 28833, 609, 1, 1, 25723, 0, 2110.8, -6181.86, 13.5539, 1.25664, 360, 5, 0, 26140, 0, 0, 0);

-- Add equipment for Trial of the Champion bosses
DELETE FROM `creature_equip_template` WHERE `entry` IN (2001,2002,2003);
INSERT INTO `creature_equip_template` (`entry`,`equipentry1`,`equipentry2`,`equipentry3`) VALUES
(2001,40395,30882,0), -- Eadric the Pure <Grand Champion of the Argent Crusade>
(2002,22406,0,0), -- Argent Confessor Paletress
(2003,40343,0,0); -- The Black Knight

SET @Eadric := (SELECT `guid` FROM `creature` WHERE `id`=35119);
-- Fix for Eadric the Pure
UPDATE `creature` SET `equipment_id`=2001 WHERE `guid`=@Eadric; -- Equipment Torch and Shield.
UPDATE `creature_addon` SET `auras`= '66865 0' WHERE `guid`=@Eadric; -- Paladin-like aura he's using.

SET @Paletress := (SELECT `guid` FROM `creature` WHERE `id`=34928);
-- Fix for Argent Confessor Paletress
UPDATE `creature` SET `equipment_id`=2002 WHERE `guid`=@Paletress; -- Stave

SET @BlackKnight := (SELECT `guid` FROM `creature` WHERE `id`=35451);
-- Fix for The Black Knight
UPDATE `creature` SET `equipment_id`=2003 WHERE `guid`=@BlackKnight; 
-- 2-hand sword

-- Koralon the Flame Watcher event ai 
-- Set up creature for eventai 
UPDATE `creature_template` SET `AIname` = 'EventAI' WHERE `entry` = '35013'; 
-- Make eventAI for the creature 
INSERT IGNORE INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `action1_param3`, `action2_type`, `action2_param1`, `action2_param2`, `action2_param3`, `action3_type`, `action3_param1`, `action3_param2`, `action3_param3`, `comment`) VALUES ('10186001', '10186', '0', '0', '100', '7', '15000', '25000', '20000', '25000', '11', '66665', '4', '2', '11', '66725', '0', '2', '11', '66721', '0', '2', 'Koralon the Flame Watcher Script'); 
INSERT IGNORE INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `action1_param3`, `action2_type`, `action2_param1`, `action2_param2`, `action2_param3`, `action3_type`, `action3_param1`, `action3_param2`, `action3_param3`, `comment`) VALUES ('35013001', '35013', '0', '0', '100', '7', '15000', '25000', '20000', '28000', '11', '66665', '4', '2', '11', '66725', '0', '2', '11', '66721', '0', '2', 'Koralon the Flame Watcher Script'); 

-- Move the Owings sisters to a better location and stop their movement.
UPDATE `creature` SET `MovementType`=0, `spawndist`=0, `position_x`=451.294250, `position_y`=-4541.584473, `position_z`=244.864990, `orientation`=3.743823 WHERE `guid`=88150;
UPDATE `creature` SET `MovementType`=0, `spawndist`=0, `position_x`=452.503571, `position_y`=-4543.080078, `position_z`=244.865204, `orientation`=3.682944 WHERE `guid`=88151;

-- Add missing books for Achievement Higher Learning in Dalaran (WORKAROUND)
delete from `gameobject` where `id` in (192708,192710,192713,192866,192709,192711,192865,192867); 
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values
(NULL,192708,571,1,1,5814.2,582.467,652.747,4.74704,0,0,0.694751,-0.719251,25,0,1),
(NULL,192710,571,1,65535,5811.72,796.95,662.14,3.44703,0,0,0.988361,-0.152125,25,0,1),
(NULL,192713,571,1,1,5808.15,691.051,658.715,5.51124,0,0,0.376461,-0.926432,25,0,1),
(NULL,192866,571,1,65535,5850.12,664.21,658.429,3.97169,0,0,0.915097,-0.403233,25,0,1),
(NULL,192709,571,1,1,5763.48,618.075,650.092,0.520824,0,0,0.257479,0.966284,25,0,1), 
(NULL,192711,571,1,1,5777.89,832.48,680.296,3.47549,0,0,0.986096,-0.166176,25,0,1),
(NULL,192865,571,1,1,5776.82,518.126,653.918,0.370885,0,0,0.184381,0.982855,25,0,1), 
(NULL,192867,571,1,65535,5844.61,664.541,649.373,-0.331611,0,0,0,0,180,100,1);

-- Add missing gameobject for visual of quest Latent Power (northern stone)
DELETE FROM gameobject WHERE id IN (188479,188469,188473);
INSERT INTO `gameobject` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecs`,`animprogress`,`state`) VALUES
(NULL,188469,571,1,1,4116.89,-5251.95,7.25879,2.05949,0,0,0,1,300,100,1),
(NULL,188469,571,1,1,3967.76,-4999.08,72.8074,1.0472,0,0,0,1,300,100,1),
(NULL,188473,571,1,1,3969.73,-5000.23,72.2324,-1.71042,0,0,0,1,300,100,1),
(NULL,188473,571,1,1,4118.19,-5251.46,7.18585,2.40855,0,0,0,1,300,100,1),
(NULL,188479,571,1,1,4116.89,-5251.95,7.25879,2.05949,0,0,0,1,300,100,1),
(NULL,188479,571,1,1,3967.76,-4999.08,72.8074,1.0472,0,0,0,1,300,100,1),
(NULL,188473,571,1,1,4128.46,-4852.93,73.124,3.49344,0,0,0.984565,-0.175018,300,100,1),
(NULL,188469,571,1,1,4128.46,-4852.93,73.124,3.49344,0,0,0.984565,-0.175018,300,100,1),
(NULL,188479,571,1,1,4128.46,-4852.93,73.124,3.49344,0,0,0.984565,-0.175018,300,100,1);

-- original fix by 8andrej8, modified to TDB standards (WORKAROUND)
-- Fix unit_flag on NPC Enraged Panther ( http://www.wowhead.com/?npc=10992 ) from 320 to 64
UPDATE `creature_template` SET `unit_flags`=`unit_flags`&~256 WHERE `entry`=10992;

-- Sapphire Signet (JC Item) missing random enchantment floor/round up values to make chance sum 100 exactly
UPDATE `item_enchantment_template` SET `chance`=1 WHERE (`entry`=3461 AND `chance`<2) OR (`entry`=3461 AND `ench` IN (410,611,612,613)); -- adjust for rounding error
UPDATE `item_enchantment_template` SET `chance`=FLOOR(`chance`) WHERE `entry`=3461 AND `chance`>2;

-- Brann Bronzebeard event (npc's are friendly, they should be hostile)
update `creature_template` set `faction_A`=14, `faction_H`=14 where `entry`=27983; -- Dark rune protector
update `creature_template` set `faction_A`=14, `faction_H`=14 where `entry`=31876; -- Dark rune protector (heroic)
update `creature_template` set `faction_A`=14, `faction_H`=14 where `entry`=27984; -- Dark rune stormcaller
update `creature_template` set `faction_A`=14, `faction_H`=14 where `entry`=31877; -- Dark rune stormcaller (heroic)
update `creature_template` set `faction_A`=14, `faction_H`=14 where `entry`=27985; -- Iron golem custodian
update `creature_template` set `faction_A`=14, `faction_H`=14 where `entry`=31380; -- Iron golem custodian (heroic)

-- Add Reticulated Armor Webbing
DELETE FROM `npc_trainer` WHERE `entry` IN (33586,25277,26955,26991,28697,26907) AND `spell`=63770;
INSERT INTO `npc_trainer` (`entry`,`spell`,`spellcost`,`reqskill`,`reqskillvalue`,`reqlevel`) VALUES 
(33586,63770,125000,202,400,0), -- Binkie Brightgear
(25277,63770,125000,202,400,0), -- Chief Engineer Leveny
(26955,63770,125000,202,400,0), -- Jamesina Watterly
(26991,63770,125000,202,400,0), -- Sock Brightbolt
(28697,63770,125000,202,400,0), -- Timofey Oshenko
(26907,63770,125000,202,400,0); -- Tisha Longbridge

-- Ques givet by Luuri <Mistress of Horses> (http://www.wowhead.com/?npc=33771)
-- Quest: http://www.wowhead.com/?quest=13811 only can be done for Horde class
-- Ques givet by Eadric the Pure <Grand Champion of the Argent Crusade> (http://www.wowhead.com/?npc=33759)
-- Quest: http://www.wowhead.com/?quest=13809 only can be done for Horde class
-- Quest: http://www.wowhead.com/?quest=13862 only can be done for Horde class
-- Quest give by: Crok Scourgebane <Grand Champion of the Ebon Blade> (http://www.wowhead.com/?npc=33762)
-- Quest: http://www.wowhead.com/?quest=13812 only can be done for Horde class
-- Quest: http://www.wowhead.com/?quest=13863 only can be done for Horde class
-- Quest give by: Illyrie Nightfall <Mistress of Horses> (http://www.wowhead.com/?npc=33770) 
-- Quest: http://www.wowhead.com/?quest=13814 only can be done for Horde class

UPDATE `quest_template` SET `RequiredRaces`=`RequiredRaces`|690 WHERE `entry` IN (13811,13809,13862,13812,13863,13814);

-- Ques givet by Luuri <Mistress of Horses> (http://www.wowhead.com/?npc=33771)
-- Quest: http://www.wowhead.com/?quest=13790 only can be done for Alliance class
-- Ques givet by Eadric the Pure <Grand Champion of the Argent Crusade> (http://www.wowhead.com/?npc=33759)
-- Quest: http://www.wowhead.com/?quest=13682 only can be done for Alliance class
-- Quest: http://www.wowhead.com/?quest=13861 only can be done for Alliance class
-- Quest give by: Crok Scourgebane <Grand Champion of the Ebon Blade> (http://www.wowhead.com/?npc=33762)
-- Quest: http://www.wowhead.com/?quest=13864 only can be done for Alliance class
-- Quest: http://www.wowhead.com/?quest=13788 only can be done for Alliance class
-- Quest give by: Illyrie Nightfall <Mistress of Horses> (http://www.wowhead.com/?npc=33770) 
-- Quest: http://www.wowhead.com/?quest=13793 only can be done for Alliance class

UPDATE `quest_template` SET `RequiredRaces`=`RequiredRaces`|1101 WHERE `entry` IN (13790,13682,13861,13864,13788,13793);

-- Make the chopper mount usable as multimount, horde(i=41505) and ally(i=44413) version
UPDATE `creature_template` SET `vehicleid`=318 WHERE `entry` IN (29929,32286);

-- Spawn objects for Amidst the Confusion (q13174)
-- Source: wowhead
-- spawntimesecs are set for 120 wich can be wrong
DELETE FROM `gameobject` WHERE `id` IN (193403,193404,193405,193406);
INSERT INTO `gameobject` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecs`,`animprogress`,`state`) VALUES
(NULL,193403,571,1,1,8020.37,2991.11,565.107,2.18077,0,0,0.886806,0.462143,120,0,1), -- Weeping Quarry Document
(NULL,193404,571,1,1,7893.24,2987.94,519.192,0.507877,0,0,0.251218,0.96793,120,0,1), -- Weeping Quarry Ledger
(NULL,193405,571,1,1,7779.33,3019.19,518.656,2.01978,0,0,0.846774,0.531954,120,0,1), -- Weeping Quarry Map
(NULL,193406,571,1,1,7685.78,3108.86,557.786,4.88413,0,0,0.643857,-0.765146,120,0,1); -- Weeping Quarry Schedule

-- Fix Mind Flay dmg
DELETE FROM `spell_bonus_data` WHERE `entry`=58381;
-- This is the triggered of every rank of Mind Flay
INSERT INTO `spell_bonus_data` (`entry`,`direct_bonus`,`dot_bonus`,`ap_bonus`,`ap_dot_bonus`,`comments`) values 
(58381,0.257,-1,-1,-1, 'Priest - Mind Flay triggered');

-- Fix Alystros the Verdant Keeper (c27249) to be attackable
UPDATE `creature_template` SET `unit_flags`=`unit_flags`&~256 WHERE `entry`=27249;

-- Missing Mining Training spells from Grumbol Stoutpick <Grand Master Mining Trainer> c26912
-- Source: wowhead

-- Cleanup and Insert
DELETE FROM `npc_trainer` WHERE `entry`=26912;
INSERT INTO `npc_trainer` (`entry`,`spell`,`spellcost`,`reqskill`,`reqskillvalue`,`reqlevel`) VALUES
-- Mining skills
(26912,2581,10,0,0,0), -- Apperentice Mining
(26912,2582,500,186,50,0), -- Journeyman Mining
(26912,3568,5000,186,125,0), -- Expert Mining
(26912,10249,50000,186,200,0), -- Artisan Mining
(26912,29355,100000,186,275,0), -- Master Mining
(26912,50309,350000,186,350,0), -- Grand Master Mining
-- Smelting skills
(26912,2658,200,186,75,0), -- Smelt Silver
(26912,2659,200,186,65,0), -- Smelt Bronze
(26912,3304,50,186,65,0), -- Smelt Tin
(26912,3307,500,186,125,0), -- Smelt Iron
(26912,3308,2500,186,155,0), -- Smelt Gold
(26912,3569,2500,186,165,0), -- Smelt Steel
(26912,10097,5000,186,175,0), -- Smelt Mithril
(26912,10098,10000,186,230,0), -- Smelt Truesilver
(26912,16153,20000,186,250,0), -- Smelt Thorium
(26912,29356,40000,186,300,0), -- Smelt Fel Iron
(26912,29358,40000,186,325,0), -- Smelt Adamantite
(26912,29359,40000,186,350,0), -- Smelt Eternium
(26912,29360,40000,186,350,0), -- Smelt Felsteel
(26912,29361,100000,186,375,0), -- Smelt Khorium
(26912,70524,10000,186,250,0), -- Enchanted Thorium
(26912,29686,100000,186,375,0), -- Smelt Hardened Adamantite
(26912,35750,10000,186,300,0), -- Earth Shatter
(26912,35751,10000,186,300,0), -- Fire Sunder
(26912,49252,100000,186,350,0), -- Smelt Cobalt
(26912,49258,150000,186,400,0), -- Smelt Saronite
(26912,55208,200000,186,450,0), -- Smelt Titansteel
(26912,55211,200000,186,450,0); -- Smelt Titanium

-- Fix multiple drop problem with Mace of the Violet Guardian i38152
DELETE FROM `creature_loot_template` WHERE `item`=38152;

-- Adding Kaganishu spawn in Borean Tundra
DELETE FROM `creature` WHERE `id`=25427;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`) VALUES
(NULL,25427,571,1,1,0,0,4406.67,5330.56,-24.5757,5.52869,1200,0,0,9291,9693,0,0);

-- Remove Violet Signet of the Great Protector from reference_loot_template
DELETE FROM `reference_loot_template` WHERE `item`=29279;

-- Wrong faction for Novos the summoner event spawns, this should fix the problem
update `creature_template` set `faction_A`=21, `faction_H`=21 where `entry`=26627; -- Crystal Handler (normal difficulty)
update `creature_template` set `faction_A`=21, `faction_H`=21 where `entry`=31344; -- Crystal Handler (Heroic)
update `creature_template` set `faction_A`=21, `faction_H`=21 where `entry`=27598; -- Fetid Troll Corpse (normal)
update `creature_template` set `faction_A`=21, `faction_H`=21 where `entry`=31873; -- Fetid Troll Corpse (Heroic)
update `creature_template` set `faction_A`=21, `faction_H`=21 where `entry`=27600; -- Risen Shadowcaster (normal)
update `creature_template` set `faction_A`=21, `faction_H`=21 where `entry`=31356; -- Risen Shadowcaster (Heroic)
update `creature_template` set `faction_A`=21, `faction_H`=21 where `entry`=27597; -- Hulking Corpse (normal)
update `creature_template` set `faction_A`=21, `faction_H`=21 where `entry`=31348; -- Hulking Corpse (Heroic)

-- correct spell list for npc 2834
-- data taken from wowhead
-- http://www.wowhead.com/?npc=2834
DELETE FROM `npc_trainer` WHERE `entry`=2834;
INSERT INTO `npc_trainer` (entry,spell,spellcost,reqskill,reqskillvalue,reqlevel) VALUES 
(2834,7620,100,0,0,5), -- Apprentice fishing
(2834,7731,500,356,50,1), -- Journeyman fishing
(2834,7732,10000,356,125,1), -- Expert fishing
(2834,18248,25000,356,200,1); -- Artisan fishing

-- NPC 2834 no longer sells and doesn't have a vendor list in TDB 0.0.7 (24)
-- Remove vendor flag using bitwise math
UPDATE `creature_template` SET `npcflag`=`npcflag`&~128 WHERE `entry`=2834;

-- Add missing Spellfocus gameobjects used by questitem Cannoneer's Smoke Flare(33335)
-- xxx guids to be assigned by tdb... substitute with null for testing
-- Spellfocus GOs can not be gotten from sniffs and the data isn't available ANYWHERE else.
-- Usual spawn location is in the exact same location as the visible gameobject.
DELETE FROM `gameobject` WHERE `id`=300163;
INSERT INTO `gameobject` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`position_x`,`position_y`,`position_z`,`orientation`, `rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecs`,`animprogress`,`state`) VALUES
(NULL,300163,571,1,1,1498.65,-6193.97,15.6769,3.43613,0,0,0.989175,-0.146738,25,0,1),
(NULL,300163,571,1,1,1576.89,-6252.19,15.7494,2.96725,0,0,0.996203,0.0870613,25,0,1);

-- Inserts correct data for questgiver 1500
DELETE FROM `creature_questrelation` WHERE `quest` = 354;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (1500, 354);
-- Inserts correct data for questgiver 1500
DELETE FROM `creature_involvedrelation` WHERE `quest` = 354;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (1500, 354);
-- Removes required quest
UPDATE `quest_template` SET `PrevQuestId` = 0 WHERE `entry` = 354;
-- Added Reputation on Kill with Horde Expdition/Alliance Vanguard for Gundrak
DELETE FROM `creature_onkill_reputation` WHERE `creature_id` IN (30939,30925,30929,30930,30935,30936,30932,30933,30926,30938,30927,30942,30931,30928,30934,30940,30943,31365,29307,31368,30530,31370,31367);
INSERT INTO `creature_onkill_reputation` (`creature_id`,`RewOnKillRepFaction1`,`RewOnKillRepFaction2`,`MaxStanding1`,`IsTeamAward1`,`RewOnKillRepValue1`,`MaxStanding2`,`IsTeamAward2`,`RewOnKillRepValue2`,`TeamDependent`) VALUES
(30939,1037,1052,7,0,15,7,0,15,1),
(30925,1037,1052,7,0,15,7,0,15,1),
(30929,1037,1052,7,0,15,7,0,15,1),
(30930,1037,1052,7,0,15,7,0,15,1),
(30935,1037,1052,7,0,15,7,0,15,1),
(30936,1037,1052,7,0,15,7,0,15,1),
(30932,1037,1052,7,0,15,7,0,15,1),
(30933,1037,1052,7,0,15,7,0,15,1),
(30926,1037,1052,7,0,15,7,0,15,1),
(30938,1037,1052,7,0,15,7,0,15,1),
(30927,1037,1052,7,0,15,7,0,15,1),
(30942,1037,1052,7,0,15,7,0,15,1),
(30931,1037,1052,7,0,2,7,0,2,1),
(30928,1037,1052,7,0,2,7,0,2,1),
(30934,1037,1052,7,0,2,7,0,2,1),
(30940,1037,1052,7,0,2,7,0,2,1),
(30943,1037,1052,7,0,2,7,0,2,1),
(31365,1037,1052,7,0,250,7,0,250,1),
(29307,1037,1052,7,0,250,7,0,250,1),
(31368,1037,1052,7,0,250,7,0,250,1),
(30530,1037,1052,7,0,250,7,0,250,1),
(31370,1037,1052,7,0,250,7,0,250,1),
(31367,1037,1052,7,0,250,7,0,250,1);

-- add loot to i45986 (Tiny Titanium Lockbox)
-- source: wowhead

SET @Lockbox :=45986;
SET @RareGems :=1+(SELECT `entry` FROM `reference_loot_template` WHERE `entry` BETWEEN 34000 AND 34999 ORDER BY `entry` DESC LIMIT 1);
SET @EpicGems :=@RareGems+1;
SET @Jewelry :=@EpicGems+1;

DELETE FROM `item_loot_template` WHERE `entry` = @Lockbox;
INSERT INTO `item_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`groupid`,`mincountOrRef`,`maxcount`) VALUES
(@Lockbox,1,100,0,-@RareGems,2), -- 2 selections from rare gems
(@Lockbox,2,100,0,-@EpicGems,1), -- 1 selection from epic gems
(@Lockbox,3,100,0,-@Jewelry,1), -- 1 selection from jewelry
(@Lockbox,9355,94,0,1,2), -- Hoop Earring
(@Lockbox,11940,92,0,1,1); -- Sparkly Necklace

DELETE FROM `reference_loot_template` WHERE `entry` IN (@RareGems,@EpicGems);
INSERT INTO `reference_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`groupid`,`mincountOrRef`,`maxcount`) VALUES
-- rare gems
(@RareGems,36921,0,1,1,2), -- Autumn's Glow
(@RareGems,36930,0,1,1,2), -- Monarch Topaz
(@RareGems,36918,0,1,1,2), -- Scarlet Ruby
(@RareGems,36927,0,1,1,1), -- Twilight Opal
(@RareGems,36924,0,1,1,1), -- Sky Sapphire
(@RareGems,36933,0,1,1,1), -- Forest Emerald
-- epic gems
(@EpicGems,45883,26,1,1,1), -- Runed Stormjewel
(@EpicGems,45879,19,1,1,1), -- Delicate Stormjewel
(@EpicGems,45880,19,1,1,1), -- Solid Stormjewel
(@EpicGems,45862,13,1,1,1), -- Bold Stormjewel
(@EpicGems,45987,12,1,1,1), -- Rigid Stormjewel
(@EpicGems,45882,6,1,1,1), -- Brilliant Stormjewel
(@EpicGems,45881,5,1,1,1), -- Sparkling Stormjewel
-- jewelry
(@Jewelry,45994,26,1,1,1), -- Lost Ring
(@Jewelry,45995,19,1,1,1), -- Forgotten Necklace
(@Jewelry,36430,13,1,1,1), -- Puzzle Ring
(@Jewelry,36428,11,1,1,1), -- Bouquet Ring
(@Jewelry,36429,11,1,1,1), -- Spur Ring
(@Jewelry,36442,7,1,1,1), -- Silken Cord Amulet
(@Jewelry,36444,5,1,1,1), -- Ice Encrusted Amulet
(@Jewelry,36443,5,1,1,1), -- Platinum Medallion
(@Jewelry,45859,3,1,1,1); -- The 5 Ring

-- Set Sinok's Key Fragment loot chance correct based on wowarmory
UPDATE `creature_loot_template` SET`ChanceOrQuestChance`=-100 WHERE `item`=36754;

-- Add Missing Jewelcrafter Spells to trainers
-- Source: wowhead

-- Cleanup
DELETE FROM `npc_trainer` WHERE `spell` IN (64727,64725,64726,64728);

SET @Alestos :=26997;
SET @Carter :=26960;
SET @Gebali :=26982;
SET @Oluros :=33590;
SET @Ounhulo :=26915;
SET @Timothy :=28701;

INSERT INTO `npc_trainer` (`entry`,`spell`,`spellcost`,`reqskill`,`reqskillvalue`,`reqlevel`) VALUES
-- Alestos <Grand Master Jewelcrafting Trainer>
(@Alestos,64727,100000,755,420,0), -- Runed Mana Band (s64727)
(@Alestos,64725,100000,755,420,0), -- Emerald Choker (s64725)
(@Alestos,64726,100000,755,420,0), -- Sky Sappire Amulet (s64726)
(@Alestos,64728,100000,755,420,0), -- Scarlet Signet (s64728)
-- Carter Tiffens <Grand Master Jewelcrafting Trainer>
(@Carter,64727,100000,755,420,0), -- Runed Mana Band (s64727)
(@Carter,64725,100000,755,420,0), -- Emerald Choker (s64725)
(@Carter,64726,100000,755,420,0), -- Sky Sappire Amulet (s64726)
(@Carter,64728,100000,755,420,0), -- Scarlet Signet (s64728)
-- Geba'li <Grand Master Jewelcrafting Trainer>
(@Gebali,64727,100000,755,420,0), -- Runed Mana Band (s64727)
(@Gebali,64725,100000,755,420,0), -- Emerald Choker (s64725)
(@Gebali,64726,100000,755,420,0), -- Sky Sappire Amulet (s64726)
(@Gebali,64728,100000,755,420,0), -- Scarlet Signet (s64728)
-- Oluros <Grand Master Jewelcrafting Trainer>
(@Oluros,64727,100000,755,420,0), -- Runed Mana Band (s64727)
(@Oluros,64725,100000,755,420,0), -- Emerald Choker (s64725)
(@Oluros,64726,100000,755,420,0), -- Sky Sappire Amulet (s64726)
(@Oluros,64728,100000,755,420,0), -- Scarlet Signet (s64728)
-- Ounhulo <Grand Master Jewelcrafting Trainer>
(@Ounhulo,64727,100000,755,420,0), -- Runed Mana Band (s64727)
(@Ounhulo,64725,100000,755,420,0), -- Emerald Choker (s64725)
(@Ounhulo,64726,100000,755,420,0), -- Sky Sappire Amulet (s64726)
(@Ounhulo,64728,100000,755,420,0), -- Scarlet Signet (s64728)
-- Timothy Jones <Grand Master Jewelcrafting Trainer>
(@Timothy,64727,100000,755,420,0), -- Runed Mana Band (s64727)
(@Timothy,64725,100000,755,420,0), -- Emerald Choker (s64725)
(@Timothy,64726,100000,755,420,0), -- Sky Sappire Amulet (s64726)
(@Timothy,64728,100000,755,420,0); -- Scarlet Signet (s64728)

-- Update creature 35984 "Sunreaver Dragonhawk" to ignore agro
UPDATE `creature_template` SET `flags_extra`=`flags_extra`|2 WHERE `entry`=35984;

-- Drakari Collosus was using a ref loot table for Drakari Elementals
-- Should only drop item 39220 (Geodesic Fragments)
DELETE FROM `creature_loot_template` WHERE `entry`=29307;
INSERT INTO `creature_loot_template` (`entry`,`item`,`ChanceOrQuestChance`) VALUES
(29307,39220,100);

-- Adding Shiny Treasures (item 38575) to Glowing Crystal in Sholazar Basin
DELETE FROM `gameobject_loot_template` WHERE `entry`=18375 AND `item`=38575;
INSERT INTO `gameobject_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`lootmode`,`groupid`,`mincountOrRef`,`maxcount`,`lootcondition`,`condition_value1`,`condition_value2`) VALUES
(18375,38575,-100,1,0,1,1,0,0,0); -- Glowing Crystal

-- reported by ogeraisi in irc
-- Remove Kil'rek should be spawned by script
-- script does spawn npc
DELETE FROM `creature` WHERE `id`=17229;

-- Add start relation to quest's for achievement Elders of Northrend
INSERT INTO `creature_questrelation` (`id`,`quest`) VALUES
(30348,13012),
(30358,13014),
(30364,13033),
(30362,13018),
(30367,13025),
(30369,13027),
(30370,13028),
(30371,13029),
(30373,13031),
(8719,15599),
(30357,13013),
(30359,13015),
(30360,13016),
(30365,13024),
(30368,13026),
(30363,13019),
(30375,13020),
(30372,13030),
(30374,13032);

-- Add end relation to quest's for achievement Elders of Northrend
INSERT INTO `creature_involvedrelation` (`id`,`quest`) VALUES
(30348,13012),
(30358,13014),
(30364,13033),
(30362,13018),
(30367,13025),
(30369,13027),
(30370,13028),
(30371,13029),
(30373,13031),
(8719,15599),
(30357,13013),
(30359,13015),
(30360,13016),
(30365,13024),
(30368,13026),
(30363,13019),
(30375,13020),
(30372,13030),
(30374,13032);

-- Update creature 30281 "Silver Covenant Hippogryp" to ignore agro
UPDATE `creature_template` SET `flags_extra`=`flags_extra`|2 WHERE `entry`=30281;

-- Add missing GO template for Stormwatcher's Head (191179) (3.3.0a WDB data -- shouldn't matter for this)
DELETE FROM `gameobject_template` WHERE `entry`=191179;
INSERT INTO `gameobject_template` (`entry`,`type`,`displayId`,`name`,`IconName`,`castBarCaption`,`data0`,`data1`,`data2`,`data3`,`data4`,`data5`,`data6`,`data7`,`data8`,`data9`,`data10`,`data11`,`data12`,`data13`,`data14`,`data15`,`data16`,`data17`,`data18`,`data19`,`data20`,`data21`,`data22`,`data23`,`size`,`questItem1`,`questItem2`,`questItem3`,`questItem4`,`questItem5`,`questItem6`) VALUES
(191179,3,7795, 'Stormwatcher''s Head' , '' , '' ,1691,25025,0,1,0,0,0,0,12758,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1.75,39667,0,0,0,0,0);

-- Add missing loot for Stormwatcher's Head (still need spawns)
-- loot template entry is field `data1` from GO template for type 3 GOs
DELETE FROM `gameobject_loot_template` WHERE `entry`=25025;
INSERT INTO `gameobject_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`lootmode`,`groupid`,`mincountOrRef`,`maxcount`,`lootcondition`,`condition_value1`,`condition_value2`) VALUES
(25025,39667,-100,1,0,1,1,0,0,0);

-- Add Spell "Launch Spear" to creature "Ymirheim Spear Gun"
UPDATE `creature_template` SET `speed`=NULL,`spell1`=59894 WHERE `entry`=31280;

-- Fix by juronius
-- Set proper faction for Orabus the Helmsman c32576 (1885 - Vrykul)
UPDATE `creature_template` SET `faction_A`=1885,`faction_H`=1885 WHERE `entry`=32576;

-- Set speed to Null for a number of targets that should not be able to move
UPDATE `creature_template` SET `speed`=NULL WHERE `entry` IN 
(2674,5202,5674,16897,20251,33229,33243,33272);

-- Remove all items from c33680 - Nemiha <Master Jewelcrafting Trainer>
DELETE FROM `npc_vendor` where `entry`=33680;
-- Add items to c33680 - Nemiha <Master Jewelcrafting Trainer>
INSERT INTO `npc_vendor`(`entry`,`item`,`maxcount`,`incrtime`,`ExtendedCost`) VALUES
(33680,20815,0,0,0), -- Jeweler's Kit
(33680,20824,0,0,0), -- Simple Grinder
(33680,46897,0,0,2436), -- Design: Enduring Eye of Zul
(33680,46898,0,0,2436), -- Design: Steady Eye of Zul
(33680,46899,0,0,2436), -- Design: Vivid Eye of Zul
(33680,46900,0,0,2436), -- Design: Dazzling Eye of Zul
(33680,46901,0,0,2436), -- Design: Jagged Eye of Zul
(33680,46902,0,0,2436), -- Design: Timeless Eye of Zul
(33680,46903,0,0,2436), -- Design: Seer's Eye of Zul
(33680,46904,0,0,2436), -- Design: Forceful Eye of Zul
(33680,46905,0,0,2436), -- Design: Misty Eye of Zul
(33680,46906,0,0,2436), -- Design: Sundered Eye of Zul
(33680,46907,0,0,2436), -- Design: Shining Eye of Zul
(33680,46908,0,0,2436), -- Design: Tense Eye of Zul
(33680,46909,0,0,2436), -- Design: Lambent Eye of Zul
(33680,46910,0,0,2436), -- Design: Intricate Eye of Zul
(33680,46911,0,0,2436), -- Design: Radiant Eye of Zul
(33680,46912,0,0,2436), -- Design: Energized Eye of Zul
(33680,46913,0,0,2436), -- Design: Shattered Eye of Zul
(33680,46914,0,0,2436), -- Design: Opaque Eye of Zul
(33680,46915,0,0,2436), -- Design: Turbid Eye of Zul
(33680,46916,0,0,2436), -- Design: Runed Cardinal Ruby
(33680,46917,0,0,2436), -- Design: Bold Cardinal Ruby
(33680,46918,0,0,2436), -- Design: Delicate Cardinal Ruby
(33680,46919,0,0,2436), -- Design: Bright Cardinal Ruby
(33680,46920,0,0,2436), -- Design: Precise Cardinal Ruby
(33680,46921,0,0,2436), -- Design: Fractured Cardinal Ruby
(33680,46922,0,0,2436), -- Design: Subtle Cardinal Ruby
(33680,46923,0,0,2436), -- Design: Flashing Cardinal Ruby
(33680,46924,0,0,2436), -- Design: Solid Majestic Zircon
(33680,46925,0,0,2436), -- Design: Sparkling Majestic Zircon
(33680,46926,0,0,2436), -- Design: Stormy Majestic Zircon
(33680,46927,0,0,2436), -- Design: Lustrous Majestic Zircon
(33680,46928,0,0,2436), -- Design: Rigid King's Amber
(33680,46929,0,0,2436), -- Design: Smooth King's Amber
(33680,46930,0,0,2436), -- Design: Brilliant King's Amber
(33680,46931,0,0,2436), -- Design: Thick King's Amber
(33680,46932,0,0,2436), -- Design: Mystic King's Amber
(33680,46933,0,0,2436), -- Design: Quick King's Amber
(33680,46934,0,0,2436), -- Design: Balanced Dreadstone
(33680,46935,0,0,2436), -- Design: Sovereign Dreadstone
(33680,46936,0,0,2436), -- Design: Glowing Dreadstone
(33680,46937,0,0,2436), -- Design: Purified Dreadstone
(33680,46938,0,0,2436), -- Design: Shifting Dreadstone
(33680,46939,0,0,2436), -- Design: Royal Dreadstone
(33680,46940,0,0,2436), -- Design: Regal Dreadstone
(33680,46941,0,0,2436), -- Design: Defender's Dreadstone
(33680,46942,0,0,2436), -- Design: Guardian's Dreadstone
(33680,46943,0,0,2436), -- Design: Mysterious Dreadstone
(33680,46944,0,0,2436), -- Design: Puissant Dreadstone
(33680,46945,0,0,2436), -- Design: Infused Dreadstone
(33680,46946,0,0,2436), -- Design: Tenuous Dreadstone
(33680,46947,0,0,2436), -- Design: Luminous Ametrine
(33680,46948,0,0,2436), -- Design: Inscribed Ametrine
(33680,46949,0,0,2436), -- Design: Deadly Ametrine
(33680,46950,0,0,2436), -- Design: Potent Ametrine
(33680,46951,0,0,2436), -- Design: Veiled Ametrine
(33680,46952,0,0,2436), -- Design: Durable Ametrine
(33680,46953,0,0,2436), -- Design: Etched Ametrine
(33680,46956,0,0,2436), -- Design: Pristine Ametrine
(33680,47007,0,0,2436), -- Design: Reckless Ametrine
(33680,47008,0,0,2436), -- Design: Glinting Ametrine
(33680,47010,0,0,2436), -- Design: Accurite Ametrine
(33680,47011,0,0,2436), -- Design: Wicked Ametrine
(33680,47012,0,0,2436), -- Design: Glimmering Ametrine
(33680,47015,0,0,2436), -- Design: Champion's Ametrine
(33680,47016,0,0,2436), -- Design: Empowered Ametrine
(33680,47017,0,0,2436), -- Design: Stalwart Ametrine
(33680,47018,0,0,2436), -- Design: Resplendent Ametrine
(33680,47019,0,0,2436), -- Design: Fierce Ametrine
(33680,47020,0,0,2436), -- Design: Deft Ametrine
(33680,47021,0,0,2436), -- Design: Lucent Ametrine
(33680,47022,0,0,2436), -- Design: Resolute Ametrine
(33680,47023,0,0,2436), -- Design: Stark Ametrine
(33680,49112,0,0,2436); -- Design: Nightmare Tear

-- Set no aggro flag Sul'lithuz Hatchling
UPDATE `creature_template` SET `flags_extra`=`flags_extra`|2 WHERE `entry`=8130;

-- set the correct faction from Warp Slicer 
UPDATE `creature_template` SET `faction_A`=1620 AND `faction_H`=1620 WHERE `entry`=21272;

-- Some NO aggressive NPCs on Shattrath City (http://www.wowhead.com/?zone=3703) 
-- Creature Sister of Torment Image is not aggresive is not attackable.
UPDATE `creature_template` SET `flags_extra`=`flags_extra`|2,`unit_flags`=`unit_flags`|33555202 WHERE `entry`=24854;

-- Creature Jonru <Battlemaster> is not aggressive is not attackable (http://www.wowhead.com/?npc=34999).
-- Creature Mijiri <Battlemaster> is not aggressive is not attackable (http://www.wowhead.com/?npc=35000).
-- Creature Arcanist Iramhir <Wintergrasp Battle-Mage> is not agressive is not attackable (http://www.wowhead.com/?npc=35596).

UPDATE `creature_template` SET `flags_extra`=`flags_extra`|2 WHERE `entry` IN (34999,35000,35596);

-- This NPCs are not agressive against players (Alliance)
-- Creature http://www.wowhead.com/?npc=33477 is not agresive.
-- Creature http://www.wowhead.com/?npc=33560 is not agresive.
-- Creature http://www.wowhead.com/?npc=33462 is not agresive.
-- Creature http://www.wowhead.com/?npc=33480 is not agresive.
-- This NPCs are not agressive against players (Horde)
-- Creature http://www.wowhead.com/?npc=33459 is not agresive.
-- Creature http://www.wowhead.com/?npc=33467 is not agresive.
-- Creature http://www.wowhead.com/?npc=33465 is not agresive.
-- Creature http://www.wowhead.com/?npc=33474 is not agresive.

UPDATE `creature_template` SET `flags_extra`=`flags_extra`|2 WHERE `entry` IN (33474,33465,33459,33467,33459,33480,33462,33560,33477);

-- faction for this creature was changed after UP21 and now is friendly when should be hostile. The faction values I used are from UP21
UPDATE `creature_template` SET `faction_A`=1985,`faction_H`=1985 WHERE `entry`=26816;

-- Fix to totem visuals for horde/alliance side. The totems for alliance were just showing up as horde models. 
-- Earth Totems.
UPDATE `creature_template` SET `modelid1`=19073,`modelid3`=4588 WHERE `entry` IN (3579,3911,3912,3913,7398,15478,31122,31120,31121); -- Stoneclaw Totems
UPDATE `creature_template` SET `modelid1`=19073,`modelid3`=4588 WHERE `entry` IN (5874,5921,5922,7403,15464,15479,30647,31129); -- Strength of Earth Totems
UPDATE `creature_template` SET `modelid1`=19073,`modelid3`=4588 WHERE `entry`=2630; -- Earthbind Totem
UPDATE `creature_template` SET `modelid1`=19073,`modelid3`=4588 WHERE `entry` IN (5873,5919,5920,7366,7367,7368,15470,15474,31175,31176); -- Stoneskin Totems
UPDATE `creature_template` SET `modelid1`=19073,`modelid3`=4588 WHERE `entry`=5913; -- Tremor Totem
UPDATE `creature_template` SET `modelid1`=19073,`modelid3`=4588 WHERE `entry`=15430; -- Earth Elemental Totem
-- Fire Totems.
UPDATE `creature_template` SET `modelid1`=19074,`modelid3`=4589 WHERE `entry` IN (2523,3902,3903,3904,7400,7402,15480,31162,31164,31165); -- Searing Totems
UPDATE `creature_template` SET `modelid1`=19074,`modelid3`=4589 WHERE `entry` IN (5879,24320,6110,6111,7844,32775,32776,7845,15482,15483); -- Fire Nova Totems
UPDATE `creature_template` SET `modelid1`=19074,`modelid3`=4589 WHERE `entry` IN (5926,7412,7413,15486,31171,31172); -- Frost Resistance Totems
UPDATE `creature_template` SET `modelid1`=19074,`modelid3`=4589 WHERE `entry` IN (5929,7464,7465,7466,31167,32887,15484,31166); -- Magma Totems
UPDATE `creature_template` SET `modelid1`=19074,`modelid3`=4589 WHERE `entry` IN (5950,6012,7423,10557,15485,31132,31133,31158); -- Flametongue Totems
UPDATE `creature_template` SET `modelid1`=19074,`modelid3`=4589 WHERE `entry`=15439; -- Fire Elemental Totem
UPDATE `creature_template` SET `modelid1`=19074,`modelid3`=4589 WHERE `entry` IN (17539,30653,30652,30654); -- Totem of Wrath Totems
-- Water Totems.
UPDATE `creature_template` SET `modelid1`=19075,`modelid3`=4587 WHERE `entry` IN (3527,3906,3907,3908,3909,15488,31181,31182,31185,34686); -- Healing Stream Totems
UPDATE `creature_template` SET `modelid1`=19075,`modelid3`=4587 WHERE `entry` IN (5927,7424,7425,15487,31169,31170); -- Fire Resistance Totems
UPDATE `creature_template` SET `modelid1`=19075,`modelid3`=4587 WHERE `entry` IN (3573,7414,7415,7416,15489,31186,31189,31190); -- Mana Spring Totems
UPDATE `creature_template` SET `modelid1`=19075,`modelid3`=4587 WHERE `entry`=5924; -- Cleansing Totem
UPDATE `creature_template` SET `modelid1`=19075,`modelid3`=4587 WHERE `entry`=10467; -- Mana Tide Totem
-- Air Totems
UPDATE `creature_template` SET `modelid1`=19071,`modelid3`=4590 WHERE `entry`=5925; -- Grounding Totem
UPDATE `creature_template` SET `modelid1`=19071,`modelid3`=4590 WHERE `entry` IN (7467,7468,7469,15490,31173,31174); -- Nature Resistance Totems
UPDATE `creature_template` SET `modelid1`=19071,`modelid3`=4590 WHERE `entry`=6112; -- Windfury Totem
UPDATE `creature_template` SET `modelid1`=19071,`modelid3`=4590 WHERE `entry`=3968; -- Sentry Totem
UPDATE `creature_template` SET `modelid1`=19071,`modelid3`=4590 WHERE `entry`=15447; -- Wrath of Air Totem

-- Add missing object The Staff of Storm's Fury to make quest The Staff of Storm's Fury(11511) works
delete from `gameobject` where `id`=187033; 
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values
( NULL, 187033, 571, 1,1,501.014, -3530.57, 0.370485, 6.21848, 0, 0, 0.0323477, -0.999477, 25, 0, 1);

-- Set ignore agro to stop Envoy Ripfang attacking alliance players
UPDATE `creature_template` SET `flags_extra`=`flags_extra`|2 WHERE `entry`=26441;

-- Add external quest complete flag to quest 8490 (Powering our Defenses)
-- This quest is completed externally by a script
UPDATE `quest_template` SET `specialflags`=`specialflags`|2 WHERE `entry`=8490;

-- Change movetype to stay for Naxxramas Combat Dummy
UPDATE `creature` SET `spawndist`=0,`MovementType`=0 where `id`=16211;
