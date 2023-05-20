-- original concept started by Kiper
-- (modified by unholy to make script work)
-- q12702 chicken party q12532 flown the coop
-- add EventAI script to chickens
UPDATE `creature_template` SET `AIName` = 'EventAI'  WHERE `entry`=28161;

-- set chicken up to be lootable on click (do not kill chicken)
DELETE FROM `npc_spellclick_spells` WHERE `npc_entry`=28161;
INSERT INTO `npc_spellclick_spells` (`npc_entry`,`spell_id`,`quest_start`,`quest_start_active`,`quest_end`,`cast_flags`,`aura_required`,`aura_forbidden`,`user_type`) VALUES 
-- this is for quest 12702 chicken party
(28161,51961,12702,1,12702,1,0,0,0), -- cover spell (dummy) (casts on npc)
(28161,51037,12702,1,12702,2,0,0,0), -- create item in backpack of player
-- this is for quest 12532 flown the coop
(28161,51961,12532,1,12532,1,0,0,0), -- cover spell (dummy) (casts on npc)
(28161,51037,12532,1,12532,2,0,0,0); -- create item in backpack of player

-- Event despawn once looted (stops looting exploit)
DELETE FROM `creature_ai_scripts` WHERE `id` IN (2816101,2816102,2816103);
INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES 
(2816101,28161,11,0,100,0,100,20,0,0,0,0,0,0,0,0,0,0,0,0,0,0, 'onspawn set to random movement'),
(2816102,28161,8,0,100,0,51961,-1,0,0,41,0,0,0,0,0,0,0,0,0,0,0, 'after looted despawn');

-- q11611 taken by the scourge
-- issue: nothing happens when attacking the cocoon and freeing a peon

-- set up EventAI to cocoon
UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` IN (25284,25270);

-- create Events
DELETE FROM `creature_ai_scripts` WHERE `id` IN (2528401,2527001);
INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES
-- Event to give credit for freeing a peon 
(2528401,25284,6,0,100,0,0,0,0,0,33,25270,6,0,0,0,0,0,0,0,0,0, 'credit for freeing peons'),
-- Event for having Freed Peon say text
(2527001,25270,11,0,100,0,0,0,0,0,1,-10011,0,0,0,0,0,0,0,0,0,0, 'peon says text for being freed');

-- add text for freeing peon
DELETE FROM `creature_ai_texts` WHERE `entry`=-10011;
INSERT INTO `creature_ai_texts` (`entry`,`content_default`,`content_loc1`,`content_loc2`,`content_loc3`,`content_loc4`,`content_loc5`,`content_loc6`,`content_loc7`,`content_loc8`,`sound`,`type`,`language`,`emote`,`comment`) VALUES 
('-10011', 'Why it keep telling me to put da lotion in da basket? Me no like da lotion!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0, 'freeing peon warsong hold');

-- q14016 the black knights curse
-- issue: In the quest intended to investigate a tombstone but this does not go.

-- set up trigger to use EventAI
UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry`=34735;

-- grave trigger does not move around on offy
UPDATE `creature` SET `spawndist`=0,`MovementType`=0 WHERE `guid`=88078;

-- set up event to give credit for finding grave
DELETE FROM `creature_ai_scripts` WHERE `id`=3473501;
INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES 
-- here i use LOS to cast completion spell
(3473501,34735,10,0,100,0,1,5,0,0,11,66785,6,0,0,0,0,0,0,0,0,0, 'credit for investigating the grave');

-- q14016 the black knights curse
-- issue: In the quest intended to investigate a tombstone but this does not go.

