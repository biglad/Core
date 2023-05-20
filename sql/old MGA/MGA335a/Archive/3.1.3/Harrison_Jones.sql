/************************************************
* Title: Dun-da-Dun-tah!			*
* Link: http://www.wowhead.com/?quest=12082	*
* Author: Manos					*
* Date:	2009/11/25				*
* Version: 2					*
* Notes: check if Jones's cage door is closed	*
************************************************/

/************************
*    HARRISON JONES	*
************************/

-- CLEANUP
DELETE FROM `creature_questrelation` WHERE `quest` = 12082;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 12082;
DELETE FROM `script_waypoint` WHERE `entry` = 26814;
DELETE FROM `script_texts` WHERE `entry` IN ('-1001051','-1001052','-1001053','-1001054','-1001055','-1001056','-1001057','-1001058','-1001059','-1001060');

-- Update Jones creature_template
UPDATE `creature_template`
SET `movementId` = 1, `armor` = 10700, `ScriptName` = "npc_harrison_jones"
WHERE entry = 26814;

-- Update Jones creature_equipment_template (removes skull mace <32246>.  Jones picks up during escort)
UPDATE `creature_equip_template`
SET `equipentry1` = 0
WHERE entry = 1421;

-- Add quest to Jones
INSERT INTO `creature_questrelation` (`id`, `quest`)
VALUES
('26814','12082');

-- Add quest end to Harkor
INSERT INTO `creature_involvedrelation` (`id`, `quest`)
VALUES
('26884','12082'); -- Was 23999 (wrong Harkor)

-- Jones Waypoints for script
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`)
VALUES
('26814','0','4905.259766','-4758.709961','27.216401','1000','attacks cage'), -- Start
('26814','1','4905.259766','-4758.709961','27.216401','1000','cage opens, SAY_START'), -- Start
('26814','2','4890.980469','-4757.920898','27.233480','0',''),
('26814','3','4877.406738','-4774.577148','32.637035','0',''),
('26814','4','4875.632324','-4791.295410','32.521729','0',''),
('26814','5','4878.520508','-4793.985840','32.549927','2000','stops in doorway, SAY_PROGRESS1'),
('26814','6','4878.520508','-4793.985840','32.549927','1000','same place in doorway, SAY_PROGRESS2'),
('26814','7','4900.440430','-4797.862305','32.029991','0',''),
('26814','8','4909.792480','-4797.883301','32.504250','1000','starts to open cage'),
('26814','9','4909.792480','-4797.883301','32.504250','3000','opens cage and frees Adarrah, SAY_PROGRESS3'),
('26814','10','4906.803711','-4807.826172','32.029835','0',''),
('26814','11','4913.215332','-4819.773438','32.543678','0',''),
('26814','12','4914.759277','-4823.177734','32.661606','0',''),
('26814','13','4915.018555','-4823.177246','32.665195','3000','faces skulls, gets skull mace'),
('26814','14','4915.018555','-4823.177246','32.665195','1000','gets skull mace'),
('26814','15','4914.759277','-4823.177734','32.661606','0',''),
('26814','16','4914.649414','-4823.634766','32.667145','3000','hit gong #1 (shake effect w sound)'),
('26814','17','4914.649414','-4823.634766','32.667145','3000','hit gong #2 (shake effect w sound)'),
('26814','18','4909.021973','-4821.312500','32.545052','2000','SAY_PROGRESS4'),
('26814','19','4909.021973','-4821.312500','32.545052','0','SAY_PROGRESS5'),
('26814','20','4892.889648','-4813.415527','32.030029','0',''),
('26814','21','4887.824219','-4806.410156','32.030029','0','trigger firewall'),
('26814','22','4882.279297','-4797.324707','32.566734','0','run to next point, SAY_PROGRESS6'),
('26814','23','4898.743164','-4805.551758','32.030006','0',''),
('26814','24','4898.885254','-4805.581543','32.030006','2000','SAY_PROGRESS7'),
('26814','25','4898.885254','-4805.581543','32.030006','2000','SAY_PROGRESS8'),
('26814','26','4901.917969','-4811.968262','32.030006','1000','fight starts'),
('26814','27','4898.743164','-4805.551758','32.030006','0','trigger firewall off, run'),
('26814','28','4898.885254','-4805.581543','32.030006','1000','turn around, run'),
('26814','29','4882.279297','-4797.324707','32.566734','0','run'),
('26814','30','4878.520508','-4793.985840','32.549927','0','doorway, run'),
('26814','31','4853.520996','-4773.153809','32.615387','0','run'),
('26814','32','4831.209961','-4775.220703','32.580078','0','run'),
('26814','33','4815.007324','-4793.448242','25.466448','0','run'),
('26814','34','4827.081543','-4833.012695','25.476900','0','run'),
('26814','35','4826.137695','-4842.380371','25.462563','0','run'),
('26814','36','4820.562988','-4850.163086','25.582867','0','run'),
('26814','37','4803.599121','-4851.593750','25.517899','0','run'),
('26814','38','4769.978516','-4847.950684','25.434967','0','run'),
('26814','39','4759.688477','-4857.292480','25.636557','0','run'),
('26814','40','4717.454102','-4857.819824','25.564335','0','run'),
('26814','41','4714.354492','-4858.347656','24.426430','0','run'),
('26814','42','4673.732422','-4862.985840','35.479126','0','run'),
('26814','43','4659.693359','-4886.814941','35.479156','0','run'),
('26814','44','4658.118652','-4907.916016','38.943035','0','run'),
('26814','45','4650.998047','-4918.918945','45.480255','0','run'),
('26814','46','4655.667480','-4924.229492','46.682201','0','run'),
('26814','47','4668.253906','-4946.233398','47.992596','0','run'),
('26814','48','4673.433594','-4964.857422','47.869415','3000','SAY_END1'),
('26814','49','4678.111328','-4970.680176','47.274849','0','fadeout'); -- Final Destination

--  Jones Text for script
INSERT INTO `script_texts` (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`, `sound`, `type`, `language`, `emote`, `comment`)
VALUES
('-1001051','Alright kid. Stay behind me and you\'ll be fine.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0','0','0','0','jones SAY_START'),
('-1001052','Their ceremonial chamber, where I was to be sacrified...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0','0','0','0','jones SAY_PROGRESS1'),
('-1001053','Time to put and end to all this!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0','0','0','0','jones SAY_PROGRESS2'),
('-1001054','You\'re free to go, miss.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0','0','0','0','jones SAY_PROGRESS3'),
('-1001055','Odd. That usually does it.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0','0','0','0','jones SAY_PROGRESS4'),
('-1001056','Just as well. I\'ve had enough of this place.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0','0','0','0','jones SAY_PROGRESS5'),
('-1001057','What\'s this?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0','0','0','0','jones SAY_PROGRESS6'),
('-1001058','Aww, not a snake!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0','0','0','0','jones SAY_PROGRESS7'),
('-1001059','Listen, kid. I can handle this thing. You just watch my back!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0','0','0','0','jones SAY_PROGRESS8'),
('-1001060','See ya \'round, kid!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0','0','0','0','jones SAY_END1');

