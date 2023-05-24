UPDATE `creature_template` SET `npcflag` = 5, `ScriptName` = 'npc_insta_80' WHERE `entry` = 407031;
UPDATE `creature_template` SET `name` = 'Deus', `subname` = 'The All Powerfull Booster!' WHERE `entry` = 407031;
UPDATE `creature_template` SET `scale` = 2 WHERE `entry` = 407031;

INSERT INTO `trinity_string` (`entry`, `content_default`) VALUES (30000, 'TEST');
UPDATE `trinity_string` SET `content_default` = 'Welcome to MGAWoW, %n' WHERE `entry` = 30000;
UPDATE `trinity_string` SET `content_default` = 'Welcome to MGAWoW %s' WHERE `entry` = 30000;
UPDATE `trinity_string` SET `content_default` = 'A new level 80 %s walks amoung us! , Welcome to the family %s.' WHERE `entry` = 30000;