-- set up trigger to use EventAI
UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry`=34735;

-- grave trigger does not move around on offy
UPDATE `creature` SET `spawndist`=0,`MovementType`=0 WHERE `guid`=88078;

-- set up event to give credit for finding grave
DELETE FROM `creature_ai_scripts` WHERE `id`=3473501;
INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES 
-- here i use LOS to cast completion spell
(3473501,34735,10,0,100,0,1,5,0,0,11,66785,6,0,0,0,0,0,0,0,0,0, 'credit for investigating the grave');

-- q12805 Salvaging Life's Strength
-- set up creature for EventAI
UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry`=29124;
-- Event to give credit for using gem on dead npc
DELETE FROM `creature_ai_scripts` WHERE `id`=2912401;
INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES 
(2912401,29124,8,0,100,0,54191,-1,0,0,33,29303,6,0,41,0,0,0,0,0,0,0, 'credit for Lifeblood Energy Recovered - despawn corpse after using gem');
-- the channeled spell from using the gem needs to target the dead npc so lets set that
DELETE FROM `spell_script_target` WHERE `entry`=54191;
INSERT INTO `spell_script_target` (`entry`,`type`,`targetEntry`) VALUES 
(54191,2,29124);

-- how to update lvl 61 Concerted Efforts (q8371) to be a daily repeatable
UPDATE `quest_template` SET `Type`=41+87 AND `QuestFlags`=8+4096 WHERE `entry`=8371;

-- temp fix
UPDATE `creature_template` SET `unit_flags`=`unit_flags`&~256 WHERE `entry`=27363;
-- Orginal data from TDB 007
-- update `creature_template` set `unit_flags`=`unit_flags`&256 where `entry`=27363;

-- q11956 Finding the Phylactery
-- Dusk is not mountable and should be
-- he is not required to complete quest and this will make him ridable
UPDATE `creature_template` SET `VehicleId`=200 WHERE `entry`=26191;

-- q2882 Cueros Gold (you get this quest from a dropped map)
-- ******** this info is from researching several internet sites ********************
-- info gathered from sites wowwiki, wowhead, and thottbot

-- spawn the chests which are what is used to hand in the quest
DELETE FROM `gameobject` WHERE `id`=142194;
INSERT INTO `gameobject` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecs`,`animprogress`,`state`) VALUES
(3457012,142194,1,1,1,-10118.3,-4052.2,5.3925,4.11415,0,0,0.884078,-0.467339,25,0,1),
(3457011,142194,1,1,1,-10251.3,-3984.62,1.8954,0.611298,0,0,0.300912,0.953652,25,0,1);

-- 2nd lets set up a simple spawn script to spawn the pirates or you cant get the key to open the chest
-- we will have 4 spawns at each landmark (some sites say 4-8 npcs and some say 4)
DELETE FROM `gameobject_scripts` WHERE `id` IN (17499,17498);
INSERT INTO `gameobject_scripts` (`id`,`delay`,`command`,`datalong`,`datalong2`,`dataint`,`x`,`y`,`z`,`o`) VALUES 
(17499,2,10,7899,180000, '0',-10253.7,-3993.41,2.33897,1.07467),
(17499,3,10,7901,180000, '0',-10261.6,-3983.19,0.877099,0.04187),
(17499,2,10,7902,180000, '0',-10245.6,-3967.23,0.651453,4.52651),
(17499,1,10,7901,180000, '0',-10237.5,-3974.57,0.772301,3.65865),
(17498,2,10,7901,180000, '0',-10124.1,-4057.05,5.2227,0.6678),
(17498,1,10,7902,180000, '0',-10115.6,-4058.63,5.34087,1.95193),
(17498,2,10,7901,180000, '0',-10114.7,-4048.69,5.4989,3.87223),
(17498,1,10,7899,180000, '0',-10122,-4046.7,4.88695,5.14457);

-- Set Pirate treasure trigger mob (7898) to have trigger flag
UPDATE `creature_template` SET `flags_extra`=`flags_extra`|128 WHERE `entry`=7898;
-- Delete duplicate spawn of Inconspicuous Landmark (142189)
-- DELETE FROM `gameobject` WHERE `guid`=17499; -- There are two, so this is no longer needed. Leaving here in case someone thinks the same way I did.

-- Cuergo's Gold Pirate treasure trigger mob
-- Summons the pirates
UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry`=7898;
DELETE FROM `creature_ai_scripts` WHERE `id` IN (7898001,7898002,7898003);
INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES
(7898001,7898,11,0,100,0,0,0,0,0,11,11463,0,0,0,0,0,0,0,0,0,0, 'spawn pirate1'),
(7898002,7898,11,0,100,0,0,0,0,0,11,11485,0,0,0,0,0,0,0,0,0,0, 'spawn pirate2'),
(7898003,7898,11,0,100,0,0,0,0,0,11,11487,0,0,0,0,0,0,0,0,0,0, 'spawn pirate3');