/************************
*        ADARRAH	*
************************/

-- CLEANUP
DELETE FROM `script_waypoint` WHERE `entry` = 24405;
DELETE FROM `script_texts` WHERE `entry` IN ('-1001061');

-- Update Adarrah creature_template
UPDATE `creature_template`
SET `movementId` = 1, `ScriptName` = "npc_adarrah"
WHERE entry = 24405;

-- Adarrah Waypoints for script
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`)
VALUES
('24405','0','4912.772461','-4797.773458','32.644875','1000','cheers'), -- Cheer
('24405','1','4912.772461','-4797.773458','32.644875','1000','SAY_START, emote Kiss'), -- Say Thanks, Kiss
('24405','2','4910.222656','-4799.891113','32.513424','1000','run'),
('24405','3','4894.567383','-4799.141602','32.029938','0','run'),
('24405','4','4878.586914','-4794.057129','32.552769','0','run'),
('24405','5','4843.632813','-4778.444824','32.610733','0','fadeout'); -- Final Destination

--  Adarrah Text for script
INSERT INTO `script_texts` (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`, `sound`, `type`, `language`, `emote`, `comment`)
VALUES
('-1001061','Thank you!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0','0','0','0','jones SAY_START');

/************************
*       TECAHUNA	*
************************/

-- CLEANUP
DELETE FROM `creature_template` WHERE `entry` = 26865;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 26865;

-- Insert Tecahuna creature_template
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `unk16`, `unk17`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`)
VALUES
('26865','0','0','0','0','0','24083','0','24083','0','Tecahuna','','','73','73','49700','49700','10161','10161','7918','190','190','0','1','1','1','328','467','0','354','7.5','2000','0','1','32832','0','35','0','0','0','0','287','426','63','1','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','EventAI','0','3','5','3','0','0','0','0','0','0','1','0','0','0','');

-- Tecahuna EventAI scripts
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `action1_param3`, `action2_type`, `action2_param1`, `action2_param2`, `action2_param3`, `action3_type`, `action3_param1`, `action3_param2`, `action3_param3`, `comment`)
VALUES
('2686501','26865','0','0','100','1','10000','15000','10000','15000','11','47602','4','0','11','47602','4','0','0','0','0','0','Tecahuna - Cast Summon Ancient Drakkari King'),
('2686502','26865','0','0','100','1','15000','25000','15000','25000','11','47629','1','0','0','0','0','0','0','0','0','0','Tecahuna - Cast Tecahuna Venom Spit');

/************************
* ANCIENT DRAKKARI KING	*
************************/

-- CLEANUP
DELETE FROM `creature_template` WHERE `entry` = 26871;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 26871;

-- Insert King creature_template
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `unk16`, `unk17`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`)
VALUES
('26871','0','0','0','0','0','27229','0','27229','0','Ancient Drakkari King','','','73','73','1988','1988','0','0','0','16','16','0','1','1','0','240','392','0','146','1','2000','0','0','0','0','0','0','0','0','0','0','0','0','6','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','EventAI','0','3','0.2','1','0','0','0','0','0','0','1','0','0','0','');

-- Tecahuna EventAI scripts
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `action1_param3`, `action2_type`, `action2_param1`, `action2_param2`, `action2_param3`, `action3_type`, `action3_param1`, `action3_param2`, `action3_param3`, `comment`)
VALUES
('2687101','26871','0','0','100','1','5000','15000','5000','15000','11','52466','1','0','0','0','0','0','0','0','0','0','Ancient Drakkari King - Cast Drakkari Curse');
