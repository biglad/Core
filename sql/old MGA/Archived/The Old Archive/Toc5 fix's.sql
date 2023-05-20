-- factions of the mounts used in phase 1
UPDATE `creature_template` SET `faction_A`='1735', `faction_H`='1735' WHERE (`entry`='36559');
UPDATE `creature_template` SET `faction_A`='1735', `faction_H`='1735' WHERE (`entry`='36558');
UPDATE `creature_template` SET `faction_A`='1732', `faction_H`='1732' WHERE (`entry`='36557');

-- factions of mounts used in phase 1 by NPCs
UPDATE `creature_template` SET `faction_A`='14', `faction_H`='14' WHERE (`entry`='33316');
UPDATE `creature_template` SET `faction_A`='14', `faction_H`='14' WHERE (`entry`='33317');
UPDATE `creature_template` SET `faction_A`='14', `faction_H`='14' WHERE (`entry`='33318');
UPDATE `creature_template` SET `faction_A`='14', `faction_H`='14' WHERE (`entry`='33319');
UPDATE `creature_template` SET `faction_A`='14', `faction_H`='14' WHERE (`entry`='33320');
UPDATE `creature_template` SET `faction_A`='14', `faction_H`='14' WHERE (`entry`='33321');
UPDATE `creature_template` SET `faction_A`='14', `faction_H`='14' WHERE (`entry`='33322');
UPDATE `creature_template` SET `faction_A`='14', `faction_H`='14' WHERE (`entry`='33323');
UPDATE `creature_template` SET `faction_A`='14', `faction_H`='14' WHERE (`entry`='33324');

-- temp hack to prevent HP regen on mounts
-- UPDATE `creature_template` SET `RegenHealth`='0' WHERE (`entry`='33316');
-- UPDATE `creature_template` SET `RegenHealth`='0' WHERE (`entry`='33317');
-- UPDATE `creature_template` SET `RegenHealth`='0' WHERE (`entry`='33318');
-- UPDATE `creature_template` SET `RegenHealth`='0' WHERE (`entry`='33319');
-- UPDATE `creature_template` SET `RegenHealth`='0' WHERE (`entry`='33320');
-- UPDATE `creature_template` SET `RegenHealth`='0' WHERE (`entry`='33321');
-- UPDATE `creature_template` SET `RegenHealth`='0' WHERE (`entry`='33322');
-- UPDATE `creature_template` SET `RegenHealth`='0' WHERE (`entry`='33323');
-- UPDATE `creature_template` SET `RegenHealth`='0' WHERE (`entry`='33324');

-- allow mounts to move and set them at attackable
UPDATE `creature_template` SET `dynamicflags`='0' WHERE `entry` = '33316' OR `entry` = '33317' OR `entry` = '33318' OR `entry` = '33319' OR `entry` = '33320' OR `entry` = '33321' OR `entry` = '33322' OR `entry` = '33323';
UPDATE `creature_template` SET `type_flags`='8' WHERE `entry` = '33316' OR `entry` = '33317' OR `entry` = '33318' OR `entry` = '33319' OR `entry` = '33320' OR `entry` = '33321' OR `entry` = '33322' OR `entry` = '33323';
UPDATE creature_template SET `dynamicflags`='0' WHERE `entry` in (33416, 33298, 33297, 33301, 33408, 35637, 35633, 35768, 34658, 35636);
UPDATE creature_template SET `dynamicflags`='0' WHERE `entry` in (35638, 35635, 35640, 35641, 35634, 33414, 33300, 33409, 33418, 33299);
UPDATE creature_template SET `type_flags`='8' WHERE `entry` in (33416, 33298, 33297, 33301, 33408, 35637, 35633, 35768, 34658, 35636);
UPDATE creature_template SET `type_flags`='8' WHERE `entry` in (35638, 35635, 35640, 35641, 35634, 33414, 33300, 33409, 33418, 33299);
UPDATE creature_template SET `AIName`='' WHERE `entry` in (33416, 33298, 33297, 33301, 33408, 35637, 35633, 35768, 34658, 35636);
UPDATE creature_template SET `AIName`='' WHERE `entry` in (35638, 35635, 35640, 35641, 35634, 33414, 33300, 33409, 33418, 33299);


