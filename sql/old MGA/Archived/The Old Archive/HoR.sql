// 37221 < NPC needs spawning in HC & normal after a DB reset
UPDATE `creature_template` SET `unit_flags`=NULL WHERE (`entry`='38177');
UPDATE `creature_template` SET `unit_flags`=NULL WHERE (`entry`='38173');
UPDATE `creature_template` SET `unit_flags`=NULL WHERE (`entry`='38176');
UPDATE `creature_template` SET `unit_flags`=NULL WHERE (`entry`='38175');
UPDATE `creature_template` SET `unit_flags`=NULL WHERE (`entry`='38172');


UPDATE `creature_template` SET `ScriptName`='boss_lich_king_hor' WHERE (`entry`='37226');
UPDATE `creature_template` SET `ScriptName`='npc_raging_gnoul' WHERE (`entry`='36940');
UPDATE `creature_template` SET `ScriptName`='npc_risen_witch_doctor' WHERE (`entry`='36941');
UPDATE `creature_template` SET `ScriptName`='npc_abon' WHERE (`entry`='37069');

UPDATE `creature_template` SET `ScriptName`='npc_jaina_and_sylvana_hor_part2' WHERE (`entry`='36955');

UPDATE `creature` SET `spawnMask`='15' WHERE (`guid`='323252');
UPDATE `creature` SET `spawnMask`='15' WHERE (`guid`='323254');
UPDATE `creature_template` SET `ScriptName`='npc_frostworn_general' WHERE (`entry`='36723');
UPDATE `creature_template` SET `ScriptName`='npc_lich_king_hr' WHERE (`entry`='36954');

