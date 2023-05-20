-- Inserts mount for npc 33448.
DELETE FROM `creature_template_addon` WHERE `entry`=33448;
INSERT INTO `creature_template_addon` (`entry`,`mount`) VALUES (33448,28918);

-- Makes npc 33447 civilian
UPDATE `creature_template` SET `flags_extra`=`flags_extra`|2 WHERE `entry`=33447;

-- Corrects vehicleid and set spells for vehicles 33845 and 33844
UPDATE `creature_template` SET `vehicleid`=349 WHERE `entry` IN (33845,33844);
UPDATE `creature_template` SET `spell1`=68505,`spell2`=65147,`spell3`=63010,`spell4`=66482,`spell5`=66483 WHERE `entry` IN (33845,33844);

-- Inserts TEMP GO 300008 needed to cast a spell to summon the player vehicles.
DELETE FROM `gameobject` WHERE `guid`=150145;
INSERT INTO `gameobject` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecs`,`animprogress`,`state`) VALUES
(150145,300008,571,1,1,8593.99, 938.527, 548.735, 4.90405, 0, 0, 0.636202,-0.771523,300,0,1);

-- Makes player cast 63792 at npc click.
DELETE FROM `npc_spellclick_spells` WHERE `npc_entry`=33843;
INSERT INTO `npc_spellclick_spells` (`npc_entry`,`spell_id`,`quest_start`,`quest_start_active`,`quest_end`,`cast_flags`) VALUES (33843,63792,13679,1,13679,1);

-- Makes player cast 63791 at npc click.
DELETE FROM `npc_spellclick_spells` WHERE `npc_entry`=33842;
INSERT INTO `npc_spellclick_spells` (`npc_entry`,`spell_id`,`quest_start`,`quest_start_active`,`quest_end`,`cast_flags`) VALUES (33842,63791,13680,1,13680,1);

-- this is data for kelthuzad (boss in naxxramas) script (boss_kelthuzad.cpp)
-- the script is not in repo for now, dev write the data has to go here
-- the data here is collected from videos, pictures, texts from well known sites,
-- I tried to come as close as possible to what I see or read
-- spells, timers, behavior for eventai are from wowwiki, wowhead
-- spell Dark Blast 28458 of Soldiers of the Frozen Wastes 16427 gives the best result when is casted on self, otherwise it dont work in >90%
-- the eventai in tdb 0.0.7 for entry 1642801 im sure is wrong, the spell is casted on spawn and in ooc, in the fight the Unstoppable Abomination 16428 are spawned from boss and are never ooc
-- so the spell will never be casted
-- like seen on videos they get frenzy when they are around 25% hp, maybe less, I cant find videos with such quality where I can read the %
-- so the comment is wrong and must be updated too
-- I found the areatrigger 4112 in serverlog and using internetsearch in db dumps (dont know what that was)
-- when player trigger it the fight begins, cant see other reason
-- the gameobjects portals, door, trigger, throne are found with db- and internetsearch 
-- placed them like seen on videos and pictures
-- so no certified source for the positions, only my imagination
-- the faction 0 for the kelthuzadtrigger 181444 in tdb 0.0.7 must be wrong, player can activate it by rightclick, other triggers and doors have faction 114 or 1375 and/or flags f.i. 6553632
-- must set the npc(s) to use the EventAI  for the minions which kelthuzad spawns
UPDATE `creature_template` SET `AIName`= 'EventAI' Where `entry` in (16427,16429); 
DELETE FROM `creature_ai_scripts` WHERE id in (1642701,1642801,1642901);
-- Soldiers of the Frozen Wastes (1642701 ) cast dark blast (28458)  when they are near (5 yards) there target
-- Unstoppable Abomination (1642801) cast frenzy (28468) when they are at 25% hp
-- Soul Weavers (1642901) cast Wail of Soul (28459) when they are near (5 yards) there target, repeatable (5s-8s)
insert into `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) values
(1642701,16427,9,0,100,6,0,5,0,0,11,28458,0,0,0,0,0,0,0,0,0,0, 'Soldiers of the Frozen Wastes - Dark Blast'), -- Soldiers of the Frozen Wastes 1642701
(1642801,16428,2,0,100,6,25,0,0,0,11,28468,0,1,0,0,0,0,0,0,0,0, 'Unstoppable Abomination - Cast Frenzy on 25%'), -- Unstoppable Abomination 1642801
(1642901,16429,9,0,100,7,0,5,5000,8000,11,28459,1,0,0,0,0,0,0,0,0,0, 'Soul Weavers - Wail of Souls'); -- Soul Weavers 1642901
-- delete areatrigger_scripts for areatrigger at Kelthuzads chamber center
-- at_kelthuzad_center 4112
DELETE FROM `areatrigger_scripts` WHERE entry =4112;
-- add areatrigger_scripts for areatrigger at Kelthuzads chamber center
-- this script is in the boss_kelthuzad.cpp
-- when player trigger it the fight will start 
-- at_kelthuzad_center 4112
insert into `areatrigger_scripts` (`entry`,`ScriptName`) values(4112, 'at_kelthuzad_center'); -- at_kelthuzad_center 4112
DELETE FROM `gameobject` WHERE id in (181402,181403,181404,181405,181228,181444,181640);
-- add gameobjects in kelthuzads chamber
-- this gameobjects make the room looking good, and prevent players can escape
insert into `gameobject` (`id`,`map`,`spawnMask`,`phaseMask`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecs`,`animprogress`,`state`) values
(181402,533,3,1,3732.65,-5027.98,151.95,4.39633,0,0,0,0,25,0,1), -- Doodad_kelthuzad_window_portal01 181402
(181403,533,3,1,3783.3,-5062.34,151.82,3.5934,0,0,0,0,25,0,1), -- Doodad_kelthuzad_window_portal02 181403
(181404,533,3,1,3760.52,-5173.59,151.81,2.13021,0,0,0,0,25,0,1), -- Doodad_kelthuzad_window_portal03 181404
(181405,533,3,1,3699.93,-5185.8,151.956,1.3436,0,0,0,0,25,0,1), -- Doodad_kelthuzad_window_portal04 181405
(181228,533,3,1,3637.4,-5090.35,143.231,4.52682,0,0,0,0,25,0,1), -- KelThuzad Door 181228
(181444,533,3,1,3715.99,-5106.7,141.3,3.31536,0,0,0,0,25,0,1), -- KelThuzad Trigger 181444
(181640,533,3,1,3763.44,-5115.88,146,2.94,0,0,0,0,25,0,1); -- Doodad_kelthuzad_throne02 181640
-- KelThuzad Trigger needs a new faction, otherwise players can activate it with rightclick
-- I take 1375 like the faction of the Doodad_kelthuzad_window_portal01 and it works fine
-- other objects have faction 114 
-- other objects still have flags, the Doodad_kelthuzad_window_portal01 6553632
-- develeopment should decide what to take
UPDATE `gameobject_template` SET `faction`=1375 Where `entry`=181444;