-- Quest Credit for Q 11796 from Emergency Torch
UPDATE `creature_template` SET `AIName`= 'EventAI' WHERE `entry` IN (25845,25846,25847);
DELETE FROM `creature_ai_scripts` WHERE `id` IN (25845001,25846001,25847001);
INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES 
(25845001,25845,8,0,100,1,46171,-1,1,1,33,25845,6,0,0,0,0,0,0,0,0,0, 'spellhit-QuestCreditNorth'),
(25846001,25846,8,0,100,1,46171,-1,1,1,33,25846,6,0,0,0,0,0,0,0,0,0, 'spellhit-QuestCreditSouth'),
(25847001,25847,8,0,100,1,46171,-1,1,1,33,25847,6,0,0,0,0,0,0,0,0,0, 'spellhit-QuestCreditEast');

-- Quest Credit NPC should not move
UPDATE `creature` SET `MovementType`=0,`spawndist`=0 WHERE `id` IN(25845,25846,25847);

-- add missing Gobjects (3 were present so they are added here as they exist currently)
DELETE FROM `gameobject` WHERE `id` = 300181;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES 
(99826,300181,571,1,1,3604.6,5065,13.2919,5.39233,0,0,0.430845,-0.902426,25,0,1),
(99827,300181,571,1,1,3476.66,4918.67,13.8639,4.62499,0,0,0.737321,-0.675542,25,0,1),
(99828,300181,571,1,1,3355.87,5049.47,14.2951,6.05756,0,0,0.112572,-0.993644,25,0,1),
(NULL,300181,571,1,1,3739.39,5047.41,-0.865776,2.14675,0,0,0.112572,-0.993644,25,0,1),
(NULL,300181,571,1,1,3390.86,5135.81,14.4616,1.18682,0,0,0.112572,-0.993644,25,0,1),
(NULL,300181,571,1,1,3515.69,5016.58,-0.550566,1.74533,0,0,0.112572,-0.993644,25,0,1);

-- EAI Scripts for Quest 11653 Hah... You're Not So Big Now!

-- Insert spell link
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=51912;
INSERT INTO `spell_linked_spell` (`spell_trigger`,`spell_effect`,`type`,`comment`) VALUES 
(51912,45668,0, 'blaster triggers script effect spell (q11653)');

-- Set item to only work on live "Mates of Magmothregar" and "Magmoth Crusher"
DELETE FROM `item_required_target` WHERE `entry`=34812;
INSERT INTO `item_required_target` (`entry`,`type`,`targetEntry`) VALUES
(34812,1,25432),
(34812,1,25434);

-- Add Emote text
DELETE FROM `creature_ai_texts` WHERE `entry` IN(-717, -718, -719, -720, -721, -722, -723, -724, -725, -726);
INSERT INTO `creature_ai_texts` (`entry`,`content_default`,`type`,`language`,`emote`,`comment`) VALUES
(-717, 'The blaster backfired... you''re shrunk!', 2, 7, 0, 'Shrunk Player' ),
(-718, 'Shorter, but no less powerful!', 2, 7, 0, 'Shrunk Creature' ),
(-719, 'Bigger? What the?!', 2, 7, 0, 'Bigger Both' ),
(-720, 'Cool if yellow''s your favorite color!', 2, 7, 0, 'Yellow Player' ),
(-721, 'Oh great, it''s tinged with yellow. Kinda green in fact. How does this help?', 2, 7, 0, 'Yellow Creature' ),
(-722, 'You''re a ghost! Does this thing even work?!', 2, 7, 0, 'Ghost Player' ),
(-723, 'It''s a ghost. It''s still hitting hard!', 2, 7, 0, 'Ghost Creature' ),
(-724, 'Uh oh... you look just like Crafty Wobblesprocket! How''s this supposed to help?!', 2, 7, 0, 'Crafty Player' ),
(-725, 'What?! It looks just like Crafty Wobblesprocket!', 2, 7, 0, 'Crafty Creature' ),
(-726, 'The blaster fizzles!', 2, 7, 0, 'Fizzles' ); -- Not sure of the proper text for here. Will update.