DELETE FROM `script_texts` WHERE `entry` BETWEEN -1594540 AND -1594430;
INSERT INTO `script_texts` (`entry`,`content_default`,`content_loc8`,`sound`,`type`,`language`,`emote`,`comment`) VALUES
(-1594473, '<need translate>', '?????? ????????! ??? ???? ?? ????? ????? ????! ?????? ?? ???? ???????, ?????? ?????? ? ???? ????????!', 17229,1,0,0, '67234'),
(-1594474, '<need translate>', '? ?? ??????? ??????? ??????, ????????. ?? ???? ??? ???? ?? ????????. ?? ?? ????????? ????? ??????? ? ?????? ???? ???? ?????? ????????!', 17228,1,0,0, '67234'),
-- SCENE - Hall Of Reflection (Extro) - PreEscape
(-1594477, 'Your allies have arrived, Jaina, just as you promised. You will all become powerful agents of the Scourge.', '???? ???????? ???????, ??????! ??? ?? ? ???????... ??-??-??-??... ??? ?? ??????? ???????? ????????? ?????...', 17212,1,0,0, '67234'),
(-1594478, 'I will not make the same mistake again, Sylvanas. This time there will be no escape. You will all serve me in death!', '? ?? ??????? ??????? ??????, ????????! ?? ???? ??? ???? ?? ????????. ?? ??? ?????? ??????? ??? ????? ??????...', 17213,1,0,0, '67234'),
(-1594479, 'He is too powerful, we must leave this place at once! My magic will hold him in place for only a short time! Come quickly, heroes!', '?? ??????? ?????. ?? ?????? ????????? ?? ???? ??? ????? ??????. ??? ????? ???????? ??? ?????????, ??????? ?????...', 16644,0,0,1, '67234'),
(-1594480, 'He\'s too powerful! Heroes, quickly, come to me! We must leave this place immediately! I will do what I can do hold him in place while we flee.', '?? ??????? ?????. ????? ??????, ?? ????. ?? ?????? ????????? ?????? ??????????. ? ?????????? ??? ?????????, ???? ?? ????? ???????.', 17058,0,0,1, '67234'),
-- SCENE - Hall Of Reflection (Extro) - Escape
(-1594481, 'Death\'s cold embrace awaits.', '?????? ???????????? ??????? ???????!', 17221,1,0,0, '67234'),
(-1594482, 'Rise minions, do not left them us!', '?????????? ???????????, ?? ????? ?? ???????!', 17216,1,0,0, '67234'),
(-1594483, 'Minions sees them. Bring their corpses back to me!', '???????? ??! ????????? ??? ?? ????!', 17222,1,0,0, '67234'),
(-1594484, 'No...', '??????? ???!', 17214,1,0,0, '67234'),
(-1594485, 'All is lost!', '??????? ? ???????.', 17215,1,0,0, '67234'),
(-1594486, 'There is no escape!', '?????? ??????!', 17217,1,0,0, '67234'),
(-1594487, 'I will destroy this barrier. You must hold the undead back!', '? ??????? ??? ????????, ? ?? ??????????? ?????? ?? ??????????!', 16607,1,0,0, '67234'),
(-1594488, 'No wall can hold the Banshee Queen! Keep the undead at bay, heroes! I will tear this barrier down!', '??????? ????? ?? ??????? ???????? ??????. ??????? ?????? ?? ??????????, ? ??????? ??? ????????.', 17029,1,0,0, '67234'),
(-1594489, 'Another ice wall! Keep the undead from interrupting my incantation so that I may bring this wall down!', '????? ??????? ?????... ? ??????? ??, ?????? ?? ????? ?????? ???????? ??? ??????????...', 16608,1,0,0, '67234'),
(-1594490, 'Another barrier? Stand strong, champions! I will bring the wall down!', '??? ???? ????????. ????????? ?????! ? ??????? ??? ?????!', 17030,1,0,0, '67234'),
(-1594491, 'Succumb to the chill of the grave.', '?????????? ????????? ??????!', 17218,1,0,0, '67234'),
(-1594492, 'Another dead end.', '?? ? ???????!', 17219,1,0,0, '67234'),
(-1594493, 'How long can you fight it?', '??? ????? ?? ??????? ???????????????', 17220,1,0,0, '67234'),
(-1594494, '<need translate>', '?? ? ???? ??????. ?  ?????? ??? ??? ?????? ????? ??? ??????????? ?? ?????!', 16609,0,0,0, '67234'),
(-1594495, 'Your barriers can\'t hold us back much longer, monster. I will shatter them all!', '???? ???????? ?????? ?? ???????? ???, ????????. ? ????? ?? ? ????!', 16610,1,0,0, '67234'),
(-1594496, 'I grow tired of these games, Arthas! Your walls can\'t stop me!', '? ?????? ?? ???? ??? ?????. ???? ????? ?? ????????? ????!', 17031,1,0,0, '67234'),
(-1594497, 'You won\'t impede our escape, fiend. Keep the undead off me while I bring this barrier down!', '?? ?? ????????? ??? ????, ??????. ??????????? ??????, ? ? ???????? ??? ????????.', 17032,1,0,0, '67234'),
(-1594498, 'There\'s an opening up ahead. GO NOW!', '? ???? ?????, ??????!', 16645,1,0,0, '67234'),
(-1594499, 'We\'re almost there... Don\'t give up!', '?? ????? ?????????, ?? ??????????!', 16646,1,0,0, '67234'),
(-1594500, 'There\'s an opening up ahead. GO NOW!', '? ???? ?????, ??????!', 17059,1,0,0, '67234'),
(-1594501, 'We\'re almost there! Don\'t give up!', '?? ????? ?????????, ?? ??????????!', 17060,1,0,0, '67234'),
(-1594502, 'It... It\'s a dead end. We have no choice but to fight. Steel yourself heroes, for this is our last stand!', '?????? ?????? ??????. ?????? ??? ???????? ?????????. ??? ???? ????????? ?????!', 16647,1,0,0, '67234'),
(-1594503, 'BLASTED DEAD END! So this is how it ends. Prepare yourselves, heroes, for today we make our final stand!', '????????? ?????, ?????? ??? ?????????? ?????. ?????????? ?????, ??? ???? ????????? ?????.', 17061,1,0,0, '67234'),
(-1594504, 'Nowhere to run! You\'re mine now...', '??-??-??... ?????? ??????. ?????? ?? ???!', 17223,1,0,0, '67234'),
(-1594505, 'Soldiers of Lordaeron, rise to meet your master\'s call!', '??????? ?????????, ?????????? ?? ???? ?????????!', 16714,1,0,0, '67234'),
(-1594506, 'The master surveyed his kingdom and found it... lacking. His judgement was swift and without mercy. Death to all!', '???????? ???????? ???? ??????????? ? ??????? ??? ????????! ??? ??? ??? ??????? ? ??????? - ??????? ???? ??????!', 16738,1,0,0, '67234'),
-- FrostWorn General
(-1594519, 'You are not worthy to face the Lich King!', '?? ?????????? ????????? ????? ??????? - ?????!', 16921,1,0,0, '67234'),
(-1594520, 'Master, I have failed...', '????????... ? ?????? ???...', 16922,1,0,0, '67234');