INSERT INTO `creature_template` VALUES (35569, 36085, 0, 0, 0, 0, 28637, 0, 0, 0, 'Eressea Dawnsinger', 'Grand Champion of Silvermoon', '', 0, 80, 80, 2, 1735, 1735, 0, 1, 1.14286, 1, 1, 417, 582, 0, 608, 7.5, 0, 0, 2, 0, 8, 0, 0, 0, 0, 0, 341, 506, 80, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 15, 20, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 'boss_mage_toc5', 12340);
INSERT INTO `creature_template` VALUES (35571, 36090, 0, 0, 0, 0, 28597, 0, 0, 0, 'Runok Wildmane', 'Grand Champion of the Thunder Bluff', '', 0, 80, 80, 2, 1735, 1735, 0, 1, 1.14286, 1, 1, 417, 582, 0, 608, 7.5, 2400, 0, 2, 0, 8, 0, 0, 0, 0, 0, 341, 506, 80, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 15, 20, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 'boss_shaman_toc5', 12340);
INSERT INTO `creature_template` VALUES (35617, 36084, 0, 0, 0, 0, 28589, 0, 0, 0, 'Deathstalker Visceri', 'Grand Champion of Undercity', '', 0, 80, 80, 2, 1735, 1735, 0, 1, 1.14286, 1, 1, 422, 586, 0, 642, 7.5, 0, 0, 1, 0, 8, 0, 0, 0, 0, 0, 345, 509, 103, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 15, 20, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 'boss_rouge_toc5', 12340);
INSERT INTO `creature_template` VALUES (35572, 36089, 0, 0, 0, 0, 28587, 0, 0, 0, 'Mokra the Skullcrusher', 'Grand Champion of Orgrimmar', '', 0, 80, 80, 2, 1735, 1735, 0, 1, 1.42857, 1, 1, 422, 586, 0, 642, 7.5, 2400, 0, 1, 0, 8, 0, 0, 0, 0, 0, 345, 509, 103, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 477, 0, 0, '', 0, 3, 15, 20, 1, 0, 0, 0, 0, 0, 0, 0, 441, 1, 0, 0, 0, 'boss_warrior_toc5', 12340);
INSERT INTO `creature_template` VALUES (35570, 36091, 0, 0, 0, 0, 28588, 0, 0, 0, 'Zul\'tore', 'Grand Champion of Sen\'jin', '', 0, 80, 80, 2, 1735, 1735, 0, 1, 1.14286, 1, 1, 422, 586, 0, 642, 7.5, 2400, 0, 1, 0, 8, 0, 0, 0, 0, 0, 345, 509, 103, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 15, 20, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 'boss_hunter_toc5', 12340);
INSERT INTO `creature_template` VALUES (34703, 36087, 0, 0, 0, 0, 28564, 0, 0, 0, 'Lana Stouthammer', 'Grand Champion of Ironforge', '', 0, 80, 80, 2, 1732, 1732, 0, 1, 1.14286, 1, 1, 422, 586, 0, 642, 7.5, 0, 0, 1, 0, 8, 0, 0, 0, 0, 0, 345, 509, 103, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 477, 0, 0, '', 0, 3, 15, 20, 1, 0, 0, 0, 0, 0, 0, 0, 441, 1, 0, 0, 0, 'boss_rouge_toc5', 12340);
INSERT INTO `creature_template` VALUES (34657, 36086, 0, 0, 0, 0, 28735, 0, 0, 0, 'Jaelyne Evensong', 'Grand Champion of Darnassus', '', 0, 80, 80, 2, 1732, 1732, 0, 1, 1.14286, 1, 1, 417, 582, 0, 608, 7.5, 0, 0, 2, 0, 8, 0, 0, 0, 0, 0, 341, 506, 80, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 15, 20, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 'boss_hunter_toc5', 12340);
INSERT INTO `creature_template` VALUES (34701, 36083, 0, 0, 0, 0, 28736, 0, 0, 0, 'Colosos', 'Grand Champion of the Exodar', '', 0, 80, 80, 2, 1732, 1732, 0, 1, 1.14286, 1, 1, 417, 582, 0, 608, 7.5, 0, 0, 2, 0, 8, 0, 0, 0, 0, 0, 341, 506, 80, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 15, 20, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 'boss_shaman_toc5', 12340);
INSERT INTO `creature_template` VALUES (34702, 36082, 0, 0, 0, 0, 28586, 0, 0, 0, 'Ambrose Boltspark', 'Grand Champion of Gnomeregan', '', 0, 80, 80, 2, 1732, 1732, 0, 1, 1.14286, 1, 1, 417, 582, 0, 608, 7.5, 0, 0, 2, 0, 8, 0, 0, 0, 0, 0, 341, 506, 80, 7, 64, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 15, 20, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 'boss_mage_toc5', 12340);
INSERT INTO `creature_template` VALUES (34705, 36088, 0, 0, 0, 0, 28560, 0, 0, 0, 'Marshal Jacob Alerius', 'Grand Champion of Stormwind', '', 0, 80, 80, 2, 1732, 1732, 0, 1, 1.14286, 1, 1, 422, 586, 0, 642, 7.5, 0, 0, 1, 0, 8, 0, 0, 0, 0, 0, 345, 509, 103, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 15, 20, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 'boss_warrior_toc5', 12340);

UPDATE `creature_template` SET `mechanic_immune_mask`='2147483647' WHERE (`entry`='35572');
UPDATE `creature_template` SET `mechanic_immune_mask`='2147483647' WHERE (`entry`='35569');
UPDATE `creature_template` SET `mechanic_immune_mask`='2147483647' WHERE (`entry`='35571');
UPDATE `creature_template` SET `mechanic_immune_mask`='2147483647' WHERE (`entry`='35570');
UPDATE `creature_template` SET `mechanic_immune_mask`='2147483647' WHERE (`entry`='35617');
UPDATE `creature_template` SET `mechanic_immune_mask`='2147483647' WHERE (`entry`='34705');
UPDATE `creature_template` SET `mechanic_immune_mask`='2147483647' WHERE (`entry`='34702');
UPDATE `creature_template` SET `mechanic_immune_mask`='2147483647' WHERE (`entry`='34701');
UPDATE `creature_template` SET `mechanic_immune_mask`='2147483647' WHERE (`entry`='34657');
UPDATE `creature_template` SET `mechanic_immune_mask`='2147483647' WHERE (`entry`='34703');
UPDATE `creature_template` SET `mechanic_immune_mask`='2147483647' WHERE (`entry`='35119');
UPDATE `creature_template` SET `mechanic_immune_mask`='2147483647' WHERE (`entry`='34928');
UPDATE `creature_template` SET `mechanic_immune_mask`='2147483647' WHERE (`entry`='35451');


UPDATE `creature_template` SET `mechanic_immune_mask`='2147483647' WHERE (`ScriptName`='npc_memory');
UPDATE `creature_template` SET `unit_flags`='0' WHERE (`entry`='35451');
UPDATE `creature_template` SET `unit_flags`='0' WHERE (`entry`='35490');