-- EAI Events for "Mates of Magmothregar" and "Magmoth Crusher"
DELETE FROM `creature_ai_scripts` WHERE `id` IN 
(2543200,2543201,2543202,2543203,2543204,2543205,2543206,2543207,2543208,2543209,2543210,2543211,2543212,2543213,2543214,2543215,2543216,2543217,2543400,2543401,2543402,2543403,2543404,2543405,2543406,2543407,2543408,2543409,2543410,2543411,2543412,2543413,2543414,2543415,2543416,2543417);
INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES
-- EAI "Mates of Magmothregar"
-- ANY PHASE
(2543200,25432,6,0,100,0,0,0,0,0,22,4,0,0,0,0,0,0,0,0,0,0, 'Check for aura on death.'),
-- PHASE 1: If creature has blaster aura goto Phase 2.
(2543201,25432,8,14,100,0,45668,-1,0,0,23,1,0,0,0,0,0,0,0,0,0,0, 'if hit with blaster, apply aura'),
-- PHASE 2: Set buff on player.
(2543202,25432,0,13,20,0,0,0,0,0,11,45675,6,0,1,-717,0,0,23,1,0,0, 'cast buff on player.'),
(2543203,25432,0,13,15,0,0,0,0,0,11,45674,6,0,1,-719,0,0,23,1,0,0, 'cast buff on player.'),
(2543204,25432,0,13,15,0,0,0,0,0,11,45678,6,0,1,-720,0,0,23,1,0,0, 'cast buff on player.'),
(2543205,25432,0,13,15,0,0,0,0,0,11,45682,6,0,1,-722,0,0,23,1,0,0, 'cast buff on player.'),
(2543206,25432,0,13,15,0,0,0,0,0,11,45684,6,0,1,-724,0,0,23,1,0,0, 'cast buff on player.'),
(2543207,25432,0,13,20,0,0,0,0,0,0,0,0,0,1,-726,0,0,0,0,0,0, 'cast no buff on player.'),
-- PHASE 3: Set buff on creature.
(2543208,25432,0,11,20,0,0,0,0,0,11,45672,0,0,1,-718,0,0,0,0,0,0, 'cast buff on creature.'),
(2543209,25432,0,11,20,0,0,0,0,0,11,45673,0,0,1,-719,0,0,0,0,0,0, 'cast buff on creature.'),
(2543210,25432,0,11,20,0,0,0,0,0,11,45677,0,0,1,-721,0,0,0,0,0,0, 'cast buff on creature.'),
(2543211,25432,0,11,20,0,0,0,0,0,11,45681,0,0,1,-723,0,0,0,0,0,0, 'cast buff on creature.'),
(2543212,25432,0,11,20,0,0,0,0,0,11,45683,0,0,1,-725,0,0,0,0,0,0, 'cast buff on creature.'),
-- PHASE 4: Check to see if quest credit should be awarded
(2543213,25432,23,7,100,0,45672,1,0,0,33,25505,6,0,0,0,0,0,0,0,0,0, 'If buffed award quest credit.'),
(2543214,25432,23,7,100,0,45673,1,0,0,33,25505,6,0,0,0,0,0,0,0,0,0, 'If buffed award quest credit.'),
(2543215,25432,23,7,100,0,45677,1,0,0,33,25505,6,0,0,0,0,0,0,0,0,0, 'If buffed award quest credit.'),
(2543216,25432,23,7,100,0,45681,1,0,0,33,25505,6,0,0,0,0,0,0,0,0,0, 'If buffed award quest credit.'),
(2543217,25432,23,7,100,0,45683,1,0,0,33,25505,6,0,0,0,0,0,0,0,0,0, 'If buffed award quest credit.'),
-- EAI "Magmoth Crusher"
-- ANY PHASE
(2543400,25434,6,0,100,0,0,0,0,0,22,4,0,0,0,0,0,0,0,0,0,0, 'Check for aura on death.'),
-- PHASE 1: If creature has blaster aura goto Phase 2.
(2543401,25434,8,14,100,0,45668,-1,0,0,23,1,0,0,0,0,0,0,0,0,0,0, 'check every 1 sec for aura true.'),
-- PHASE 2: Set buff on player.
(2543402,25434,0,13,20,0,0,0,0,0,11,45675,6,0,1,-717,0,0,23,1,0,0, 'cast buff on player.'),
(2543403,25434,0,13,15,0,0,0,0,0,11,45674,6,0,1,-719,0,0,23,1,0,0, 'cast buff on player.'),
(2543404,25434,0,13,15,0,0,0,0,0,11,45678,6,0,1,-720,0,0,23,1,0,0, 'cast buff on player.'),
(2543405,25434,0,13,15,0,0,0,0,0,11,45682,6,0,1,-722,0,0,23,1,0,0, 'cast buff on player.'),
(2543406,25434,0,13,15,0,0,0,0,0,11,45684,6,0,1,-724,0,0,23,1,0,0, 'cast buff on player.'),
(2543407,25434,0,13,20,0,0,0,0,0,0,0,0,0,1,-726,0,0,0,0,0,0, 'cast no buff on player.'),
-- PHASE 3: Set buff on creature.
(2543408,25434,0,11,20,0,0,0,0,0,11,45672,0,0,1,-718,0,0,0,0,0,0, 'cast buff on creature.'),
(2543409,25434,0,11,20,0,0,0,0,0,11,45673,0,0,1,-719,0,0,0,0,0,0, 'cast buff on creature.'),
(2543410,25434,0,11,20,0,0,0,0,0,11,45677,0,0,1,-721,0,0,0,0,0,0, 'cast buff on creature.'),
(2543411,25434,0,11,20,0,0,0,0,0,11,45681,0,0,1,-723,0,0,0,0,0,0, 'cast buff on creature.'),
(2543412,25434,0,11,20,0,0,0,0,0,11,45683,0,0,1,-725,0,0,0,0,0,0, 'cast buff on creature.'),
-- PHASE 4: Check to see if quest credit should be awarded
(2543413,25434,23,7,100,0,45672,1,0,0,33,25505,6,0,0,0,0,0,0,0,0,0, 'If buffed award quest credit.'),
(2543414,25434,23,7,100,0,45673,1,0,0,33,25505,6,0,0,0,0,0,0,0,0,0, 'If buffed award quest credit.'),
(2543415,25434,23,7,100,0,45677,1,0,0,33,25505,6,0,0,0,0,0,0,0,0,0, 'If buffed award quest credit.'),
(2543416,25434,23,7,100,0,45681,1,0,0,33,25505,6,0,0,0,0,0,0,0,0,0, 'If buffed award quest credit.'),
(2543417,25434,23,7,100,0,45683,1,0,0,33,25505,6,0,0,0,0,0,0,0,0,0, 'If buffed award quest credit.');