DELETE FROM script_waypoint WHERE entry IN (36955,37226,37554);
INSERT INTO script_waypoint VALUES
-- Jaina

   (36955, 0, 5587.682,2228.586,733.011, 0, 'WP1'),
   (36955, 1, 5600.715,2209.058,731.618, 0, 'WP2'),
   (36955, 2, 5606.417,2193.029,731.129, 0, 'WP3'),
   (36955, 3, 5598.562,2167.806,730.918, 0, 'WP4 - Summon IceWall 01'), 
   (36955, 4, 5556.436,2099.827,731.827, 0, 'WP5 - Spell Channel'),
   (36955, 5, 5543.498,2071.234,731.702, 0, 'WP6'),
   (36955, 6, 5528.969,2036.121,731.407, 0, 'WP7'),
   (36955, 7, 5512.045,1996.702,735.122, 0, 'WP8'),
   (36955, 8, 5504.490,1988.789,735.886, 0, 'WP9 - Spell Channel'),
   (36955, 9, 5489.645,1966.389,737.653, 0, 'WP10'),
   (36955, 10, 5475.517,1943.176,741.146, 0, 'WP11'),
   (36955, 11, 5466.930,1926.049,743.536, 0, 'WP12'),
   (36955, 12, 5445.157,1894.955,748.757, 0, 'WP13 - Spell Channel'),
   (36955, 13, 5425.907,1869.708,753.237, 0, 'WP14'),
   (36955, 14, 5405.118,1833.937,757.486, 0, 'WP15'),
   (36955, 15, 5370.324,1799.375,761.007, 0, 'WP16'),
   (36955, 16, 5335.422,1766.951,767.635, 0, 'WP17 - Spell Channel'),
   (36955, 17, 5311.438,1739.390,774.165, 0, 'WP18'),
   (36955, 18, 5283.589,1703.755,784.176, 0, 'WP19'),
   (36955, 19, 5260.400,1677.775,784.301, 3000, 'WP20'),
   (36955, 20, 5262.439,1680.410,784.294, 0, 'WP21'),
   (36955, 21, 5260.400,1677.775,784.301, 0, 'WP22'),

-- Sylvana

   (37554, 0, 5587.682,2228.586,733.011, 0, 'WP1'),
   (37554, 1, 5600.715,2209.058,731.618, 0, 'WP2'),
   (37554, 2, 5606.417,2193.029,731.129, 0, 'WP3'),
   (37554, 3, 5598.562,2167.806,730.918, 0, 'WP4 - Summon IceWall 01'), 
   (37554, 4, 5556.436,2099.827,731.827, 0, 'WP5 - Spell Channel'),
   (37554, 5, 5543.498,2071.234,731.702, 0, 'WP6'),
   (37554, 6, 5528.969,2036.121,731.407, 0, 'WP7'),
   (37554, 7, 5512.045,1996.702,735.122, 0, 'WP8'),
   (37554, 8, 5504.490,1988.789,735.886, 0, 'WP9 - Spell Channel'),
   (37554, 9, 5489.645,1966.389,737.653, 0, 'WP10'),
   (37554, 10, 5475.517,1943.176,741.146, 0, 'WP11'),
   (37554, 11, 5466.930,1926.049,743.536, 0, 'WP12'),
   (37554, 12, 5445.157,1894.955,748.757, 0, 'WP13 - Spell Channel'),
   (37554, 13, 5425.907,1869.708,753.237, 0, 'WP14'),
   (37554, 14, 5405.118,1833.937,757.486, 0, 'WP15'),
   (37554, 15, 5370.324,1799.375,761.007, 0, 'WP16'),
   (37554, 16, 5335.422,1766.951,767.635, 0, 'WP17 - Spell Channel'),
   (37554, 17, 5311.438,1739.390,774.165, 0, 'WP18'),
   (37554, 18, 5283.589,1703.755,784.176, 0, 'WP19'),
   (37554, 19, 5260.400,1677.775,784.301, 3000, 'WP20'),
   (37554, 20, 5262.439,1680.410,784.294, 0, 'WP21'),
   (37554, 21, 5260.400,1677.775,784.301, 0, 'WP22'),

