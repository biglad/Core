-- Spawn WG castle door
UPDATE `gameobject` SET `spawnMask`='3' WHERE (`guid`='51165');
-- Remove invis wall from keep
UPDATE `gameobject` SET `spawnMask`='3' WHERE (`guid`='73042');  

-- spawn foretress gate
UPDATE `gameobject` SET `spawnMask`='3' WHERE (`guid`='49914');

-- Turrets mak usable
UPDATE creature_template SET spell1=51421, speed = null, faction_a=1732, faction_h=1735 WHERE entry=28366;

-- fix vehicals regening HP
update creature_template set regenhealth=0 where name like 'Wintergrasp%' and vehicleId > 0;


-- fix spirit healers in WG
UPDATE `creature_template` SET `npcflag`='32768' WHERE (`entry`='31841');
UPDATE `creature_template` SET `npcflag`='32768' WHERE (`entry`='31842');
UPDATE `creature_template` SET `unit_flags`='4928' WHERE (`entry`='31841');
UPDATE `creature_template` SET `unit_flags`='4928' WHERE (`entry`='31842');
UPDATE `creature_template` SET `spell1`='0' WHERE (`entry`='31841');
UPDATE `creature_template` SET `spell1`='0' WHERE (`entry`='31842');


-- working DB WG-VoA teleporters
-- UPDATE gameobject_template SET type=22,data0=54640, ScriptName='' WHERE (entry='190763');
-- INSERT into spell_script_target values (54643, 1, 23472);

-- WG workshops dudes
UPDATE `creature_template` SET `npcflag`='1' WHERE (`entry`='30400');
UPDATE `creature_template` SET `npcflag`='1' WHERE (`entry`='30499');

-- Prevent cannons & turrets form moving
UPDATE `creature_template` SET `unit_flags`='4',`MovementType`='0' WHERE (`entry`='28366');
UPDATE `creature_template` SET `unit_flags`='4',`MovementType`='0' WHERE (`entry`='30354');
UPDATE `creature_template` SET `unit_flags`='4',`MovementType`='0' WHERE (`entry`='28319');

-- fix wall cannons missing veihcal id
UPDATE `creature_template` SET `VehicleId`='116' WHERE (`entry`='28366');

-- set default flag for portal to WG in dal
UPDATE `gameobject_template` SET `flags`='4' WHERE (`entry`='193772');

-- make some WG quest work in raid parties
UPDATE `quest_template` SET `QuestFlags`='4296' WHERE (`entry`='13539');
UPDATE `quest_template` SET `QuestFlags`='4296' WHERE (`entry`='13185');
UPDATE `quest_template` SET `QuestFlags`='4296' WHERE (`entry`='13186');
UPDATE `quest_template` SET `QuestFlags`='4296' WHERE (`entry`='13180');
UPDATE `quest_template` SET `QuestFlags`='4296' WHERE (`entry`='13178');
UPDATE `quest_template` SET `QuestFlags`='4296' WHERE (`entry`='13179');
UPDATE `quest_template` SET `QuestFlags`='4296' WHERE (`entry`='13177');
UPDATE `quest_template` SET `QuestFlags`='4296' WHERE (`entry`='13223');
UPDATE `quest_template` SET `QuestFlags`='4296' WHERE (`entry`='13221');


-- UPDATE `quest_template` SET `Type`='62' WHERE (`entry`='13539');
-- UPDATE `quest_template` SET `Type`='62' WHERE (`entry`='13185'); 
-- UPDATE `quest_template` SET `Type`='62' WHERE (`entry`='13186'); 
-- UPDATE `quest_template` SET `Type`='62' WHERE (`entry`='13180'); 
-- UPDATE `quest_template` SET `Type`='62' WHERE (`entry`='13178'); 
-- UPDATE `quest_template` SET `Type`='62' WHERE (`entry`='13179'); 
-- UPDATE `quest_template` SET `Type`='62' WHERE (`entry`='13177'); 
-- UPDATE `quest_template` SET `Type`='62' WHERE (`entry`='13223'); 
-- UPDATE `quest_template` SET `Type`='62' WHERE (`entry`='13221'); 

UPDATE `quest_template` SET `Type`='41' WHERE (`entry`='13539');
UPDATE `quest_template` SET `Type`='41' WHERE (`entry`='13185'); 
UPDATE `quest_template` SET `Type`='41' WHERE (`entry`='13186'); 
UPDATE `quest_template` SET `Type`='41' WHERE (`entry`='13180'); 
UPDATE `quest_template` SET `Type`='41' WHERE (`entry`='13178'); 
UPDATE `quest_template` SET `Type`='41' WHERE (`entry`='13179'); 
UPDATE `quest_template` SET `Type`='41' WHERE (`entry`='13177'); 
UPDATE `quest_template` SET `Type`='41' WHERE (`entry`='13223'); 
UPDATE `quest_template` SET `Type`='41' WHERE (`entry`='13221');

-- Fix Catapult spell
UPDATE `creature_template` SET `spell2`='50990' WHERE (`entry`='27881');

-- make GO usebale by players and assign script
UPDATE `gameobject_template` SET `type`='10' WHERE (`entry`='190763');
UPDATE `gameobject_template` SET `data0`='0' WHERE (`entry`='190763');
UPDATE `gameobject_template` SET `ScriptName`='go_wg2voa_portal' WHERE (`entry`='190763');

UPDATE `gameobject_template` SET `type`='10' WHERE (`entry`='191575');
UPDATE `gameobject_template` SET `data0`='0' WHERE (`entry`='191575');
UPDATE `gameobject_template` SET `ScriptName`='go_wg2fort_portal' WHERE (`entry`='191575');


UPDATE `gameobject_template` SET `type`='10' WHERE (`entry`='192819');
UPDATE `gameobject_template` SET `data0`='0' WHERE (`entry`='192819');
UPDATE `gameobject_template` SET `ScriptName`='go_keep2wg_portal' WHERE (`entry`='192819');


-- DELETE FROM spell_target_position WHERE id IN (54643);
-- INSERT INTO spell_target_position VALUES(54643, 571, 5405.61, 2854.35, 418.90, 2.4636);


-- set data0 back to normal if needed later????
-- UPDATE `gameobject_template` SET `type`='10' WHERE (`entry`='190763');
-- UPDATE `gameobject_template` SET `data0`='54640' WHERE (`entry`='190763');
-- UPDATE `gameobject_template` SET `ScriptName`='' WHERE (`entry`='190763');


UPDATE `gameobject_template` SET `type`='10' WHERE (`entry`='193772');
UPDATE `gameobject_template` SET `data0`='0' WHERE (`entry`='193772');
UPDATE `gameobject_template` SET `ScriptName`='go_dal2wg_portal' WHERE (`entry`='193772');