-- Quest 12645 "The taste test" Work in progress
-- Set creatures Hemet Nesingwary, Hadrius Harlowe, & Tamara Wobblesprocket to use EAI
UPDATE `creature_template` SET `AIName`= 'EventAI' WHERE `entry` IN (27986,28047,28568);

-- Set Thunderbrew's Jungle Punch to only work on Hemet Nesingwary, Hadrius Harlowe, & Tamara Wobblesprocket
DELETE FROM `item_required_target` WHERE `entry`=38697;
INSERT INTO `item_required_target` (`entry`,`type`,`targetEntry`) VALUES
(38697,1,27986),
(38697,1,28047),
(38697,1,28568);

-- Add Emote text
DELETE FROM `creature_ai_texts` WHERE `entry` IN(-1727,-1728,-1729,-1730,-1731,-1732,-1733,-1734,-1735,-1736);
INSERT INTO `creature_ai_texts` (`entry`,`content_default`,`type`,`language`,`emote`,`comment`) VALUES
(-1727, 'Care to try Grimbooze Thunderbrew''s new jungle punch?', 2, 7, 0, 'Player say'),
(-1728, 'Aye, I''ll try it.', 2, 7, 0, 'Helmet say1'),
(-1729, 'That''s exactly what I needed!', 2, 7, 0, 'Helmet say2'),
(-1730, 'It''s got my vote! That''ll put hair on your chest like nothing else will.', 2, 7, 0, 'Helmet say3'),
(-1731, 'I''m always up for something of Grimbooze''s.', 2, 7, 0, 'Hadrius say1'),
(-1732, 'Well, so far, it tastes like something my wife would drink...', 2, 7, 0, 'Hadrius say2'),
(-1733, 'Now, there''s the kick I''ve come to expect from Grimbooze''s drinks! I like it!', 2, 7, 0, 'Hadrius say3'),
(-1734, 'Sure!', 2, 7, 0, 'Tamara say1'),
(-1735, 'Oh my...', 2, 7, 0, 'Tamara say2'),
(-1736, 'Tastes like I''m drinking... engine degreaser!', 2, 7, 0, 'Tamara say3');