-- Lich King

   (37226, 0, 5577.187,2236.003,733.012, 0, 'WP1'),
   (37226, 1, 5587.682,2228.586,733.011, 0, 'WP2'),
   (37226, 2, 5600.715,2209.058,731.618, 0, 'WP3'),
   (37226, 3, 5606.417,2193.029,731.129, 0, 'WP4'),
   (37226, 4, 5598.562,2167.806,730.918, 0, 'WP5'), 
   (37226, 5, 5559.218,2106.802,731.229, 0, 'WP6'),
   (37226, 6, 5543.498,2071.234,731.702, 0, 'WP7'),
   (37226, 7, 5528.969,2036.121,731.407, 0, 'WP8'),
   (37226, 8, 5512.045,1996.702,735.122, 0, 'WP9'),
   (37226, 9, 5504.490,1988.789,735.886, 0, 'WP10'),
   (37226, 10, 5489.645,1966.389,737.653, 0, 'WP10'),
   (37226, 11, 5475.517,1943.176,741.146, 0, 'WP11'),
   (37226, 12, 5466.930,1926.049,743.536, 0, 'WP12'),
   (37226, 13, 5445.157,1894.955,748.757, 0, 'WP13'),
   (37226, 14, 5425.907,1869.708,753.237, 0, 'WP14'),
   (37226, 15, 5405.118,1833.937,757.486, 0, 'WP15'),
   (37226, 16, 5370.324,1799.375,761.007, 0, 'WP16'),
   (37226, 17, 5335.422,1766.951,767.635, 0, 'WP17'),
   (37226, 18, 5311.438,1739.390,774.165, 0, 'WP18'),
   (37226, 19, 5283.589,1703.755,784.176, 0, 'WP19'),
   (37226, 20, 5278.694,1697.912,785.692, 0, 'WP20'),
   (37226, 21, 5283.589,1703.755,784.176, 0, 'WP19');
   
UPDATE `creature_template` SET `speed_walk`='1.7', `speed_run`='2.7' WHERE `entry` in (36954, 37226);



-- not sure if needed????? seems to work ok without this???
REPLACE INTO `conditions` (`SourceTypeOrReferenceId`, `SourceEntry`, `ConditionTypeOrReference`, `ConditionValue1`, `ConditionValue2`) VALUES 
('13', '70464', '18', '1', '36881'),
('13', '69708', '18', '1', '37226'),
('13', '70194', '18', '1', '37226'),
('13', '69784', '18', '1', '37014'),
('13', '70224', '18', '1', '37014'),
('13', '70225', '18', '1', '37014'),
('13', '69431', '18', '1', '37497'),
('13', '69431', '18', '1', '37496'),
('13', '69431', '18', '1', '37588'),
('13', '69431', '18', '1', '37584'),
('13', '69431', '18', '1', '37587');
   

UPDATE `creature_template` SET `AIName`='', `Scriptname`='npc_lich_king_hr' WHERE `entry`=36954;
UPDATE `creature_template` SET `AIName`='', `Scriptname`='boss_lich_king_hor' WHERE `entry`=37226;

