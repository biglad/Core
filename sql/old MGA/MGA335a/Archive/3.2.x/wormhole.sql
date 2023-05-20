UPDATE `creature_template` SET `npcflag`=1, `ScriptName`='npc_taxi_engineering' WHERE `entry`='35646';

DELETE FROM spell_target_position WHERE `id` IN (67835, 67836, 67837, 67838);
INSERT INTO spell_target_position VALUES 
(67838, 571, 1226.520996, -4913.048828, 299.030640, 6.190202), -- Howling Fjord
(67835, 571, 6131.940918, 4782.939941, 97.767342, 2.930881), -- Sholazar Basin
(67836, 571, 8098.434082, 1265.948364, 714.487549, 2.462196), -- Icecrown
(67837, 571, 8983.536133, -1267.378906, 1059.006104, 3.365503); -- Storm Peaks