-- EAI Scripts
DELETE FROM `creature_ai_scripts` WHERE `id` IN (279860,279861,279862,279863,279864, 279865, 279866, 279867, 279868, 279869, 279870, 279871, 279872, 279873, 279874);
INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES
-- EAI Hemet Nesingwary
(279860, 27986, 8, 30, 100, 0, 28558, -1, 0, 0, 23, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Offered a drink.'),
(279861, 27986, 1, 29, 100, 0, 1000, 1000, 1000, 1000, 1, -1728, 0, 0, 23, 1, 0, 0, 0, 0, 0, 0, 'Say1,next phase'),
(279862, 27986, 1, 27, 100, 0, 2000, 2000, 2000, 2000, 5, 1, 0, 0,  23, 1, 0, 0, 0, 0, 0, 0, 'emote drink,next phase'), -- XX needs to be emote number for drink
(279863, 27986, 1, 23, 100, 0, 4000, 4000, 4000, 4000, 1, -1729, 0, 0, 23, 1, 0, 0, 0, 0, 0, 0, 'Say2,next phase'),
(279864, 27986, 1, 15, 100, 0, 5000, 5000, 5000, 5000, 1, -1730, 0, 0, 33, 27986, 6, 0, 22, 1, 0, 0, 'Say3, quest credit, goto 1st phase'),
-- EAI Hadrius Harlowe
(279865, 28047, 8, 30, 100, 0, 28558, -1, 0, 0, 23, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Offered a drink.'),
(279866, 28047, 1, 29, 100, 0, 1000, 1000, 1000, 1000, 1, -1731, 0, 0, 23, 1, 0, 0, 0, 0, 0, 0, 'Say1,next phase'),
(279867, 28047, 1, 27, 100, 0, 2000, 2000, 2000, 2000, 5, 1, 0, 0,  23, 1, 0, 0, 0, 0, 0, 0, 'emote drink,next phase'), -- XX needs to be emote number for drink
(279868, 28047, 1, 23, 100, 0, 4000, 4000, 4000, 4000, 1, -1732, 0, 0, 23, 1, 0, 0, 0, 0, 0, 0, 'Say2,next phase'),
(279869, 28047, 1, 15, 100, 0, 5000, 5000, 5000, 5000, 1, -1733, 0, 0, 33, 28047, 6, 0, 22, 1, 0, 0, 'Say3, quest credit, goto 1st phase'),
-- EAI Tamara Wobblesprocket
(279870, 28568, 8, 30, 100, 0, 28558, -1, 0, 0, 23, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Offered a drink.'),
(279871, 28568, 1, 29, 100, 0, 1000, 1000, 1000, 1000, 1, -1734, 0, 0, 23, 1, 0, 0, 0, 0, 0, 0, 'Say1,next phase'),
(279872, 28568, 1, 27, 100, 0, 2000, 2000, 2000, 2000, 5, 1, 0, 0,  23, 1, 0, 0, 0, 0, 0, 0, 'emote drink,next phase'), -- XX needs to be emote number for drink
(279873, 28568, 1, 23, 100, 0, 4000, 4000, 4000, 4000, 1, -1735, 0, 0, 23, 1, 0, 0, 0, 0, 0, 0, 'Say2,next phase'),
(279874, 28568, 1, 15, 100, 0, 5000, 5000, 5000, 5000, 1, -1736, 0, 0, 33, 28568, 6, 0, 22, 1, 0, 0, 'Say3, quest credit, goto 1st phase');

-- Quest 11282 "A Lesson In Fear" Fix
-- on spell hit corpse, give credit for quest.
DELETE FROM `creature_ai_scripts` WHERE `id` IN (24161001,24016001,24162001);
INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES 
(24161001,24161,8,0,100,0,43178,-1,0,0,33,24166,6,0,0,0,0,0,0,0,0,0, 'Credit for Oric the Baleful'),
(24016001,24016,8,0,100,0,43178,-1,0,0,33,24165,6,0,0,0,0,0,0,0,0,0, 'Credit for Ulf the Bloodletter'),
(24162001,24162,8,0,100,0,43178,-1,0,0,33,24167,6,0,0,0,0,0,0,0,0,0, 'Credit for Gunnar Thorvardsson');
-- set creatures to use EventAI
UPDATE `creature_template` SET `AIName`= 'EventAI' WHERE `entry` IN (24161,24016,24162);

-- Remove spawned Weakened Overseer gotta be summoned
DELETE FROM `creature` where `id`=27122;
-- Tugid the vile faction
UPDATE `creature_template` set `faction_A`=14, `faction_H`=14 where `entry`=27809;
-- EventAI for summon of Wekened mobs in quest That Which Creates Can Also Destroy
DELETE FROM `creature_ai_scripts` WHERE `id` IN (26841001,27808001,27122001);
INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES 
(26841001,26841,8,0,100,1,49587,-1,0,0,12,27821,6,0,41,0,0,0,0,0,0,0, 'Wekened Wyrm'),
(27808001,27808,8,0,100,1,49587,-1,0,0,12,27809,6,0,41,0,0,0,0,0,0,0, 'Weakened Abomination'), 
(27122001,27122,8,0,100,1,49587,-1,0,0,12,27807,6,0,41,0,0,0,0,0,0,0, 'Wekened Overseer');

-- High Priest Andorath
-- stats adjustment
UPDATE `creature_template` SET `mingold`=1514,`maxgold`=1514 WHERE `entry`=25392;
-- spawn creature
DELETE FROM `creature` WHERE `id`=25392;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`) VALUES
(NULL,25392,571,1,1,0,1593,4118.62,3480.5,109.03,2.69312,300,0,0,9610,3309,0,0);

-- High Priest Naferset
-- stats adjustment
UPDATE `creature_template` SET `faction_A`=21,`faction_H`=21,`npcflag`=0,`unit_flags`=0,`mingold`=1511,`maxgold`=1511 WHERE `entry`=26076;

-- High Priest Talet-Kha
-- stats adjustment
UPDATE `creature_template` SET `faction_A`=168,`faction_H`=168,`lootid`=26073,`mingold`=1508,`maxgold`=1508 WHERE `entry`=26073;
-- spawn creature
DELETE FROM `creature` WHERE `id`=26073;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`) VALUES
(NULL,26073,571,1,1,0,285,3787.46,3417.73,85.0343,1.06574,25,0,0,1,7500,0,0);

-- Quest 12111 Where the Wild Things Roam
-- Fixes screwups I made previously EAI will be required to complete this quest

UPDATE `quest_template` SET `ReqCreatureOrGOId1`=26895, `ReqCreatureOrGOId2`=26882, `ReqSpellCast1`=0, `ReqSpellCast2`=0 WHERE `entry`=12111;

DELETE FROM `spell_required` WHERE `spell_id`=47628;

DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=47627;
INSERT INTO `spell_linked_spell` (`spell_trigger`,`spell_effect`,`type`,`comment`) VALUES (47627,47628,0,'Wildlife Inoculation');

DELETE FROM `spell_script_target` WHERE `entry` IN (47627,47628);
INSERT INTO `spell_script_target` (`entry`,`type`,`targetEntry`) VALUES
(47628,1,26482),
(47628,1,26615);

-- Set proper AI
UPDATE `creature_template` SET `AIName`='eventAI' WHERE `entry` IN (26615, 26482);

-- stop combat and movement for 20 sec, then reset it.
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 26615;
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `action1_param3`, `action2_type`, `action2_param1`, `action2_param2`, `action2_param3`, `action3_type`, `action3_param1`, `action3_param2`, `action3_param3`, `comment`) VALUES
(2661500, 26615, 8, 0, 100, 1, 47628, -1, 0, 0, 20, 0, 0, 0, 21, 0, 0, 0, 0, 0, 0, 0, ''),
(2661501, 26615, 0, 0, 100, 1, 20000, 20000, 0, 0, 20, 1, 0, 0, 21, 1, 0, 0, 24, 0, 0, 0, '');

-- stop combat and movement for 20 sec, then reset it.
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 26482;
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `action1_param3`, `action2_type`, `action2_param1`, `action2_param2`, `action2_param3`, `action3_type`, `action3_param1`, `action3_param2`, `action3_param3`, `comment`) VALUES
(2648200, 26482, 8, 0, 100, 1, 47628, -1, 0, 0, 20, 0, 0, 0, 21, 0, 0, 0, 0, 0, 0, 0, ''),
(2648201, 26482, 0, 0, 100, 1, 20000, 20000, 0, 0, 20, 1, 0, 0, 21, 1, 0, 0, 24, 0, 0, 0, '');