UPDATE `creature_template` SET `AIName`='', `Scriptname`='npc_raging_gnoul' WHERE `entry`=36940;
UPDATE `creature_template` SET `AIName`='', `Scriptname`='npc_risen_witch_doctor' WHERE `entry`=36941;
UPDATE `creature_template` SET `AIName`='', `Scriptname`='npc_abon' WHERE `entry`=37069;

UPDATE `creature_template` SET `AIName`='', `Scriptname`='npc_frostworn_general' WHERE `entry`=36723;

INSERT INTO `gameobject_template` VALUES ('500001', '0', '9214', 'Ice Wall', '', '', '', '1375', '0', '2.5', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '1'); 

INSERT INTO `gameobject` (`id`,`map`,`spawnMask`,`phaseMask`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecs`,`animprogress`,`state`)
VALUES 
('500001', '668', '3', '1', '5323.61', '1755.85', '770.305', '0.784186', '0', '0', '0.382124', '0.924111', '604800', '100', '1');


UPDATE `creature_template` SET `equipment_id`='1290' WHERE `entry` in (37223, 37554);
UPDATE `creature_template` SET `equipment_id`='0' WHERE `entry`=36954;

DELETE FROM `gameobject` WHERE `id` IN (202302,202236,201596,500001,196391,196392,202396,201885,197341,201976,197342,197343,201385,202212,201710,202337,202336,202079) AND `map`=668;
INSERT INTO `gameobject` (`id`,`map`,`spawnMask`,`phaseMask`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecs`,`animprogress`,`state`)
VALUES 
('202302', '668', '3', '1', '5309.51', '2006.64', '709.341', '5.50041', '0', '0', '0.381473', '-0.92438', '604800', '100', '1'),
('202236', '668', '3', '1', '5309.51', '2006.64', '709.341', '5.53575', '0', '0', '0.365077', '-0.930977', '604800', '100', '1'),
('201596', '668', '3', '1', '5275.28', '1694.23', '786.147', '0.981225', '0', '0', '0.471166', '0.882044', '25', '0', '1'),
('500001', '668', '3', '1', '5323.61', '1755.85', '770.305', '0.784186', '0', '0', '0.382124', '0.924111', '604800', '100', '1'),
('196391', '668', '3', '1', '5232.31', '1925.57', '707.695', '0.815481', '0', '0', '0.396536', '0.918019', '300', '0', '1'),
('196392', '668', '3', '1', '5232.31', '1925.57', '707.695', '0.815481', '0', '0', '0.396536', '0.918019', '300', '0', '1'),
('202396', '668', '3', '1', '5434.27', '1881.12', '751.303', '0.923328', '0', '0', '0.445439', '0.895312', '604800', '100', '1'),
('201885', '668', '3', '1', '5494.3', '1978.27', '736.689', '1.0885', '0', '0', '0.517777', '0.855516', '604800', '100', '1'),
('197341', '668', '3', '1', '5359.24', '2058.35', '707.695', '3.96022', '0', '0', '0.917394', '-0.397981', '300', '100', '1'),
('201976', '668', '3', '1', '5264.6', '1959.55', '707.695', '0.736951', '0', '0', '0.360194', '0.932877', '300', '100', '0'),
('197342', '668', '3', '1', '5520.72', '2228.89', '733.011', '0.778581', '0', '0', '0.379532', '0.925179', '300', '100', '1'),
('197343', '668', '3', '1', '5582.96', '2230.59', '733.011', '5.49098', '0', '0', '0.385827', '-0.922571', '300', '100', '1'),
('201385', '668', '3', '1', '5540.39', '2086.48', '731.066', '1.00057', '0', '0', '0.479677', '0.877445', '604800', '100', '1'),
('202212', '668', '1', '65535', '5241.05', '1663.44', '784.295', '0.54', '0', '0', '0', '0', '-604800', '100', '1'),
('201710', '668', '1', '65535', '5241.05', '1663.44', '784.295', '0.54', '0', '0', '0', '0', '-604800', '100', '1'),
('202337', '668', '2', '65535', '5241.05', '1663.44', '784.295', '0.54', '0', '0', '0', '0', '-604800', '100', '1'),
('202336', '668', '2', '65535', '5241.05', '1663.44', '784.295', '0.54', '0', '0', '0', '0', '-604800', '100', '1'),
('202079', '668', '3', '1', '5250.96', '1639.36', '784.302', '0', '0', '0', '0', '0', '-604800', '100', '1');


