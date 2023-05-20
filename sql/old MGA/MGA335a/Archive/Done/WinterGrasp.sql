-- Fix portal in dalaran
UPDATE `gameobject_template` SET `flags`='0',`ScriptName`='go_dal2wg_portal' WHERE (`entry`='193772');


-- fix defenders portals
UPDATE `gameobject_template` SET `type`='10' WHERE (`entry`='190763');

UPDATE `gameobject_template` SET `data0`='0' WHERE (`entry`='190763');

UPDATE `gameobject_template` SET `ScriptName`='go_wg2fort_portal' WHERE (`entry`='190763');

UPDATE `gameobject_template` SET `type`='10' WHERE (`entry`='192819');

UPDATE `gameobject_template` SET `data0`='0' WHERE (`entry`='192819');

UPDATE `gameobject_template` SET `ScriptName`='go_wg2voa_portal' WHERE (`entry`='192819');

UPDATE `gameobject_template` SET `type`='10' WHERE (`entry`='191575');

UPDATE `gameobject_template` SET `data0`='0' WHERE (`entry`='191575');

UPDATE `gameobject_template` SET `ScriptName`='go_keep2wg_portal' WHERE (`entry`='191575');


-- fix data3 info for titan relic TDB error?
UPDATE `gameobject_template` SET `data3`='196608' WHERE `name` LIKE '%titan relic%';
-- back to default
-- UPDATE `gameobject_template` SET `data3`='3000' WHERE `name` LIKE '%titan relic%';

-- Defenders Portal Data (needs testing)

-- INSERT INTO gameobject_template
--    (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `faction`, `flags`, `size`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `ScriptName`)
-- VALUES
--   (190763, 10, 8244, 'Defender\'s Portal', '', '', '', 1735, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'go_wg2fort_portal');

-- INSERT INTO gameobject_template
--   (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `faction`, `flags`, `size`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `ScriptName`)
-- VALUES
--   (191575, 10, 8244, 'Defender\'s Portal', '', '', '', 1735, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'go_keep2wg_portal');

-- INSERT INTO gameobject_template
--   (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `faction`, `flags`, `size`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `ScriptName`)
-- VALUES
   (192819, 10, 8244, 'Defender\'s Portal', '', '', '', 1735, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'go_wg2voa_portal');

-- wg auto ressers
UPDATE `creature_template` SET `npcflag`='32768' WHERE (`entry`='31841');
UPDATE `creature_template` SET `npcflag`='32768' WHERE (`entry`='31842');
-- UPDATE `creature_template` SET `unit_flags`='4928' WHERE (`entry`='31841');
-- UPDATE `creature_template` SET `unit_flags`='4928' WHERE (`entry`='31842');
UPDATE `creature_template` SET `spell1`='0' WHERE (`entry`='31841');
UPDATE `creature_template` SET `spell1`='0' WHERE (`entry`='31842');
UPDATE `creature_template` SET `faction_A`='83',`faction_H`='83' WHERE (`entry`='31841');
UPDATE `creature_template` SET `faction_A`='84',`faction_H`='84' WHERE (`entry`='31842');
UPDATE `creature_template` SET `unit_flags`='4930' WHERE (`entry`='31841');  
UPDATE `creature_template` SET `unit_flags`='4930' WHERE (`entry`='31842'); 
UPDATE `creature_template` SET `flags_extra`='514' WHERE (`entry`='31841');
UPDATE `creature_template` SET `flags_extra`='514' WHERE (`entry`='31842');  


-- DELETE FROM `creature_template` WHERE (`entry`='31841');  
-- INSERT INTO creature_template
--   (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`)
-- VALUES
--   (31841, 0, 0, 0, 0, 0, 27759, 27760, 0, 0, 'Taunka Spirit Guide', '', '', 0, 80, 80, 2, 83, 83, 32769, 1, 1, 1, 417, 582, 0, 608, 4.6, 2000, 0, 2, 2147484480, 0, 0, 0, 0, 0, 0, 341, 506, 80, 7, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 10, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 413, 0, 0, '');

-- DELETE FROM `creature_template` WHERE (`entry`='31842');
-- INSERT INTO creature_template
--   (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`)
-- VALUES
--   (31842, 0, 0, 0, 0, 0, 27757, 27758, 0, 0, 'Dwarven Spirit Guide', '', '', 0, 80, 80, 2, 84, 84, 32769, 1, 1, 1, 417, 582, 0, 608, 4.6, 2000, 0, 2, 2147484480, 0, 0, 0, 0, 0, 0, 341, 506, 80, 7, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 10, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 235, 0, 0, '');


UPDATE `gameobject_template` SET `ScriptName`='go_wg2voa_portal' WHERE (`entry`='190763');  
UPDATE `gameobject_template` SET `ScriptName`='go_wg2fort_portal' WHERE (`entry`='192819');