-- Adding EAI to bunny
UPDATE `creature_template` SET `AIName`= 'EventAI' WHERE `entry`=30996;

-- EAI script
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=30996;
INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`, `action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES 
(3099600,30996,8,0,100,1,49590,-1,0,0,33,30996,6,0,41,0,0,0,0,0,0,0, 'Dispelling Illusions');

-- Changing quest_template for script
UPDATE `quest_template` SET `ReqCreatureOrGOCount1`=5, `ReqSpellCast1`=0 WHERE `entry`=13149;

-- Info taken from wowhead
-- Assings creature to EventAI 
UPDATE `creature_template` SET `AIname`= 'EventAI' WHERE `entry`=28521;
-- Assings Start Script and Complete Script for quest 
UPDATE `quest_template` SET `StartScript`=12630 WHERE `entry`=12630;
UPDATE `quest_template` SET `CompleteScript`=12630 WHERE `entry`=12630;
-- Makes a quest start script 
INSERT IGNORE INTO `quest_start_scripts` (`id`,`delay`,`command`,`datalong`,`datalong2`,`dataint`,`x`,`y`,`z`,`o`) VALUES
(12630,0,15,51865,0,0,0,0,0,0);
-- Makes a quest complete script 
INSERT IGNORE INTO `quest_end_scripts` (`id`,`delay`,`command`,`datalong`,`datalong2`,`dataint`,`x`,`y`,`z`,`o`) VALUES
(12630,0,14,51865,0,0,0,0,0,0);
-- Makes creature eventai 
INSERT IGNORE INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES
(2000005,28521,8,0,100,1,51866,-1,0,0,11,51870,6,0,0,0,0,0,0,0,0,0, 'Makes Nass collects hairs');

-- Remove and re-add missing gameobject for quest "Helcular's Revenge"
-- Flame of Uzel is missing http://www.wowhead.com/?object=1770
DELETE FROM `gameobject` WHERE `id`=1770;
INSERT INTO `gameobject` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`position_x`,`position_y`,`position_z`, `orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecs`,`animprogress`,`state`) VALUES
(NULL,1770,0,1,1,260.107,-266.839,144.791,0.0112832,0,0.00564155,0,999984,25,0,1);