UPDATE `gameobject` SET `state`='0' WHERE (`id`='201596');
INSERT INTO `gameobject_loot_template` VALUES (27985, 43102, 100, 1, 0, 1, 1);
INSERT INTO `gameobject_loot_template` VALUES (27985, 49839, 7, 1, 0, 1, 1);
INSERT INTO `gameobject_loot_template` VALUES (27985, 49840, 5, 1, 0, 1, 1);
INSERT INTO `gameobject_loot_template` VALUES (27985, 49841, 5, 1, 0, 1, 1);
INSERT INTO `gameobject_loot_template` VALUES (27985, 49842, 5, 1, 0, 1, 1);
INSERT INTO `gameobject_loot_template` VALUES (27985, 49843, 5, 1, 0, 1, 1);
INSERT INTO `gameobject_loot_template` VALUES (27985, 49844, 5, 1, 0, 1, 1);
INSERT INTO `gameobject_loot_template` VALUES (27985, 49845, 8, 1, 0, 1, 1);
INSERT INTO `gameobject_loot_template` VALUES (27985, 49846, 5, 1, 0, 1, 1);
INSERT INTO `gameobject_loot_template` VALUES (27985, 49847, 5, 1, 0, 1, 1);
INSERT INTO `gameobject_loot_template` VALUES (27985, 49848, 5, 1, 0, 1, 1);
INSERT INTO `gameobject_loot_template` VALUES (27985, 49849, 5, 1, 0, 1, 1);
INSERT INTO `gameobject_loot_template` VALUES (27985, 49851, 5, 1, 0, 1, 1);
INSERT INTO `gameobject_loot_template` VALUES (27985, 50302, 20, 1, 0, 1, 1);
INSERT INTO `gameobject_loot_template` VALUES (27985, 50303, 22, 1, 0, 1, 1);
INSERT INTO `gameobject_loot_template` VALUES (27985, 50304, 9, 1, 0, 1, 1);
INSERT INTO `gameobject_loot_template` VALUES (27985, 50305, 10, 1, 0, 1, 1);
INSERT INTO `gameobject_loot_template` VALUES (27985, 50306, 8, 1, 0, 1, 1);
INSERT INTO `gameobject_loot_template` VALUES (27985, 50308, 11, 1, 0, 1, 1);
INSERT INTO `gameobject_loot_template` VALUES (27985, 50309, 13, 1, 0, 1, 1);
INSERT INTO `gameobject_loot_template` VALUES (27985, 50310, 14, 1, 0, 1, 1);
INSERT INTO `gameobject_loot_template` VALUES (27985, 50311, 18, 1, 0, 1, 1);
INSERT INTO `gameobject_loot_template` VALUES (27985, 50312, 15, 1, 0, 1, 1);
INSERT INTO `gameobject_loot_template` VALUES (27985, 50313, 14, 1, 0, 1, 1);
INSERT INTO `gameobject_loot_template` VALUES (27985, 50314, 12, 1, 0, 1, 1);

UPDATE `creature` SET `spawntimesecs`='84000000' WHERE (`guid`='325023');
UPDATE `gameobject_template` SET `faction`='1375' WHERE (`entry`='201885');
UPDATE `gameobject_template` SET `size`='2.5' WHERE (`entry`='201885');
UPDATE `gameobject_template` SET `size`='2.5' WHERE (`entry`='202396')
UPDATE `gameobject_template` SET `data0`='1' WHERE (`entry`='201885');
UPDATE `gameobject_template` SET `WDBVerified`='12340' WHERE (`entry`='500001');

