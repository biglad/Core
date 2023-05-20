-- Rebel Cannon prevent move
UPDATE `creature_template` SET `unit_flags`='16388' WHERE (`entry`='35317');
UPDATE `creature_template` SET `movementId`='121' WHERE (`entry`='35317');


-- Ephram "Midriff" Moonfall
UPDATE `creature_template` SET `ScriptName`='npc_ephrammidriffmoonfall' WHERE `entry`='43377';
UPDATE `creature_template` SET `npcflag`='1' WHERE `entry`='43377';


-- We All Scream for Ice Cream... and then Die! http://www.wowhead.com/quest=28051
UPDATE `creature_template` SET `IconName`='Interact' WHERE `entry`='47446';
UPDATE `creature_template` SET `npcflag`='1' WHERE `entry`='47446';
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`='47446';
INSERT INTO `smart_scripts` (`entryorguid`, `event_type`, `action_type`, `action_param1`, `target_type`, `comment`) VALUES ('47446', '64', '33', '47446', '7', 'Give Quest Credit for We All Scream for Ice Cream... and then Die!');
