INSERT INTO `trinity_string` (`entry`, `content_default`) VALUES ('9999', '|cffff0000[MGA Event Announcer]: %s|r');
INSERT INTO `creature_template` VALUES (500008, 0, 0, 0, 0, 0, 31953, 0, 0, 0, 'Anthony', 'SWTH Starter', '', 0, 1, 1, 0, 35, 35, 0, 1, 1.14286, 1, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 4096, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 2, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 'swth_npc_start', 12340);
INSERT INTO `creature_template` VALUES (500009, 0, 0, 0, 0, 0, 31953, 0, 0, 0, 'Richard', 'SWTH End', '', 0, 1, 1, 0, 35, 35, 0, 1, 1.14286, 1, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 4096, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 2, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 'swth_npc_end', 12340);
INSERT INTO `creature_template` VALUES (500010, 0, 0, 0, 0, 0, 31953, 0, 0, 0, 'David', 'SWTH Rewadrer', '', 0, 1, 1, 0, 35, 35, 0, 1, 1.14286, 1, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 4096, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 2, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 'swth_npc_reward', 12340);
UPDATE `creature_template` SET `npcflag`='1' WHERE (`entry`='500008');
UPDATE `creature_template` SET `npcflag`='1' WHERE (`entry`='500009');
UPDATE `creature_template` SET `npcflag`='1' WHERE (`entry`='500010');
UPDATE `gameobject_template` SET `data1`='1' WHERE (`entry`='190362');
UPDATE `gameobject_template` SET `faction`='0' WHERE (`entry`='190362');
INSERT INTO `disables` (`sourceType`, `entry`, `flags`, `params_0`, `comment`) VALUES ('0', '48018', '32', '35', 'Demonic Circle: Summon for SWTH');
REPLACE INSERT INTO `disables` VALUES (0, 48018, 33, '', '35', 'Demonic Circle: Summon for SWTH');
REPLACE INSERT INTO `disables` VALUES (0, 698, 49, '30,489', '35', 'Disable of Ritual of Summoning on Alterac Valley and Warsong Gulch SWTH');

INSERT INTO `disables` VALUES (0, 5782, 33, '', '35', 'SWTH');
INSERT INTO `disables` VALUES (0, 45273, 33, '', '35', 'SWTH');
INSERT INTO `disables` (`sourceType`, `entry`, `flags`, `params_1`, `comment`) VALUES ('0', '45273', '33', '35', 'SWTH');
INSERT INTO `disables` (`sourceType`, `entry`, `flags`, `params_1`, `comment`) VALUES ('0', '5484', '33', '35', 'SWTH');
INSERT INTO `disables` (`sourceType`, `entry`, `flags`, `params_1`, `comment`) VALUES ('0', '8122', '33', '35', 'SWTH');
INSERT INTO `disables` (`sourceType`, `entry`, `flags`, `params_1`, `comment`) VALUES ('0', '100', '33', '35', 'SWTH');
INSERT INTO `disables` (`sourceType`, `entry`, `flags`, `params_1`, `comment`) VALUES ('0', '20252', '33', '35', 'SWTH');
INSERT INTO `disables` (`sourceType`, `entry`, `flags`, `params_1`, `comment`) VALUES ('0', '49576', '33', '35', 'SWTH');
INSERT INTO `disables` (`sourceType`, `entry`, `flags`, `params_1`, `comment`) VALUES ('0', '6789', '33', '35', 'SWTH');
INSERT INTO `disables` (`sourceType`, `entry`, `flags`, `params_1`, `comment`) VALUES ('0', '34784', '33', '35', 'SWTH');
INSERT INTO `disables` (`sourceType`, `entry`, `flags`, `params_1`, `comment`) VALUES ('0', '51490', '33', '35', 'SWTH');
INSERT INTO `disables` (`sourceType`, `entry`, `flags`, `params_1`, `comment`) VALUES ('0', '9005', '33', '35', 'SWTH');
INSERT INTO `disables` (`sourceType`, `entry`, `flags`, `params_1`, `comment`) VALUES ('0', '2094', '33', '35', 'SWTH');
INSERT INTO `disables` (`sourceType`, `entry`, `flags`, `params_1`, `comment`) VALUES ('0', '50516', '33', '35', 'SWTH');
INSERT INTO `disables` (`sourceType`, `entry`, `flags`, `params_1`, `comment`) VALUES ('0', '27223', '33', '35', 'SWTH');
INSERT INTO `disables` (`sourceType`, `entry`, `flags`, `params_1`, `comment`) VALUES ('0', '49376', '33', '35', 'SWTH');
INSERT INTO `disables` (`sourceType`, `entry`, `flags`, `params_1`, `comment`) VALUES ('0', '16979', '33', '35', 'SWTH');
INSERT INTO `disables` (`sourceType`, `entry`, `flags`, `params_1`, `comment`) VALUES ('0', '605', '33', '35', 'SWTH');
INSERT INTO `disables` (`sourceType`, `entry`, `flags`, `params_1`, `comment`) VALUES ('0', '17925', '33', '35', 'SWTH');
INSERT INTO `disables` (`sourceType`, `entry`, `flags`, `params_1`, `comment`) VALUES ('0', '17926', '33', '35', 'SWTH');
INSERT INTO `disables` (`entry`, `flags`, `params_1`, `comment`) VALUES ('5782', '33', '35', 'SWTH PvP Stuff')
INSERT INTO `disables` (`sourceType`, `entry`, `flags`, `params_1`, `comment`) VALUES ('0', '28412', '33', '35', 'SWTH');
INSERT INTO `disables` (`sourceType`, `entry`, `flags`, `params_1`, `comment`) VALUES ('0', '30049', '33', '35', 'SWTH');
INSERT INTO `disables` (`sourceType`, `entry`, `flags`, `params_1`, `comment`) VALUES ('0', '30051', '33', '35', 'SWTH');
INSERT INTO `disables` (`sourceType`, `entry`, `flags`, `params_1`, `comment`) VALUES ('0', '30052', '33', '35', 'SWTH');



INSERT INTO `creature_template` VALUES (500015, 0, 0, 0, 0, 0, 31953, 0, 0, 0, 'Check Point One', 'SWTH', '', 0, 1, 1, 0, 35, 35, 0, 1, 1.14286, 1, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 4096, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 2, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 'swth_npc_cp1', 12340);
INSERT INTO `creature_template` VALUES (500016, 0, 0, 0, 0, 0, 31953, 0, 0, 0, 'Check Point Two', 'SWTH', '', 0, 1, 1, 0, 35, 35, 0, 1, 1.14286, 1, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 4096, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 2, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 'swth_npc_cp2', 12340);
INSERT INTO `creature_template` VALUES (500017, 0, 0, 0, 0, 0, 31953, 0, 0, 0, 'Check Point Three', 'SWTH', '', 0, 1, 1, 0, 35, 35, 0, 1, 1.14286, 1, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 4096, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 2, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 'swth_npc_cp3', 12340);
UPDATE `creature_template` SET `npcflag`='1' WHERE (`entry`='500015');
UPDATE `creature_template` SET `npcflag`='1' WHERE (`entry`='500016');
UPDATE `creature_template` SET `npcflag`='1' WHERE (`entry`='500017');