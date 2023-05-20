# Y2kCat
ALTER TABLE db_version_ytdb CHANGE COLUMN 590_FIX_11554 591_FIX_11600 bit;
REPLACE INTO `db_version_ytdb` (`version`) VALUES ('591_FIX_11600');

# TC
INSERT IGNORE INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(13,0,63317,0,18,1,33453,0,0,'','Flame Breath - Dark Rune Watcher'),
(13,0,63317,0,18,1,33846,0,0,'','Flame Breath - Dark Rune Sentinel'),
(13,0,63317,0,18,1,33388,0,0,'','Flame Breath - Dark Rune Guardian'),
(13,0,62505,0,18,1,33186,0,0,'','Harpoon Trigger - Razorscale'),
(13,0,63524,0,18,1,33233,0,0,'','Harpoon Shot - Razorscale'),
(13,0,63657,0,18,1,33233,0,0,'','Harpoon Shot - Razorscale'),
(13,0,63658,0,18,1,33233,0,0,'','Harpoon Shot - Razorscale'),
(13,0,63659,0,18,1,33233,0,0,'','Harpoon Shot - Razorscale');
INSERT IGNORE INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(13,0,45223,0,18,1,25192,0,0,'','Spell 45223 targets Bridge Marksman Target Dummy');
INSERT IGNORE INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(13,0,36325,0,18,1,21182,0,0,'','Spell 36325 target creature 21182'),
(13,0,36325,0,18,1,22401,0,0,'','Spell 36325 target creature 22401'),
(13,0,36325,0,18,1,22402,0,0,'','Spell 36325 target creature 22402'),
(13,0,36325,0,18,1,22403,0,0,'','Spell 36325 target creature 22403');
INSERT IGNORE INTO `conditions` (SourceTypeOrReferenceId,ConditionTypeOrReference,SourceGroup,SourceEntry,ConditionValue1,ConditionValue2) VALUES 
(13,18,0,55853,1,30090),
(13,18,0,56263,1,30090),
(13,18,0,56505,1,30334),
(13,18,0,56429,1,30334),
(13,18,0,56152,1,28859);
UPDATE `creature_template` SET `modelid1`=11686,`modelid2`=169,`InhabitType`=5,`unit_flags`=0x02000000,`VehicleId`=214,`flags_extra`=130 WHERE `entry`=30090;
UPDATE `creature_template` SET `VehicleId`=224,`faction_A`=35,`faction_H`=35,`InhabitType`=5 WHERE `entry` IN (30234,30248);
UPDATE `creature_template` SET flags_extra=130 WHERE entry=30334;
UPDATE `creature_template` SET `InhabitType`=5 WHERE `entry`=30161;
UPDATE `creature_template` SET `InhabitType`=5 WHERE `entry`=32295;
UPDATE `creature_template` SET `flags_extra`=130,`InhabitType`=5 WHERE `entry`=30592;
UPDATE `creature_template` SET `VehicleId`=220,`spell1`=56091,`spell2`=56092,`spell3`=57090,`spell4`=57143,`spell5`=57108,`spell6`=57092,`spell7`=60534 WHERE `entry`=30161;
DELETE FROM `vehicle_template_accessory` WHERE `entry` IN (30234,30248);
INSERT INTO `vehicle_template_accessory` (entry,accessory_entry,seat_id,minion,description) VALUES 
(30234,30245,0,0,'Hover Disk - Nexus Lord'),
(30248,30249,0,0,'Hover Disk - Scion of Eternity');
UPDATE `quest_template` SET `SkillOrClassMask`=-32 WHERE `entry`= 13105; -- Death Knight only
UPDATE `quest_template` SET `SkillOrClassMask`=-1503 WHERE `entry`= 13104; -- Other Classes
INSERT IGNORE INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`ErrorTextId`,`Comment`) VALUES
(13,0,75319,0,18,1,0,0,0, 'Omen Kill Credit - Target player AoE');

-- Pathing for Chief Engineer Galpen Rolltie SAI
SET @ENTRY := 26600;
-- SAI for Chief Engineer Galpen Rolltie
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=9 AND `entryorguid` IN (@ENTRY*100,@ENTRY*100+1,@ENTRY*100+2);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
-- AI
(@ENTRY,0,0,0,11,0,100,0,0,0,0,0,53,0,@ENTRY,1,0,0,0,1,0,0,0,0,0,0,0, 'Chief Engineer Galpen Rolltie - On spawn - Start WP movement'),
(@ENTRY,0,1,2,40,0,100,0,1,@ENTRY,0,0,54,16000,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Chief Engineer Galpen Rolltie - Reach wp 1 - pause path'),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,17,233,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Chief Engineer Galpen Rolltie - Reach wp 1 - STATE_WORK_MINING'),
(@ENTRY,0,3,4,40,0,100,0,7,@ENTRY,0,0,54,9000,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Chief Engineer Galpen Rolltie - Reach wp 7 - pause path'),
(@ENTRY,0,4,0,61,0,100,0,0,0,0,0,17,233,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Chief Engineer Galpen Rolltie - Reach wp 7 - STATE_WORK_MINING'),
(@ENTRY,0,5,6,40,0,100,0,15,@ENTRY,0,0,54,14000,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Chief Engineer Galpen Rolltie - Reach wp 15 - pause path'),
(@ENTRY,0,6,0,61,0,100,0,0,0,0,0,17,233,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Chief Engineer Galpen Rolltie - Reach wp 15 - STATE_WORK_MINING');
-- Waypoints for Chief Engineer Galpen Rolltie from sniff
DELETE FROM `waypoints` WHERE `entry`=@ENTRY;
INSERT INTO `waypoints` (`entry`,`pointid`,`position_x`,`position_y`,`position_z`,`point_comment`) VALUES
(@ENTRY,1,4138.141,5318.302,28.81850, 'Chief Engineer Galpen Rolltie'),
(@ENTRY,2,4140.475,5319.229,29.29604, 'Chief Engineer Galpen Rolltie'),
(@ENTRY,3,4141.725,5323.979,29.04604, 'Chief Engineer Galpen Rolltie'),
(@ENTRY,4,4139.975,5327.229,29.29604, 'Chief Engineer Galpen Rolltie'),
(@ENTRY,5,4136.975,5328.229,29.29604, 'Chief Engineer Galpen Rolltie'),
(@ENTRY,6,4134.975,5327.229,29.29604, 'Chief Engineer Galpen Rolltie'),
(@ENTRY,7,4135.308,5325.655,28.77358, 'Chief Engineer Galpen Rolltie'),
(@ENTRY,8,4135.063,5327.819,29.27233, 'Chief Engineer Galpen Rolltie'),
(@ENTRY,9,4140.063,5327.819,29.27233, 'Chief Engineer Galpen Rolltie'),
(@ENTRY,10,4143.313,5325.319,29.27233, 'Chief Engineer Galpen Rolltie'),
(@ENTRY,11,4141.313,5317.819,29.77233, 'Chief Engineer Galpen Rolltie'),
(@ENTRY,12,4137.063,5314.819,29.02233, 'Chief Engineer Galpen Rolltie'),
(@ENTRY,13,4132.313,5316.569,29.02233, 'Chief Engineer Galpen Rolltie'),
(@ENTRY,14,4130.313,5319.819,29.27233, 'Chief Engineer Galpen Rolltie'),
(@ENTRY,15,4131.816,5320.484,28.77108, 'Chief Engineer Galpen Rolltie'),
(@ENTRY,16,4130.521,5321.019,29.24854, 'Chief Engineer Galpen Rolltie'),
(@ENTRY,17,4131.021,5317.769,29.24854, 'Chief Engineer Galpen Rolltie'),
(@ENTRY,18,4133.771,5315.769,28.99854, 'Chief Engineer Galpen Rolltie'),
(@ENTRY,19,4136.725,5316.553,28.72600, 'Chief Engineer Galpen Rolltie');

-- Pathing for Willis Wobblewheel SAI
SET @ENTRY := 26599;
-- SAI for Willis Wobblewheel
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=9 AND `entryorguid` IN (@ENTRY*100,@ENTRY*100+1);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,11,0,100,0,0,0,0,0,53,0,@ENTRY,1,0,0,0,1,0,0,0,0,0,0,0, 'Willis Wobblewheel - On spawn - Start WP movement'),
(@ENTRY,0,1,2,40,0,100,0,1,@ENTRY,0,0,54,17000,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Willis Wobblewheel - Reach wp 1 - pause path'),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,17,233,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Willis Wobblewheel - Reach wp 1 - STATE_WORK_MINING'),
(@ENTRY,0,3,4,40,0,100,0,3,@ENTRY,0,0,54,16000,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Willis Wobblewheel - Reach wp 3 - pause path'),
(@ENTRY,0,4,5,61,0,100,0,0,0,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,5.288348, 'Willis Wobblewheel - Reach wp 3 - turn to'),
(@ENTRY,0,5,0,61,0,100,0,0,0,0,0,17,69,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Willis Wobblewheel - Reach wp 1 - STATE_USESTANDING');
-- Waypoints for Willis Wobblewheel from sniff
DELETE FROM `waypoints` WHERE `entry`=@ENTRY;
INSERT INTO `waypoints` (`entry`,`pointid`,`position_x`,`position_y`,`position_z`,`point_comment`) VALUES
(@ENTRY,1,4137.04,5285.097,25.23916, 'Willis Wobblewheel'),
(@ENTRY,2,4135.779,5282.234,25.11416, 'Willis Wobblewheel'),
(@ENTRY,3,4135.004,5281.168,25.11416, 'Willis Wobblewheel'),
(@ENTRY,4,4135.779,5282.234,25.11416, 'Willis Wobblewheel');

-- Pathing for Fizzcrank Watcher Rupert Keeneye SAI
SET @ENTRY := 26634;
-- SAI for Fizzcrank Watcher Rupert Keeneye
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=9 AND `entryorguid` IN (@ENTRY*100,@ENTRY*100+1);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,11,0,100,0,0,0,0,0,53,0,@ENTRY,1,0,0,0,1,0,0,0,0,0,0,0, 'Fizzcrank Watcher Rupert Keeneye - On spawn - Start WP movement'),
(@ENTRY,0,1,0,40,0,100,0,2,@ENTRY,0,0,54,30000,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Fizzcrank Watcher Rupert Keeneye - Reach wp 2 - pause path'),
(@ENTRY,0,2,3,40,0,100,0,6,@ENTRY,0,0,54,30000,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Fizzcrank Watcher Rupert Keeneye - Reach wp 6 - pause path'),
(@ENTRY,0,3,0,61,0,100,0,0,0,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,0.8901179, 'Fizzcrank Watcher Rupert Keeneye - Reach wp 6 - turn to');
-- Waypoints for Fizzcrank Watcher Rupert Keeneye from sniff
DELETE FROM `waypoints` WHERE `entry`=@ENTRY;
INSERT INTO `waypoints` (`entry`,`pointid`,`position_x`,`position_y`,`position_z`,`point_comment`) VALUES
(@ENTRY,1,4186.929,5321.105,58.13441, 'Fizzcrank Watcher Rupert Keeneye'),
(@ENTRY,2,4185.132,5318.713,58.1639, 'Fizzcrank Watcher Rupert Keeneye'),
(@ENTRY,3,4186.515,5316.936,58.15049, 'Fizzcrank Watcher Rupert Keeneye'),
(@ENTRY,4,4186.929,5321.105,58.13441, 'Fizzcrank Watcher Rupert Keeneye'),
(@ENTRY,5,4191.268,5319.607,58.12418, 'Fizzcrank Watcher Rupert Keeneye'),
(@ENTRY,6,4189.929,5324.715,58.08976, 'Fizzcrank Watcher Rupert Keeneye'),
(@ENTRY,7,4184.381,5325.549,58.05596, 'Fizzcrank Watcher Rupert Keeneye'),
(@ENTRY,8,4183.354,5318.837,58.1593, 'Fizzcrank Watcher Rupert Keeneye');

-- Pathing for Fizzcrank Engineering Crew SAI
SET @ENTRY := 26645;
SET @PATH2 := @ENTRY;
-- SAI for Fizzcrank Engineering Crew
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
INSERT IGNORE INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(-117070,0,0,0,11,0,100,0,0,0,0,0,53,0,@PATH2,1,0,0,0,1,0,0,0,0,0,0,0, 'Fizzcrank Engineering Crew - On spawn - Start WP movement'),
(-117070,0,1,2,40,0,100,0,5,@PATH2,0,0,54,20000,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Fizzcrank Engineering Crew - Reach wp 5 - pause path'),
(-117070,0,2,0,61,0,100,0,0,0,0,0,17,69,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Fizzcrank Engineering Crew - Reach wp 5 - STATE_USESTANDING'),
(-117070,0,3,4,40,0,100,0,10,@PATH2,0,0,54,23000,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Fizzcrank Engineering Crew - Reach wp 10 - pause path'),
(-117070,0,4,0,61,0,100,0,0,0,0,0,17,233,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Fizzcrank Engineering Crew - Reach wp 10 - STATE_WORK_MINING'),
(-117070,0,5,6,40,0,100,0,18,@PATH2,0,0,54,25000,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Fizzcrank Engineering Crew - Reach wp 18 - pause path'),
(-117070,0,6,0,61,0,100,0,0,0,0,0,17,233,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Fizzcrank Engineering Crew - Reach wp 18 - STATE_WORK_MINING'),
(-117070,0,7,8,40,0,100,0,24,@PATH2,0,0,54,25000,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Fizzcrank Engineering Crew - Reach wp 24 - pause path'),
(-117070,0,8,0,61,0,100,0,0,0,0,0,17,69,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Fizzcrank Engineering Crew - Reach wp 24 - STATE_USESTANDING');
-- Waypoints for Fizzcrank Engineering Crew from sniff
DELETE FROM `waypoints` WHERE `entry` IN (@PATH,@PATH2);
INSERT INTO `waypoints` (`entry`,`pointid`,`position_x`,`position_y`,`position_z`,`point_comment`) VALUES
(@PATH2,1,4147.00,5327.734,29.32715, 'Fizzcrank Engineering Crew wp 2'),
(@PATH2,2,4149.25,5326.734,29.07715, 'Fizzcrank Engineering Crew wp 2'),
(@PATH2,3,4151.50,5329.484,29.32715, 'Fizzcrank Engineering Crew wp 2'),
(@PATH2,4,4150.25,5330.734,29.32715, 'Fizzcrank Engineering Crew wp 2'),
(@PATH2,5,4148.829,5329.599,28.9719, 'Fizzcrank Engineering Crew wp 2'),
(@PATH2,6,4150.054,5331.477,29.32324, 'Fizzcrank Engineering Crew wp 2'),
(@PATH2,7,4152.054,5333.477,29.07324, 'Fizzcrank Engineering Crew wp 2'),
(@PATH2,8,4150.804,5335.727,29.07324, 'Fizzcrank Engineering Crew wp 2'),
(@PATH2,9,4147.554,5336.477,29.07324, 'Fizzcrank Engineering Crew wp 2'),
(@PATH2,10,4143.779,5335.355,28.67457, 'Fizzcrank Engineering Crew wp 2'),
(@PATH2,11,4146.732,5336.823,29.20758, 'Fizzcrank Engineering Crew wp 2'),
(@PATH2,12,4150.982,5335.573,29.20758, 'Fizzcrank Engineering Crew wp 2'),
(@PATH2,13,4153.232,5331.323,28.95758, 'Fizzcrank Engineering Crew wp 2'),
(@PATH2,14,4150.482,5326.823,28.70758, 'Fizzcrank Engineering Crew wp 2'),
(@PATH2,15,4144.732,5324.573,29.45758, 'Fizzcrank Engineering Crew wp 2'),
(@PATH2,16,4141.482,5326.823,29.20758, 'Fizzcrank Engineering Crew wp 2'),
(@PATH2,17,4139.686,5329.791,28.74058, 'Fizzcrank Engineering Crew wp 2'),
(@PATH2,18,4141.878,5331.735,28.69350, 'Fizzcrank Engineering Crew wp 2'),
(@PATH2,19,4141.274,5330.552,29.18795, 'Fizzcrank Engineering Crew wp 2'),
(@PATH2,20,4141.774,5328.302,29.18795, 'Fizzcrank Engineering Crew wp 2'),
(@PATH2,21,4142.774,5326.052,29.18795, 'Fizzcrank Engineering Crew wp 2'),
(@PATH2,22,4145.524,5326.052,29.43795, 'Fizzcrank Engineering Crew wp 2'),
(@PATH2,23,4146.774,5328.052,29.18795, 'Fizzcrank Engineering Crew wp 2'),
(@PATH2,24,4145.670,5329.370,28.68240, 'Fizzcrank Engineering Crew wp 2');

-- Pathing for Fizzcrank bomber Entry: 25765
SET @NPC := 95549;
SET @PATH := @NPC;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=4235.847,`position_y`=5353.55,`position_z`=81.03476 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,4222.374,5370.328,72.03476,0,1,0,100,0),
(@PATH,2,4193.999,5364.787,66.81252,0,1,0,100,0),
(@PATH,3,4161.166,5319.937,66.81252,0,1,0,100,0),
(@PATH,4,4149.038,5289.545,66.81252,0,1,0,100,0),
(@PATH,5,4158.851,5255.303,66.81252,0,1,0,100,0),
(@PATH,6,4193.628,5230.504,79.17356,0,1,0,100,0),
(@PATH,7,4259.787,5211.473,79.20131,0,1,0,100,0),
(@PATH,8,4293.693,5221.593,80.20133,0,1,0,100,0),
(@PATH,9,4296.654,5282.716,82.20137,0,1,0,100,0),
(@PATH,10,4261.68,5314.814,89.8682,0,1,0,100,0),
(@PATH,11,4224.254,5366.333,98.86811,0,1,0,100,0),
(@PATH,12,4174.309,5345.78,98.86811,0,1,0,100,0),
(@PATH,13,4150.472,5287.501,98.86811,0,1,0,100,0),
(@PATH,14,4188.47,5251.628,102.757,0,1,0,100,0),
(@PATH,15,4241.055,5236.796,102.757,0,1,0,100,0),
(@PATH,16,4280.259,5260.132,105.6182,0,1,0,100,0),
(@PATH,17,4271.736,5301.975,105.6182,0,1,0,100,0),
(@PATH,18,4235.847,5353.55,81.03476,0,1,0,100,0);

-- Rig Hauler AC-9 SAI
SET @ENTRY := 25766;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=9 AND `entryorguid` IN (@ENTRY*100);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,1,0,100,0,5000,10000,210000,210000,80,@ENTRY*100,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Rig Hauler AC-9 - OOC 3.5 min - start script 1'),
(@ENTRY,0,1,0,40,0,100,0,1,@ENTRY,0,0,45,0,1,0,0,0,0,11,25765,20,0,0,0,0,0, 'Rig Hauler AC-9 - Reach wp 1 - dataset 0 1 nearest Fizzcrank Bomber'),
(@ENTRY,0,2,3,40,0,100,0,5,@ENTRY,0,0,54,5000,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Rig Hauler AC-9 - Reach wp 5 - pause wp'),
(@ENTRY,0,3,0,61,0,100,0,0,0,0,0,92,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Rig Hauler AC-9 - Reach wp 5 - INTERRUPT_SPELL'),
(@ENTRY,0,4,0,40,0,100,0,6,@ENTRY,0,0,45,0,1,0,0,0,0,10,106069,15214,0,0,0,0,0, 'Rig Hauler AC-9 - Reach wp 6 - dataset 0 1 Invisable Stalker'),
(@ENTRY,0,5,0,40,0,100,0,25,@ENTRY,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,2.740167, 'Rig Hauler AC-9 - Reach wp 25 - turn to'),
-- Script
(@ENTRY*100,9,0,0,0,0,100,0,0,0,0,0,12,25765,3,360000,0,0,0,8,0,0,0,4165.76,5354.39,30.1116,2.35619, 'Rig Hauler AC-9 - script - summon 25765'),
(@ENTRY*100,9,1,0,0,0,100,0,6000,6000,0,0,11,45967,0,0,0,0,0,11,25765,10,0,0,0,0,0, 'Rig Hauler AC-9 - script - cast 45967'),
(@ENTRY*100,9,2,0,0,0,100,0,3000,3000,0,0,53,0,@ENTRY,0,0,0,0,1,0,0,0,0,0,0,0, 'Rig Hauler AC-9 - script - Start WP movement');
-- Waypoints for Rig Hauler AC-9 from sniff
DELETE FROM `waypoints` WHERE `entry`=@ENTRY;
INSERT INTO `waypoints` (`entry`,`pointid`,`position_x`,`position_y`,`position_z`,`point_comment`) VALUES
(@ENTRY,1,4149.316,5357.732,29.11953, 'Rig Hauler AC-9'),
(@ENTRY,2,4136.816,5345.482,29.11953, 'Rig Hauler AC-9'),
(@ENTRY,3,4125.566,5333.982,29.11953, 'Rig Hauler AC-9'),
(@ENTRY,4,4115.297,5323.852,28.67458, 'Rig Hauler AC-9'),
(@ENTRY,5,4108.158,5316.849,28.75930, 'Rig Hauler AC-9'),
(@ENTRY,6,4111.660,5313.279,28.75930, 'Rig Hauler AC-9'),
(@ENTRY,7,4112.747,5314.946,29.16189, 'Rig Hauler AC-9'),
(@ENTRY,8,4116.997,5314.946,29.16189, 'Rig Hauler AC-9'),
(@ENTRY,9,4118.997,5316.946,29.16189, 'Rig Hauler AC-9'),
(@ENTRY,10,4125.247,5323.196,29.16189, 'Rig Hauler AC-9'),
(@ENTRY,11,4127.247,5325.196,29.16189, 'Rig Hauler AC-9'),
(@ENTRY,12,4129.497,5326.696,29.16189, 'Rig Hauler AC-9'),
(@ENTRY,13,4131.497,5328.446,29.16189, 'Rig Hauler AC-9'),
(@ENTRY,14,4133.497,5328.446,29.16189, 'Rig Hauler AC-9'),
(@ENTRY,15,4134.747,5329.446,29.16189, 'Rig Hauler AC-9'),
(@ENTRY,16,4135.747,5333.696,29.16189, 'Rig Hauler AC-9'),
(@ENTRY,17,4141.997,5337.196,29.16189, 'Rig Hauler AC-9'),
(@ENTRY,18,4143.997,5341.946,29.16189, 'Rig Hauler AC-9'),
(@ENTRY,19,4145.997,5344.946,29.16189, 'Rig Hauler AC-9'),
(@ENTRY,20,4147.247,5346.196,29.16189, 'Rig Hauler AC-9'),
(@ENTRY,21,4150.247,5348.196,29.16189, 'Rig Hauler AC-9'),
(@ENTRY,22,4152.247,5350.196,29.16189, 'Rig Hauler AC-9'),
(@ENTRY,23,4162.747,5356.196,29.66189, 'Rig Hauler AC-9'),
(@ENTRY,24,4166.997,5358.696,30.41189, 'Rig Hauler AC-9'),
(@ENTRY,25,4170.335,5359.113,30.06447, 'Rig Hauler AC-9');

-- Fizzcrank Bomber SAI
SET @ENTRY := 25765;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,38,0,100,0,0,1,0,0,45,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Fizzcrank Bomber - on dataset 0 1 - dataset 0 0'),
(@ENTRY,0,1,0,61,0,100,0,0,0,0,0,53,0,@ENTRY,0,0,0,0,1,0,0,0,0,0,0,0, 'Fizzcrank Bomber - on dataset 0 1 - Start WP movement'),
(@ENTRY,0,2,3,40,0,100,0,22,@ENTRY,0,0,54,45000,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Fizzcrank Bomber - Reach wp 22 - pause wp'),
(@ENTRY,0,3,0,61,0,100,0,0,0,0,0,59,1,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Fizzcrank Bomber - Reach wp 22 - Set Speed run'),
(@ENTRY,0,4,5,40,0,100,0,74,@ENTRY,0,0,11,47460,3,0,0,0,0,11,26817,5,0,0,0,0,0, 'Fizzcrank Bomber - Reach wp 74 - cast 47460 on Fizzcrank fighter'),
(@ENTRY,0,5,0,61,0,100,0,0,0,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Fizzcrank Bomber - Reach wp 74 - despawn');
-- Waypoints for Fizzcrank Bomber from sniff
DELETE FROM `waypoints` WHERE `entry`=@ENTRY;
INSERT INTO `waypoints` (`entry`,`pointid`,`position_x`,`position_y`,`position_z`,`point_comment`) VALUES
(@ENTRY,1,4164.758,5354.723,30.19215, 'Fizzcrank Bomber wp 1'),
(@ENTRY,2,4162.034,5355.368,30.09748, 'Fizzcrank Bomber wp 1'),
(@ENTRY,3,4159.190,5355.827,30.01153, 'Fizzcrank Bomber wp 1'),
(@ENTRY,4,4156.273,5356.132,29.94405, 'Fizzcrank Bomber wp 1'),
(@ENTRY,5,4154.659,5355.736,29.91132, 'Fizzcrank Bomber wp 1'),
(@ENTRY,6,4152.153,5354.786,29.86976, 'Fizzcrank Bomber wp 1'),
(@ENTRY,7,4149.633,5353.545,29.83581, 'Fizzcrank Bomber wp 1'),
(@ENTRY,8,4147.138,5352.081,29.80874, 'Fizzcrank Bomber wp 1'),
(@ENTRY,9,4144.689,5350.449,29.78749, 'Fizzcrank Bomber wp 1'),
(@ENTRY,10,4142.290,5348.694,29.77098, 'Fizzcrank Bomber wp 1'),
(@ENTRY,11,4139.963,5346.840,29.76581, 'Fizzcrank Bomber wp 1'),
(@ENTRY,12,4137.673,5344.909,29.76182, 'Fizzcrank Bomber wp 1'),
(@ENTRY,13,4135.418,5342.924,29.75874, 'Fizzcrank Bomber wp 1'),
(@ENTRY,14,4133.194,5340.901,29.75638, 'Fizzcrank Bomber wp 1'),
(@ENTRY,15,4130.993,5338.848,29.75706, 'Fizzcrank Bomber wp 1'),
(@ENTRY,16,4128.794,5336.785,29.75758, 'Fizzcrank Bomber wp 1'),
(@ENTRY,17,4126.612,5334.716,29.75798, 'Fizzcrank Bomber wp 1'),
(@ENTRY,18,4124.430,5332.629,29.75829, 'Fizzcrank Bomber wp 1'),
(@ENTRY,19,4121.542,5329.849,29.75858, 'Fizzcrank Bomber wp 1'),
(@ENTRY,20,4118.184,5326.597,29.75881, 'Fizzcrank Bomber wp 1'),
(@ENTRY,21,4116.024,5324.498,29.75892, 'Fizzcrank Bomber wp 1'),
(@ENTRY,22,4113.869,5322.398,29.75901, 'Fizzcrank Bomber wp 1'),
(@ENTRY,23,4090.109,5298.56,29.70082, 'Fizzcrank Bomber wp 1'),
(@ENTRY,24,4079.459,5287.617,29.8968, 'Fizzcrank Bomber wp 1'),
(@ENTRY,25,4066.779,5274.603,31.53571, 'Fizzcrank Bomber wp 1'),
(@ENTRY,26,4041.215,5249.248,31.45236, 'Fizzcrank Bomber wp 1'),
(@ENTRY,27,4020.432,5218.824,29.8968, 'Fizzcrank Bomber wp 1'),
(@ENTRY,28,4002.392,5190.421,29.8968, 'Fizzcrank Bomber wp 1'),
(@ENTRY,29,4000.105,5146.331,29.8968, 'Fizzcrank Bomber wp 1'),
(@ENTRY,30,3993.002,5119.754,29.8968, 'Fizzcrank Bomber wp 1'),
(@ENTRY,31,3976.405,5093.208,29.8968, 'Fizzcrank Bomber wp 1'),
(@ENTRY,32,3983.637,5055.651,29.8968, 'Fizzcrank Bomber wp 1'),
(@ENTRY,33,3990.106,5011.049,29.8968, 'Fizzcrank Bomber wp 1'),
(@ENTRY,34,3992.433,4984.051,29.8968, 'Fizzcrank Bomber wp 1'),
(@ENTRY,35,3988.744,4946.948,29.8968, 'Fizzcrank Bomber wp 1'),
(@ENTRY,36,3975.796,4912.274,29.8968, 'Fizzcrank Bomber wp 1'),
(@ENTRY,37,3958.111,4895.366,29.8968, 'Fizzcrank Bomber wp 1'),
(@ENTRY,38,3928.622,4858.76,29.8968, 'Fizzcrank Bomber wp 1'),
(@ENTRY,39,3921.781,4825.03,29.8968, 'Fizzcrank Bomber wp 1'),
(@ENTRY,40,3935.435,4790.436,29.8968, 'Fizzcrank Bomber wp 1'),
(@ENTRY,41,3966.323,4756.983,29.8968, 'Fizzcrank Bomber wp 1'),
(@ENTRY,42,3987.75,4763.042,29.8968, 'Fizzcrank Bomber wp 1'),
(@ENTRY,43,4025.366,4755.083,29.8968, 'Fizzcrank Bomber wp 1'),
(@ENTRY,44,4050.189,4787.045,29.8968, 'Fizzcrank Bomber wp 1'),
(@ENTRY,45,4082.41,4825.174,29.8968, 'Fizzcrank Bomber wp 1'),
(@ENTRY,46,4084.739,4845.887,29.8968, 'Fizzcrank Bomber wp 1'),
(@ENTRY,47,4082.781,4879.066,29.8968, 'Fizzcrank Bomber wp 1'),
(@ENTRY,48,4075.255,4897.705,29.8968, 'Fizzcrank Bomber wp 1'),
(@ENTRY,49,4063.763,4936.532,29.8968, 'Fizzcrank Bomber wp 1'),
(@ENTRY,50,4066.78,4968.409,29.8968, 'Fizzcrank Bomber wp 1'),
(@ENTRY,51,4082.993,4997.696,29.8968, 'Fizzcrank Bomber wp 1'),
(@ENTRY,52,4110.507,5030.572,29.8968, 'Fizzcrank Bomber wp 1'),
(@ENTRY,53,4141.148,5060.043,29.8968, 'Fizzcrank Bomber wp 1'),
(@ENTRY,54,4164.455,5087.176,29.8968, 'Fizzcrank Bomber wp 1'),
(@ENTRY,55,4189.664,5124.69,29.8968, 'Fizzcrank Bomber wp 1'),
(@ENTRY,56,4214.33,5154.247,29.8968, 'Fizzcrank Bomber wp 1'),
(@ENTRY,57,4237.962,5194.166,29.8968, 'Fizzcrank Bomber wp 1'),
(@ENTRY,58,4228.307,5238.578,42.11903, 'Fizzcrank Bomber wp 1'),
(@ENTRY,59,4200.375,5271.218,46.75792, 'Fizzcrank Bomber wp 1'),
(@ENTRY,60,4211.719,5318.444,47.13599, 'Fizzcrank Bomber wp 1'),
(@ENTRY,61,4229.69,5356.218,47.13599, 'Fizzcrank Bomber wp 1'),
(@ENTRY,62,4229.779,5396.165,53.08044, 'Fizzcrank Bomber wp 1'),
(@ENTRY,63,4231.299,5419.959,53.71933, 'Fizzcrank Bomber wp 1'),
(@ENTRY,64,4228.378,5466.135,57.13599, 'Fizzcrank Bomber wp 1'),
(@ENTRY,65,4249.183,5490.759,47.13599, 'Fizzcrank Bomber wp 1'),
(@ENTRY,66,4282.767,5500.858,48.85822, 'Fizzcrank Bomber wp 1'),
(@ENTRY,67,4300.521,5486.341,48.386, 'Fizzcrank Bomber wp 1'),
(@ENTRY,68,4291.369,5470.349,48.91378, 'Fizzcrank Bomber wp 1'),
(@ENTRY,69,4277.046,5454.25,47.13599, 'Fizzcrank Bomber wp 1'),
(@ENTRY,70,4253.641,5434.851,47.13599, 'Fizzcrank Bomber wp 1'),
(@ENTRY,71,4227.768,5423.928,47.13599, 'Fizzcrank Bomber wp 1'),
(@ENTRY,72,4204.012,5411.217,37.52486, 'Fizzcrank Bomber wp 1'),
(@ENTRY,73,4194.847,5402.538,32.41374, 'Fizzcrank Bomber wp 1'),
(@ENTRY,74,4178.285,5386.063,30.94151, 'Fizzcrank Bomber wp 1');

-- Invisable Stalker SAI
SET @ENTRY := 15214;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(-112623,0,0,1,38,0,100,0,0,1,0,0,45,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Invisable Stalker - on dataset 0 1 - dataset 0 0'),
(-112625,0,1,0,61,0,100,0,0,0,0,0,11,47453,3,0,0,0,0,11,25766,200,0,0,0,0,0, 'Invisable Stalker - on dataset 0 1 - Cast 47453 on Rig Hauler AC-9');

-- Fizzcrank Fighter SAI
SET @ENTRY := 26817;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,11,0,100,0,0,0,0,0,53,0,@ENTRY,0,0,0,0,1,0,0,0,0,0,0,0, 'Fizzcrank Fighter - on spawn - start wp'),
(@ENTRY,0,1,0,1,0,100,1,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Fizzcrank Fighter - on spawn - say text 0'),
(@ENTRY,0,2,0,40,0,100,0,15,@ENTRY,0,0,11,43671,3,0,0,0,0,11,25765,20,0,0,0,0,0, 'Fizzcrank Fighter - Reach wp 15 - cast 43671 on Fizzcrank Bomber');
-- NPC talk text for Fizzcrank Fighter
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0, 'I''ll blast those gnomish wannabes back to the scrap heap!',0,7,100,0,0,0, 'Fizzcrank Fighter'),
(@ENTRY,0,1, 'You''re sending me back there?!',0,7,100,0,0,0, 'Fizzcrank Fighter');
-- Waypoints for Fizzcrank Fighter from sniff
DELETE FROM `waypoints` WHERE `entry`=@ENTRY;
INSERT INTO `waypoints` (`entry`,`pointid`,`position_x`,`position_y`,`position_z`,`point_comment`) VALUES
(@ENTRY,1,4176.501,5280.566,27.17445, 'Fizzcrank Fighter'),
(@ENTRY,2,4167.001,5282.066,27.17445, 'Fizzcrank Fighter'),
(@ENTRY,3,4164.751,5282.566,26.92445, 'Fizzcrank Fighter'),
(@ENTRY,4,4162.655,5282.681,26.48916, 'Fizzcrank Fighter'),
(@ENTRY,5,4158.462,5280.628,26.26419, 'Fizzcrank Fighter'),
(@ENTRY,6,4155.712,5279.378,25.76419, 'Fizzcrank Fighter'),
(@ENTRY,7,4154.958,5278.939,24.86416, 'Fizzcrank Fighter'),
(@ENTRY,8,4147.710,5281.817,24.86416, 'Fizzcrank Fighter'),
(@ENTRY,9,4144.757,5295.502,25.61416, 'Fizzcrank Fighter'),
(@ENTRY,10,4142.652,5300.067,26.94346, 'Fizzcrank Fighter'),
(@ENTRY,11,4137.876,5308.749,27.94350, 'Fizzcrank Fighter'),
(@ENTRY,12,4135.610,5310.586,28.93834, 'Fizzcrank Fighter'),
(@ENTRY,13,4131.433,5312.564,28.75930, 'Fizzcrank Fighter'),
(@ENTRY,14,4123.820,5317.622,28.75930, 'Fizzcrank Fighter'),
(@ENTRY,15,4115.430,5321.649,28.75930, 'Fizzcrank Fighter');

-- Pathing for Crafty Wobblesprocket SAI
SET @ENTRY := 25477;
UPDATE `creature` SET `spawndist`=0,`MovementType`=0,`position_x`=4172.788,`position_y`=5254.925,`position_z`=26.12851 WHERE `guid`=108021;
-- SAI for Crafty Wobblesprocket
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=9 AND `entryorguid` IN (@ENTRY*100,@ENTRY*100+1);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,11,0,100,0,0,0,0,0,53,0,@ENTRY,1,0,0,0,1,0,0,0,0,0,0,0, 'Crafty Wobblesprocket - On spawn - Start WP movement'),
(@ENTRY,0,1,2,40,0,100,0,1,@ENTRY,0,0,54,45000,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Crafty Wobblesprocket - Reach wp 1 - pause path'),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,17,69,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Crafty Wobblesprocket - Reach wp 1 - STATE_USESTANDING'),
(@ENTRY,0,3,4,40,0,100,0,6,@ENTRY,0,0,54,35000,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Crafty Wobblesprocket - Reach wp 6 - pause path'),
(@ENTRY,0,4,5,61,0,100,0,0,0,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,0.4712389, 'Crafty Wobblesprocket - Reach wp 6 - turn to'),
(@ENTRY,0,5,0,61,0,100,0,0,0,0,0,17,233,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Crafty Wobblesprocket - Reach wp 6 - STATE_WORK_MINING');
-- Waypoints for Crafty Wobblesprocket from sniff
DELETE FROM `waypoints` WHERE `entry`=@ENTRY;
INSERT INTO `waypoints` (`entry`,`pointid`,`position_x`,`position_y`,`position_z`,`point_comment`) VALUES
(@ENTRY,1,4179.099,5251.51,26.37851, 'Crafty Wobblesprocket'),
(@ENTRY,2,4177.94,5250.202,26.87851, 'Crafty Wobblesprocket'),
(@ENTRY,3,4181.048,5243.429,24.87851, 'Crafty Wobblesprocket'),
(@ENTRY,4,4182.067,5222.448,25.00868, 'Crafty Wobblesprocket'),
(@ENTRY,5,4193.037,5217.233,25.13368, 'Crafty Wobblesprocket'),
(@ENTRY,6,4193.037,5217.233,25.13368, 'Crafty Wobblesprocket'),
(@ENTRY,7,4190.718,5217.938,25.25868, 'Crafty Wobblesprocket'),
(@ENTRY,8,4176.049,5229.444,24.50868, 'Crafty Wobblesprocket'),
(@ENTRY,9,4166.732,5248.798,24.75351, 'Crafty Wobblesprocket'),
(@ENTRY,10,4172.788,5254.925,26.12851, 'Crafty Wobblesprocket');

-- SAI for ELM General Purpose Bunny
SET @ENTRY := 23837;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(-96931,0,0,0,1,0,100,0,10000,20000,90000,105000,11,45931,3,0,0,0,0,10,98576,23837,0,0,0,0,0, 'ELM General Purpose Bunny - OOC timed - cast 45931 on target'),
(-96932,0,0,0,8,0,100,0,45931,0,0,0,80,@ENTRY*100,0,0,0,0,0,1,0,0,0,0,0,0,0, 'ELM General Purpose Bunny - On spellhit - run script'),
(@ENTRY*100,9,0,0,0,0,100,0,4000,4000,0,0,12,25783,3,60000,0,0,0,8,0,0,0,4181.491,5258.655,27.19127,3.857178, 'ELM General Purpose Bunny - script - summon 25783'),
(@ENTRY*100,9,1,0,0,0,100,0,1000,1000,0,0,5,5,0,0,0,0,0,11,25747,10,0,0,0,0,0, 'ELM General Purpose Bunny - script - send emote to 25747'),
(@ENTRY*100,9,2,0,0,0,100,0,4000,4000,0,0,45,0,1,0,0,0,0,11,25783,10,0,0,0,0,0, 'ELM General Purpose Bunny - script - set data 0 1 on 25783');

-- SAI for Fizzcrank Airstrip Survivor
SET @ENTRY := 25783;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,1,0,100,1,0,0,0,0,11,34427,3,0,0,0,0,1,0,0,0,0,0,0,0, 'Fizzcrank Airstrip Survivor - on spawn - cast 34427 on self'),
(@ENTRY,0,1,0,1,0,100,1,1000,1000,1000,1000,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Fizzcrank Airstrip Survivor - on spawn - say text 0'),
(@ENTRY,0,2,3,38,0,100,0,0,1,0,0,45,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Fizzcrank Airstrip Survivor - on dataset 0 1 - dataset 0 0'),
(@ENTRY,0,3,0,61,0,100,0,0,0,0,0,53,0,@ENTRY,0,0,0,0,1,0,0,0,0,0,0,0, 'Fizzcrank Airstrip Survivor - on dataset 0 1 - Start WP movement'),
(@ENTRY,0,4,0,40,0,100,0,6,@ENTRY,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Fizzcrank Airstrip Survivor - Reach wp 6 - despawn');
-- Waypoints for Fizzcrank Airstrip Survivor from sniff
DELETE FROM `waypoints` WHERE `entry`=@ENTRY;
INSERT INTO `waypoints` (`entry`,`pointid`,`position_x`,`position_y`,`position_z`,`point_comment`) VALUES
(@ENTRY,1,4168.529,5251.933,24.87851, 'Fizzcrank Airstrip Survivor'),
(@ENTRY,2,4156.656,5256.007,24.62325, 'Fizzcrank Airstrip Survivor'),
(@ENTRY,3,4151.527,5268.997,25.36416, 'Fizzcrank Airstrip Survivor'),
(@ENTRY,4,4159.549,5281.078,26.23916, 'Fizzcrank Airstrip Survivor'),
(@ENTRY,5,4173.898,5280.844,26.69306, 'Fizzcrank Airstrip Survivor'),
(@ENTRY,6,4179.473,5282.701,26.69306, 'Fizzcrank Airstrip Survivor');
-- NPC talk text for Fizzcrank Survivor
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0, 'I''m flesh and blood again. That''s all that matters!',0,7,100,5,0,0, 'Fizzcrank Survivor');

-- Model and creature addon info (Nay)
UPDATE `creature_model_info` SET `bounding_radius`=0.3694949,`combat_reach`=1.81125,`gender`=1 WHERE `modelid`=23967; -- Chief Engineer Galpen Rolltie
UPDATE `creature_model_info` SET `bounding_radius`=0.3694949,`combat_reach`=1.81125,`gender`=1 WHERE `modelid`=23220; -- Crafty Wobblesprocket
-- Addon data for creature 26600 (Chief Engineer Galpen Rolltie)
DELETE FROM `creature_template_addon` WHERE `entry` IN (26600,26599,26634,26645,25766,15214,26817,23837,25783);
INSERT INTO `creature_template_addon` (`entry`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES
(26600,0,0,257,0, NULL), -- Chief Engineer Galpen Rolltie
(26599,0,0,257,0, NULL), -- Willis Wobblewheel
(26634,0,0,257,0, NULL), -- Fizzcrank Watcher Rupert Keeneye
(26645,0,0,257,0, NULL), -- Fizzcrank Engineering Crew
(25766,0,0,1,0, NULL), -- Rig Hauler AC-9
(15214,0,0,1,0, NULL), -- Invisible Stalker
(26817,0,0,257,0, NULL), -- Fizzcrank Fighter
(23837,0,0,1,0, NULL), -- ELM General Purpose Bunny
(25783,0,0,257,0, NULL); -- Fizzcrank Airstrip Survivor
-- Jean Pierre Poulain SAI
SET @ENTRY  := 34244;
SET @GOSSIP := 10478;
UPDATE `creature_template` SET `AIName`= 'SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,62,0,100,0,@GOSSIP,0,0,0,11,64795,1,0,0,0,0,7,0,0,0,0,0,0,0, 'Jean Pierre Poulain - On gossip option select - cast spell');
-- Fizzcrank Fullthrottle SAI
SET @ENTRY  := 25590;
SET @GOSSIP := 9171;
UPDATE `creature_template` SET `AIName`= 'SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,62,0,100,0,@GOSSIP,0,0,0,15,11708,0,0,0,0,0,7,0,0,0,0,0,0,0, 'Fizzcrank Fullthrottle - On gossip option select - quest complete'),
(@ENTRY,0,1,0,61,0,100,0,0,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0, 'Fizzcrank Fullthrottle - On gossip option select - close gossip');
-- Keeper Remulos SAI
SET @ENTRY  := 11832;
SET @GOSSIP := 10215;
UPDATE `creature_template` SET `AIName`= 'SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,62,0,100,0,@GOSSIP,0,0,0,11,57413,1,0,0,0,0,7,0,0,0,0,0,0,0, 'Keeper Remulos - On gossip option select - cast spell'),
(@ENTRY,0,1,2,62,0,100,0,@GOSSIP,1,0,0,11,57670,1,0,0,0,0,7,0,0,0,0,0,0,0, 'Keeper Remulos - On gossip option select - cast spell'),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0, 'Keeper Remulos - On gossip option select - close gossip');
-- Fizzcrank Recon Pilot SAI
SET @ENTRY  := 25841;
SET @GOSSIP := 9190;
SET @SCRIPT := 50028;
UPDATE `creature_template` SET `AIName`= 'SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,62,0,100,0,@GOSSIP,0,0,0,11,46362,0,0,0,0,0,7,0,0,0,0,0,0,0, 'Fizzcrank Recon Pilot - On gossip option select - cast spell'),
(@ENTRY,0,1,0,61,0,100,0,0,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0, 'Fizzcrank Recon Pilot - On gossip option select - close gossip'),
(@ENTRY,0,2,0,11,0,100,0,0,0,0,0,81,2,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Fizzcrank Recon Pilot - On spawn - set gossip flag'),
(@ENTRY,0,3,4,8,0,100,0,46362,0,0,0,11,46362,0,0,0,0,0,7,0,0,0,0,0,0,0, 'Fizzcrank Recon Pilot - On spellhit - cast spell on envoker'),
(@ENTRY,0,4,0,61,0,100,0,0,0,0,0,23,1,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Fizzcrank Recon Pilot - On spellhit - set phase 1'),
(@ENTRY,0,5,0,1,1,100,0,3000,3000,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Fizzcrank Recon Pilot - OOC - wait 3 sec despawn (Phase 1)');
-- Glodrak Huntsniper SAI
SET @ENTRY  := 24657;
SET @GOSSIP := 9016;
SET @SCRIPT := 10603;
UPDATE `creature_template` SET `AIName`= 'SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,62,0,100,0,@GOSSIP,0,0,0,11,66592,1,0,0,0,0,7,0,0,0,0,0,0,0, 'Glodrak Huntsniper - On gossip option select - cast spell'),
(@ENTRY,0,1,0,61,0,100,0,0,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0, 'Glodrak Huntsniper - On gossip option select - close gossip');
-- Goldark Snipehunter SAI
SET @ENTRY  := 23486;
SET @GOSSIP := 9006;
UPDATE `creature_template` SET `AIName`= 'SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,62,0,100,0,@GOSSIP,0,0,0,11,66592,1,0,0,0,0,7,0,0,0,0,0,0,0, 'Goldark Snipehunter - On gossip option select - cast spell'),
(@ENTRY,0,1,0,61,0,100,0,0,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0, 'Goldark Snipehunter - On gossip option select - close gossip');

-- Pol Amberstill & Driz Tumblequick SAI
SET @ENTRY   := 24468;
SET @ENTRY1  := 24510;
SET @GOSSIP  := 8958;
SET @GOSSIP1 := 8958;
SET @SCRIPT  := 8958;
UPDATE `creature_template` SET `AIName`= 'SmartAI' WHERE `entry` IN (@ENTRY,@ENTRY1);
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (@ENTRY,@ENTRY1);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
-- Pol Amberstill
(@ENTRY,0,0,1,62,0,100,0,@GOSSIP,6,0,0,11,44262,1,0,0,0,0,7,0,0,0,0,0,0,0, 'Pol Amberstill - On gossip option select - cast spell'),
(@ENTRY,0,1,0,61,0,100,0,0,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0, 'Pol Amberstill - On gossip option select - close gossip'),
(@ENTRY,0,2,3,62,0,100,0,@GOSSIP1,0,0,0,11,44262,1,0,0,0,0,7,0,0,0,0,0,0,0, 'Pol Amberstill - On gossip option select - cast spell'),
(@ENTRY,0,3,0,61,0,100,0,0,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0, 'Pol Amberstill - On gossip option select - close gossip'),
-- Driz Tumblequick
(@ENTRY1,0,0,1,62,0,100,0,@GOSSIP,6,0,0,11,44262,1,0,0,0,0,7,0,0,0,0,0,0,0, 'Driz Tumblequick - On gossip option select - cast spell'),
(@ENTRY1,0,1,0,61,0,100,0,0,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0, 'Driz Tumblequick - On gossip option select - close gossip'),
(@ENTRY1,0,2,3,62,0,100,0,@GOSSIP1,0,0,0,11,44262,1,0,0,0,0,7,0,0,0,0,0,0,0, 'Driz Tumblequick - On gossip option select - cast spell'),
(@ENTRY1,0,3,0,61,0,100,0,0,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0, 'Driz Tumblequick - On gossip option select - close gossip');
-- Steel Gate Chief Archaeologist SAI
SET @ENTRY  := 24399;
SET @GOSSIP := 8954;
SET @SCRIPT := 24399;
UPDATE `creature_template` SET `AIName`= 'SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,62,0,100,0,@GOSSIP,0,0,0,11,43533,1,0,0,0,0,7,0,0,0,0,0,0,0, 'Steel Gate Chief Archaeologist - On gossip option select - cast spell'),
(@ENTRY,0,1,0,61,0,100,0,0,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0, 'Steel Gate Chief Archaeologist - On gossip option select - close gossip');

-- Drakuru SAI
SET @ENTRY := 26423;
SET @GOSSIP := 9615;
UPDATE `creature_template` SET `AIName`= 'SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,62,0,100,0,@GOSSIP,0,0,0,33,27921,0,0,0,0,0,7,0,0,0,0,0,0,0, 'Drakuru - On gossip option select - killcredit'),
(@ENTRY,0,1,0,61,0,100,0,0,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0, 'Drakuru - On gossip option select - close gossip');

-- Dread Captain DeMeza SAI
SET @ENTRY := 28048;
UPDATE `creature_template` SET `AIName`= 'SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,62,0,100,0,9647,0,0,0,11,50517,1,0,0,0,0,7,0,0,0,0,0,0,0, 'Dread Captain DeMeza - On gossip option select - cast spell'),
(@ENTRY,0,1,0,61,0,100,0,0,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0, 'Dread Captain DeMeza - On gossip option select - close gossip');
-- Scourge Deathspeaker SAI 
UPDATE `creature_template` SET `AIName`= 'SmartAI' WHERE `entry`=27615;
DELETE FROM `smart_scripts` WHERE `entryorguid`=27615;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(27615,0,0,1,1,0,100,1,1000,1000,1000,1000,11,49119,2,0,0,0,0,10,101497,27452,0,0,0,0,0,'Scourge Deathspeaker - Spawn & reset - channel Fire Beam'),
(27615,0,1,0,61,0,100,1,0,0,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Scourge Deathspeaker - Spawn & reset - Prevent Combat Movement'),
(27615,0,2,3,4,0,100,1,0,0,0,0,11,52282,2,0,0,0,0,2,0,0,0,0,0,0,0,'Scourge Deathspeaker - On aggro - Cast Fireball'),
(27615,0,3,0,61,0,100,1,0,0,0,0,22,1,0,0,0,0,0,0,0,0,0,0,0,0,0,'Scourge Deathspeaker - On aggro - Set phase 1'),
(27615,0,4,0,9,1,100,0,3000,3000,3400,4800,11,52282,1,0,0,0,0,2,0,0,0,0,0,0,0,'Scourge Deathspeaker - in combat - Cast Fireball (phase 1)'),
(27615,0,5,0,9,1,100,0,35,80,1000,1000,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Scourge Deathspeaker - At 35 Yards - Start Combat Movement (phase 1)'),
(27615,0,6,0,9,1,100,0,5,15,1000,1000,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Scourge Deathspeaker - At 15 Yards - Prevent Combat Movement (phase 1)'),
(27615,0,7,0,9,1,100,0,0,5,1000,1000,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Scourge Deathspeaker - Below 5 Yards - Start Combat Movement (phase 1)'),
(27615,0,8,0,3,1,100,1,0,7,0,0,22,2,0,0,0,0,0,0,0,0,0,0,0,0,0,'Scourge Deathspeaker - Mana at 7% - Set Phase 2 (phase 1)'),
(27615,0,9,0,0,2,100,1,0,0,0,0,21,1,0,0,0,0,0,0,0,0,0,0,0,0,0,'Scourge Deathspeaker - In combat - Allow Combat Movement (phase 2)'),
(27615,0,10,0,3,2,100,1,15,100,100,100,22,1,0,0,0,0,0,0,0,0,0,0,0,0,0,'Scourge Deathspeaker - Mana above 15% - Set Phase 1 (phase 2)'),
(27615,0,11,0,2,0,100,1,0,30,120000,130000,11,52281,0,0,0,0,0,2,0,0,0,0,0,0,0,'Scourge Deathspeaker - At 15% HP - Cast Flame of the Seer'),
(27615,0,12,0,2,0,100,1,0,15,0,0,22,3,0,0,0,0,0,0,0,0,0,0,0,0,0,'Scourge Deathspeaker - At 15% HP - Set Phase 3'),
(27615,0,13,0,2,4,100,1,0,15,0,0,21,1,0,0,0,0,0,0,0,0,0,0,0,0,0,'Scourge Deathspeaker - At 15% HP - Allow Combat Movement (phase 3)'),
(27615,0,14,15,2,4,100,1,0,15,0,0,25,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Scourge Deathspeaker - At 15% HP - Flee (phase 3)'),
(27615,0,15,0,61,4,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Scourge Deathspeaker - At 15% HP - Say text0 (Phase 3)');

-- NPC talk text insert
DELETE FROM `creature_text` WHERE `entry` IN (27615);
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(27615,0,0, '%s attempts to run away in fear!',2,0,100,0,0,0, 'Scourge Deathspeaker');

-- SET InhabitType for Invisible Stalker Grizzly Hills
UPDATE `creature_template` SET `InhabitType`=7 WHERE `entry`=27452;

-- SAI for Dark Conclave Ritualist
SET @ENTRY := 22138;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,1,0,100,1,1000,1000,1000,1000,11,38469,0,0,0,0,0,19,22139,0,0,0,0,0,0,'Dark Conclave Ritualist - OOC - Dark Conclave Ritualist Channel');

-- Shattered Sun Marksman fixup (tested) 
-- Console no longer spamming waypoint script errors in The Dawning Square
UPDATE `creature_template` SET `AIName`= 'SmartAI' WHERE `entry`=24938;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(-111486,0,0,0,1,0,100,0,5000,5000,5000,7000,11,45223,0,0,0,0,0,10,62844,25192,0,0,0,0,0,'Shattered Sun Marksman - OOC 5-7 sec - Shoot at trigger'),
(-111487,0,0,0,1,0,100,0,2000,2000,5000,7000,11,45223,0,0,0,0,0,10,62844,25192,0,0,0,0,0,'Shattered Sun Marksman - OOC 5-7 sec - Shoot at trigger'),
(-111488,0,0,0,1,0,100,0,3000,3000,5000,7000,11,45223,0,0,0,0,0,10,62843,25192,0,0,0,0,0,'Shattered Sun Marksman - OOC 5-7 sec - Shoot at trigger'),
(-111489,0,0,0,1,0,100,0,6000,6000,5000,7000,11,45223,0,0,0,0,0,10,62843,25192,0,0,0,0,0,'Shattered Sun Marksman - OOC 5-7 sec - Shoot at trigger'),
(-111490,0,0,0,1,0,100,0,2000,2000,5000,7000,11,45223,0,0,0,0,0,10,59515,25192,0,0,0,0,0,'Shattered Sun Marksman - OOC 5-7 sec - Shoot at trigger'),
(-111491,0,0,0,1,0,100,0,5000,5000,5000,7000,11,45223,0,0,0,0,0,10,62841,25192,0,0,0,0,0,'Shattered Sun Marksman - OOC 5-7 sec - Shoot at trigger'),
(-111492,0,0,0,1,0,100,0,1000,1000,5000,7000,11,45223,0,0,0,0,0,10,62842,25192,0,0,0,0,0,'Shattered Sun Marksman - OOC 5-7 sec - Shoot at trigger'),
(-111493,0,0,0,1,0,100,0,5000,5000,5000,7000,11,45223,0,0,0,0,0,10,59473,25192,0,0,0,0,0,'Shattered Sun Marksman - OOC 5-7 sec - Shoot at trigger');
-- SAI add animation to GameObject Smoke Beacon
SET @ENTRY := 184661;
UPDATE `gameobject_template` SET `AIName`= 'SmartGameObjectAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=1 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,1,0,0,1,0,100,0,0,0,1000,1000,93,3,0,0,0,0,0,1,0,0,0,0,0,0,0, 'GameObject Smoke Beacon - On Spawn - Do Custom Animation');

-- SAI for Zeth'Gor Quest Credit Marker, They Must Burn, Tower South
SET @ENTRY := 21182;
UPDATE `creature_template` SET `minlevel`=1,`maxlevel`=1,`flags_extra`=`flags_extra`&~2,`InhabitType`=4,`AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,11,0,100,0,0,0,0,0,53,0,@ENTRY,1,0,0,0,1,0,0,0,0,0,0,0, 'Zeth''Gor Quest Credit Marker, They Must Burn, Tower South - On Spawn - Start WP movement'),
(@ENTRY,0,1,2,8,0,100,0,36374,0,0,0,45,0,1,0,0,0,0,10,78738,21173,0,0,0,0,0,'Zeth''Gor Quest Credit Marker, They Must Burn, Tower South - On spell hit - Call Griphonriders'),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,11,34386,2,0,0,0,0,1,0,0,0,0,0,0,0,'Zeth''Gor Quest Credit Marker, They Must Burn, Tower South - On spell hit - Spawn fire');

-- Waypoints for Zeth'Gor Quest Credit Marker, They Must Burn, Tower South from sniff
DELETE FROM `waypoints` WHERE `entry`=@ENTRY;
INSERT INTO `waypoints` (`entry`,`pointid`,`position_x`,`position_y`,`position_z`,`point_comment`) VALUES
(@ENTRY,1,-1156.975,2109.627,83.51005,'Zeth''Gor Quest Credit Marker, They Must Burn, Tower South WP 1'),
(@ENTRY,2,-1152.303,2112.098,90.67654,'Zeth''Gor Quest Credit Marker, They Must Burn, Tower South WP 2'),
(@ENTRY,3,-1150.817,2103.74,89.81573,'Zeth''Gor Quest Credit Marker, They Must Burn, Tower South WP 3'),
(@ENTRY,4,-1153.965,2107.031,97.06559,'Zeth''Gor Quest Credit Marker, They Must Burn, Tower South WP 4'),
(@ENTRY,5,-1156.105,2107.421,93.06557,'Zeth''Gor Quest Credit Marker, They Must Burn, Tower South WP 5'),
(@ENTRY,6,-1152.167,2107.406,83.17665,'Zeth''Gor Quest Credit Marker, They Must Burn, Tower South WP 6'),
(@ENTRY,7,-1150.145,2102.392,75.23684,'Zeth''Gor Quest Credit Marker, They Must Burn, Tower South WP 7'),
(@ENTRY,8,-1158.784,2102.993,76.98234,'Zeth''Gor Quest Credit Marker, They Must Burn, Tower South WP 8'),
(@ENTRY,9,-1158.344,2112.019,79.20454,'Zeth''Gor Quest Credit Marker, They Must Burn, Tower South WP 9'),
(@ENTRY,10,-1148.166,2113.343,77.0103,'Zeth''Gor Quest Credit Marker, They Must Burn, Tower South WP 10'),
(@ENTRY,11,-1148.897,2102.624,69.67694,'Zeth''Gor Quest Credit Marker, They Must Burn, Tower South WP 11'),
(@ENTRY,12,-1157.054,2104.975,82.9548,'Zeth''Gor Quest Credit Marker, They Must Burn, Tower South WP 12');
-- Update Creature
UPDATE `creature` SET `curhealth`=1,`spawndist`=0,`MovementType`=0,`position_x`=-1157.054,`position_y`=2104.975,`position_z`=82.9548,`orientation`=1.186824 WHERE `guid`=74299;

-- SAI for Zeth'Gor Quest Credit Marker, They Must Burn, Tower North
SET @ENTRY := 22401;
UPDATE `creature_template` SET `minlevel`=1,`maxlevel`=1,`flags_extra`=`flags_extra`&~2,`InhabitType`=4,`AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,11,0,100,0,0,0,0,0,53,0,@ENTRY,1,0,0,0,1,0,0,0,0,0,0,0, 'Zeth''Gor Quest Credit Marker, They Must Burn, Tower North - On Spawn - Start WP movement'),
(@ENTRY,0,1,2,8,0,100,0,36374,0,0,0,45,0,2,0,0,0,0,10,74239,21173,0,0,0,0,0,'Zeth''Gor Quest Credit Marker, They Must Burn, Tower North - On spell hit - Call Griphonriders'),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,11,34386,2,0,0,0,0,1,0,0,0,0,0,0,0,'Zeth''Gor Quest Credit Marker, They Must Burn, Tower North - On spell hit - Spawn fire');

-- Waypoints for Zeth'Gor Quest Credit Marker, They Must Burn, Tower North from sniff
DELETE FROM `waypoints` WHERE `entry`=@ENTRY;
INSERT INTO `waypoints` (`entry`,`pointid`,`position_x`,`position_y`,`position_z`,`point_comment`) VALUES
(@ENTRY,1,-821.9919,2034.883,55.01843,'Zeth''Gor Quest Credit Marker, They Must Burn, Tower North WP 1'),
(@ENTRY,2,-820.9771,2027.591,63.68367,'Zeth''Gor Quest Credit Marker, They Must Burn, Tower North WP 2'),
(@ENTRY,3,-825.2185,2034.113,65.86314,'Zeth''Gor Quest Credit Marker, They Must Burn, Tower North WP 3'),
(@ENTRY,4,-816.8493,2028.659,49.75199,'Zeth''Gor Quest Credit Marker, They Must Burn, Tower North WP 4'),
(@ENTRY,5,-825.249,2026.351,46.58422,'Zeth''Gor Quest Credit Marker, They Must Burn, Tower North WP 5');
-- Update Creature
UPDATE `creature` SET `curhealth`=1,`spawndist`=0,`MovementType`=0,`position_x`=-825.249,`position_y`=2026.351,`position_z`=46.58422,`orientation`=1.186824 WHERE `guid`=78735;

-- SAI for Zeth'Gor Quest Credit Marker, They Must Burn, Tower Forge
SET @ENTRY := 22402;
UPDATE `creature_template` SET `minlevel`=1,`maxlevel`=1,`flags_extra`=`flags_extra`&~2,`InhabitType`=4,`AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,11,0,100,0,0,0,0,0,53,0,@ENTRY,1,0,0,0,1,0,0,0,0,0,0,0, 'Zeth''Gor Quest Credit Marker, They Must Burn, Tower Forge - On Spawn - Start WP movement'),
(@ENTRY,0,1,2,8,0,100,0,36374,0,0,0,45,0,3,0,0,0,0,10,74239,21173,0,0,0,0,0,'Zeth''Gor Quest Credit Marker, They Must Burn, Tower Forge - On spell hit - Call Griphonriders'),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,11,34386,2,0,0,0,0,1,0,0,0,0,0,0,0,'Zeth''Gor Quest Credit Marker, They Must Burn, Tower Forge - On spell hit - Spawn fire');

-- Waypoints for Zeth'Gor Quest Credit Marker, They Must Burn, Tower Forge from sniff
DELETE FROM `waypoints` WHERE `entry`=@ENTRY;
INSERT INTO `waypoints` (`entry`,`pointid`,`position_x`,`position_y`,`position_z`,`point_comment`) VALUES
(@ENTRY,1,-897.1001,1917.556,93.73737,'Zeth''Gor Quest Credit Marker, They Must Burn, Tower Forge WP 1'),
(@ENTRY,2,-903.386,1919.14,76.0997,'Zeth''Gor Quest Credit Marker, They Must Burn, Tower Forge WP 2'),
(@ENTRY,3,-898.1819,1920.161,82.67819,'Zeth''Gor Quest Credit Marker, They Must Burn, Tower Forge WP 3'),
(@ENTRY,4,-901.2836,1920.168,92.57269,'Zeth''Gor Quest Credit Marker, They Must Burn, Tower Forge WP 4'),
(@ENTRY,5,-894.9478,1924.78,75.48938,'Zeth''Gor Quest Credit Marker, They Must Burn, Tower Forge WP 5'),
(@ENTRY,6,-894.4704,1919.866,93.71019,'Zeth''Gor Quest Credit Marker, They Must Burn, Tower Forge WP 6');
-- Update Creature
UPDATE `creature` SET `curhealth`=1,`spawndist`=0,`MovementType`=0,`position_x`=-894.4704,`position_y`=1919.866,`position_z`=93.71019,`orientation`=1.186824 WHERE `guid`=78736;

-- SAI for Zeth'Gor Quest Credit Marker, They Must Burn, Tower Foothill
SET @ENTRY := 22403;
UPDATE `creature_template` SET `minlevel`=1,`maxlevel`=1,`flags_extra`=`flags_extra`&~2,`flags_extra`=`flags_extra`|128,`InhabitType`=4,`AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,11,0,100,0,0,0,0,0,53,0,@ENTRY,1,0,0,0,1,0,0,0,0,0,0,0, 'Zeth''Gor Quest Credit Marker, They Must Burn, Tower Foothill - On Spawn - Start WP movement'),
(@ENTRY,0,1,2,8,0,100,0,36374,0,0,0,45,0,4,0,0,0,0,10,74239,21173,0,0,0,0,0,'Zeth''Gor Quest Credit Marker, They Must Burn, Tower Foothill - On spell hit - Call Griphonriders'),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,11,34386,2,0,0,0,0,1,0,0,0,0,0,0,0,'Zeth''Gor Quest Credit Marker, They Must Burn, Tower Foothill - On spell hit - Spawn fire');

-- Waypoints for Zeth'Gor Quest Credit Marker, They Must Burn, Tower Foothill from sniff
DELETE FROM `waypoints` WHERE `entry`=@ENTRY;
INSERT INTO `waypoints` (`entry`,`pointid`,`position_x`,`position_y`,`position_z`,`point_comment`) VALUES
(@ENTRY,1,-978.3713,1883.556,104.3167,'Zeth''Gor Quest Credit Marker, They Must Burn, Tower Foothill WP 1'),
(@ENTRY,2,-974.3038,1878.926,109.6782,'Zeth''Gor Quest Credit Marker, They Must Burn, Tower Foothill WP 2'),
(@ENTRY,3,-974.1463,1874.819,121.9402,'Zeth''Gor Quest Credit Marker, They Must Burn, Tower Foothill WP 3'),
(@ENTRY,4,-982.4401,1875.441,100.4122,'Zeth''Gor Quest Credit Marker, They Must Burn, Tower Foothill WP 4'),
(@ENTRY,5,-975.1263,1882.178,118.0354,'Zeth''Gor Quest Credit Marker, They Must Burn, Tower Foothill WP 5'),
(@ENTRY,6,-979.3693,1876.667,121.5866,'Zeth''Gor Quest Credit Marker, They Must Burn, Tower Foothill WP 6');
-- Update Creature
UPDATE `creature` SET `curhealth`=1,`spawndist`=0,`MovementType`=0,`position_x`=-979.3693,`position_y`=1876.667,`position_z`=121.5866,`orientation`=1.186824 WHERE `guid`=78737;

-- SAI for Zeth'Gor Quest Credit Marker, They Must Burn
SET @ENTRY  := 21173; -- Zeth'Gor Quest Credit Marker, They Must Burn
SET @ENTRY1 := 21170; -- Honor Hold Gryphon Brigadier, South
SET @ENTRY2 := 22404; -- Honor Hold Gryphon Brigadier, North
SET @ENTRY3 := 22405; -- Honor Hold Gryphon Brigadier, Forge
SET @ENTRY4 := 22406; -- Honor Hold Gryphon Brigadier, Foothills
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=9 AND `entryorguid` IN (@ENTRY*100, (@ENTRY*100)+1, (@ENTRY*100)+2, (@ENTRY*100)+3);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
-- AI
(@ENTRY,0,0,0,38,0,100,0,0,1,0,0,80,(@ENTRY*100)+0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Zeth''Gor Quest Credit Marker, They Must Burn, Tower South - On dataset - load script'),
(@ENTRY,0,1,0,38,0,100,0,0,2,0,0,80,(@ENTRY*100)+1,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Zeth''Gor Quest Credit Marker, They Must Burn, Tower North - On dataset - load script'),
(@ENTRY,0,2,0,38,0,100,0,0,3,0,0,80,(@ENTRY*100)+2,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Zeth''Gor Quest Credit Marker, They Must Burn, Tower Forge - On dataset - load script'),
(@ENTRY,0,3,0,38,0,100,0,0,4,0,0,80,(@ENTRY*100)+3,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Zeth''Gor Quest Credit Marker, They Must Burn, Tower Foothill - On dataset - load script'),
-- Script 0
(@ENTRY*100,9,0,0,0,0,100,0,0,0,0,0,45,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Reset data 0'),
(@ENTRY*100,9,1,0,0,0,100,0,1000,1000,0,0,11,36302,0,0,0,0,0,1,0,0,0,0,0,0,0, ' Summon Honor Hold Gryphon Brigadier, South'),
(@ENTRY*100,9,2,0,0,0,100,0,3000,3000,0,0,45,0,1,0,0,0,0,19,@ENTRY1,0,0,0,0,0,0, ' Summon Honor Hold Gryphon Brigadier, South'),
(@ENTRY*100,9,3,0,0,0,100,0,0,0,0,0,11,36302,0,0,0,0,0,1,0,0,0,0,0,0,0, ' Summon Honor Hold Gryphon Brigadier, South'),
(@ENTRY*100,9,4,0,0,0,100,0,3000,3000,0,0,45,0,2,0,0,0,0,19,@ENTRY1,0,0,0,0,0,0, ' Summon Honor Hold Gryphon Brigadier, South'),
(@ENTRY*100,9,5,0,0,0,100,0,0,0,0,0,11,36302,0,0,0,0,0,1,0,0,0,0,0,0,0, ' Summon Honor Hold Gryphon Brigadier, South'),
(@ENTRY*100,9,6,0,0,0,100,0,3000,3000,0,0,45,0,3,0,0,0,0,19,@ENTRY1,0,0,0,0,0,0, ' Summon Honor Hold Gryphon Brigadier, South'),
(@ENTRY*100,9,7,0,0,0,100,0,0,0,0,0,11,36302,0,0,0,0,0,1,0,0,0,0,0,0,0, ' Summon Honor Hold Gryphon Brigadier, South'),
(@ENTRY*100,9,8,0,0,0,100,0,3000,3000,0,0,45,0,4,0,0,0,0,19,@ENTRY1,0,0,0,0,0,0, ' Summon Honor Hold Gryphon Brigadier, South'),
-- Script 1
((@ENTRY*100)+1,9,0,0,0,0,100,0,0,0,0,0,45,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Reset data 0'),
((@ENTRY*100)+1,9,1,0,0,0,100,0,0,0,0,0,11,39106,0,0,0,0,0,1,0,0,0,0,0,0,0, ' Summon Honor Hold Gryphon Brigadier, North'),
((@ENTRY*100)+1,9,2,0,0,0,100,0,3000,3000,0,0,45,0,1,0,0,0,0,19,@ENTRY2,0,0,0,0,0,0, ' Summon Honor Hold Gryphon Brigadier, North'),
((@ENTRY*100)+1,9,3,0,0,0,100,0,0,0,0,0,11,39106,0,0,0,0,0,1,0,0,0,0,0,0,0, ' Summon Honor Hold Gryphon Brigadier, North'),
((@ENTRY*100)+1,9,4,0,0,0,100,0,3000,3000,0,0,45,0,2,0,0,0,0,19,@ENTRY2,0,0,0,0,0,0, ' Summon Honor Hold Gryphon Brigadier, North'),
((@ENTRY*100)+1,9,5,0,0,0,100,0,0,0,0,0,11,39106,0,0,0,0,0,1,0,0,0,0,0,0,0, ' Summon Honor Hold Gryphon Brigadier, North'),
((@ENTRY*100)+1,9,6,0,0,0,100,0,3000,3000,0,0,45,0,3,0,0,0,0,19,@ENTRY2,0,0,0,0,0,0, ' Summon Honor Hold Gryphon Brigadier, North'),
((@ENTRY*100)+1,9,7,0,0,0,100,0,0,0,0,0,11,39106,0,0,0,0,0,1,0,0,0,0,0,0,0, ' Summon Honor Hold Gryphon Brigadier, North'),
((@ENTRY*100)+1,9,8,0,0,0,100,0,3000,3000,0,0,45,0,3,0,0,0,0,19,@ENTRY2,0,0,0,0,0,0, ' Summon Honor Hold Gryphon Brigadier, North'),
-- Script 2
((@ENTRY*100)+2,9,0,0,0,0,100,0,0,0,0,0,45,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Reset data 0'),
((@ENTRY*100)+2,9,1,0,0,0,100,0,0,0,0,0,11,39107,0,0,0,0,0,1,0,0,0,0,0,0,0, ' Summon Honor Hold Gryphon Brigadier, Forge'),
((@ENTRY*100)+2,9,2,0,0,0,100,0,3000,3000,0,0,45,0,1,0,0,0,0,19,@ENTRY3,0,0,0,0,0,0, ' Summon Honor Hold Gryphon Brigadier, Forge'),
((@ENTRY*100)+2,9,3,0,0,0,100,0,0,0,0,0,11,39107,0,0,0,0,0,1,0,0,0,0,0,0,0, ' Summon Honor Hold Gryphon Brigadier, Forge'),
((@ENTRY*100)+2,9,4,0,0,0,100,0,3000,3000,0,0,45,0,2,0,0,0,0,19,@ENTRY3,0,0,0,0,0,0, ' Summon Honor Hold Gryphon Brigadier, Forge'),
((@ENTRY*100)+2,9,5,0,0,0,100,0,0,0,0,0,11,39107,0,0,0,0,0,1,0,0,0,0,0,0,0, ' Summon Honor Hold Gryphon Brigadier, Forge'),
((@ENTRY*100)+2,9,6,0,0,0,100,0,3000,3000,0,0,45,0,3,0,0,0,0,19,@ENTRY3,0,0,0,0,0,0, ' Summon Honor Hold Gryphon Brigadier, Forge'),
((@ENTRY*100)+2,9,7,0,0,0,100,0,0,0,0,0,11,39107,0,0,0,0,0,1,0,0,0,0,0,0,0, ' Summon Honor Hold Gryphon Brigadier, Forge'),
((@ENTRY*100)+2,9,8,0,0,0,100,0,3000,3000,0,0,45,0,3,0,0,0,0,19,@ENTRY3,0,0,0,0,0,0, ' Summon Honor Hold Gryphon Brigadier, Forge'),
-- Script 3
((@ENTRY*100)+3,9,0,0,0,0,100,0,0,0,0,0,45,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Reset data 0'),
((@ENTRY*100)+3,9,1,0,0,0,100,0,0,0,0,0,11,39108,0,0,0,0,0,1,0,0,0,0,0,0,0, ' Summon Honor Hold Gryphon Brigadier, Foothill'),
((@ENTRY*100)+3,9,2,0,0,0,100,0,3000,3000,0,0,45,0,1,0,0,0,0,19,@ENTRY4,0,0,0,0,0,0, ' Summon Honor Hold Gryphon Brigadier, Foothill'),
((@ENTRY*100)+3,9,3,0,0,0,100,0,0,0,0,0,11,39108,0,0,0,0,0,1,0,0,0,0,0,0,0, ' Summon Honor Hold Gryphon Brigadier, Foothill'),
((@ENTRY*100)+3,9,4,0,0,0,100,0,3000,3000,0,0,45,0,2,0,0,0,0,19,@ENTRY4,0,0,0,0,0,0, ' Summon Honor Hold Gryphon Brigadier, Foothill'),
((@ENTRY*100)+3,9,5,0,0,0,100,0,0,0,0,0,11,39108,0,0,0,0,0,1,0,0,0,0,0,0,0, ' Summon Honor Hold Gryphon Brigadier, Foothill'),
((@ENTRY*100)+3,9,6,0,0,0,100,0,3000,3000,0,0,45,0,3,0,0,0,0,19,@ENTRY4,0,0,0,0,0,0, ' Summon Honor Hold Gryphon Brigadier, Foothill'),
((@ENTRY*100)+3,9,7,0,0,0,100,0,0,0,0,0,11,39108,0,0,0,0,0,1,0,0,0,0,0,0,0, ' Summon Honor Hold Gryphon Brigadier, Foothill'),
((@ENTRY*100)+3,9,8,0,0,0,100,0,3000,3000,0,0,45,0,1,0,0,0,0,19,@ENTRY4,0,0,0,0,0,0, ' Summon Honor Hold Gryphon Brigadier, Foothill');

-- SAI for Honor Hold Gryphon Brigadier, South
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY1;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY1;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY1,0,0,0,11,0,100,0,0,0,0,0,11,36350,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Zeth''Gor Quest Credit Marker, They Must Burn, Tower South - On Spawn - Add aura'),
(@ENTRY1,0,1,0,38,0,100,0,0,1,0,0,53,1,@ENTRY1*100,0,0,0,0,1,0,0,0,0,0,0,0, 'Zeth''Gor Quest Credit Marker, They Must Burn, Tower South - On data set - Start WP movement'),
(@ENTRY1,0,2,0,38,0,100,0,0,2,0,0,53,1,(@ENTRY1*100)+1,0,0,0,0,1,0,0,0,0,0,0,0, 'Zeth''Gor Quest Credit Marker, They Must Burn, Tower South - On data set - Start WP movement'),
(@ENTRY1,0,3,0,38,0,100,0,0,3,0,0,53,1,(@ENTRY1*100)+2,0,0,0,0,1,0,0,0,0,0,0,0, 'Zeth''Gor Quest Credit Marker, They Must Burn, Tower South - On data set - Start WP movement'),
(@ENTRY1,0,4,0,38,0,100,0,0,4,0,0,53,1,(@ENTRY1*100)+3,0,0,0,0,1,0,0,0,0,0,0,0, 'Zeth''Gor Quest Credit Marker, They Must Burn, Tower South - On data set - Start WP movement'),
(@ENTRY1,0,5,0,40,0,100,0,10,@ENTRY1*100,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Zeth''Gor Quest Credit Marker, They Must Burn, Tower South - On Reach WP - Despawn'),
(@ENTRY1,0,6,0,40,0,100,0,10,(@ENTRY1*100)+1,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Zeth''Gor Quest Credit Marker, They Must Burn, Tower South - On Reach WP - Despawn'),
(@ENTRY1,0,7,0,40,0,100,0,11,(@ENTRY1*100)+2,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Zeth''Gor Quest Credit Marker, They Must Burn, Tower South - On Reach WP - Despawn'),
(@ENTRY1,0,8,0,40,0,100,0,11,(@ENTRY1*100)+3,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Zeth''Gor Quest Credit Marker, They Must Burn, Tower South - On Reach WP - Despawn');

-- SAI for Honor Hold Gryphon Brigadier, North
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY2;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY2;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY2,0,0,0,11,0,100,0,0,0,0,0,11,36350,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Zeth''Gor Quest Credit Marker, They Must Burn, Tower South - On Spawn - Add aura'),
(@ENTRY2,0,1,0,38,0,100,0,0,1,0,0,53,1,@ENTRY2*100,0,0,0,0,1,0,0,0,0,0,0,0, 'Zeth''Gor Quest Credit Marker, They Must Burn, Tower South - On data set - Start WP movement'),
(@ENTRY2,0,2,0,38,0,100,0,0,2,0,0,53,1,(@ENTRY2*100)+1,0,0,0,0,1,0,0,0,0,0,0,0, 'Zeth''Gor Quest Credit Marker, They Must Burn, Tower South - On data set - Start WP movement'),
(@ENTRY2,0,3,0,38,0,100,0,0,3,0,0,53,1,(@ENTRY2*100)+2,0,0,0,0,1,0,0,0,0,0,0,0, 'Zeth''Gor Quest Credit Marker, They Must Burn, Tower South - On data set - Start WP movement'),
(@ENTRY2,0,4,0,38,0,100,0,0,4,0,0,53,1,(@ENTRY2*100)+3,0,0,0,0,1,0,0,0,0,0,0,0, 'Zeth''Gor Quest Credit Marker, They Must Burn, Tower South - On data set - Start WP movement'),
(@ENTRY2,0,5,0,40,0,100,0,12,@ENTRY2*100,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Zeth''Gor Quest Credit Marker, They Must Burn, Tower South - On Reach WP - Despawn'),
(@ENTRY2,0,6,0,40,0,100,0,11,(@ENTRY2*100)+1,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Zeth''Gor Quest Credit Marker, They Must Burn, Tower South - On Reach WP - Despawn'),
(@ENTRY2,0,7,0,40,0,100,0,12,(@ENTRY2*100)+2,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Zeth''Gor Quest Credit Marker, They Must Burn, Tower South - On Reach WP - Despawn'),
(@ENTRY2,0,8,0,40,0,100,0,12,(@ENTRY2*100)+3,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Zeth''Gor Quest Credit Marker, They Must Burn, Tower South - On Reach WP - Despawn');

-- SAI for Honor Hold Gryphon Brigadier, Forge
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY3;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY3;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY3,0,0,0,11,0,100,0,0,0,0,0,11,36350,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Zeth''Gor Quest Credit Marker, They Must Burn, Tower South - On Spawn - Add aura'),
(@ENTRY3,0,1,0,38,0,100,0,0,1,0,0,53,1,@ENTRY3*100,0,0,0,0,1,0,0,0,0,0,0,0, 'Zeth''Gor Quest Credit Marker, They Must Burn, Tower South - On data set - Start WP movement'),
(@ENTRY3,0,2,0,38,0,100,0,0,2,0,0,53,1,(@ENTRY3*100)+1,0,0,0,0,1,0,0,0,0,0,0,0, 'Zeth''Gor Quest Credit Marker, They Must Burn, Tower South - On data set - Start WP movement'),
(@ENTRY3,0,3,0,38,0,100,0,0,3,0,0,53,1,(@ENTRY3*100)+2,0,0,0,0,1,0,0,0,0,0,0,0, 'Zeth''Gor Quest Credit Marker, They Must Burn, Tower South - On data set - Start WP movement'),
(@ENTRY3,0,4,0,38,0,100,0,0,4,0,0,53,1,(@ENTRY3*100)+3,0,0,0,0,1,0,0,0,0,0,0,0, 'Zeth''Gor Quest Credit Marker, They Must Burn, Tower South - On data set - Start WP movement'),
(@ENTRY3,0,5,0,40,0,100,0,13,@ENTRY3*100,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Zeth''Gor Quest Credit Marker, They Must Burn, Tower South - On Reach WP - Despawn'),
(@ENTRY3,0,6,0,40,0,100,0,13,(@ENTRY3*100)+1,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Zeth''Gor Quest Credit Marker, They Must Burn, Tower South - On Reach WP - Despawn'),
(@ENTRY3,0,7,0,40,0,100,0,12,(@ENTRY3*100)+2,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Zeth''Gor Quest Credit Marker, They Must Burn, Tower South - On Reach WP - Despawn'),
(@ENTRY3,0,8,0,40,0,100,0,14,(@ENTRY3*100)+3,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Zeth''Gor Quest Credit Marker, They Must Burn, Tower South - On Reach WP - Despawn');

-- SAI for Honor Hold Gryphon Brigadier, Foothill
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY4;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY4;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY4,0,0,0,11,0,100,0,0,0,0,0,11,36350,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Zeth''Gor Quest Credit Marker, They Must Burn, Tower South - On Spawn - Add aura'),
(@ENTRY4,0,1,0,38,0,100,0,0,1,0,0,53,1,@ENTRY4*100,0,0,0,0,1,0,0,0,0,0,0,0, 'Zeth''Gor Quest Credit Marker, They Must Burn, Tower South - On data set - Start WP movement'),
(@ENTRY4,0,2,0,38,0,100,0,0,2,0,0,53,1,(@ENTRY4*100)+1,0,0,0,0,1,0,0,0,0,0,0,0, 'Zeth''Gor Quest Credit Marker, They Must Burn, Tower South - On data set - Start WP movement'),
(@ENTRY4,0,3,0,38,0,100,0,0,3,0,0,53,1,(@ENTRY4*100)+2,0,0,0,0,1,0,0,0,0,0,0,0, 'Zeth''Gor Quest Credit Marker, They Must Burn, Tower South - On data set - Start WP movement'),
(@ENTRY4,0,4,0,40,0,100,0,15,@ENTRY4*100,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Zeth''Gor Quest Credit Marker, They Must Burn, Tower South - On Reach WP - Despawn'),
(@ENTRY4,0,5,0,40,0,100,0,15,(@ENTRY4*100)+1,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Zeth''Gor Quest Credit Marker, They Must Burn, Tower South - On Reach WP - Despawn'),
(@ENTRY4,0,6,0,40,0,100,0,15,(@ENTRY4*100)+2,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Zeth''Gor Quest Credit Marker, They Must Burn, Tower South - On Reach WP - Despawn');

-- Honor Hold Gryphon Brigadier, South Pathing
DELETE FROM `waypoints` WHERE `entry` IN (@ENTRY1*100, (@ENTRY1*100)+1, (@ENTRY1*100)+2, (@ENTRY1*100)+3);
INSERT INTO `waypoints` (`entry`,`pointid`,`position_x`,`position_y`,`position_z`,`point_comment`) VALUES
-- Honor Hold Gryphon Brigadier, South Path 1
(@ENTRY1*100,1,-1166.146,2232.443,154.4811,'Honor Hold Gryphon Brigadier, South Path 1 WP 1'),
(@ENTRY1*100,2,-1166.439,2233.399,154.4811,'Honor Hold Gryphon Brigadier, South Path 1 WP 2'),
(@ENTRY1*100,3,-1162.907,2207.568,140.9076,'Honor Hold Gryphon Brigadier, South Path 1 WP 3'),
(@ENTRY1*100,4,-1165.149,2160.382,126.1298,'Honor Hold Gryphon Brigadier, South Path 1 WP 4'),
(@ENTRY1*100,5,-1171.198,2119.914,110.0741,'Honor Hold Gryphon Brigadier, South Path 1 WP 5'),
(@ENTRY1*100,6,-1152.598,2108.961,101.9074,'Honor Hold Gryphon Brigadier, South Path 1 WP 6'),
(@ENTRY1*100,7,-1126.18,2129.599,118.6573,'Honor Hold Gryphon Brigadier, South Path 1 WP 7'),
(@ENTRY1*100,8,-1113.314,2146.836,135.1296,'Honor Hold Gryphon Brigadier, South Path 1 WP 8'),
(@ENTRY1*100,9,-1105.45,2173.646,171.0185,'Honor Hold Gryphon Brigadier, South Path 1 WP 9'),
(@ENTRY1*100,10,-1107.9,2202.193,195.935,'Honor Hold Gryphon Brigadier, South Path 1 WP 10'),
-- Honor Hold Gryphon Brigadier, South Path 2
((@ENTRY1*100)+1,1,-1166.146,2232.443,154.4811,'Honor Hold Gryphon Brigadier, South Path 2 WP 1'),
((@ENTRY1*100)+1,2,-1166.439,2233.399,154.4811,'Honor Hold Gryphon Brigadier, South Path 2 WP 2'),
((@ENTRY1*100)+1,3,-1182.963,2208.794,125.3797,'Honor Hold Gryphon Brigadier, South Path 2 WP 3'),
((@ENTRY1*100)+1,4,-1182.292,2161.906,114.2409,'Honor Hold Gryphon Brigadier, South Path 2 WP 4'),
((@ENTRY1*100)+1,5,-1175.9,2113.828,105.1853,'Honor Hold Gryphon Brigadier, South Path 2 WP 5'),
((@ENTRY1*100)+1,6,-1152.598,2108.961,104.5463,'Honor Hold Gryphon Brigadier, South Path 2 WP 6'),
((@ENTRY1*100)+1,7,-1126.18,2129.599,117.0184,'Honor Hold Gryphon Brigadier, South Path 2 WP 7'),
((@ENTRY1*100)+1,8,-1097.298,2159.928,136.074,'Honor Hold Gryphon Brigadier, South Path 2 WP 8'),
((@ENTRY1*100)+1,9,-1084.76,2185.17,157.8796,'Honor Hold Gryphon Brigadier, South Path 2 WP 9'),
((@ENTRY1*100)+1,10,-1074.359,2208.386,178.1295,'Honor Hold Gryphon Brigadier, South Path 2 WP 10'),
-- Honor Hold Gryphon Brigadier, South Path 3
((@ENTRY1*100)+2,1,-1166.146,2232.443,154.4811,'Honor Hold Gryphon Brigadier, South Path 3 WP 1'),
((@ENTRY1*100)+2,2,-1166.439,2233.399,154.4811,'Honor Hold Gryphon Brigadier, South Path 3 WP 2'),
((@ENTRY1*100)+2,3,-1150.548,2194.858,120.9303,'Honor Hold Gryphon Brigadier, South Path 3 WP 3'),
((@ENTRY1*100)+2,4,-1151.814,2161.048,110.9858,'Honor Hold Gryphon Brigadier, South Path 3 WP 4'),
((@ENTRY1*100)+2,5,-1152.937,2131.728,105.9581,'Honor Hold Gryphon Brigadier, South Path 3 WP 5'),
((@ENTRY1*100)+2,6,-1151.148,2107.598,99.458,'Honor Hold Gryphon Brigadier, South Path 3 WP 6'),
((@ENTRY1*100)+2,7,-1165.406,2089.037,115.6802,'Honor Hold Gryphon Brigadier, South Path 3 WP 7'),
((@ENTRY1*100)+2,8,-1174.068,2083.782,125.0691,'Honor Hold Gryphon Brigadier, South Path 3 WP 8'),
((@ENTRY1*100)+2,9,-1205.327,2083.083,164.097,'Honor Hold Gryphon Brigadier, South Path 3 WP 9'),
((@ENTRY1*100)+2,10,-1232.793,2084.872,183.4025,'Honor Hold Gryphon Brigadier, South Path 3 WP 10'),
((@ENTRY1*100)+2,11,-1264.571,2093.127,197.5136,'Honor Hold Gryphon Brigadier, South Path 3 WP 11'),
-- Honor Hold Gryphon Brigadier, South Path 4
((@ENTRY1*100)+3,1,-1166.146,2232.443,154.4811,'Honor Hold Gryphon Brigadier, South Path 4 WP 1'),
((@ENTRY1*100)+3,2,-1166.439,2233.399,154.4811,'Honor Hold Gryphon Brigadier, South Path 4 WP 2'),
((@ENTRY1*100)+3,3,-1152.79,2211.288,120.9303,'Honor Hold Gryphon Brigadier, South Path 4 WP 3'),
((@ENTRY1*100)+3,4,-1146.584,2178.448,110.9858,'Honor Hold Gryphon Brigadier, South Path 4 WP 4'),
((@ENTRY1*100)+3,5,-1155.939,2146.783,105.9581,'Honor Hold Gryphon Brigadier, South Path 4 WP 5'),
((@ENTRY1*100)+3,6,-1151.148,2107.598,99.68026,'Honor Hold Gryphon Brigadier, South Path 4 WP 6'),
((@ENTRY1*100)+3,7,-1142.785,2094.159,103.5414,'Honor Hold Gryphon Brigadier, South Path 4 WP 7'),
((@ENTRY1*100)+3,8,-1136.896,2085.377,109.1246,'Honor Hold Gryphon Brigadier, South Path 4 WP 8'),
((@ENTRY1*100)+3,9,-1119.036,2071.976,118.8748,'Honor Hold Gryphon Brigadier, South Path 4 WP 9'),
((@ENTRY1*100)+3,10,-1103.594,2050.397,128.2081,'Honor Hold Gryphon Brigadier, South Path 4 WP 10'),
((@ENTRY1*100)+3,11,-1080.568,2022.377,137.5138,'Honor Hold Gryphon Brigadier, South Path 4 WP 11');

-- Honor Hold Gryphon Brigadier, North Pathing
DELETE FROM `waypoints` WHERE `entry` IN (@ENTRY2*100, (@ENTRY2*100)+1, (@ENTRY2*100)+2, (@ENTRY2*100)+3);
INSERT INTO `waypoints` (`entry`,`pointid`,`position_x`,`position_y`,`position_z`,`point_comment`) VALUES
-- Honor Hold Gryphon Brigadier, North Path 1
(@ENTRY2*100,1,-739.3298,1922.589,100.9578,'Honor Hold Gryphon Brigadier, North Path 1 WP'),
(@ENTRY2*100,2,-738.3353,1922.693,100.9578,'Honor Hold Gryphon Brigadier, North Path 1 WP'),
(@ENTRY2*100,3,-750.1168,1929.094,99.47905,'Honor Hold Gryphon Brigadier, North Path 1 WP'),
(@ENTRY2*100,4,-774.873,1952.79,99.47905,'Honor Hold Gryphon Brigadier, North Path 1 WP'),
(@ENTRY2*100,5,-786.8572,1972.59,99.47905,'Honor Hold Gryphon Brigadier, North Path 1 WP'),
(@ENTRY2*100,6,-799.9429,2000.454,78.95126,'Honor Hold Gryphon Brigadier, North Path 1 WP'),
(@ENTRY2*100,7,-806.1043,2017.675,73.36794,'Honor Hold Gryphon Brigadier, North Path 1 WP'),
(@ENTRY2*100,8,-819.2725,2032.523,73.17354,'Honor Hold Gryphon Brigadier, North Path 1 WP'),
(@ENTRY2*100,9,-831.7571,2046.865,80.61793,'Honor Hold Gryphon Brigadier, North Path 1 WP'),
(@ENTRY2*100,10,-844.0977,2058.49,83.64579,'Honor Hold Gryphon Brigadier, North Path 1 WP'),
(@ENTRY2*100,11,-859.0389,2080.072,95.78463,'Honor Hold Gryphon Brigadier, North Path 1 WP'),
(@ENTRY2*100,12,-883.3383,2095.611,107.5624,'Honor Hold Gryphon Brigadier, North Path 1 WP'),
-- Honor Hold Gryphon Brigadier, North Path 2
((@ENTRY2*100)+1,1,-739.3298,1922.589,100.9578,'Honor Hold Gryphon Brigadier, North Path 2 WP'),
((@ENTRY2*100)+1,2,-738.3353,1922.693,100.9578,'Honor Hold Gryphon Brigadier, North Path 2 WP'),
((@ENTRY2*100)+1,3,-750.1168,1929.094,99.47905,'Honor Hold Gryphon Brigadier, North Path 2 WP'),
((@ENTRY2*100)+1,4,-773.3017,1941.179,99.47905,'Honor Hold Gryphon Brigadier, North Path 2 WP'),
((@ENTRY2*100)+1,5,-792.3573,1953.981,99.47905,'Honor Hold Gryphon Brigadier, North Path 2 WP'),
((@ENTRY2*100)+1,6,-812.7388,1993.078,78.95126,'Honor Hold Gryphon Brigadier, North Path 2 WP'),
((@ENTRY2*100)+1,7,-823.2512,2008.549,73.36794,'Honor Hold Gryphon Brigadier, North Path 2 WP'),
((@ENTRY2*100)+1,8,-823.4645,2030.833,73.17354,'Honor Hold Gryphon Brigadier, North Path 2 WP'),
((@ENTRY2*100)+1,9,-812.5039,2051.152,80.61793,'Honor Hold Gryphon Brigadier, North Path 2 WP'),
((@ENTRY2*100)+1,10,-775.5078,2066.004,83.64579,'Honor Hold Gryphon Brigadier, North Path 2 WP'),
((@ENTRY2*100)+1,11,-728.4387,2072.975,87.72904,'Honor Hold Gryphon Brigadier, North Path 2 WP'),
-- Honor Hold Gryphon Brigadier, North Path 3
((@ENTRY2*100)+2,1,-739.3298,1922.589,100.9578,'Honor Hold Gryphon Brigadier, North Path 3 WP'),
((@ENTRY2*100)+2,2,-738.3353,1922.693,100.9578,'Honor Hold Gryphon Brigadier, North Path 3 WP'),
((@ENTRY2*100)+2,3,-750.1168,1929.094,99.47905,'Honor Hold Gryphon Brigadier, North Path 3 WP'),
((@ENTRY2*100)+2,4,-773.3017,1941.179,99.47905,'Honor Hold Gryphon Brigadier, North Path 3 WP'),
((@ENTRY2*100)+2,5,-798.551,1950.061,99.47905,'Honor Hold Gryphon Brigadier, North Path 3 WP'),
((@ENTRY2*100)+2,6,-822.979,1966.302,78.95126,'Honor Hold Gryphon Brigadier, North Path 3 WP'),
((@ENTRY2*100)+2,7,-829.1212,1999.823,73.36794,'Honor Hold Gryphon Brigadier, North Path 3 WP'),
((@ENTRY2*100)+2,8,-823.4645,2030.833,73.17354,'Honor Hold Gryphon Brigadier, North Path 3 WP'),
((@ENTRY2*100)+2,9,-822.0243,2049.509,80.61793,'Honor Hold Gryphon Brigadier, North Path 3 WP'),
((@ENTRY2*100)+2,10,-838.6264,2088.113,83.64579,'Honor Hold Gryphon Brigadier, North Path 3 WP'),
((@ENTRY2*100)+2,11,-857.7249,2123.352,87.72904,'Honor Hold Gryphon Brigadier, North Path 3 WP'),
((@ENTRY2*100)+2,12,-856.7349,2157.759,99.95123,'Honor Hold Gryphon Brigadier, North Path 3 WP'),
-- Honor Hold Gryphon Brigadier, North Path 4
((@ENTRY2*100)+3,1,-739.3298,1922.589,100.9578,'Honor Hold Gryphon Brigadier, North Path 4 WP'),
((@ENTRY2*100)+3,2,-738.3353,1922.693,100.9578,'Honor Hold Gryphon Brigadier, North Path 4 WP'),
((@ENTRY2*100)+3,3,-750.1168,1929.094,99.47905,'Honor Hold Gryphon Brigadier, North Path 4 WP'),
((@ENTRY2*100)+3,4,-773.3017,1941.179,99.47905,'Honor Hold Gryphon Brigadier, North Path 4 WP'),
((@ENTRY2*100)+3,5,-792.3573,1953.981,99.47905,'Honor Hold Gryphon Brigadier, North Path 4 WP'),
((@ENTRY2*100)+3,6,-812.7388,1993.078,78.95126,'Honor Hold Gryphon Brigadier, North Path 4 WP'),
((@ENTRY2*100)+3,7,-823.2512,2008.549,73.36794,'Honor Hold Gryphon Brigadier, North Path 4 WP'),
((@ENTRY2*100)+3,8,-823.4645,2030.833,73.17354,'Honor Hold Gryphon Brigadier, North Path 4 WP'),
((@ENTRY2*100)+3,9,-812.5039,2051.152,80.61793,'Honor Hold Gryphon Brigadier, North Path 4 WP'),
((@ENTRY2*100)+3,10,-838.6264,2088.113,83.64579,'Honor Hold Gryphon Brigadier, North Path 4 WP'),
((@ENTRY2*100)+3,11,-857.7249,2123.352,87.72904,'Honor Hold Gryphon Brigadier, North Path 4 WP'),
((@ENTRY2*100)+3,12,-891.1043,2149.23,87.72904,'Honor Hold Gryphon Brigadier, North Path 4 WP');

-- Honor Hold Gryphon Brigadier, Forge Pathing
DELETE FROM `waypoints` WHERE `entry` IN (@ENTRY3*100, (@ENTRY3*100)+1, (@ENTRY3*100)+2, (@ENTRY3*100)+3);
INSERT INTO `waypoints` (`entry`,`pointid`,`position_x`,`position_y`,`position_z`,`point_comment`) VALUES
-- Honor Hold Gryphon Brigadier, Forge Path 1
(@ENTRY3*100,1,-739.3298,1922.589,100.9578,'Honor Hold Gryphon Brigadier, Forge Path 1 WP'),
(@ENTRY3*100,2,-738.3353,1922.693,100.9578,'Honor Hold Gryphon Brigadier, Forge Path 1 WP'),
(@ENTRY3*100,3,-750.1168,1929.094,99.47905,'Honor Hold Gryphon Brigadier, Forge Path 1 WP'),
(@ENTRY3*100,4,-779.0291,1934.054,99.47905,'Honor Hold Gryphon Brigadier, Forge Path 1 WP'),
(@ENTRY3*100,5,-805.9227,1932.241,104.2291,'Honor Hold Gryphon Brigadier, Forge Path 1 WP'),
(@ENTRY3*100,6,-837.3495,1926.666,101.0902,'Honor Hold Gryphon Brigadier, Forge Path 1 WP'),
(@ENTRY3*100,7,-862.7343,1923.357,97.618,'Honor Hold Gryphon Brigadier, Forge Path 1 WP'),
(@ENTRY3*100,8,-897.9168,1921.757,99.59021,'Honor Hold Gryphon Brigadier, Forge Path 1 WP'),
(@ENTRY3*100,9,-914.8586,1930.438,97.67357,'Honor Hold Gryphon Brigadier, Forge Path 1 WP'),
(@ENTRY3*100,10,-932.5103,1940.806,109.0624,'Honor Hold Gryphon Brigadier, Forge Path 1 WP'),
(@ENTRY3*100,11,-945.1282,1950.602,122.7846,'Honor Hold Gryphon Brigadier, Forge Path 1 WP'),
(@ENTRY3*100,12,-966.2561,1954.868,135.8124,'Honor Hold Gryphon Brigadier, Forge Path 1 WP'),
(@ENTRY3*100,13,-993.241,1956.073,157.4512,'Honor Hold Gryphon Brigadier, Forge Path 1 WP'),
-- Honor Hold Gryphon Brigadier, Forge Path 2
((@ENTRY3*100)+1,1,-739.3298,1922.589,100.9578,'Honor Hold Gryphon Brigadier, Forge Path 2 WP'),
((@ENTRY3*100)+1,2,-738.3353,1922.693,100.9578,'Honor Hold Gryphon Brigadier, Forge Path 2 WP'),
((@ENTRY3*100)+1,3,-750.1168,1929.094,99.47905,'Honor Hold Gryphon Brigadier, Forge Path 2 WP'),
((@ENTRY3*100)+1,4,-780.6625,1927.177,99.47905,'Honor Hold Gryphon Brigadier, Forge Path 2 WP'),
((@ENTRY3*100)+1,5,-811.2864,1921.429,104.2291,'Honor Hold Gryphon Brigadier, Forge Path 2 WP'),
((@ENTRY3*100)+1,6,-834.9781,1920.712,101.0902,'Honor Hold Gryphon Brigadier, Forge Path 2 WP'),
((@ENTRY3*100)+1,7,-866.0516,1916.696,97.618,'Honor Hold Gryphon Brigadier, Forge Path 2 WP'),
((@ENTRY3*100)+1,8,-895.7596,1922.273,99.59021,'Honor Hold Gryphon Brigadier, Forge Path 2 WP'),
((@ENTRY3*100)+1,9,-923.1928,1916.771,97.67357,'Honor Hold Gryphon Brigadier, Forge Path 2 WP'),
((@ENTRY3*100)+1,10,-948.4045,1901.38,98.9791,'Honor Hold Gryphon Brigadier, Forge Path 2 WP'),
((@ENTRY3*100)+1,11,-966.732,1893.369,110.0068,'Honor Hold Gryphon Brigadier, Forge Path 2 WP'),
((@ENTRY3*100)+1,12,-989.9695,1893.078,135.8124,'Honor Hold Gryphon Brigadier, Forge Path 2 WP'),
((@ENTRY3*100)+1,13,-1025.913,1875.034,164.979,'Honor Hold Gryphon Brigadier, Forge Path 2 WP'),
-- Honor Hold Gryphon Brigadier, Forge Path 3
((@ENTRY3*100)+2,1,-739.3298,1922.589,100.9578,'Honor Hold Gryphon Brigadier, Forge Path 3 WP'),
((@ENTRY3*100)+2,2,-738.3353,1922.693,100.9578,'Honor Hold Gryphon Brigadier, Forge Path 3 WP'),
((@ENTRY3*100)+2,3,-750.1168,1929.094,99.47905,'Honor Hold Gryphon Brigadier, Forge Path 3 WP'),
((@ENTRY3*100)+2,4,-773.3017,1941.179,99.47905,'Honor Hold Gryphon Brigadier, Forge Path 3 WP'),
((@ENTRY3*100)+2,5,-799.0213,1938.265,104.2291,'Honor Hold Gryphon Brigadier, Forge Path 3 WP'),
((@ENTRY3*100)+2,6,-821.9453,1929.91,101.0902,'Honor Hold Gryphon Brigadier, Forge Path 3 WP'),
((@ENTRY3*100)+2,7,-847.0975,1925.127,97.618,'Honor Hold Gryphon Brigadier, Forge Path 3 WP'),
((@ENTRY3*100)+2,8,-884.1627,1919.391,99.59021,'Honor Hold Gryphon Brigadier, Forge Path 3 WP'),
((@ENTRY3*100)+2,9,-910.0975,1918.052,97.67357,'Honor Hold Gryphon Brigadier, Forge Path 3 WP'),
((@ENTRY3*100)+2,10,-931.7395,1901.312,98.9791,'Honor Hold Gryphon Brigadier, Forge Path 3 WP'),
((@ENTRY3*100)+2,11,-938.8629,1883.565,110.0068,'Honor Hold Gryphon Brigadier, Forge Path 3 WP'),
((@ENTRY3*100)+2,12,-948.2704,1857.24,135.8124,'Honor Hold Gryphon Brigadier, Forge Path 3 WP'),
-- Honor Hold Gryphon Brigadier, Forge Path 4
((@ENTRY3*100)+3,1,-739.3298,1922.589,100.9578,'Honor Hold Gryphon Brigadier, Forge Path 4 WP'),
((@ENTRY3*100)+3,2,-738.3353,1922.693,100.9578,'Honor Hold Gryphon Brigadier, Forge Path 4 WP'),
((@ENTRY3*100)+3,3,-750.1168,1929.094,99.47905,'Honor Hold Gryphon Brigadier, Forge Path 4 WP'),
((@ENTRY3*100)+3,4,-773.3017,1941.179,99.47905,'Honor Hold Gryphon Brigadier, Forge Path 4 WP'),
((@ENTRY3*100)+3,5,-799.0213,1938.265,104.2291,'Honor Hold Gryphon Brigadier, Forge Path 4 WP'),
((@ENTRY3*100)+3,6,-821.9453,1929.91,101.0902,'Honor Hold Gryphon Brigadier, Forge Path 4 WP'),
((@ENTRY3*100)+3,7,-847.0975,1925.127,97.618,'Honor Hold Gryphon Brigadier, Forge Path 4 WP'),
((@ENTRY3*100)+3,8,-884.1627,1919.391,99.59021,'Honor Hold Gryphon Brigadier, Forge Path 4 WP'),
((@ENTRY3*100)+3,9,-898.5378,1920.82,97.67357,'Honor Hold Gryphon Brigadier, Forge Path 4 WP'),
((@ENTRY3*100)+3,10,-909.0667,1943.895,98.9791,'Honor Hold Gryphon Brigadier, Forge Path 4 WP'),
((@ENTRY3*100)+3,11,-882.7237,1983.156,110.0068,'Honor Hold Gryphon Brigadier, Forge Path 4 WP'),
((@ENTRY3*100)+3,12,-857.6995,1997.67,135.8124,'Honor Hold Gryphon Brigadier, Forge Path 4 WP'),
((@ENTRY3*100)+3,13,-834.7382,1999.236,151.1734,'Honor Hold Gryphon Brigadier, Forge Path 4 WP'),
((@ENTRY3*100)+3,14,-797.808,1990.238,154.7012,'Honor Hold Gryphon Brigadier, Forge Path 4 WP');

-- Honor Hold Gryphon Brigadier, Foothill Pathing
DELETE FROM `waypoints` WHERE `entry` IN (@ENTRY4*100, (@ENTRY4*100)+1, (@ENTRY4*100)+2);
INSERT INTO `waypoints` (`entry`,`pointid`,`position_x`,`position_y`,`position_z`,`point_comment`) VALUES
-- Honor Hold Gryphon Brigadier, Foothill Path 1
(@ENTRY4*100,1,-739.3298,1922.589,100.9578,'Honor Hold Gryphon Brigadier, Foothill Path 1 WP 1'),
(@ENTRY4*100,2,-738.3353,1922.693,100.9578,'Honor Hold Gryphon Brigadier, Foothill Path 1 WP 2'),
(@ENTRY4*100,3,-750.1168,1929.094,115.7846,'Honor Hold Gryphon Brigadier, Foothill Path 1 WP 3'),
(@ENTRY4*100,4,-780.6038,1912.869,111.4513,'Honor Hold Gryphon Brigadier, Foothill Path 1 WP 4'),
(@ENTRY4*100,5,-812.3557,1903.761,119.8957,'Honor Hold Gryphon Brigadier, Foothill Path 1 WP 5'),
(@ENTRY4*100,6,-844.3373,1894.094,121.1179,'Honor Hold Gryphon Brigadier, Foothill Path 1 WP 6'),
(@ENTRY4*100,7,-875.8698,1888.307,134.0069,'Honor Hold Gryphon Brigadier, Foothill Path 1 WP 7'),
(@ENTRY4*100,8,-908.7481,1889.962,139.368,'Honor Hold Gryphon Brigadier, Foothill Path 1 WP 8'),
(@ENTRY4*100,9,-936.4296,1891.453,135.5625,'Honor Hold Gryphon Brigadier, Foothill Path 1 WP 9'),
(@ENTRY4*100,10,-956.9449,1888.206,129.8402,'Honor Hold Gryphon Brigadier, Foothill Path 1 WP 10'),
(@ENTRY4*100,11,-976.4232,1879.735,128.3126,'Honor Hold Gryphon Brigadier, Foothill Path 1 WP 11'),
(@ENTRY4*100,12,-999.7429,1861.678,156.9511,'Honor Hold Gryphon Brigadier, Foothill Path 1 WP 12'),
(@ENTRY4*100,13,-1019.369,1838.22,181.4233,'Honor Hold Gryphon Brigadier, Foothill Path 1 WP 13'),
(@ENTRY4*100,14,-1015.93,1818.592,198.4232,'Honor Hold Gryphon Brigadier, Foothill Path 1 WP 14'),
(@ENTRY4*100,15,-1003.392,1791.963,211.84,'Honor Hold Gryphon Brigadier, Foothill Path 1 WP 15'),
-- Honor Hold Gryphon Brigadier, Foothill Path 2
((@ENTRY4*100)+1,1,-739.3298,1922.589,100.9578,'Honor Hold Gryphon Brigadier, Foothill Path 2 WP 1'),
((@ENTRY4*100)+1,2,-738.3353,1922.693,100.9578,'Honor Hold Gryphon Brigadier, Foothill Path 2 WP 2'),
((@ENTRY4*100)+1,3,-750.1168,1929.094,115.7846,'Honor Hold Gryphon Brigadier, Foothill Path 2 WP 3'),
((@ENTRY4*100)+1,4,-780.6038,1912.869,111.4513,'Honor Hold Gryphon Brigadier, Foothill Path 2 WP 4'),
((@ENTRY4*100)+1,5,-812.3557,1903.761,119.8957,'Honor Hold Gryphon Brigadier, Foothill Path 2 WP 5'),
((@ENTRY4*100)+1,6,-844.3373,1894.094,121.1179,'Honor Hold Gryphon Brigadier, Foothill Path 2 WP 6'),
((@ENTRY4*100)+1,7,-875.8698,1888.307,134.0069,'Honor Hold Gryphon Brigadier, Foothill Path 2 WP 7'),
((@ENTRY4*100)+1,8,-905.6191,1885.849,139.368,'Honor Hold Gryphon Brigadier, Foothill Path 2 WP 8'),
((@ENTRY4*100)+1,9,-933.7491,1881.107,135.5625,'Honor Hold Gryphon Brigadier, Foothill Path 2 WP 9'),
((@ENTRY4*100)+1,10,-957.0587,1876.275,129.8402,'Honor Hold Gryphon Brigadier, Foothill Path 2 WP 10'),
((@ENTRY4*100)+1,11,-976.4232,1879.735,128.3126,'Honor Hold Gryphon Brigadier, Foothill Path 2 WP 11'),
((@ENTRY4*100)+1,12,-1001.597,1896.851,136.0901,'Honor Hold Gryphon Brigadier, Foothill Path 2 WP 12'),
((@ENTRY4*100)+1,13,-1026.942,1912.217,153.8956,'Honor Hold Gryphon Brigadier, Foothill Path 2 WP 13'),
((@ENTRY4*100)+1,14,-1046.058,1925.075,168.2844,'Honor Hold Gryphon Brigadier, Foothill Path 2 WP 14'),
((@ENTRY4*100)+1,15,-1065.902,1940.892,183.0622,'Honor Hold Gryphon Brigadier, Foothill Path 2 WP 15'),
-- Honor Hold Gryphon Brigadier, Foothill Path 3
((@ENTRY4*100)+2,1,-739.3298,1922.589,100.9578,'Honor Hold Gryphon Brigadier, Foothill Path 3 WP 1'),
((@ENTRY4*100)+2,2,-738.3353,1922.693,100.9578,'Honor Hold Gryphon Brigadier, Foothill Path 3 WP 2'),
((@ENTRY4*100)+2,3,-750.1168,1929.094,115.7846,'Honor Hold Gryphon Brigadier, Foothill Path 3 WP 3'),
((@ENTRY4*100)+2,4,-780.6038,1912.869,111.4513,'Honor Hold Gryphon Brigadier, Foothill Path 3 WP 4'),
((@ENTRY4*100)+2,5,-812.3557,1903.761,119.8957,'Honor Hold Gryphon Brigadier, Foothill Path 3 WP 5'),
((@ENTRY4*100)+2,6,-852.6487,1887.492,134.7291,'Honor Hold Gryphon Brigadier, Foothill Path 3 WP 6'),
((@ENTRY4*100)+2,7,-885.8631,1878.916,144.8403,'Honor Hold Gryphon Brigadier, Foothill Path 3 WP 7'),
((@ENTRY4*100)+2,8,-910.2131,1876.215,149.118,'Honor Hold Gryphon Brigadier, Foothill Path 3 WP 8'),
((@ENTRY4*100)+2,9,-933.7659,1874.894,145.9792,'Honor Hold Gryphon Brigadier, Foothill Path 3 WP 9'),
((@ENTRY4*100)+2,10,-957.0587,1876.275,129.8402,'Honor Hold Gryphon Brigadier, Foothill Path 3 WP 10'),
((@ENTRY4*100)+2,11,-976.4232,1879.735,128.3126,'Honor Hold Gryphon Brigadier, Foothill Path 3 WP 11'),
((@ENTRY4*100)+2,12,-1003.331,1901.21,136.0901,'Honor Hold Gryphon Brigadier, Foothill Path 3 WP 12'),
((@ENTRY4*100)+2,13,-1019.146,1920.588,153.8956,'Honor Hold Gryphon Brigadier, Foothill Path 3 WP 13'),
((@ENTRY4*100)+2,14,-1035.73,1937.606,168.2844,'Honor Hold Gryphon Brigadier, Foothill Path 3 WP 14'),
((@ENTRY4*100)+2,15,-1055.794,1959.019,183.0622,'Honor Hold Gryphon Brigadier, Foothill Path 3 WP 15');
-- Pathing for Ol' Sooty Entry: 1225
SET @NPC := 8392;
SET @PATH := @NPC;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=-5679.014160,`position_y`=-3185.046875,`position_z`=319.508057 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,-5716.181152,-3110.810791,316.686523,0,0,0,100,0),
(@PATH,2,-5716.187012,-3093.080078,325.600677,0,0,0,100,0),
(@PATH,3,-5712.214355,-3090.297607,327.738647,0,0,0,100,0),
(@PATH,4,-5705.484375,-3092.523438,329.362366,0,0,0,100,0),
(@PATH,5,-5681.826660,-3110.568848,338.121887,0,0,0,100,0),
(@PATH,6,-5659.498535,-3122.215576,344.336151,0,0,0,100,0),
(@PATH,7,-5639.585938,-3124.536133,348.404938,0,0,0,100,0),
(@PATH,8,-5618.112793,-3110.905762,360.618225,0,0,0,100,0),
(@PATH,9,-5621.486816,-3096.315918,368.247772,0,0,0,100,0),
(@PATH,10,-5632.212891,-3078.608398,374.990936,0,0,0,100,0),
(@PATH,11,-5629.793457,-3056.124023,384.465576,0,0,0,100,0),
(@PATH,12,-5642.278809,-3036.872314,385.471649,0,0,0,100,0),
(@PATH,13,-5609.369141,-3006.883301,386.288177,0,0,0,100,0),
(@PATH,14,-5643.634277,-3036.388672,385.531891,0,0,0,100,0),
(@PATH,15,-5630.174805,-3057.015869,384.385712,0,0,0,100,0),
(@PATH,16,-5629.840332,-3065.496338,381.129578,0,0,0,100,0),
(@PATH,17,-5634.866211,-3078.448975,374.489044,0,0,0,100,0),
(@PATH,18,-5620.416504,-3101.081543,364.819855,0,0,0,100,0),
(@PATH,19,-5624.629395,-3117.040527,354.493805,0,0,0,100,0),
(@PATH,20,-5644.949707,-3125.081787,347.271362,0,0,0,100,0),
(@PATH,21,-5660.741699,-3121.580566,343.975922,0,0,0,100,0),
(@PATH,22,-5676.210938,-3111.586914,340.021484,0,0,0,100,0),
(@PATH,23,-5691.895508,-3102.994385,333.646698,0,0,0,100,0),
(@PATH,24,-5711.662109,-3088.433594,328.761566,0,0,0,100,0),
(@PATH,25,-5717.663574,-3099.033691,321.686920,0,0,0,100,0),
(@PATH,26,-5705.214844,-3132.324219,315.837585,0,0,0,100,0),
(@PATH,27,-5679.014160,-3185.046875,319.508057,0,0,0,100,0);
-- Thargold Ironwing SAI
SET @ENTRY  := 29154;
SET @GOSSIP := 9776;
UPDATE `creature_template` SET `AIName`= 'SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,62,0,100,0,@GOSSIP,0,0,0,11,53335,1,0,0,0,0,7,0,0,0,0,0,0,0, 'Thargold Ironwing - On gossip option select - cast spell'),
(@ENTRY,0,1,0,61,0,100,0,0,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0, 'Thargold Ironwing - On gossip option select - close gossip');
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` IN (10062,10063,10054,10055,10046,10047,10048,10049,10050,10051,10044,10045);
INSERT INTO `achievement_criteria_data` (`criteria_id`,`type`,`value1`,`value2`,`ScriptName`) VALUES
(10062,12,0,0, 'achievement_quick_shave'),
(10063,12,1,0, 'achievement_quick_shave'),
(10044,12,0,0, 'achievement_unbroken'),
(10045,12,1,0, 'achievement_unbroken'),
(10054,12,0,0, 'achievement_shutout'),
(10055,12,1,0, 'achievement_shutout'),
(10046,12,0,0, 'achievement_three_car_garage_chopper'),
(10047,12,0,0, 'achievement_three_car_garage_siege'),
(10048,12,0,0, 'achievement_three_car_garage_demolisher'),
(10049,12,1,0, 'achievement_three_car_garage_chopper'),
(10050,12,1,0, 'achievement_three_car_garage_siege'),
(10051,12,1,0, 'achievement_three_car_garage_demolisher'),
(10062,11,0,0, 'achievement_quick_shave'),
(10063,11,0,0, 'achievement_quick_shave'),
(10044,11,0,0, 'achievement_unbroken'),
(10045,11,0,0, 'achievement_unbroken'),
(10054,11,0,0, 'achievement_shutout'),
(10055,11,0,0, 'achievement_shutout'),
(10046,11,0,0, 'achievement_three_car_garage_chopper'),
(10047,11,0,0, 'achievement_three_car_garage_siege'),
(10048,11,0,0, 'achievement_three_car_garage_demolisher'),
(10049,11,0,0, 'achievement_three_car_garage_chopper'),
(10050,11,0,0, 'achievement_three_car_garage_siege'),
(10051,11,0,0, 'achievement_three_car_garage_demolisher');
DELETE FROM `creature_text` WHERE `entry` IN (32295,28859);
INSERT INTO `creature_text` (entry,groupid,id,text,type,language,sound,comment) VALUE
(28859,0,0,'My patience has reached its limit, I will be rid of you!',1,0,14517,'Malygos - Aggro (Phase 1)'),
(28859,1,0,'Your stupidity has finally caught up to you',1,0,14519,'Malygos - Killed Player (1) (Phase 1)'),
(28859,1,1,'More artifacts to confiscate...',1,0,14520,'Malygos - Killed Player (2) (Phase 1)'),
(28859,1,2,'<Laughs> How very... naive...',1,0,14521,'Malygos - Killed Player (3) (Phase 1)'),
(28859,2,0,'I had hoped to end your lives quickly, but you have proven more... resilient then I had anticipated. Nonetheless, your efforts are in vain, it is you reckless, careless mortals who are to blame for this war! I do what I must... And if it means your... extinction... THEN SO BE IT',1,0,14522,'Malygos - End Phase One'),
(28859,3,0,'Few have experienced the pain I will now inflict upon you!',1,0,14523,'Malygos - Aggro (Phase 2)'),
(28859,4,0,'I will teach you IGNORANT children just how little you know of magic...',1,0,14524,'Malygos - Anti-Magic Shell'),
(28859,5,0,'Watch helplessly as your hopes are swept away...',1,0,14525,'Malygos - Magic Blast'),
(28859,6,0,'Your energy will be put to good use!',1,0,14526,'Malygos - Killed Player 1 (Phase 2)'),
(28859,6,1,'I am the spell-weaver! My power is infinite!',1,0,14527,'Malygos - Killed Player 2 (Phase 2)'),
(28859,6,2,'Your spirit will linger here forever!',1,0,14528,'Malygos - Killed Player 3 (Phase 2)'),
(28859,7,0,'ENOUGH! If you intend to reclaim Azeroth''s magic, then you shall have it...',1,0,14529,'Malygos - End Phase 2'),
(28859,8,0,'Now your benefactors make their appearance... But they are too late. The powers contained here are sufficient to destroy the world ten times over! What do you think they will do to you?',1,0,14530,'Intro Phase 3'),
(28859,9,0,'SUBMIT!',1,0,14531,'Malygos - Aggro (Phase 3)'),
(28859,10,0,'The powers at work here exceed anything you could possibly imagine!',1,0,14532,'Malygos - Surge of Power'),
(28859,11,0,'I AM UNSTOPPABLE!',1,0,14533,'Malygos - Buffed by a spark'),
(28859,12,0,'Alexstrasza! Another of your brood falls!',1,0,14534,'Malygos - Killed Player 1 (Phase 3)'),
(28859,12,1,'Little more then gnats!',1,0,14535,'Malygos - Killed Player 2 (Phase 3)'),
(28859,12,2,'Your red allies will share your fate...',1,0,14536,'Malygos - Killed Player 3 (Phase 3)'),
(28859,13,0,'Still standing? Not for long...',1,0,14537,'Malygos - Spell Casting 1(Phase 3)'),
(28859,13,1,'Your cause is lost',1,0,14538,'Malygos - Spell Casting 2 (Phase 3)'),
(28859,13,2,'Your fragile mind will be shattered!',1,0,14539,'Malygos - Spell Casting 3 (Phase 3)'),
(28859,14,0,'Unthinkable! The mortals will destroy... everything... my sister... what have you...',1,0,0,'Malygos - Death'),
(32295,0,0,'I did what I had to, brother. You gave me no alternative.',1,0,0,'Alexstrasza - Yell One'),
(32295,1,0,'And so ends the Nexus War.',1,0,0,'Alexstrasza - Yell Two'),
(32295,2,0,'This resolution pains me deeply, but the destruction, the monumental loss of life had to end. Regardless of Malygos'' recent transgressions, I will mourn his loss. He was once a guardian, a protector. This day, one of the world''s mightiest has fallen.',1,0,0,'Alexstrasza - Yell Three'),
(32295,3,0,'The red dragonflight will take on the burden of mending the devastation wrought on Azeroth. Return home to your people and rest. Tomorrow will bring you new challenges, and you must be ready to face them. Life... goes on.',1,0,0,'Alexstrasza - Yell Four');
-- Scripts for Nexus Lord and Scion of Eternity
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry` IN (30249,30245);
DELETE FROM `smart_scripts` WHERE (`entryorguid`=30249 AND `source_type`=0);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(30249, 0, 0, 0, 0, 0, 100, 6, 3000, 5000, 4000, 6000, 11, 56397, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 'Scion of Eternity - Cast Arcane Barrage (Random)'),
(30249, 0, 1, 0, 7, 0, 100, 6, 1, 0, 0, 0, 41, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Scion of Eternity - Despawn in EvadeMode');
DELETE FROM `smart_scripts` WHERE (`entryorguid`=30245 AND `source_type`=0);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(30245, 0, 0, 0, 0, 0, 100, 6, 7000, 10000, 10000, 15000, 11, 57060, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Nexus Lord - Cast Haste (Self)'),
(30245, 0, 1, 0, 0, 0, 100, 6, 5000, 8000, 9000, 12000, 11, 57058, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Nexus Lord - Cast Arcane Shock (Random)'),
(30245, 0, 2, 0, 7, 0, 100, 6, 0, 0, 0, 0, 41, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Nexus Lord - Despawn in EvadeMode');
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` IN (10062,10063,10054,10055,10046,10047,10048,10049,10050,10051,10044,10045) AND `type`!=11;
INSERT INTO `achievement_criteria_data` (`criteria_id`,`type`,`value1`,`value2`,`ScriptName`) VALUES
(10062,12,0,0, ''),
(10063,12,1,0, ''),
(10044,12,0,0, ''),
(10045,12,1,0, ''),
(10054,12,0,0, ''),
(10055,12,1,0, ''),
(10046,12,0,0, ''),
(10047,12,0,0, ''),
(10048,12,0,0, ''),
(10049,12,1,0, ''),
(10050,12,1,0, ''),
(10051,12,1,0, '');
SET @CGuid = 208901; -- (Set by TDB team - creature.guid - need X)
SET @GGuid = 151829; -- (Set by TDB team - gameobject.guid - need X)
SET @EquiEntry = 2433; -- (Set by TDB team - creature_equip_template.entry - need X)
SET @Gossip = 21257; -- (Set by TDB team - gossip_menu.entry - need 1)
SET @Event = 61; -- (Set by TDB team - game_event.entry - need 1)
-- Creature enums
SET @N_Vanira = 40184; -- Vanira
SET @N_VaniraTotem = 40187; -- Vanira's Sentry Totem
SET @N_Frog = 40176; -- Sen'jin Frog
SET @N_AtunnedFrog = 40188; -- Atunned Frog
SET @N_Voljin = 40391; -- Vol'jin
SET @N_Uruzin = 40253; -- Champion Uru'zin
SET @N_VoljinBoss = 39654; -- Vol'jin (on the island, starts fight)
SET @N_BatHandler = 40204; -- Handler Marnlek
SET @N_Bat = 40222; -- Scout Bat
SET @N_SpyFrogCredit = 40218; -- Spy Frog Credit
SET @N_TigerCredit = 40301; -- Tiger Matriarch Credit
SET @N_TigerSpirit = 40305; -- Spirit of the Tiger
SET @N_Matriarch = 40312; -- Tiger Matriarch (casts 75163 (Vicious Bite), 61184 (Pounce), 75159 (Claw))
SET @N_Zentabra = 40329; -- Zen'tabra
SET @N_DWarrior = 40392; -- Darkspear Warrior
SET @N_DScout = 40416; -- Darkspear Scout
SET @N_Citizien1 = 40256; -- Troll Citizien (1)
SET @N_Citizien2 = 40257; -- Troll Citizien (2)
SET @N_Volunteer1 = 40260; -- Troll Volunteer
SET @N_Volunteer2 = 40264; -- Troll Volunteer
SET @N_RDancer = 40356; -- Ritual Dancer
SET @N_TDanceleader = 40361; -- Troll Dance Leader
SET @N_DancePart = 40363; -- Dance Participant
SET @N_RDrummer = 40373; -- Ritual Drummer
SET @N_Omen = 40387; -- Omen Event Credit
SET @N_DAncestor = 40388; -- Darkspear Ancestor
SET @N_Voice = 40374; -- Voice of the Spirits
SET @N_Doctor = 40352; -- Witch Doctor Hez'tok
-- Gameobject enums
SET @G_BatTotem = 202833; -- Sen'jin Bat Totem
SET @G_BatStraw = 202834; -- Sen'jin Bat Roost Straw
SET @G_BatFence = 202835; -- Sen'jin Bat Roost Fence
SET @G_BatPost = 202839; -- Sen'jin Bat Roost Fence Post
SET @G_RDrum = 202879; -- Ritual Drum
SET @G_RGong = 202880; -- Ritual Gong
SET @G_RBrazier = 202881; -- Ritual Brazier
SET @G_SRDrum = 202882; -- Small Ritual Drum
SET @G_SRDrum2 = 202883; -- Small Ritual Drum 2
SET @G_Banner = 202885; -- Sen'jin Banner
SET @G_Tent = 202886; -- Sen'jin Tent
SET @G_Table = 202888; -- Sen'jin Table
SET @G_Book1 = 202889; -- Troll Book 1
SET @G_Book2 = 202890; -- Troll Book 2
SET @G_CCrate = 202891; -- Closed Weapon Crate
SET @G_OCrate = 202892; -- Open Weapon Crate
SET @G_SPennant = 202893; -- Sen'jin Pennant
-- Quest enums
SET @Q_DaPerfectSpies = 25444; -- Da Perfect Spies
SET @Q_FrogsAway = 25446; -- Frogs Away!
SET @Q_LadyOfDaTigers = 25470; -- Lady Of Da Tigers
SET @Q_DanceOfDeSpirits = 25480; -- Dance Of De Spirits
SET @Q_TrollinForVolunteers = 25461; -- Trollin' For Volunteers
SET @Q_PreparinForBattle = 25495; -- Preparin For Battle
SET @Q_ZalazanesFall = 25445; -- Zalazane's Fall
-- Spell enums
SET @S_Pickup = 74904; -- Pickup Sen'jin Frog [player -> creature]
SET @S_Pickup2 = 74905; -- Pickup Sen'jin Frog [creature -> player]
SET @S_InvsAura = 75433; -- Spawn Invisibility Aura (QZS 2)
SET @S_FrogsAway = 74977; -- Frogs Away!
SET @S_SeeSenjinFrogInvs = 75434; -- See Sen'jin Frog Invis
SET @S_SeeSpyFrogInvs =74982; -- See Spy Frog Invisibility
SET @S_Taxi_Frog = 74978; -- Echo Isles: Unlearned Spy Frog Taxi
SET @S_Taxi_Troll = 75421; -- Echo Isles: Unlearned Troll Recruit Taxi
SET @S_Taxi_Battle = 75422; -- Echo Isles: Unlearned Troll Battle Taxi
SET @S_SpyFrogInvs = 74980; -- Spy Frog Invisibility
SET @S_SmokeFlare = 74971; -- Red Flare State
SET @S_VisualSpawn = 31517; -- Bind Visual Spawn In DND
SET @S_SpyFrogState = 74917; -- Spy Frog State
SET @S_RideVehicle = 46598; -- Ride Vehicle Hardcoded
SET @S_Tiger = 75147; -- Spirit of the Tiger
SET @S_ForceTiger = 75186; -- Force Cast Spirit of the Tiger
SET @S_NatVisual = 60957; -- Cosmetic Nature Cast
SET @S_TigerAura = 75165; -- Spirit of the Tiger Aura
SET @S_TigerSeeInvs = 75180; -- Detect QZS 3
SET @S_TigerGhost = 22650; -- Ghost Visual
SET @S_BossEmotePAura =75213; -- Boss Emote & No Summon Aura
SET @S_TigerCredit = 40301; -- OCW TOTE On Quest Check (what?)
SET @S_MatriarchShroud = 75179; -- Matriarch's Shroud
SET @S_TigerQuestCredit = 75197; -- Zen'tabra Credit
SET @S_MatriarchSummonF = 75188; -- Force Cast Summon Tiger Matriarch
SET @S_MatriarchSummon = 75187; -- Summon Tiger Matriarch
SET @S_ZentabraSummon = 75181; -- Summon Zen'tabra
SET @S_ZentabraController = 75212; -- Controller Summon Zen'tabra Trigger
SET @S_ZentrabaSmoke = 36747; -- Spawn Smoke (Druid)
SET @S_ZentrabaTransform = 74931; -- [DND] Tiger Transform
SET @S_VolunterSummon1 = 75088; -- Motivate
SET @S_VolunterSummon2 = 75086; -- Motivate
-- Item enums
SET @I_VoljinDrums = 54215; -- Voljin Drums Questitem
UPDATE `creature_template` SET `spell1`=75159,`spell2`=75160,`spell3`=75161,`faction_A`=35,`faction_H`=35,`exp`=2,`minlevel`=80,`maxlevel`=80,`baseattacktime`=2500,`unit_flags`=`unit_flags`|16777224,`unit_class`=4,`speed_walk`=2.8,`speed_run`=1.5714285714286,`vehicleid`=736,`attackpower`=1167 WHERE `entry`=@N_TigerSpirit; -- Spirit of the Tiger CHECKME: speed_run and speed_walk
DELETE FROM `npc_spellclick_spells` WHERE `npc_entry` IN (@N_Frog,@N_TigerSpirit);
INSERT INTO `npc_spellclick_spells` (`npc_entry`,`spell_id`,`quest_start`,`quest_start_active`,`quest_end`,`cast_flags`,`aura_required`,`aura_forbidden`,`user_type`) VALUES
(@N_Frog,@S_Pickup,@Q_DaPerfectSpies,1,@Q_DaPerfectSpies,1,0,0,0),
(@N_Frog,@S_Pickup2,@Q_DaPerfectSpies,1,@Q_DaPerfectSpies,3,0,0,0),
(@N_TigerSpirit,@S_RideVehicle,0,0,0,1,0,0,0); -- Spirit of the Tiger - Ride Vehicle Hardcoded
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (@N_Frog,@N_AtunnedFrog,@N_Vanira,@N_Zentabra,@N_DScout,@N_Citizien1,@N_Citizien2,@N_Doctor,@N_DancePart,@N_RDrummer) AND `source_type`=0;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (@N_Vanira*100,@N_Zentabra*100,@N_DScout*100,@N_Doctor*100) AND `source_type`=9;
INSERT INTO `smart_scripts`(`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`)VALUES
(@N_Frog,0,0,0,8,0,100,0,@S_Pickup,0,0,0,41,1,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Echo Isles: Senjin Frog - add aura'),
(@N_AtunnedFrog,0,0,0,54,0,100,0,0,0,0,0,33,@N_SpyFrogCredit,0,0,0,0,0,0,0,0,0,0,0,0,0, 'Echo Isles: Spy Frog Killcredit'), -- FIXME: should be replaced by proper flare targeting
(@N_AtunnedFrog,0,1,0,25,0,100,0,0,0,0,0,89,5,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Attuned Frog: On reset set random movement'),
(@N_Vanira,0,0,0,19,0,100,0,@Q_LadyOfDaTigers,0,0,0,80,@N_Vanira*100,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Echo Isles: On quest accept run script'),
(@N_Vanira*100,9,0,0,0,0,100,0,0,0,0,0,11,@S_ForceTiger,0,0,0,0,0,7,0,0,0,0,0,0,0,'Echo Isles: Cast Force Tiger on player'),
(@N_Vanira*100,9,1,0,0,0,100,0,0,0,0,0,11,@S_NatVisual,0,0,0,0,0,1,0,0,0,0,0,0,0,'Echo Isles: Cast Nature Visual on self'),
(@N_Vanira*100,9,2,0,0,0,100,0,0,0,0,0,1,0,0,0,0,0,0,7,0,0,0,0,0,0,0,'Echo Isles: Say Text 0'),
(@N_Vanira*100,9,3,0,0,0,100,0,500,500,0,0,86,75165,0,22,0,0,0,1,0,0,0,0,0,0,0,'Echo Isles: Force Tiger cast 75165 on self'),
(@N_Zentabra,0,0,0,25,0,100,0,0,0,0,0,80,@N_Zentabra*100,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Call actionlist on spawn'),
(@N_Zentabra*100,9,0,0,0,0,100,0,0,0,0,0,66,0,0,0,0,0,0,23,0,0,0,0,0,0,0, 'Set orientation to player'),
(@N_Zentabra*100,9,1,0,0,0,100,0,0,0,0,0,11,@S_ZentrabaSmoke,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Cast spawn smoke effect on self'),
(@N_Zentabra*100,9,2,0,0,0,100,0,1000,1000,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Say text 0'),
(@N_Zentabra*100,9,3,0,0,0,100,0,1500,1500,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Say text 1'),
(@N_Zentabra*100,9,4,0,0,0,100,0,5500,5500,0,0,1,2,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Say text 2'),
(@N_Zentabra*100,9,5,0,0,0,100,0,5500,5500,0,0,1,3,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Say text 3'),
(@N_Zentabra*100,9,6,0,0,0,100,0,5500,5500,0,0,1,4,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Say text 4'),
(@N_Zentabra*100,9,7,0,0,0,100,0,0,0,0,0,33,@N_TigerCredit,0,0,0,0,0,23,0,0,0,0,0,0,0, 'Award kill credit to player'),
(@N_Zentabra*100,9,8,0,0,0,100,0,5500,5500,0,0,11,@S_ZentrabaTransform,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Cast tiger transform on self'),
(@N_Zentabra*100,9,9,0,0,0,100,0,100,100,0,0,59,1,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Set run on self'),
(@N_Zentabra*100,9,10,0,0,0,100,0,0,0,0,0,46,10,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Move self forward 10 yards'),
(@N_Zentabra*100,9,11,0,0,0,100,0,600,600,0,0,41,1,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Despawn self'),
(@N_DScout,0,0,0,25,0,100,0,0,0,0,0,53,1,@N_DScout,0,0,0,0,1,0,0,0,0,0,0,0, 'Darkspear Scout: Start waypath on spawn'),
(@N_DScout,0,1,0,40,0,100,0,1,@N_DScout,0,0,60,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Darkspear Scout: Set fly = 0 on waypoint 1'),
(@N_DScout,0,2,0,40,0,100,0,1,@N_DScout,0,0,59,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Darkspear Scout: Set run = 0 on waypoint 1'),
(@N_DScout,0,3,0,40,0,100,0,1,@N_DScout,0,0,43,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Darkspear Scout: Unmount on waypoint 1'),
(@N_DScout,0,4,0,40,0,100,0,6,@N_DScout,0,0,54,15000,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Darkspear Scout: Pause waypoint on waypoint 6'),
(@N_DScout,0,5,0,40,0,100,0,6,@N_DScout,0,0,66,0,0,0,0,0,0,1,0,0,0,0,0,0,0.820305, 'Darkspear Scout: Change orientation on waypoint 6'),
(@N_DScout,0,6,0,40,0,100,0,6,@N_DScout,0,0,80,@N_DScout*100,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Darkspear Scout: Run script on waypoint 6'),
(@N_DScout,0,7,0,40,0,100,0,9,@N_DScout,0,0,41,500,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Darkspear Scout: Despawn on waypoint 9'),
(@N_DScout*100,9,0,0,0,0,100,0,0,0,0,0,10,1,2,5,66,0,0,1,0,0,0,0,0,0,0, 'Darkspear Scout: Random emote 1,2,5,66'),
(@N_DScout*100,9,1,0,0,0,50,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Darkspear Scout: Random text'),
(@N_DScout*100,9,2,0,0,0,50,0,1000,1000,0,0,1,0,0,0,0,0,0,9,@N_Voljin,0,15,0,0,0,0, 'Vol''Jin: Reply to Darkspear Scout'),
(@N_DScout*100,9,3,0,0,0,100,0,2000,2000,0,0,10,1,2,5,66,0,0,1,0,0,0,0,0,0,0, 'Darkspear Scout: Random emote 1,2,5,66'),
(@N_DScout*100,9,4,0,0,0,100,0,6000,6000,0,0,10,1,2,5,66,0,0,1,0,0,0,0,0,0,0, 'Darkspear Scout: Random emote 1,2,5,66'),
(@N_Citizien1,0,0,0,8,0,100,0,@S_VolunterSummon1,0,0,0,41,1000,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Echo Isles: On spellhit - force despawn'),
(@N_Citizien2,0,0,0,8,0,100,0,@S_VolunterSummon2,0,0,0,41,1000,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Echo Isles: On spellhit - force despawn'),
(@N_Doctor, 0,0,0,62,0,0,0,@Gossip+0,0,0,0,80,@N_Doctor*100,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Witch Doctor Hez''tok - On gossip select start script'),
(@N_Doctor*100,9,0,0,0,0,100,0,0,0,0,0,83,1,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Witch Doctor Hez''tok - Remove gossip flag'),
(@N_Doctor*100,9,1,0,0,0,100,0,1500,1500,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Witch Doctor Hez''tok - Say text 0'),
(@N_Doctor*100,9,2,0,0,0,100,0,1000,1000,0,0,12,@N_RDrummer,1,50000,0,0,0,8,0,0,0,-812.137,-4986.7,17.3759,5.89921, 'Witch Doctor Hez''tok - Summon Ritual Drummer (1)'),
(@N_Doctor*100,9,3,0,0,0,100,0,0,0,0,0,12,@N_RDrummer,1,50000,0,0,0,8,0,0,0,-798.187,-4985.52,17.7904,4.41568, 'Witch Doctor Hez''tok - Summon Ritual Drummer (2)'),
(@N_Doctor*100,9,4,0,0,0,100,0,0,0,0,0,12,@N_RDrummer,1,50000,0,0,0,8,0,0,0,-799.888,-4975.01,17.9325,0.942478, 'Witch Doctor Hez''tok - Summon Ritual Drummer (3)'),
(@N_Doctor*100,9,5,0,0,0,100,0,3500,3500,0,0,69,0,0,0,0,0,0,8,0,0,0,-806.2,-4989.5,17.5177,0, 'Witch Doctor Hez''tok - Move to pos'),
(@N_Doctor*100,9,6,0,0,0,100,0,6500,6500,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Witch Doctor Hez''tok - Say text 1'),
(@N_Doctor*100,9,7,0,0,0,100,0,5500,5500,0,0,1,2,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Witch Doctor Hez''tok - Say text 2'),
(@N_Doctor*100,9,8,0,0,0,100,0,3500,3500,0,0,5,25,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Witch Doctor Hez''tok - Do emote'),
(@N_Doctor*100,9,9,0,0,0,100,0,3500,3500,0,0,1,3,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Witch Doctor Hez''tok - Say text 3'),
(@N_Doctor*100,9,10,0,0,0,100,0,2500,2500,0,0,5,6,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Witch Doctor Hez''tok - Do emote'),
(@N_Doctor*100,9,11,0,0,0,100,0,5000,5000,0,0,11,56745,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Witch Doctor Hez''tok - Cast Drink Alcohol self'),
(@N_Doctor*100,9,12,0,0,0,100,0,600,600,0,0,11,29389,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Witch Doctor Hez''tok - Cast Firebreathing self'),
(@N_Doctor*100,9,13,0,0,0,100,0,4000,4000,0,0,90,8,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Witch Doctor Hez''tok - Set bytes1 kneel state'),
(@N_Doctor*100,9,14,0,0,0,100,0,1000,1000,0,0,12,@N_DancePart,1,40000,0,0,0,8,0,0,0,-805.8477,-5003.044,20.18328,5.89921, 'Witch Doctor Hez''tok - Summon Dance Participant (1)'),
(@N_Doctor*100,9,15,0,0,0,100,0,0,0,0,0,12,@N_DancePart,1,40000,0,0,0,8,0,0,0,-801.0605,-4998.501,18.59358,4.41568, 'Witch Doctor Hez''tok - Summon Dance Participant (2)'),
(@N_Doctor*100,9,16,0,0,0,100,0,0,0,0,0,12,@N_DancePart,1,40000,0,0,0,8,0,0,0,-808.2397,-4985.208,19.54311,0.942478, 'Witch Doctor Hez''tok - Summon Dance Participant (3)'),
(@N_Doctor*100,9,17,0,0,0,100,0,0,0,0,0,12,@N_DancePart,1,40000,0,0,0,8,0,0,0,-799.2618,-4994.353,19.61933,5.89921, 'Witch Doctor Hez''tok - Summon Dance Participant (4)'),
(@N_Doctor*100,9,18,0,0,0,100,0,0,0,0,0,12,@N_DancePart,1,40000,0,0,0,8,0,0,0,-797.8184,-4986.597,21.60157,4.41568, 'Witch Doctor Hez''tok - Summon Dance Participant (5)'),
(@N_Doctor*100,9,19,0,0,0,100,0,0,0,0,0,12,@N_DancePart,1,40000,0,0,0,8,0,0,0,-805.1284,-4987.553,18.79003,0.942478, 'Witch Doctor Hez''tok - Summon Dance Participant (6)'),
(@N_Doctor*100,9,20,0,0,0,100,0,0,0,0,0,12,@N_DancePart,1,40000,0,0,0,8,0,0,0,-814.1109,-5001.676,19.44409,5.89921, 'Witch Doctor Hez''tok - Summon Dance Participant (7)'),
(@N_Doctor*100,9,21,0,0,0,100,0,0,0,0,0,12,@N_DancePart,1,40000,0,0,0,8,0,0,0,-795.7561,-4993.671,21.80729,5.89921, 'Witch Doctor Hez''tok - Summon Dance Participant (8)'),
(@N_Doctor*100,9,22,0,0,0,100,0,1000,1000,0,0,12,@N_DAncestor,1,40000,0,0,0,8,0,0,0,-790.217041,-4999.733,17.171814,2.84488654, 'Witch Doctor Hez''tok - Summon Darkspear Ancestor (1)'),
(@N_Doctor*100,9,23,0,0,0,100,0,0,0,0,0,12,@N_DAncestor,1,40000,0,0,0,8,0,0,0,-792.0052,-4994.14258,17.4839725,2.70526028, 'Witch Doctor Hez''tok - Summon Darkspear Ancestor (2)'),
(@N_Doctor*100,9,24,0,0,0,100,0,0,0,0,0,12,@N_DAncestor,1,40000,0,0,0,8,0,0,0,-795.2049,-5003.078,17.716095,2.46091413, 'Witch Doctor Hez''tok - Summon Darkspear Ancestor (3)'),
(@N_Doctor*100,9,25,0,0,0,100,0,0,0,0,0,12,@N_DAncestor,1,40000,0,0,0,8,0,0,0,-799.2274,-5005.68066,16.6322536,2.11184835, 'Witch Doctor Hez''tok - Summon Darkspear Ancestor (4)'),
(@N_Doctor*100,9,26,0,0,0,100,0,0,0,0,0,12,@N_DAncestor,1,40000,0,0,0,8,0,0,0,-799.2557,-4990.76172,17.6279469,2.70527148, 'Witch Doctor Hez''tok - Summon Darkspear Ancestor (5)'),
(@N_Doctor*100,9,27,0,0,0,100,0,0,0,0,0,12,@N_DAncestor,1,40000,0,0,0,8,0,0,0,-801.422058,-4998.04346,17.0008545,2.46088934, 'Witch Doctor Hez''tok - Summon Darkspear Ancestor (6)'),
(@N_Doctor*100,9,28,0,0,0,100,0,0,0,0,0,12,@N_DAncestor,1,40000,0,0,0,8,0,0,0,-805.4358,-5002.88525,16.544487,1.727876, 'Witch Doctor Hez''tok - Summon Darkspear Ancestor (7)'),
(@N_Doctor*100,9,29,0,0,0,100,0,0,0,0,0,12,@N_DAncestor,1,40000,0,0,0,8,0,0,0,-807.135,-4997.469,17.0008545,1.15000379, 'Witch Doctor Hez''tok - Summon Darkspear Ancestor (8)'),
(@N_Doctor*100,9,30,0,0,0,100,0,0,0,0,0,12,@N_DAncestor,1,40000,0,0,0,8,0,0,0,-810.3698,-4993.825,17.1258545,0.808653831, 'Witch Doctor Hez''tok - Summon Darkspear Ancestor (9)'),
(@N_Doctor*100,9,31,0,0,0,100,0,0,0,0,0,12,@N_DAncestor,1,40000,0,0,0,8,0,0,0,-810.3889,-5004.778,16.12407,1.15191734, 'Witch Doctor Hez''tok - Summon Darkspear Ancestor (10)'),
(@N_Doctor*100,9,32,0,0,0,100,0,7000,7000,0,0,11,70663,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Witch Doctor Hez''tok - Cast Shadow Nova self'),
(@N_Doctor*100,9,33,0,0,0,100,0,0,0,0,0,11,31309,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Witch Doctor Hez''tok - Cast Spirit Particles self'),
(@N_Doctor*100,9,34,0,0,0,100,0,0,0,0,0,91,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Witch Doctor Hez''tok - Set bytes1 none'),
(@N_Doctor*100,9,35,0,0,0,100,0,100,100,0,0,3,@N_Voice,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Witch Doctor Hez''tok - Change entry to Voice of the Spirits'),
(@N_Doctor*100,9,36,0,0,0,100,0,100,100,0,0,3,0,31819,0,0,0,0,1,0,0,0,0,0,0,0, 'Witch Doctor Hez''tok - Change model to Voice of the Spirits'),
(@N_Doctor*100,9,37,0,0,0,100,0,1000,1000,0,0,1,4,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Witch Doctor Hez''tok - Say text 4'),
(@N_Doctor*100,9,38,0,0,0,100,0,4000,4000,0,0,1,5,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Witch Doctor Hez''tok - Say text 5'),
(@N_Doctor*100,9,39,0,0,0,100,0,3000,3000,0,0,5,25,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Witch Doctor Hez''tok - Do emote'),
(@N_Doctor*100,9,40,0,0,0,100,0,3500,3500,0,0,1,6,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Witch Doctor Hez''tok - Say text 6'),
(@N_Doctor*100,9,41,0,0,0,100,0,6000,6000,0,0,1,7,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Witch Doctor Hez''tok - Say text 7'),
(@N_Doctor*100,9,42,0,0,0,100,0,4500,4500,0,0,5,274,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Witch Doctor Hez''tok - Do emote'),
(@N_Doctor*100,9,43,0,0,0,100,0,5000,5000,0,0,1,8,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Witch Doctor Hez''tok - Say text 8'),
(@N_Doctor*100,9,44,0,0,0,100,0,4500,4500,0,0,5,1,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Witch Doctor Hez''tok - Do emote'),
(@N_Doctor*100,9,45,0,0,0,100,0,5500,5500,0,0,11,70663,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Witch Doctor Hez''tok - Cast Shadow Nova self'),
(@N_Doctor*100,9,46,0,0,0,100,0,100,100,0,0,28,31309,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Witch Doctor Hez''tok - Remove aura Spirit Particles'),
(@N_Doctor*100,9,47,0,0,0,100,0,0,0,0,0,3,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Witch Doctor Hez''tok - Change entry and model to Witch Doctor Hez''tok'),
(@N_Doctor*100,9,48,0,0,0,100,0,4000,4000,0,0,1,9,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Witch Doctor Hez''tok - Say text 9'),
(@N_Doctor*100,9,49,0,0,0,100,0,2500,2500,0,0,5,2,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Witch Doctor Hez''tok - Do emote'),
(@N_Doctor*100,9,50,0,0,0,100,0,0,0,0,0,85,75319,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Witch Doctor Hez''tok - Cast Omen Event Credit invoker'), -- working
-- (@N_Doctor*100,9,50,0,0,0,100,0,0,0,0,0,11,75319,2,0,0,0,0,1,0,0,0,0,0,0,0, 'Witch Doctor Hez''tok - Cast Omen Event Credit self'), -- how it shold be but not working
(@N_Doctor*100,9,51,0,0,0,100,0,5000,5000,0,0,69,0,0,0,0,0,0,8,0,0,0,-805.0104,-4975.75,17.75085,0, 'Witch Doctor Hez''tok - Move to pos'),
(@N_Doctor*100,9,52,0,0,0,100,0,5000,5000,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,4.625123, 'Witch Doctor Hez''tok - Change orientation'),
(@N_Doctor*100,9,53,0,0,0,100,0,2000,2000,0,0,82,1,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Witch Doctor Hez''tok - Enable gossip flag'),
(@N_DancePart,0,0,0,25,0,100,0,0,0,0,0,89,10,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Dance Participant - On reset set random movement'),
(@N_DancePart,0,1,0,25,0,100,0,0,0,0,0,3,0,22769,0,0,0,0,1,0,0,0,0,0,0,0, 'Dance Participant - On reset set model'),
(@N_RDrummer,0,0,0,1,0,100,0,0,0,1000,2000,5,38,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Ritual Drummer - Play emote attack 2h every 1 or 2 secs'),
(@N_RDrummer,0,1,0,1,0,100,0,0,0,5000,5000,11,75313,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Ritual Drummer - Cast Bang Ritual Gong every 5 seconds'),
(@N_RDrummer,0,2,0,1,0,100,1,4000,4000,0,0,4,7294,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Ritual Drummer - Play TrollDrumLoop after 4 seconds of spawn - not repeteable'),
(@N_RDrummer,0,3,0,1,0,100,0,0,0,30000,30000,4,7294,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Ritual Drummer - Play Drumms sound every 30 secs');

DELETE FROM `creature_text` WHERE `entry` IN (@N_Vanira,@N_Zentabra,@N_Volunteer1,@N_Volunteer2,@N_Matriarch,@N_TigerCredit,@N_Doctor,@N_DScout,@N_Voljin);
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@N_Vanira,0,0, 'O spirit of de tigers, lend $N your power and help us find de answers we seek!',0,0,100,5,0,0, 'Vanira'),
(@N_Zentabra,0,0, 'Dat be enough for now!',0,0,100,25,0,0, 'Zen''tabra'),
(@N_Zentabra,1,0, 'Don''t be lookin'' so surprised. Your shaman friend has sharp eyes, or should I say, sharp frogs.',0,0,100,1,0,0, 'Zen''tabra'),
(@N_Zentabra,2,0, 'My kind, da druids, we been layin'' low for some time now. We been waitin'' to see when an'' if Vol''jin might return.',0,0,100,11,0,0, 'Zen''tabra'),
(@N_Zentabra,3,0, 'Now dat it looks like de Darkspear be returnin'' to these isles, maybe de time has come for us to reveal ourselves.',0,0,100,1,0,0, 'Zen''tabra'),
(@N_Zentabra,4,0, 'Go back to Vol''jin an'' tell him dis: Zen''tabra stands ready to help him in de coming battle.',0,0,100,1,0,0, 'Zen''tabra'),
(@N_Volunteer1,0,0, 'Sign me up!',0,0,100,66,0,0, 'Troll Volunteer JustSpawned'),
(@N_Volunteer1,0,1, 'Anythin'' for Vol''jin!',0,0,100,0,0,0, 'Troll Volunteer JustSpawned'),
(@N_Volunteer1,0,2, 'I''d be glad to help.',0,0,100,273,0,0, 'Troll Volunteer JustSpawned'),
(@N_Volunteer1,0,3, 'Just point me at de enemy!',0,0,100,66,0,0, 'Troll Volunteer JustSpawned'),
(@N_Volunteer2,0,0, 'Sign me up!',0,0,100,66,0,0, 'Troll Volunteer JustSpawned'),
(@N_Volunteer2,0,1, 'Anythin'' for Vol''jin!',0,0,100,0,0,0, 'Troll Volunteer JustSpawned'),
(@N_Volunteer2,0,2, 'I''d be glad to help.',0,0,100,273,0,0, 'Troll Volunteer JustSpawned'),
(@N_Volunteer2,0,3, 'Just point me at de enemy!',0,0,100,66,0,0, 'Troll Volunteer JustSpawned'),
(@N_Volunteer1,1,0, 'Reportin'' for duty.',0,0,100,66,0,0, 'Troll Volunteer Quest Turn in'),
(@N_Volunteer1,1,1, 'Ready to take de fight to Zalazane.',0,0,100,1,0,0, 'Troll Volunteer Quest Turn in'),
(@N_Volunteer1,1,2, 'Ready to fight beside Vol''jin!',0,0,100,66,0,0, 'Troll Volunteer Quest Turn in'),
(@N_Volunteer1,1,3, 'New troll here!',0,0,100,0,0,0, 'Troll Volunteer Quest Turn in'),
(@N_Volunteer1,1,4, 'When does de trainin'' start?',0,0,100,6,0,0, 'Troll Volunteer Quest Turn in'),
(@N_Volunteer2,1,0, 'Reportin'' for duty.',0,0,100,66,0,0, 'Troll Volunteer Quest Turn in'),
(@N_Volunteer2,1,1, 'Ready to take de fight to Zalazane.',0,0,100,1,0,0, 'Troll Volunteer Quest Turn in'),
(@N_Volunteer2,1,2, 'Ready to fight beside Vol''jin!',0,0,100,66,0,0, 'Troll Volunteer Quest Turn in'),
(@N_Volunteer2,1,3, 'New troll here!',0,0,100,0,0,0, 'Troll Volunteer Quest Turn in'),
(@N_Volunteer2,1,4, 'When does de trainin'' start?',0,0,100,6,0,0, 'Troll Volunteer Quest Turn in'),
(@N_TigerCredit,0,0, 'The tiger matriarch appears! Prove yourself in combat!',3,0,100,0,0,0, 'Tiger Matriarch Credit'),
(@N_Doctor,0,0, 'Darkspears, we consult de spirits! Drummers, take your places!' ,0,0,100,25,0,0, 'Witch Doctor Hez''tok' ),
(@N_Doctor,1,0, 'Spirits, we be gathered here to ask for your guidance.' ,0,0,100,5,0,0, 'Witch Doctor Hez''tok' ),
(@N_Doctor,2,0, 'Our leader, Vol''jin, son of Sen''jin, issued de call to all Darkspears: reclaim de Echo Isles for our tribe.' ,0,0,100,1,0,0, 'Witch Doctor Hez''tok'),
(@N_Doctor,3,0, 'Spirits! I offer me own body to you! Speak through me! Is de time right for mighty Vol''jin''s undertaking?' ,0,0,100,5,0,0, 'Witch Doctor Hez''tok'),
(@N_Doctor,4,0, 'De ancestors hear ya, witch doctor!' ,0,0,100,1,0,0, 'Witch Doctor Hez''tok'),
(@N_Doctor,5,0, 'Know dat your plans please us, Darkspears. De son of Sen''jin walks de right path.' ,0,0,100,1,0,0, 'Witch Doctor Hez''tok'),
(@N_Doctor,6,0, 'De task in front of ya will not be easy, but ya have our blessin''.' ,0,0,100,1,0,0, 'Witch Doctor Hez''tok'),
(@N_Doctor,7,0, 'Ya gave up your home an'' ya gave up de loas of your ancestors when ya left de Echo Isles. Dey will not be pleased dat you been ignorin'' dem.' ,0,0,100,1,0,0, 'Witch Doctor Hez''tok'),
(@N_Doctor,8,0, 'Ya must make amends wit'' Bwonsamdi, de guardian of de dead, if ya hope to defeat Zalazane. It be de only way. Tell de son of Sen''jin dese things.' ,0,0,100,1,0,0, 'Witch Doctor Hez''tok'),
(@N_Doctor,9,0, 'De spirits have blessed us wit'' an answer! De Echo Isles will be ours again!' ,0,0,100,5,0,0, 'Witch Doctor Hez''tok'),
(@N_DScout,0,0, 'He got a big army, an'' he be plannin'' somethin'' down dere.' ,0,0,100,1,0,0, 'Darkspear Scout'),
(@N_DScout,0,1, 'Zalazane got most of his hexes trolls hidden under de canopy on de big island.' ,0,0,100,1,0,0, 'Darkspear Scout'),
(@N_Voljin,0,0, 'Thank ya, scout. Keep up da patrols. But for now, a rest is in order. Dismissed.' ,0,0,100,1,0,0, 'Vol''jin');
DELETE FROM `waypoints` WHERE `entry`=@N_DScout;
INSERT INTO `waypoints` (`entry`,`pointid`,`position_x`,`position_y`,`position_z`,`point_comment`) VALUES
(@N_DScout,1,-838.1788,-4989.835,14.93872, ''),
(@N_DScout,2,-829.3889,-4999.125,15.50085, ''),
(@N_DScout,3,-808.0018,-5010.587,15.36734, ''),
(@N_DScout,4,-796.1736,-5009.604,16.01879, ''),
(@N_DScout,5,-782.4566,-5002.518,17.26879, ''),
(@N_DScout,6,-758.7136,-5001.088,19.65562, 'Run script'),
(@N_DScout,7,-763.0104,-4995.054,20.06314, ''),
(@N_DScout,8,-753.5364,-4974.764,21.81314, ''),
(@N_DScout,9,-742.8715,-4961.878,22.66427, 'Despawn');
DELETE FROM `achievement_reward` WHERE `entry` IN (4784,4785);
INSERT INTO `achievement_reward` (`entry`,`title_A`,`title_H`,`item`,`sender`,`subject`,`text`) VALUES
(4784,0,0,0,37942, 'Emblem Quartermasters in Dalaran''s Silver Enclave', 'Your achievements in Northrend have not gone unnoticed, friend.$B$BThe Emblems you have earned may be used to purchase equipment from the various Emblem Quartermasters in Dalaran.$B$BYou may find us there, in the Silver Enclave, where each variety of Emblem has its own quartermaster.$B$BWe look forward to your arrival!'),
(4785,0,0,0,37941, 'Emblem Quartermasters in Dalaran''s Sunreaver Sanctuary', 'Your achievements in Northrend have not gone unnoticed, friend.$B$BThe Emblems you have earned may be used to purchase equipment from the various Emblem Quartermasters in Dalaran.$B$BYou may find us there, in the Sunreaver Sanctuary, where each variety of Emblem has its own quartermaster.$B$BWe look forward to your arrival!');
SET @ENTRY := 32487;
SET @SPELL1 := 61080; -- Putrid Punt
SET @SPELL2 := 41534; -- War Stomp
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,7000,8000,8000,9000,11,@SPELL1,1,0,0,0,0,2,0,0,0,0,0,0,0,'Putridus the Ancient - Combat - Cast Putrid Punt'),
(@ENTRY,0,1,0,0,0,100,0,6000,7000,12000,12000,11,@SPELL2,1,0,0,0,0,2,0,0,0,0,0,0,0,'Putridus the Ancient - Combat - Cast War Stomp');

# Fix
UPDATE `gameobject` SET `spawntimesecs` = 120, `animprogress` = 100 WHERE `guid` = 1943;
DELETE FROM `item_template` WHERE (`entry`=54537);
INSERT INTO `item_template` (`entry`, `class`, `subclass`, `unk0`, `name`, `displayid`, `Quality`, `Flags`, `BuyCount`, `BuyPrice`, `SellPrice`, `InventoryType`, `AllowableClass`, `AllowableRace`, `ItemLevel`, `RequiredLevel`, `RequiredSkill`, `RequiredSkillRank`, `requiredspell`, `requiredhonorrank`, `RequiredCityRank`, `RequiredReputationFaction`, `RequiredReputationRank`, `maxcount`, `stackable`, `ContainerSlots`, `stat_type1`, `stat_value1`, `stat_type2`, `stat_value2`, `stat_type3`, `stat_value3`, `stat_type4`, `stat_value4`, `stat_type5`, `stat_value5`, `stat_type6`, `stat_value6`, `stat_type7`, `stat_value7`, `stat_type8`, `stat_value8`, `stat_type9`, `stat_value9`, `stat_type10`, `stat_value10`, `ScalingStatDistribution`, `ScalingStatValue`, `delay`, `RangedModRange`, `spellid_1`, `spelltrigger_1`, `spellcharges_1`, `spellppmRate_1`, `spellcooldown_1`, `spellcategory_1`, `spellcategorycooldown_1`, `spellid_2`, `spelltrigger_2`, `spellcharges_2`, `spellppmRate_2`, `spellcooldown_2`, `spellcategory_2`, `spellcategorycooldown_2`, `spellid_3`, `spelltrigger_3`, `spellcharges_3`, `spellppmRate_3`, `spellcooldown_3`, `spellcategory_3`, `spellcategorycooldown_3`, `spellid_4`, `spelltrigger_4`, `spellcharges_4`, `spellppmRate_4`, `spellcooldown_4`, `spellcategory_4`, `spellcategorycooldown_4`, `spellid_5`, `spelltrigger_5`, `spellcharges_5`, `spellppmRate_5`, `spellcooldown_5`, `spellcategory_5`, `spellcategorycooldown_5`, `bonding`, `description`, `PageText`, `LanguageID`, `PageMaterial`, `startquest`, `lockid`, `Material`, `sheath`, `RandomProperty`, `RandomSuffix`, `itemset`, `MaxDurability`, `area`, `Map`, `BagFamily`, `TotemCategory`, `socketColor_1`, `socketContent_1`, `socketColor_2`, `socketContent_2`, `socketColor_3`, `socketContent_3`, `socketBonus`, `GemProperties`, `RequiredDisenchantSkill`, `ArmorDamageModifier`, `Duration`, `ItemLimitCategory`, `HolidayId`, `ScriptName`, `DisenchantID`, `FoodType`, `minMoneyLoot`, `maxMoneyLoot`) VALUES (54537, 15, 0, -1, 'Heart-Shaped Box', 40293, 3, 4, 1, 0, 0, 0, -1, -1, 80, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 1, '', 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, '', 0, 0, 0, 0);
DELETE FROM `item_loot_template` WHERE (`entry`=54537);
INSERT INTO `item_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
(54537, 49715, 0, 1, 1, 1),
(54537, 50446, 0, 1, 1, 1),
(54537, 50741, 0, 1, 1, 1),
(54537, 50471, 0, 1, 1, 1),
(54537, 50250, 0.5, 0, 1, 1);
UPDATE `quest_template` SET `RewItemId1` = 54537, `RewItemCount1` = 1 WHERE `entry` = 25485;

# NeatElves
UPDATE `creature` SET `spawndist` = '0',`MovementType` = '0' WHERE `id` =20431;
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(78783, 19796, 530, 1, 1, 0, 0, -4163.58, 1537.35, 110.165, 3.56802, 300, 0, 0, 5233, 2991, 0, 0),
(12770, 20431, 530, 1, 1, 0, 0, -4291.93, 1588.58, 152.87, 2.58155, 180, 0, 0, 42, 0, 0, 0),
(12888, 20431, 530, 1, 1, 0, 0, -4239.45, 1506.15, 139.496, 1.17568, 180, 0, 0, 42, 0, 0, 0);
UPDATE `gameobject` SET `spawntimesecs` = '300' WHERE `guid` =1943;
UPDATE `creature_addon` SET `guid` = '73776' WHERE `guid` =73749;
UPDATE `creature_addon` SET `guid` = '73810' WHERE `guid` =73765;
REPLACE INTO `creature_addon` (`guid`, `mount`, `bytes1`, `emote`, `auras`) VALUES
(78784, 0, 0, 0, '35190 0'),
(78783, 0, 0, 0, '35190 0');
UPDATE `creature_template` SET `npcflag` = '0' WHERE `entry` =10414;
UPDATE `creature_template` SET `faction_A` = '45',`faction_H` = '45' WHERE `entry` in (11441,11444,11445,11448,11450,14351,17380,18601);
UPDATE `creature_template` SET `faction_A` = '1888',`faction_H` = '1888' WHERE `entry` in (24713);
UPDATE `creature_template` SET `faction_A` = '1711',`faction_H` = '1711' WHERE `entry` in (18351);
UPDATE `creature_template` SET `faction_A` = '35',`faction_H` = '35' WHERE `entry` in (7604,18588);
UPDATE `creature_template` SET `faction_A` = '674',`faction_H` = '674' WHERE `entry` in (9554);
UPDATE `creature_template` SET `faction_A` = '15',`faction_H` = '15' WHERE `entry` in (10432,10433);
UPDATE `creature_template` SET `faction_A` = '7',`faction_H` = '7' WHERE `entry` in (5881);
UPDATE `creature_template` SET `npcflag` = '0' WHERE `entry` in (5881,10643,14523,27234,27235,27236,27237,26073,20563,20416,19705,17338,16403,15950,15670,17380,18601,24664,24857);
UPDATE `creature_template` SET `faction_A` = '18',`faction_H` = '18' WHERE `entry` in (10643,16403,15950,15670);
UPDATE `creature_template` SET `faction_A` = '1434',`faction_H` = '1434' WHERE `entry` in (14523);
UPDATE `creature_template` SET `faction_A` = '67',`faction_H` = '67' WHERE `entry` in (27234,27235,27236,27237);
UPDATE `creature_template` SET `faction_A` = '21',`faction_H` = '21' WHERE `entry` in (26073);
UPDATE `creature_template` SET `faction_A` = '1701',`faction_H` = '1701' WHERE `entry` in (20563,20416,19705);
UPDATE `creature_template` SET `faction_A` = '90',`faction_H` = '90' WHERE `entry` in (17338);
UPDATE `creature_template` SET `faction_A` = '16',`faction_H` = '16' WHERE `entry` in (24664,24857);
UPDATE `creature_template` SET `npcflag` = '0' WHERE `entry` in (34716,34956);
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(13564, 34716, 571, 1, 1, 0, 0, 8606.4, 1604.17, 642.791, 3.23698, 120, 0, 0, 12600, 0, 0, 0);
REPLACE INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(5504, 194264, 603, 3, 1, 2173.27, -252.867, 420.146, 0.104719, 0, 0, 0, 1, 180, 255, 1);
UPDATE `creature_template` SET `npcflag` = '0' WHERE `entry` in (27113,27114,27115);
UPDATE `quest_template` SET `ReqCreatureOrGOId1` = '24124',`ReqCreatureOrGOId2` = '0',`ReqCreatureOrGOId3` = '0',`ReqCreatureOrGOCount1` = '3',`ReqCreatureOrGOCount2` = '0',`ReqCreatureOrGOCount3` = '0',`ReqSpellCast1` = '0',`ReqSpellCast2` = '0',`ReqSpellCast3` = '0' WHERE `entry` =11255;
UPDATE `quest_template` SET `ReqCreatureOrGOId1` = '23720',`ReqSpellCast1` = '0' WHERE `entry` =11145;

# virusav
UPDATE `gameobject` SET `orientation`=5.1612 WHERE `guid`=22011;
UPDATE `creature_template` SET `flags_extra` = 2 WHERE `entry` = 6139;

# NeatElves
REPLACE INTO `achievement_criteria_data` (`criteria_id`, `type`, `value1`, `value2`) VALUES (11686,12,0,0),(11681,12,1,0),(11691,12,2,0),(11678,12,3,0);
DELETE FROM `creature_involvedrelation` WHERE `id` = 20482 AND `quest` in (10976,10977);
DELETE FROM `creature_questrelation` WHERE `id` = 20482 AND `quest` in (10976,10977);
UPDATE IGNORE `creature_questrelation` SET `id` = '22919' WHERE `quest` in (10982,10981);
UPDATE IGNORE `creature_involvedrelation` SET `id` = '22919' WHERE `quest` in (10982,10981);
UPDATE creature SET position_x = '-402.360321', position_y = '-70.558319', position_z = '-0.977349', orientation = '0.078104' WHERE guid = '80405';
UPDATE creature SET position_x = '-398.572418', position_y = '-161.581314', position_z = '-0.959545', orientation = '5.414097' WHERE guid = '80359';
DELETE FROM `creature_involvedrelation` WHERE `id` = 20482 AND `quest` = 10974;
UPDATE `quest_template` SET `SpecialFlags` = '1' WHERE `entry` =10975;
DELETE FROM `creature_loot_template` WHERE `entry` = 22920;
UPDATE `creature_template` SET `lootid` = '0' WHERE `entry` =22920;
UPDATE `quest_template` SET `ReqCreatureOrGOId1` = '20787',`ReqSpellCast1` = '0' WHERE `entry` =10422;

# Fix
UPDATE `creature_template` SET `spell1` = 55987, `spell2` = 50430, `spell3` = 50348 WHERE `entry` = 27996;

# NeatElves
DELETE FROM `creature` WHERE `guid` = 99798;
DELETE FROM `gameobject` WHERE `guid` = 55578;
DELETE FROM `gameobject` WHERE `guid` = 55579;
REPLACE INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(55577, 185519, 557, 2, 1, -107.662, -102.516, -0.420004, 0.707648, 0, 0, 0.346488, 0.938055, 300, 100, 1);
REPLACE INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(22016, 184588, 530, 1, 1, 3916.47, 2511.67, 105.375, 2.4151, 0, 0, 0.934748, 0.35531, 300, 100, 1);
DELETE FROM `creature` WHERE `guid` = 80012;
DELETE FROM creature WHERE guid=126476;
UPDATE `creature_template` SET `lootid` = '0' WHERE `entry` =21425;
DELETE FROM `creature_loot_template` WHERE `entry` = 21425;
UPDATE `creature_template` SET `flags_extra` = '1' WHERE `entry` =22930;
UPDATE `creature_template` SET `lootid` = '22920' WHERE `entry` =22920;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`) VALUES ('22920', '32061', '-100', '0', '1', '1');
DELETE FROM `creature_loot_template` WHERE `entry` = 20889 AND `item` = 32061;
DELETE FROM `creature_addon` WHERE `guid` in (52638,53558,52227,52241,115064);
UPDATE `quest_template` SET `ReqCreatureOrGOId1` = '18428',`ReqSpellCast1` = '0' WHERE `entry` =9948;
DELETE FROM gameobject WHERE guid = '49079';
DELETE FROM `creature` WHERE `guid` = 123423;
UPDATE `creature_template` SET `npcflag` = '2' WHERE `entry` in (18445);
UPDATE `quest_template` SET `ReqCreatureOrGOId1` = '18444',`ReqSpellCast1` = '0' WHERE `entry` =9955;
UPDATE `quest_template` SET `ReqCreatureOrGOId1` = '20812',`ReqSpellCast1` = '0' WHERE `entry` =9924;
UPDATE `quest_template` SET `ReqCreatureOrGOId1` = '18369',`ReqSpellCast1` = '0' WHERE `entry` =9923;
UPDATE IGNORE `creature_questrelation` SET `id` = '18369' WHERE `id` =18445 AND `quest` =9923;
UPDATE `creature` SET `id` = '18369' WHERE `guid` =54944;
UPDATE `creature` SET `id` = '18445' WHERE `guid` =74949;
DELETE FROM `creature_loot_template` WHERE `entry` = 18369;
UPDATE `creature_template` SET `lootid` = '0' WHERE `entry` =18369;
DELETE FROM `creature_loot_template` WHERE `item` = 25460;
DELETE FROM gameobject WHERE guid = '21657';
INSERT INTO gameobject VALUES ( 21657, 182349, 530, 1,1,-2573.86, 6288.62, 15.1659, 4.17864, 0, 0, 0.868553, -0.495597, 0, 100, 0);
UPDATE `quest_template` SET `ReqCreatureOrGOId1` = '17682',`ReqSpellCast1` = '0' WHERE `entry` =9667;
REPLACE INTO `creature_ai_scripts` VALUES ('1732051', '17320', '6', '0', '10', '0', '0', '0', '0', '0', '12', '17702', '6', '300000', '0', '0', '0', '0', '0', '0', '0', '0', 'ytdb');
REPLACE INTO `creature_ai_scripts` VALUES ('1732151', '17321', '6', '0', '10', '0', '0', '0', '0', '0', '12', '17702', '6', '300000', '0', '0', '0', '0', '0', '0', '0', '0', 'ytdb');
DELETE FROM `creature` WHERE `guid` = 55177;
REPLACE INTO `db_script_string` (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`) VALUES ('2000000464', 'Thanks, $R! I''m sure my dad will reward you greatly! Bye!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
REPLACE INTO `db_script_string` (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`) VALUES ('2000000465', 'This is the last time I get caught! I promise! Bye!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
UPDATE `gameobject_template` SET `data2` = '300000' WHERE `entry` in (182350,195310,188554,185512,186287,182349,181928,184588,181714,181720,181721,181722,181723,181724,181725,181726,181727,181728,181729,181730,181731,181732,181733);
UPDATE `quest_template` SET `ReqCreatureOrGOId1` = '22314',`ReqSpellCast1` = '0' WHERE `entry` =10852;
UPDATE `creature_template` SET `faction_A` = '35',`faction_H` = '35' WHERE `entry` =17556;
UPDATE `creature_template` SET `faction_A` = '35',`faction_H` = '35',`flags_extra` = '0' WHERE `entry` =10992;
UPDATE `creature` SET `spawntimesecs` = '600' WHERE `guid` =26350;
UPDATE creature SET position_x = '-4688.364746', position_y = '-1434.616821', position_z = '-50.538452', orientation = '5.868046' WHERE guid = '26350';
REPLACE INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_start_active`, `quest_end`, `aura_spell`, `racemask`, `gender`, `autocast`) VALUES ('49416', '4430', '12886', '1', '0', '0', '0', '2', '1'), ('49416', '4430', '12886', '0', '0', '0', '0', '2', '1');
UPDATE `quest_template` SET `SrcSpell` = '0' WHERE `entry` =12841;

# zhanhang02
UPDATE `gossip_menu_option` SET `option_text`='I execute him as per my liege\'s instructions, but doing so in as painless of a way as possible.  Justice must be served, but I can show some compassion.' WHERE (`menu_id`='6187') AND (`id`='1');
UPDATE `gossip_menu_option` SET `option_text`='I would show my liege the beast\'s ear and claim the beast\'s death as my own, taking the reward for my own use.  It is wrong to claim a deed as your own that someone else in fact did.' WHERE (`menu_id`='6210') AND (`id`='0');

# Fix
INSERT IGNORE INTO `gameobject` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecs`,`animprogress`,`state`) VALUES
(5690, 202275, 1, 1, 1, 2079.39, -234.624, 98.9194, 6.04, 0, 0, 0.121294, -0.992617, 30, 100, 1);
DELETE FROM `gameobject` WHERE `id`=2656;
INSERT INTO `gameobject` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecs`,`animprogress`,`state`) VALUES
(12384, 2656, 0, 1, 1, -2362.47, -2461.07, -20.8913, 2.30383, 0, 0, 0.913545, 0.406737, 120, 100, 1);
DELETE FROM `creature_template_addon` WHERE (`entry`=29975);

# NeatElves
DELETE FROM `creature_questrelation` WHERE `quest` = 9749;
# INSERT IGNORE INTO achievement_criteria_data (criteria_id, type, value1, value2) VALUES (9721, 21, 42, 0),(9720, 21, 43, 0),(9719, 21, 44, 0),(7408, 21, 45, 0),(10878, 21, 157, 0),(13006, 21, 167, 0),(13007, 21, 169, 0),(9718, 21, 42, 0),(7419, 21, 43, 0),(7418, 21, 44, 0),(10879, 21, 157, 0),(13004, 21, 167, 0),(13005, 21, 169, 0),(7416, 21, 42, 0),(7415, 21, 43, 0),(13001, 21, 157, 0),(13002, 21, 167, 0),(13003, 21, 169, 0),(7412, 21, 42, 0),(10881, 21, 157, 0),(12999, 21, 167, 0),(13000, 21, 169, 0),(5597, 21, 62, 0),(5599, 21, 71, 0),(5600, 21, 80, 0),(10718, 21, 157, 0),(10898, 21, 167, 0),(11402, 21, 169, 0),(12912, 21, 177, 0),(6789, 21, 53, 0);
INSERT IGNORE INTO creature_onkill_reputation VALUES 
(35332, 0, 1052, 0, 0, 0, 7, 0, 3, 1),
(35331, 0, 1052, 0, 0, 0, 7, 0, 3, 1),
(35330, 0, 1052, 0, 0, 0, 7, 0, 3, 1),
(35329, 0, 1052, 0, 0, 0, 7, 0, 3, 1),
(35328, 0, 1052, 0, 0, 0, 7, 0, 3, 1),
(35327, 1037, 0, 7, 0, 3, 0, 0, 0, 1),
(35326, 1037, 0, 7, 0, 3, 0, 0, 0, 1),
(35325, 1037, 0, 7, 0, 3, 0, 0, 0, 1),
(35323, 1037, 0, 7, 0, 3, 0, 0, 0, 1),
(35314, 1037, 0, 7, 0, 3, 0, 0, 0, 1);
UPDATE `item_template` SET `name` = 'Bloated Slippery Eel' WHERE `entry` =45328;
DELETE FROM `item_loot_template` WHERE `entry` = 35286 AND `item` in (3820,22578,22785,22787,22789,23440,27498,33457);
UPDATE `item_loot_template` SET `ChanceOrQuestChance` = '5',`groupid` = '1' WHERE `entry` =35286 AND `item` =35287;
UPDATE `item_loot_template` SET `ChanceOrQuestChance` = '15',`groupid` = '1' WHERE `entry` =35286 AND `item` =13757;
UPDATE `item_loot_template` SET `ChanceOrQuestChance` = '35',`groupid` = '1' WHERE `entry` =35286 AND `item` =37588;
UPDATE `item_loot_template` SET `ChanceOrQuestChance` = '0',`groupid` = '1' WHERE `entry` =35286 AND `item` =5569;

# WDB
INSERT IGNORE INTO `page_text` (entry, text, next_page) VALUES ('3550', 'Detailed herein are all of the locations used to secret our information within Loch Modan while awaiting pickup. Should you manage to obtain any documents from the Explorer\'s League or their allies, place them in one of these locations and one of our messengers will pick the package up within the week for delivery to our base of operations.$B$BOnce you have memorized all of the locations within this book, burn it so that it cannot be obtained by our enemies. Should you suspect for any reason that our enemies might be suspicious of your activities, burn the book immediately. By no means should this ever fall into enemy hands, lest our routes of communication be compromised.$B$BFor Ragnaros!', '3551');
INSERT IGNORE INTO `page_text` (entry, text, next_page) VALUES ('3551', 'Location 1: Western Loch Dock\n\r\n\rNortheast of Thelsamar, there is a small dwelling and a dock that are utilized by dwarves on occasion during fishing season. Store the package in a watertight container under the dock, out of sight. $B$BDrop offs and pickups from this location should occur only at night as to reduce risk of being witnessed by fishermen in the area. This dropoff point will recieve reduced priority during the fishing season for obvious reasons.', '3552');
INSERT IGNORE INTO `page_text` (entry, text, next_page) VALUES ('3552', 'Location 2: Grizzlepaw Den\n\r\n\rSouth of Thelsamar, there is a large hill. On the south side of the hill, there is a path leading to the cave at the top. Store packges behind the rocks in the back of the cave. $B$BPlease refrain from continued use of this cave as a shelter and/or hideout. Utilizing this cave for such compromises the security of our packages and our messenger routes.', '3553');
INSERT IGNORE INTO `page_text` (entry, text, next_page) VALUES ('3553', 'Location 3: Shanda\'s Lair\n\r\n\rThere is a small hovel to the southwest of the excavation site that once belonged to a reclusive hermit.  Shanda\'s residence in this cave, however, has driven all potential inhabitants away. Just outside the mouth of the cave serves as a perfect drop point. $B$BAs a reminder, Shanda is an enormous murderous spider the size of two dwarves. Do not drop documents IN the cave, even if Shanda is not currently present; she will be, given time.', '3554');
INSERT IGNORE INTO `page_text` (entry, text, next_page) VALUES ('3554', 'Location 4: Ironband\'s Cubby\n\r\n\rA side passage in the heart of Ironband\'s Excavation Site leads up to a well-hidden and disused alcove. Hidden right under the noses of the Explorer\'s league, this is a prime dropoff spot. $B$BThe Troggs have distracted the Explorer\'s League, but do not forget they are still hostile to us. Take care when accessing the site at night, Troggs may be waiting in ambush.', '3555');
INSERT IGNORE INTO `page_text` (entry, text, next_page) VALUES ('3555', 'Location 5: Mo\'grash Skull Idol\n\r\n\rThis stone skull idol seems like part of the ogre grounds, but is further south than the ogres actually roam. Place documents at the base of it. $B$BDo NOT place documents IN the mouth of the skull idol. Several documents have been permanently lost this way, as well as one hand, mysteriously.', '3556');
INSERT IGNORE INTO `page_text` (entry, text, next_page) VALUES ('3556', 'Location 6: The Grove in the Loch\n\r\n\rA small grove of three saplings in the center of the Loch serves as a well-isolated drop off point. $B$BDraining of the Loch has left this space slightly less isolated. The crocolisks have helped to mitigate this.', '0');
INSERT IGNORE INTO `page_text` (entry, text, next_page) VALUES ('3559', 'Durak, $B$BThis $R has assisted me IN collecting enough fel fire TO launch an assault ON the elves. $B$BThe projectiles will be devastating - but impossible TO control. I need a way TO direct their trajectory. $B$BI\'m sure to be forgiven for meddling with demonic powers once Splintertree is saved... $B$BDraaka', '0');
INSERT IGNORE INTO `page_text` (entry, text, next_page) VALUES ('3561', '<The Apothecary\'s notes are scribbled in a cramped hand, with complex alchemic formulas interspersed among childlike doodles of skulls and lightning bolts. Squinting, you can make out parts of a recent passage:>$B$B...most magnificent corruption, embedding itself deep within living tissue. Extremely contagious when <several words are smudged> via food chain. Today\'s tests confirm it is only partially biological in origin. Foulhoof, my <illegible> companion, preoccupied with vengeance and blind to the more \'constructive\' applications of his <a greenish ichor stains the remainder of the paragraph.> Research progresses slowly. Hope my companions at Althalaxx fare better.', '0');
INSERT IGNORE INTO `page_text` (entry, text, next_page) VALUES ('3566', 'Grimfang,$B$BI report to you from Splintertree, and the news is unpleasant.$B$BThe post was recently attacked by the kaldorei, which prevented any reports from being delivered.$B$BThe siege has been broken, but many were lost and another attack looks imminent.$B$BWe shall continue sending elves to their graves as long as fate permits.$B$B- Kadrak', '0');
INSERT IGNORE INTO `page_text` (entry, text, next_page) VALUES ('3576', 'Attn: Mrs. Gadgetspring$B$BThe industrial-strength laxative agent you requested is enclosed. My condolences on the fate of Mr. Blimo Gadgetspring after his encounter with the cliff giant. I\'m curious why you\'re opting for a laxative in an effort to recover him, as opposed to some sort of vomit-inducing agent? It seems to me you\'re doing Mr. Gadgetspring a disservice. Good luck with your endeavor!$B$B- Lomac Gearstrip', '0');
INSERT IGNORE INTO `page_text` (entry, text, next_page) VALUES ('3580', 'Know this: a shaman must never demand power; to do so would arouse the anger of the elements, and a shaman without the elements\' protection is nothing.  Those that follow the path of the shaman must never forget this most vital tenet.$B$BHowever, a shaman that works in a respectful union with the elements wields a power rivaled by few.  If you feel you have the humility to do so, come visit with me in Anvilmar.  I will teach you - much like I myself was taught - how to work with the elements of fire, earth, wind, water, and the wild.$B$B~Teo Hammerstorm', '0');
INSERT IGNORE INTO `page_text` (entry, text, next_page) VALUES ('3579', 'Those of us who are agile of mind, but not quite so agile of body, must find... alternative methods of self-preservation.  Many such people choose to pursue a career in matters magical.$B$B$N, I\'ve been observing you, and you have a mind like a steel trap.  However, to thrive in this time of upheaval, a person such as yourself will need to master the arcane arts.  And to master the arcane arts, you\'re going to have to talk to me.$B$BCome speak with me in Anvilmar.  We\'ve much to discuss.$B$B-Teegli Merrowith', '0');
INSERT IGNORE INTO `page_text` (entry, text, next_page) VALUES ('3594', '<Crawgol\'s handwriting is large and uneven, little better than a childlike scrawl.>$B$BThe sillu- scilla- <Several misspellings are crossed out> silithid are bug-type animals, not vegetables (at least without a fight). They live in the under the ground, except when they are not. Some of them fly? (I think).$B$BThey taste REAL BAD.$B$BMost silithid are made of bug parts. They have between none and eightish legs (depending on how they died?)', '3595');
INSERT IGNORE INTO `page_text` (entry, text, next_page) VALUES ('3595', 'Burning makes them die. They have shells (called &#65533;cara pieces&#65533; because they are made from cara obviously) that can\'t be stabbed unless you do it hard.$B$BThey can dig fast but I don\'t know how fast because they dig in the dirt.$B$BTHE ORIGIN OF THE SILITHID$B$BAlmost all silithid come from holes, usually in the ground.', '0');
INSERT IGNORE INTO `page_text` (entry, text, next_page) VALUES ('3599', 'Emperor Thaurissan,\n$B$BBelow is my account of my most recent finding here in Un\'Goro Crater.  After the Cataclysm hit, I stopped my current project and began sweeping the Crater for new potential dig sites.  Curiously, the Crater wasn\'t hard hit by the Cataclysm, but I did find what appeared to be a monstrous mandible peeking out of the ground in Terror Run!', '3600');
INSERT IGNORE INTO `page_text` (entry, text, next_page) VALUES ('3600', 'It appears to be an ancestor of the dinosaurs that live here.  I\'ve spent the last several weeks digging it out, and it has been my most exciting dig yet.  By my calculations, this beast must be nearly 300 feet long, from tip to tail.  That\'s longer than some of the largest dragons, and FAR larger than any dino that currently exists here in the Crater.', '3601');
INSERT IGNORE INTO `page_text` (entry, text, next_page) VALUES ('3601', 'The going has been slow, mainly because I\'ve needed to cover up my work behind me.  That blasted goblin, Nilminer, still has cronies digging in the area, and I mustn\'t risk any news of this discovery leaking before I send my final results back to Blackrock Mountain.  This may be the key piece of information that tells us what the Titans were doing in Un\'Goro!$B$BRegards,$B$BDurrin Direshovel', '0');
INSERT IGNORE INTO `page_text` (entry, text, next_page) VALUES ('3604', 'As Forsaken, we fight against the Lich King, we fight against the Alliance... sometimes we even quarrel with the other races of the Horde.  We are few, and we face great obstacles... but we will survive and prevail.$B$BAs a fellow hunter, you will do so from afar, with a bow in your hand and an animal companion at your side.  Your power comes not from arcane wizardry or martial prowess, but your ability to live off the land.$B$BThe path of the hunter lies before you.  It starts with me, your trainer.  Where it ends... we do not know that yet.', '0');
INSERT IGNORE INTO `page_text` (entry, text, next_page) VALUES ('3608', 'An Urgent Message to all Scarlet Officers and Enlistees:\n$BThe Scourge agent known as Lilian Voss has escaped from her captivity at the Scarlet Palisade.  She is to be considered highly dangerous, and should be killed on sight.  She has already slain 15 of our men.  None were left wounded.$B$BDo NOT try to apprehend her.  Doing so will likely result in death.  She is an enemy to the Crusade and must be crushed immediately.$B$BThe crusader who returns her head to the High Priest will be rewarded with 1,000 gold.  Refer any questions to your commanding officer.$B$B$B~BV', '0');
INSERT IGNORE INTO `page_text` (entry, text, next_page) VALUES ('3606', 'We barely escaped from Kezan with our lives! The volcano took everything...my house, my car, my pet boar, my pet boar\'s house, my pet boar\'s car...$B$BBut at least we got safely onto the ships! We\'ll sail straight for Durotar, sucker a few orcs after we get onto dry land again, and be rolling in money again within a week!', '3614');
INSERT IGNORE INTO `page_text` (entry, text, next_page) VALUES ('3615', 'We\'ve landed! Well, more like crashed. The boats tore themselves open overnight while the \"captain\" had a rag tied to the wheel.$B$BWe all woke up face-down in the sand on this mysterious desert beach! Nobody has any idea where we are, but we\'ll have to make do in this exotic and highly uncharted territory.$B$BDid I say we all woke up? That may have been an exaggeration.', '3616');
INSERT IGNORE INTO `page_text` (entry, text, next_page) VALUES ('3610', 'The others don\'t understand us.  They pretend to get along with us, but they don\'t.  Even the warlocks are afraid of us.$B$BThat\'s alright, because we\'ve got each other.  Orc mages unite!  Me and you!  Acrypha and... whatever your name is!  Ha!$B$BWe\'ll show them what we\'re made of.  Pay me a visit, and I\'ll share with you some of the secrets of the arcane that I\'ve managed to master.', '0');
INSERT IGNORE INTO `page_text` (entry, text, next_page) VALUES ('3630', 'Kasim,$B$BHe has returned.$B$B- Watcher Mahar Ba', '0');
INSERT IGNORE INTO `page_text` (entry, text, next_page) VALUES ('3631', 'To Whom It May Concern:$B$BRohan Sunveil, a Reliquary member in high standing and leader of the Sunveil Excursion, seeks able-bodied adventurers to assist him in an archaeological study in the southern Blasted Lands.  Participants will be compensated for their work.$B$BThe Sunveil Excursion is focused on the acquisition, cataloguing, and preservation of any and all magical artifacts found in the Tainted Forest region.  Formerly known as the Tainted Scar, the area has recently been rejuvenated by a worgen druid, and is mostly covered with trees and brush.  For further details, please contact Rohan or Clarya Sunveil.', '0');
INSERT IGNORE INTO `page_text` (entry, text, next_page) VALUES ('3632', '<The letter is missing entries as the ink has washed away in many places.>$B$B... every form of ... has been based ... on the antagonism of oppressing and oppressed ...$B$B... nothing to lose, but your chains ...$B$B... the past cannot be forgotten ...$B$B... cannot be forgiven ...$B$B... will RISE AGAIN!', '0');
INSERT IGNORE INTO `page_text` (entry, text, next_page) VALUES ('3633', 'Minions, our leader has spoken. You are to sack Sentinel Hill and free the admiral. You may keep anything that you find in your rampage.$B$B-Helix', '0');
INSERT IGNORE INTO `page_text` (entry, text, next_page) VALUES ('3634', 'Give a man a tabard and he will pledge his undying loyalty to your cause. These men are now government sheep who care not for your hardships. They wear the tabard of their leader and care only for what he desires.$B$B-V', '0');
INSERT IGNORE INTO `page_text` (entry, text, next_page) VALUES ('3635', 'Group of Homeless Samaritans Brutally Murdered Behind Furlbrow Farm $B$BWitnesses state that the four men killed at the Furlbrow\'s farm were on their way to delivering dirt pies to a shelter on the east coast when attacked. $B$BJimb \"Candles\" McHannigan, an eyewitness on the scene, had this to say, \"Yep, I saw the whole thing go down with my own two eyes. Was a $g male:female; $c. $g He:She; looked like $g he:she; may have been on something. $g He:She; slaughtered the poor bums in broad daylight while shouting obscenities and proclaiming $g his:her; love for Stormwind and King Varian Wrynn. I think $g he:she; may have killed Lou immediately afterward. I was too shaken up to see.\"', '0');
INSERT IGNORE INTO `page_text` (entry, text, next_page) VALUES ('3636', 'I can hardly believe it. We\'ve endured this torment for four long years, but soon it will be over. The Brotherhood will be reborn and we will then wash across this land as a flood to cleanse it of its filth and corruption.', '0');
INSERT IGNORE INTO `page_text` (entry, text, next_page) VALUES ('3637', 'The hour of our redemption draws ever closer, brothers and sisters! Tonight we will shed the shell of our former lives and be reborn as heroes!$B$B-V', '0');
INSERT IGNORE INTO `page_text` (entry, text, next_page) VALUES ('3638', 'Day 1$B$B\"A druid\'s gift is his freedom to embrace and explore all facets of nature.\"$B$BMalfurion so often spoke these words, I was once foolish enough to believe that he truly lived by them. Yet while my shan\'do spouted this freedom, he disgraced me and my fellow druids of the pack by banning our form. I can still recall with great clarity his angry tirades whenever he discovered us practicing in secret.$B$B\"The pack form cannot be controlled. It will consume you, and endanger us all.\"$B$BThe ignorance with which Malfurion passed judgment on us is infuriating. Does he not realize that the spirit of the wolf ancient, Goldrinn, is by nature\'s grace within me and my pack brethren? We did not choose it. It chose us. To shun it would be to turn our backs on nature itself.', '3639');
INSERT IGNORE INTO `page_text` (entry, text, next_page) VALUES ('3639', 'It only pains me that at a time like this, when our race is threatened by war with the vile satyr, Malfurion rejects us -- the very druids who could turn the tide of battle in his favor.$B$BIt matters little now. Today my brethren and I will depart from night elf society forever to begin life anew in the wild. We will show our shan\'do\'s beliefs to be wrong and prove that Goldrinn\'s spirit can in fact be controlled.', '3640');
INSERT IGNORE INTO `page_text` (entry, text, next_page) VALUES ('3640', 'Day 7$B$BSix nights have come and gone since we carved out our new homes in the heart of the forest. Our pack leader, Renthel, has taken charge over the community, and under his wise leadership I have at last found true freedom.$B$BEach night we practice our form at the roots of a fallen tree where we have placed Goldrinn\'s fang. A thing of beauty it is... merely being in its presence seems to empower me. At times I wonder if the wolf ancient left this remnant of himself on the world as a gift to those who pursue his form.$B$BThese nightly sessions have filled me with renewed confidence in my ability to harness Goldrinn\'s spirit. Although Malfurion so often spoke of its dangers, even now we are proving him to be wrong.', '3641');
INSERT IGNORE INTO `page_text` (entry, text, next_page) VALUES ('3641', 'Day 12$B$BThere was an argument tonight. A seasoned druid named Thaldrus laid claim to leadership of the pack over Renthel, and both druids settled the dispute in pack form. They circled one another for what seemed an eternity, mouths foaming and fangs bared, until Thaldrus lunged at Renthel and pinned him to the ground.$B$BRenthel honorably accepted his defeat and relinquished his leadership with no further violence. If only Malfurion could have witnessed the dignity with which Thaldrus and Renthel acted on this eve.', '3642');
INSERT IGNORE INTO `page_text` (entry, text, next_page) VALUES ('3642', 'Day 23$B$BSomething strange has been happening of late. My brothers spend more and more time in pack form throughout the day. Many of them claim that it is a necessity to mastering the form, yet I feel that is not the sole reason.$B$BAn urge, primal in origin, grows inside of me. It is a desire that I can only sufficiently sate when I take on the pack form. I fear that the others feel it too.', '3643');
INSERT IGNORE INTO `page_text` (entry, text, next_page) VALUES ('3643', 'Day 28$B$BTonight, under the two moons, we ventured through the wild in pack form and felled three stags. So famished were my brethren and I that we simply ripped into the creatures, clawing and biting at each other while we feasted. Euphoria washed over me as I sank my teeth into the stag\'s raw flesh. Even if I had been without an appetite, gorging on the creature would have satisfied me.', '3644');
INSERT IGNORE INTO `page_text` (entry, text, next_page) VALUES ('3644', 'Day 38$B$BFirst time out of pack form in seven nights. Live as a wolf like others, from one night to next. Pack leader Thaldrus says night elf bodies are weak. All trust him. All follow him. If he saw me now, he would kill me.$B$BGoldrinn\'s spirit consuming us. Fighting it feels just as wrong as giving in.', '3645');
INSERT IGNORE INTO `page_text` (entry, text, next_page) VALUES ('3645', 'Day 42$B$BStill taste pack leader Thaldrus\' blood in my mouth. $B$BCannot recall details. Only remember Thaldrus taking Goldrinn\'s fang from fallen tree. Caught him dragging it into his den and--$B$B<This part of the page is illegible due to blood stains>$B$BTook two nights for Thaldrus to come out. We were waiting. Fangs and claws and rage. Tore him apart. Fur and flesh everywhere. Only gnawed bones afterward.$B$BNo leader now.', '3646');
INSERT IGNORE INTO `page_text` (entry, text, next_page) VALUES ('3646', 'Day 52\n\n\n$B$BMuch has come to pass of late, and I feel that at last I have regained a portion of my sanity. Five nights ago, I left my den to discover that the other pack members were gathered around something, or as I soon discovered, someone. A night elf whose scent I recognized as Ralaar Fangfire, a druid of Malfurion\'s ilk.$B$BAs one we encircled him, yet the intruder held his ground. I smelled not a hint of fear on him, despite the fact that he remained in night elf form. His arrogance was quite infuriating.$B$BThree of my enraged brothers charged Ralaar, and the newcomer took on the pack form and bested the challengers with little effort... yet he did not kill them.$BIn that instant I became aware of a difference between him and us. We had become savages... scarred, lean, and disheveled. Ralaar, however, was powerful, majestic, and still rife with Goldrinn\'s essence.', '3647');
INSERT IGNORE INTO `page_text` (entry, text, next_page) VALUES ('3647', 'When no others dared challenge him, Ralaar took on his night elf form and spoke. In a tirade that reminded me of Malfurion, he berated us for becoming mindless animals and squandering what he referred to as the purity of Goldrinn\'s essence. Yet unlike my former shan\'do, Ralaar also promised to teach us the true path to harnessing the wolf ancient\'s spirit. I sensed tremendous rage in his voice, tempered by a self control that I had somehow lost in recent weeks.$B$BOne by one we all left our pack forms. I can only guess that my brethren, like I, felt a strange affinity to this newcomer, as if he were a messenger of Goldrinn himself. $B$BRalaar has since begun teaching us as he had promised, though he no longer answers to his given name.$B$BRather, he now refers to himself simply as Alpha Prime.$B-Gaedrin Moonfang, Druid of the Pack', '0');
INSERT IGNORE INTO `page_text` (entry, text, next_page) VALUES ('3648', 'Step 1: KILL$BStep 4: Sleep?$BStep 2: EAT$BStep 1: Poop', '0');
INSERT IGNORE INTO `page_text` (entry, text, next_page) VALUES ('3649', 'You attack from down there!$BWe attack from up here!$BMeet in middle at humie town.$B$B-Yowler, Son of Yowler', '0');
INSERT IGNORE INTO `page_text` (entry, text, next_page) VALUES ('3650', '<This document is blank.>$B$B<Correction. This document was used recently as toilet paper.>', '0');
INSERT IGNORE INTO `page_text` (entry, text, next_page) VALUES ('3651', '<This entire page is written in orcish. You can\'t understand anything on the document.>', '0');
INSERT IGNORE INTO `page_text` (entry, text, next_page) VALUES ('3653', 'Bloodsail Orders$B$BPay close attention to these here words, me hearties.  This be our final shot at Booty Bay.$B$BPretty-Boy has failed me for the last time.  His replacement remains in the north.  He\'ll lead the invasion by land, through that blasted tunnel.$B$BCaptain Keelhaul and the Riptide will come in from the southwest and negate any cannon fire from the tip of the Cape.  He\'ll need men, gunpowder, and plenty of extra ropes.', '3654');
INSERT IGNORE INTO `page_text` (entry, text, next_page) VALUES ('3654', 'The Damsel\'s Luck will drive directly into the harbor and open fire.  Her captain will be ordered to take no prisoners - any man, woman, or child found consorting with the Blackwater Raiders of Booty Bay will be sent straight to Neptulon\'s locker.$B$BI\'ll lead the attack from the rear, with the Crimson Veil.  We\'ll offer cannon support and protect from any raiders that come to defend their precious Booty Bay.', '3655');
INSERT IGNORE INTO `page_text` (entry, text, next_page) VALUES ('3655', 'There is no exit plan here, boys.  Once we arrive in Booty Bay, we burn her down and take her over, or we die trying.  Take that message to heart.$B$B--Fleet-Master Firallon', '0');
INSERT IGNORE INTO `page_text` (entry, text, next_page) VALUES ('3656', 'Keeshan, if you\'re reading this note, I\'m dead. Likely that my position was compromised.$B$BOrcs are committing unspeakable atrocities against their prisoners. Yes, prisoners, Keeshan. They\'ve got cages full of P.O.W\'s. If you\'re gonna blow up this valley, you\'ll need to free the prisoners first.$B$BTell my wife I love her and to take out the damned trash.\n$B$B-Brubaker$B$BPS - They\'ve got black dragons.', '0');
INSERT IGNORE INTO `page_text` (entry, text, next_page) VALUES ('3657', 'To the Honorable Headmaster Crillian,\n\n$B$BMy former Master, I write to you so that you might know what your apprentice has been doing of late.  Paying heed to your advice, I sought to build my knowledge and wisdom through travel outside the gates of our beloved Stormwind.  My journeys took me to many places but I have decided to take up residence here in the lovely town of Moonbrook.  The surrounding fields of Westfall are most beautiful as the harvest approaches.', '3658');
INSERT IGNORE INTO `page_text` (entry, text, next_page) VALUES ('3658', 'Within just a few days of my visit I found myself tutoring the local children from the nearby farmlands.  The lessons went so well that the town mayor commissioned me to run a school and construction has begun on a brand new schoolhouse!  From Silverpine to Stormwind and now Moonbrook -- who would have guessed I would see so much of Azeroth!$B$BWarm regards,$B$BStalvan Mistmantle', '3659');
INSERT IGNORE INTO `page_text` (entry, text, next_page) VALUES ('3659', 'Dear Noble Sir,$B$BWord of your need for a tutor for your children has traveled to me here in Goldshire, where I take up temporary residence in the Lion\'s Pride Inn.  Due to the unfortunate state of events in the region, I was forced to abandon my post as Headmaster of the Moonbrook Schoolhouse.  Please accept my application to serve as tutor for your offspring.  Headmaster Crillian of the Academy can speak to you of my abilities if necessary.', '3660');
INSERT IGNORE INTO `page_text` (entry, text, next_page) VALUES ('3660', 'I shall travel to meet you in person when the winter rains subside and the roads are suitable for travel once again.$B$BUntil then,$B$BStalvan Mistmantle of Silverpine', '0');
INSERT IGNORE INTO `page_text` (entry, text, next_page) VALUES ('3661', '. . .Giles, the boy, seems a bit rambunctious and will be a challenge to educate.  However the elder daughter, Tilloa, seems exceptionally smart.  I couldn\'t help but to notice her captivating beauty as well.  She is on the cusp of womanhood now.  Supposedly the Lord has arranged her marriage for next year.  But I digress.  This week I will accompany the family to their summer cottage near the Eastvale Logging Camp in Elwynn, close to the Red Ridge Mountains.  I hope to write more while there.', '0');
INSERT IGNORE INTO `page_text` (entry, text, next_page) VALUES ('3662', '. . .most strange and uncontrollable feeling.  Never have I felt the way I did today.  Whilst assisting Giles with his history lesson, Tilloa was outside tending to the flower garden.  After a few minutes she came inside and placed a scarlet begonia in my open palm and smiled at me in such a way that my heart felt as though it was trembling within my chest. . . .', '0');
INSERT IGNORE INTO `page_text` (entry, text, next_page) VALUES ('3663', 'To the Honorable Headmaster Crillian,$B$BMy former Master, I write to you so that you might know what your apprentice has been doing of late.  Paying heed to your advice, I sought to build my knowledge and wisdom through travel outside the gates of our beloved Stormwind.  My journeys took me to many places but I have decided to take up residence here in the lovely town of Moonbrook.  The surrounding fields of Westfall are most beautiful as the harvest approaches.', '3664');
INSERT IGNORE INTO `page_text` (entry, text, next_page) VALUES ('3664', 'Within just a few days of my visit I found myself tutoring the local children from the nearby farmlands.  The lessons went so well that the town mayor commissioned me to run a school and construction has begun on a brand new schoolhouse!  From Silverpine to Stormwind and now Moonbrook -- who would have guessed I would see so much of Azeroth!$B$BWarm regards,$B$BStalvan Mistmantle', '3665');
INSERT IGNORE INTO `page_text` (entry, text, next_page) VALUES ('3665', 'Dear Noble Sir,$B$BWord of your need for a tutor for your children has traveled to me here in Goldshire, where I take up temporary residence in the Lion\'s Pride Inn.  Due to the unfortunate state of events in the region, I was forced to abandon my post as Headmaster of the Moonbrook Schoolhouse.  Please accept my application to serve as tutor for your offspring.  Headmaster Crillian of the Academy can speak to you of my abilities if necessary.', '3666');
INSERT IGNORE INTO `page_text` (entry, text, next_page) VALUES ('3666', 'I shall travel to meet you in person when the winter rains subside and the roads are suitable for travel once again.$B$BUntil then,$B$BStalvan Mistmantle of Silverpine', '3667');
INSERT IGNORE INTO `page_text` (entry, text, next_page) VALUES ('3667', '. . .Giles, the boy, seems a bit rambunctious and will be a challenge to educate.  However the elder daughter, Tilloa, seems exceptionally smart.  I couldn\'t help but to notice her captivating beauty as well.  She is on the cusp of womanhood now.  Supposedly the Lord has arranged her marriage for next year.  But I digress.  This week I will accompany the family to their summer cottage near the Eastvale Logging Camp in Elwynn, close to the Red Ridge Mountains.  I hope to write more while there.', '3668');
INSERT IGNORE INTO `page_text` (entry, text, next_page) VALUES ('3668', '. . .most strange and uncontrollable feeling.  Never have I felt the way I did today.  Whilst assisting Giles with his history lesson, Tilloa was outside tending to the flower garden.  After a few minutes she came inside and placed a scarlet begonia in my open palm and smiled at me in such a way that my heart felt as though it was trembling within my chest. . . .', '3669');
INSERT IGNORE INTO `page_text` (entry, text, next_page) VALUES ('3669', '. . .most certain that she shares the same feelings for me now.  She even placed her hand on mine this morning.  When she smiles, her eyes light up like glittering diamonds.  Unspoken words pass between us.  I can feel her in my pounding heart and heated veins.', '3670');
INSERT IGNORE INTO `page_text` (entry, text, next_page) VALUES ('3670', '. . .anger and fury the likes of which I never knew existed!  How dare she.  As I was instructing Giles in the meaning of numbers, Tilloa appears before me with a suitor, holding hands in public nonetheless!  What an uncouth young man.  Rather than introduce me properly, Tilloa simply said, \"Oh that\'s just my tutor, Uncle Stalvan.  He\'s a nice old man.\"  Old!  At that word my cheeks flushed with heat.  I am but a few years older and yet she betrays. . .', '3671');
INSERT IGNORE INTO `page_text` (entry, text, next_page) VALUES ('3671', '. . .downward spiral of despair.  First she mocks me and now she is engaged.  The ungracious charlatan was pretending to love when truly she desired to hurt me all along.  A black void lurks within me now and it grows with each waking moment.  The blood I shall spill pales in comparison to the tears I have shed. . .', '0');
INSERT IGNORE INTO `page_text` (entry, text, next_page) VALUES ('3672', 'KURZEN PRISON RECORDS$B$BDo not disseminate', '3673');
INSERT IGNORE INTO `page_text` (entry, text, next_page) VALUES ('3673', 'BERRIN BURNQUILL$B$BCrimes: Disobedience, Disorderly Conduct$B$BPunishment: Incarceration, 50 years', '3674');
INSERT IGNORE INTO `page_text` (entry, text, next_page) VALUES ('3674', 'EMERINE JUNIS$B$BCrimes: Punishment specially ordered by Colonel Kurzen$B$BPunishment: Incarceration, 75 years', '3675');
INSERT IGNORE INTO `page_text` (entry, text, next_page) VALUES ('3675', 'OSBORN OBNOTICUS$B$BCrimes: Madness$B$BPunishment: Incarceration, 130 years', '3676');
INSERT IGNORE INTO `page_text` (entry, text, next_page) VALUES ('3676', 'BOOKSTON HEROD$B$BCrimes: Consorting with rebels$B$BPunishment: Death by hanging', '3677');
INSERT IGNORE INTO `page_text` (entry, text, next_page) VALUES ('3677', 'COLONEL CONRAD KURZEN$B$BCrimes: Weakness$B$BPunishment: Flung from tower', '0');
INSERT IGNORE INTO `page_text` (entry, text, next_page) VALUES ('3678', 'KURZEN OFFICERS\' DOSSIER$B$BDo not disseminate', '3679');
INSERT IGNORE INTO `page_text` (entry, text, next_page) VALUES ('3679', 'CHIEF ANDERS$B$BLeads the commandos and jungle fighters.  Responsible for maintaining the compound\'s militia and protecting the compound resources from rebel attacks.', '3680');
INSERT IGNORE INTO `page_text` (entry, text, next_page) VALUES ('3680', 'CHIEF GAULUS$B$BLeads the medicine men and head shrinkers.  Responsible for medical corps and maintaining peace with nearby Bloodscalps and Skullsplitters.', '3681');
INSERT IGNORE INTO `page_text` (entry, text, next_page) VALUES ('3681', 'CHIEF MIRANDA$B$BLeads the Kurzen Shadow Ops.  Responsible for maintaining blue stone cache and for further research into its uses.', '3682');
INSERT IGNORE INTO `page_text` (entry, text, next_page) VALUES ('3682', 'CHIEF ESQUIVEL$B$BInterim chief after the death of Colonel Kurzen.  Responsible for overseeing all operations of Kurzen\'s Expedition.', '0');
INSERT IGNORE INTO `page_text` (entry, text, next_page) VALUES ('3683', 'Moon Over the Vale', '3684');
INSERT IGNORE INTO `page_text` (entry, text, next_page) VALUES ('3684', 'A Moon over the Vale shines$BCasting its glow upon the jungle$BWhere proud Warriors heed the call$BTo defend our Nation and sacred grounds. $B$BA Moon over the Vale shines$BFar above the cries of battle$BWhere blood is spilled$BOf foe and comrade alike.', '3685');
INSERT IGNORE INTO `page_text` (entry, text, next_page) VALUES ('3685', 'And when our brethren pass$BInto realms beyond the known$BThe soul-spirit hardens$BDeep beneath the Vale.$B$BAnd when our brethren pass$BInto the Mountain\'s Temple$BWe shall protect their eternal spirit$BEncased within the holy blue crystal.$B$BAnd when our brethren pass$BA Moon over the Vale shines.', '3686');
INSERT IGNORE INTO `page_text` (entry, text, next_page) VALUES ('3686', 'Gri\'lek the Wanderer', '3687');
INSERT IGNORE INTO `page_text` (entry, text, next_page) VALUES ('3687', 'Tale of Gri\'lek the Wanderer$B$B[...The beginnings of the tablet were worn and erased.  But the end was legible...]$B$BGri\'lek stamped through the jungle.  And his eyes burned and his chest rumbled, for there was great anger in him.  $B$BIn fury he roared to the sky, and he raised his arm.  He raised his left arm, grown strong and sure from hunting without its twin.  $B$BFor Gri\'lek\'s right arm was gone, and it would not return.', '3688');
INSERT IGNORE INTO `page_text` (entry, text, next_page) VALUES ('3688', 'And so he wandered, and he searched.  And his arm remained lost to him.  And so he cursed and roared as he walked.  $B$BBut Gri\'lek had long ago turned his ear away from the spirits, and they were angered and would not listen to his curses.$B$BDoomed was Gri\'lek.  Doomed to wander, armless.', '3689');
INSERT IGNORE INTO `page_text` (entry, text, next_page) VALUES ('3689', 'Fall of Gurubashi', '3690');
INSERT IGNORE INTO `page_text` (entry, text, next_page) VALUES ('3690', 'Rising from the ocean, a tower of water, Neptulon sent the great Krakken to doomed I\'lalai.  So huge were their forms that jungles of kelp swayed through their limbs, and leviathans swam through bodies.  $B$BThe largest Krakken then raised his arms high and crashed them into the sea, sending waves about him.  And they raged toward I\'lalai.', '3691');
INSERT IGNORE INTO `page_text` (entry, text, next_page) VALUES ('3691', 'The Krakken roared, and their voices thundered like an ocean storm: $B$B\"We come.\"$B$BMin\'loth, standing firm, called forth his magic.  The waves sent to I\'lalai parted and washed to both sides, and they flooded the jungle beyond.  Min\'loth then bade his minions chant spells of binding, and a din rang out as dozens of troll voices rose.$B$BAnd one voice rose above the rest.', '3692');
INSERT IGNORE INTO `page_text` (entry, text, next_page) VALUES ('3692', 'Min\'loth bellowed and his magic gathered the power of his minion\'s spells, and he cast it at the approaching Krakken.$B$BThe seas parted and Min\'loth\'s spell sped toward the servants of Neptulon.  Lightning tore the sky and the spell struck them, and a thousand bolts fell, boiling water and burning craters in the earth.$B$BMin\'loth cried in triumph, knowing his spell would fell the great beasts.', '3693');
INSERT IGNORE INTO `page_text` (entry, text, next_page) VALUES ('3693', 'But the Krakken are old, very old.  They remembered when the land was first born from the sea.$B$BThey remembered when the Old Ones ruled and when the Travelers came and cast them down.  They remembered when magic was new.$B$BThey are old and they hold many secrets.  And though Min\'loth\'s spell was strong, it, like the troll, was mortal.  $B$BAnd so it failed.', '3694');
INSERT IGNORE INTO `page_text` (entry, text, next_page) VALUES ('3694', 'If failed to bind the Krakken, but it enraged them.  Not in aeons had a mortal caused them pain, and the troll\'s spell was painful.$B$BAnd so they shed the bindings of Min\'loth\'s spell, but then roared and stuck with fury.$B$BA rumble was heard as great waves rose from the deep and raced toward the land.  When they reached I\'lalai they cast a shadow on the city.$B$BBut before they destroyed it the Krakken halted, poised.', '3695');
INSERT IGNORE INTO `page_text` (entry, text, next_page) VALUES ('3695', 'The troll witchdoctors trembled and cried out to their master.  Min\'loth gazed at the mountains of the sea, doomed and defiant.  He turned to his adepts and whispered, and the trolls etched his last words into stone.  Min\'loth then faced the looming Krakken.$B$BHe grimaced and hurled his staff, his last bold act.$B$BThe Krakken then bent their fury upon Min\'loth, and an ocean fell upon I\'lalai.$B$BAnd it was no more.', '3696');
INSERT IGNORE INTO `page_text` (entry, text, next_page) VALUES ('3696', 'And then the waters fell upon the jungle, washing clean all they met.  Trolls and beasts cried out as the waters smashed and drowned them.$B$BMany Gurubashi wondered why the ocean swallowed them, but then they died and knew nothing.$B$BAnd finally, when the waters reached the mountains, they stopped.  Appeased, they retreated back beyond the shores, and they left a wake of death.$B$BThey retreated, but they surged around I\'lalai and remained, drowning it forever.', '3697');
INSERT IGNORE INTO `page_text` (entry, text, next_page) VALUES ('3697', 'And the chief Var\'gazul, safe behind the mountains in Zul\'Gurub, went out to the jungle and found it washed clean of his people.$B$BAnd he despaired, for his dreams of conquest were thwarted.$B$BAnd never was Min\'loth the Serpent found.', '3698');
INSERT IGNORE INTO `page_text` (entry, text, next_page) VALUES ('3698', 'The Emperor\'s Tomb', '3699');
INSERT IGNORE INTO `page_text` (entry, text, next_page) VALUES ('3699', 'By moon and fire,$BBy flesh and bone,$BScribed in blood,$BCarved in stone.$B$BLeave this place$BOr meet your doom$BDeath stands guard$BOver the Emperor\'s Tomb.', '0');
INSERT IGNORE INTO `page_text` (entry, text, next_page) VALUES ('3700', 'I hope this sigil finds you well, $N. The Archmage told me of your coming and I sent word immediately.$B$BWith all that has happened in the past years to bring arcane magic back to our race, you may find struggles and trials ahead. I can help with such things.  When you are ready, find me inside Aldrassil, on the second level.$B$B-Rhyanda, Mage Trainer', '0');
INSERT IGNORE INTO `page_text` (entry, text, next_page) VALUES ('3706', 'Northshire Valley is a dangerous place, ideally suited to the survival skills of a hunter. Needless to say I have been impressed with your contributions to the valley\'s defense and I look forward to meeting you. Please look for me by the entrance to the abbey.', '0');
INSERT IGNORE INTO `page_text` (entry, text, next_page) VALUES ('3707', 'Your Holiness: Cho\'gall has given us the directive to move forward: We\'re going to wipe your cathedral off the map. When the spiritual center of Stormwind is reduced to a crater in the center of the city, panic will spread, and disillusioned peasants will flock toward our true religion. I\'m sending the explosives your way. For the Hammer! For Deathwing! For the glorious new world to come!    -Samuelson', '0');
INSERT IGNORE INTO `page_text` (entry, text, next_page) VALUES ('3708', 'Zaren,$B$BYour first objective is to take and hold the Cathedral Quarter of Gilneas City. From there I want you to work with Lord Crowley\'s worgen to push forward into enemy territory. Take out their near outposts and cut their lines of communication.$B$BKing Wrynn has assured me that a full armada of warships is en route and should be arriving any day. Once the rest of the fleet is here, we will launch an all out assault on Forsaken Forward Command and beat those worthless maggots back into Silverpine Forest$B$BOnce Gilneas is securely in Alliance control, we will begin preparations for retaking Lordaeron.$B$BFor the glory of the Alliance!$B$B-High Commander Halford Wyrmbane$B$BP.S. We will launch a signal flare when we are ready to attack Forsaken Forward Command. Keep your soldiers on high alert.', '0');
INSERT IGNORE INTO `page_text` (entry, text, next_page) VALUES ('3709', 'Karthis, Omasum,$B$BThe time has come for the ritual of which we spoke.  I will be leaving Stratholme to deal with the prisoner in Plaguewood\'s central slaughterhouse.  Make certain that security is tight.  Fail, and my lord will have both of your heads.  Succeed, and you will have a new dwarven brother to join your ranks.$B$B- Anastari', '0');
INSERT IGNORE INTO `page_text` (entry, text, next_page) VALUES ('3710', 'I\'ve found an incredible site!$B$BThe whole area pulsates with the hum of ancient architecture.$B$BIf it were not so late in the day, I would investigate the chamber immediately!$B$BSleeping, tonight, will be a struggle...', '3711');
INSERT IGNORE INTO `page_text` (entry, text, next_page) VALUES ('3711', 'A most productive day, today!$B$BThe chamber is indeed of ancient origin, and houses a magnificent mechanism which seems to be in disrepair.$B$BI will investigate further tomorrow.$B$BThis discovery will surely force Schnottz to take notice of me!$B$BHow could he deny me a promotion after something like this?', '3712');
INSERT IGNORE INTO `page_text` (entry, text, next_page) VALUES ('3712', 'It has taken me all day to wrestle the cipher from these hieroglyphs:$B$BThrough eyes of blue is starlight$Brevealed.$B$BTen shards, one rod, and the veil$Bdisappears.$B$BForget Schnottz and his empty promises!$B$BIf I can just unravel this riddle, its secrets shall be mine!', '3713');
INSERT IGNORE INTO `page_text` (entry, text, next_page) VALUES ('3713', 'I\'ve done it!$B$BUsing sapphire from the chamber\'s adornments, I have fashioned a pair of goggles. With them, I am able to see things previously hidden from view.$B$BAmazing!$B$BWith luck, my next entry will find me a newly rich man!', '0');
INSERT IGNORE INTO `page_text` (entry, text, next_page) VALUES ('3718', 'Daily Report - Hillsbrad Foothills$B$BSouthshore Under Attack - Worgen Activity Increasing$B$BReports of worgen activity from the south, specifically around Southshore, are increasing in frequency. Our scouts indicate that the terrorist known as Ivar Bloodfang and his renegades are responsible for these recent attacks against our citizens.$B$BRecommendation: Send capable heroes to investigate.', '3719');
INSERT IGNORE INTO `page_text` (entry, text, next_page) VALUES ('3719', 'Trouble at the Sludge Fields$B$BThe area formerly known as Hillsbrad Fields - now known as the Sludge Fields, located in southwestern Hillsbrad - has seen a sharp rise in \"accidents.\" Reports from Warden Stillwater indicate possible contagion outbreak.$B$BRecommendation: Send capable heroes to investigate.', '3720');
INSERT IGNORE INTO `page_text` (entry, text, next_page) VALUES ('3720', 'Azurelode Spider Farm Productivity Issues$B$BOur spider domestication operations in the area near Azurelode Mine, located in the southwest region of Hillsbrad, are seeing extremely low production numbers. Spider-Handler Sarus and Captain Keyton have requested assistance.$B$BRecommendation: Send capable heroes to investigate.', '0');
INSERT IGNORE INTO `page_text` (entry, text, next_page) VALUES ('3722', 'Journal of Clerk Horrace Whitesteed$B$BThe Battle for Hillsbrad', '3723');
INSERT IGNORE INTO `page_text` (entry, text, next_page) VALUES ('3723', 'Day 12$B$BWe just received word that Southshore has been lost. The Forsaken war machine is too powerful. We are no match for their chemical weapons.$B$BI will attempt, however futilely, to keep this journal updated. I must record these atrocities for posterity.', '3724');
INSERT IGNORE INTO `page_text` (entry, text, next_page) VALUES ('3724', 'Day 16$B$BMany of the farmers and residents of Hillsbrad fled. Some attempted to venture east to Arathi Highlands. They never made it. Slaughtered before they reached Thoradin\'s Wall.$B$BMany went north to seek refuge in Silverpine Forest. They walked right into the heart of enemy territory! Insane, I know, but they claim that the worgen are now on our side. $B$BLast I heard they made it to Fenris Isle. We lost contact with them after that.  $B$BWorgen? Could it be true...', '3725');
INSERT IGNORE INTO `page_text` (entry, text, next_page) VALUES ('3725', 'Day 19$B$BWe knew our time was limited. We evacuated everyone that we could, but Burnside stated that he would go down with Hillsbrad. We all agreed to stand by his side.$B$BMagistrate Burnside, Citizen Wilkes, Blacksmith Verringtan and the farmers, Getz, Kalaba and Ray remain here as well as a few dozen farmhands.', '3726');
INSERT IGNORE INTO `page_text` (entry, text, next_page) VALUES ('3726', 'Day 20$B$BThe Hillsbrad Fields are no more. Those that did not flee were captured. The Forsaken have declared us as prisoners of war. We are to be laborers at their new plantation.', '3727');
INSERT IGNORE INTO `page_text` (entry, text, next_page) VALUES ('3727', 'Day 25$B$BThey incinerated our farms and made us watch. Construction begins tomorrow.', '3728');
INSERT IGNORE INTO `page_text` (entry, text, next_page) VALUES ('3728', 'Day 40$B$BConstruction of their plantation is nearly complete. This place resembles no farm or plantation that I\'ve ever seen.', '3729');
INSERT IGNORE INTO `page_text` (entry, text, next_page) VALUES ('3729', 'Day 41$B$BThe warden of the plantation, Stillwater, arrived today. He lined all of us up and gave us medical examinations. Nobody knows what\'s going on.', '3730');
INSERT IGNORE INTO `page_text` (entry, text, next_page) VALUES ('3730', 'Day 45$B$BWe\'ve started laboring in the sludge fields. They grow poisonous mushrooms in fetid water and muck.', '3731');
INSERT IGNORE INTO `page_text` (entry, text, next_page) VALUES ('3731', 'Day 50$B$BI hear screams coming from the Warden\'s manor. People are starting to disappear.', '3732');
INSERT IGNORE INTO `page_text` (entry, text, next_page) VALUES ('3732', 'Day 52$B$BI overheard some guards talking about the farmers, Ray, Getz and Kalaba. Something terrible has happened to them - of this I am certain.', '3733');
INSERT IGNORE INTO `page_text` (entry, text, next_page) VALUES ('3733', 'Day 60$B$BThose of us that remain are scared for our lives. Some of the farmers claim to have seen ghouls running amok at night.', '3734');
INSERT IGNORE INTO `page_text` (entry, text, next_page) VALUES ('3734', 'Day 61$B$BA strange turn of events today: a master apothecary from Tarren Mill arrived. From what little information I am able to gather he is here to supervise the operations. Lydon is his name.', '3735');
INSERT IGNORE INTO `page_text` (entry, text, next_page) VALUES ('3735', 'Day 62$B$BMaster Apothecary Lydon was dragged away by Stillwater\'s guards. He was yelling and screaming that the Dark Lady would have Stillwater\'s head for this. What is he talking about, I wonder?', '3736');
INSERT IGNORE INTO `page_text` (entry, text, next_page) VALUES ('3736', 'Day 63$B$BI saw them take away Burnside and Verringtan last night. I can only assume that I\'m next.$B$B<The rest of the journal is full of incoherent scribbles.>', '0');
INSERT IGNORE INTO `page_text` (entry, text, next_page) VALUES ('3750', 'The tough little goblin walked purposefully into the engineering shop, raising her eyebrows at a few items as she approached the shopkeeper.\n\n\"How\'s it going, Jack?\"  Her voice seductively brushed his pointy ears with the rough texture of someone who inhaled too much motorcycle exhaust.  \n\nThe goblin called Jack looked up and grinned.  \"Revi!  It\'s going much better since you just arrived.\"  Jack set his arclight spanner on the table.  \"What can I do ya for?\"', '3751');
INSERT IGNORE INTO `page_text` (entry, text, next_page) VALUES ('3751', 'Holding her elbow in one hand, Revi tapped her chin lightly.  \"I\'m not real sure.  Ya got any specials?\"\n\n\"Are you kidding?  I\'ve got the best deals anywhere!\" Jack replied enthusiastically.  \"Just got these in this morning, in all sorts of colors.  Small red rockets, got some in blue and green too.\"  Revi\'s disappointed look was not missed by the expert shopkeeper, and he quickly upped the ante.  There was a loud \'thud\' as Jack dropped something on the table, \"I call it The Big One,\" he said.  \"It\'s goblin only, very difficult to find.\"\n\n\"Nice, very nice,\" Revi said, sounding unconvinced.  Her eyes wandered a bit.', '3752');
INSERT IGNORE INTO `page_text` (entry, text, next_page) VALUES ('3752', '\"Okay, fine.  I can see you\'re a goblin of superb taste.\"  Jack looked around conspiratorially before carefully laying out a new item, buckling the table with an ominous creak.  \"It\'s called...\" Jack paused for dramatic effect, \"The Bigger One!\"$B$BRevi\'s eyes widened in surprise.  \"Is that... is it... real?\"  $B$BFeeling the advantage, Jack allowed himself to relax a bit.  Putting his hands behind his head and leaning back in his chair, he replied with lazily narrowed eyes, \"It\'s 100% goblin parts, baby.  Natural resources.\"  $B$BAfter a moment of hesitation, Revi reached out and gingerly stroked the smooth yellow surface.  \"I\'ll take two!\"$B$B\"Excellent!  You know, if you like that, you might be interested in some hardened adamantite tubes.  They can enhance the effect.\"  $B$BRevi nodded excitedly and looked behind Jack at something on the wall.  \"What is that?\"', '3753');
INSERT IGNORE INTO `page_text` (entry, text, next_page) VALUES ('3753', 'Jack looked over his shoulder.  \"Oh, those are for reviving dead people.\"  $B$BRevi was intrigued.  \"Can they be used on someone while they\'re still alive?\"  $B$BNever wanting to miss a sale, Jack responded without missing a beat, \"Oh sure!  Tell you what.  You get all this stuff, and I\'ll throw in a pair of mayhem projection goggles for half price!\"$B$BRevi pulled out a sack of coins that made Jack drool.  \"Why not?  Motorcycle sales have been good this year.\"  $B$BAs Jack quickly tallied the total, he asked, \"This must be a serious raid or somethin\'?\"  $B$BRevi shrugged, \"Nah, I got a blind date with a guy named Marcus tonight.\"', '3754');
INSERT IGNORE INTO `page_text` (entry, text, next_page) VALUES ('3754', 'Jack nodded.  \"What about that guy from the motor club you was datin\'?\"$B$BThe leather-clad goblin scooped up her bag with one arm, and held up an outstretched hand.  \"He never put a ring on it.  A girl\'s gotta have her priorities.\"  $B$BJack smiled and shook his head as he watched her walk out of the shop.$B$B<The remaining pages require a secret goblin decoder ring to read.>', '0');
INSERT IGNORE INTO `page_text` (entry, text, next_page) VALUES ('3745', 'Zephyrus, minion of Al\'Akir$B$BResides in the ruins of the barracks.', '3746');
INSERT IGNORE INTO `page_text` (entry, text, next_page) VALUES ('3746', 'Teracula, minion of Therazane$B$BWalks the path outside of the old barracks.', '3747');
INSERT IGNORE INTO `page_text` (entry, text, next_page) VALUES ('3747', 'Bloodvenom, minion of Neptulon$B$BImprisoned in the west wing of the prison.', '3748');
INSERT IGNORE INTO `page_text` (entry, text, next_page) VALUES ('3748', 'Infernus, minion of Ragnaros$B$BImprisoned in the east wing of the prison.', '3749');
INSERT IGNORE INTO `page_text` (entry, text, next_page) VALUES ('3749', 'The D-1000$B$BAwaits you at the old arena.', '0');

# NeatElves
UPDATE `creature_template` SET `gossip_menu_id` = 2851 WHERE `entry` = 7776;
INSERT IGNORE INTO `gossip_menu` (`entry`, `text_id`) VALUES (2851, 3545);
UPDATE `creature_template` SET `gossip_menu_id` = 11361 WHERE `entry` = 14637;
UPDATE gossip_menu SET entry = 11361 WHERE entry = 14637;
UPDATE gossip_menu_option SET menu_id = 11361 WHERE menu_id = 14637;
UPDATE locales_gossip_menu_option SET menu_id = 11361 WHERE menu_id =14637;
UPDATE `creature_template` SET `gossip_menu_id` = 11738 WHERE `entry` = 14395;
INSERT IGNORE INTO `gossip_menu` (`entry`, `text_id`) VALUES (11738, 16432);
UPDATE `creature_template` SET `gossip_menu_id` = 1141 WHERE `entry` = 8115;
UPDATE gossip_menu SET entry = 1141 WHERE entry = 50404;
UPDATE gossip_menu_option SET menu_id = 1141 WHERE menu_id = 50404;
UPDATE locales_gossip_menu_option SET menu_id = 1141 WHERE menu_id =50404;
UPDATE `creature_template` SET `gossip_menu_id` = 6228 WHERE `entry` = 7875;
INSERT IGNORE INTO `gossip_menu` (`entry`, `text_id`) VALUES (6228, 7402);
UPDATE `creature_template` SET `gossip_menu_id` = 4244 WHERE `entry` = 11098;
INSERT IGNORE INTO `gossip_menu` (`entry`, `text_id`) VALUES (4244, 5407);
UPDATE `creature_template` SET `gossip_menu_id` = 11004 WHERE `entry` = 3418;
INSERT IGNORE INTO `gossip_menu` (`entry`, `text_id`) VALUES (11004, 15302);
UPDATE `creature_template` SET `gossip_menu_id` = 10968 WHERE `entry` = 3341;
INSERT IGNORE INTO `gossip_menu` (`entry`, `text_id`) VALUES (10968, 15246);
UPDATE `creature_template` SET `gossip_menu_id` = 7956 WHERE `entry` = 9460;
INSERT IGNORE INTO `gossip_menu` (`entry`, `text_id`) VALUES (7956, 9774);
UPDATE `creature_template` SET `gossip_menu_id` = 10438 WHERE `entry` = 11701;
INSERT IGNORE INTO `gossip_menu` (`entry`, `text_id`) VALUES (10438, 14474);
INSERT IGNORE INTO `npc_text` (`ID`, `text0_0`, `text0_1`, `lang0`, `prob0`, `em0_0`, `em0_1`, `em0_2`, `em0_3`, `em0_4`, `em0_5`, `text1_0`, `text1_1`, `lang1`, `prob1`, `em1_0`, `em1_1`, `em1_2`, `em1_3`, `em1_4`, `em1_5`, `text2_0`, `text2_1`, `lang2`, `prob2`, `em2_0`, `em2_1`, `em2_2`, `em2_3`, `em2_4`, `em2_5`, `text3_0`, `text3_1`, `lang3`, `prob3`, `em3_0`, `em3_1`, `em3_2`, `em3_3`, `em3_4`, `em3_5`, `text4_0`, `text4_1`, `lang4`, `prob4`, `em4_0`, `em4_1`, `em4_2`, `em4_3`, `em4_4`, `em4_5`, `text5_0`, `text5_1`, `lang5`, `prob5`, `em5_0`, `em5_1`, `em5_2`, `em5_3`, `em5_4`, `em5_5`, `text6_0`, `text6_1`, `lang6`, `prob6`, `em6_0`, `em6_1`, `em6_2`, `em6_3`, `em6_4`, `em6_5`, `text7_0`, `text7_1`, `lang7`, `prob7`, `em7_0`, `em7_1`, `em7_2`, `em7_3`, `em7_4`, `em7_5`) VALUES
(16432, 'Need TXT YTDB', '', 0, 100, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0),
(15302, 'Need TXT YTDB', '', 0, 100, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0),
(15246, 'Need TXT YTDB', '', 0, 100, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0);
DELETE FROM `creature_template_addon` WHERE `entry` = 454;
UPDATE `creature_template` SET `gossip_menu_id` = 6533 WHERE `entry` = 15171;
INSERT IGNORE INTO `gossip_menu` (`entry`, `text_id`) VALUES (6533, 7735);
UPDATE `creature_template` SET `gossip_menu_id` = 6534 WHERE `entry` = 15170;
INSERT IGNORE INTO `gossip_menu` (`entry`, `text_id`) VALUES (6534, 7736);
UPDATE `creature_template` SET `gossip_menu_id` = 6692 WHERE `entry` = 15609;
INSERT IGNORE INTO `gossip_menu` (`entry`, `text_id`) VALUES (6692, 8065);
UPDATE `creature_template` SET `gossip_menu_id` = 6687 WHERE `entry` = 15612;
INSERT IGNORE INTO `gossip_menu` (`entry`, `text_id`) VALUES (6687, 8059);
UPDATE `creature_template` SET `gossip_menu_id` = 6926 WHERE `entry` = 15613;
INSERT IGNORE INTO `gossip_menu` (`entry`, `text_id`) VALUES (6926, 8215);
UPDATE `creature_template` SET `gossip_menu_id` = 6596 WHERE `entry` = 15194;
INSERT IGNORE INTO `gossip_menu` (`entry`, `text_id`) VALUES (6596, 7816);
UPDATE `creature_template` SET `gossip_menu_id` = 6568 WHERE `entry` = 15293;
INSERT IGNORE INTO `gossip_menu` (`entry`, `text_id`) VALUES (6568, 7783);
UPDATE `creature_template` SET `gossip_menu_id` = 6544 WHERE `entry` = 15190;
INSERT IGNORE INTO `gossip_menu` (`entry`, `text_id`) VALUES (6544, 7753);
UPDATE `creature_template` SET `gossip_menu_id` = 6531 WHERE `entry` = 15182;
INSERT IGNORE INTO `gossip_menu` (`entry`, `text_id`) VALUES (6531, 7733);
UPDATE `creature_template` SET `gossip_menu_id` = 6562 WHERE `entry` = 15178;
INSERT IGNORE INTO `gossip_menu` (`entry`, `text_id`) VALUES (6562, 7778);
UPDATE `creature_template` SET `gossip_menu_id` = 5675 WHERE `entry` = 14347;
INSERT IGNORE INTO `gossip_menu` (`entry`, `text_id`) VALUES (5675, 6812);
REPLACE INTO `gossip_menu` (`entry`, `text_id`) VALUES (5689, 6842);
REPLACE INTO `gossip_menu` (`entry`, `text_id`) VALUES (5688, 6843);
REPLACE INTO `gossip_menu` (`entry`, `text_id`) VALUES (5687, 6844);
REPLACE INTO `gossip_menu` (`entry`, `text_id`) VALUES (5702, 6867);
REPLACE INTO `gossip_menu` (`entry`, `text_id`) VALUES (5701, 6868);
REPLACE INTO `gossip_menu` (`entry`, `text_id`) VALUES (5704, 6869);
REPLACE INTO `gossip_menu` (`entry`, `text_id`) VALUES (5703, 6870);
DELETE FROM `creature_questrelation` WHERE `id` = 14347 AND `quest` = 7785;
UPDATE `gossip_menu` SET `text_id` = '7754' WHERE `entry` =6543 AND `text_id` =68;
UPDATE `gossip_menu_option` SET `action_menu_id` = '6587' WHERE `menu_id` =6588 AND `id` =0;
UPDATE `gossip_menu_option` SET `action_menu_id` = '6586' WHERE `menu_id` =6587 AND `id` =0;
UPDATE `gossip_menu_option` SET `action_menu_id` = '6585' WHERE `menu_id` =6586 AND `id` =0;
UPDATE `creature_template` SET `gossip_menu_id` = 7239 WHERE `entry` = 16417;
INSERT IGNORE INTO `gossip_menu` (`entry`, `text_id`) VALUES (7239, 8539);
UPDATE `creature_template` SET `gossip_menu_id` = 1469 WHERE `entry` = 8126;
INSERT IGNORE INTO `gossip_menu` (`entry`, `text_id`) VALUES (1469, 2138);
UPDATE `creature_template` SET `gossip_menu_id` = 4152 WHERE `entry` = 8736;
INSERT IGNORE INTO `gossip_menu` (`entry`, `text_id`) VALUES (4152, 5177);
UPDATE `creature_template` SET `gossip_menu_id` = 8124 WHERE `entry` = 20278;
INSERT IGNORE INTO `gossip_menu` (`entry`, `text_id`) VALUES (8124, 10062);
UPDATE `creature_template` SET `gossip_menu_id` = 6539 WHERE `entry` = 15192;
INSERT IGNORE INTO `gossip_menu` (`entry`, `text_id`) VALUES (6539, 7742);
UPDATE `creature_template` SET `gossip_menu_id` = 11876 WHERE `entry` = 7770;
INSERT IGNORE INTO `gossip_menu` (`entry`, `text_id`) VALUES (11876, 16644);
INSERT IGNORE INTO `npc_text` (`ID`, `text0_0`, `text0_1`, `lang0`, `prob0`, `em0_0`, `em0_1`, `em0_2`, `em0_3`, `em0_4`, `em0_5`, `text1_0`, `text1_1`, `lang1`, `prob1`, `em1_0`, `em1_1`, `em1_2`, `em1_3`, `em1_4`, `em1_5`, `text2_0`, `text2_1`, `lang2`, `prob2`, `em2_0`, `em2_1`, `em2_2`, `em2_3`, `em2_4`, `em2_5`, `text3_0`, `text3_1`, `lang3`, `prob3`, `em3_0`, `em3_1`, `em3_2`, `em3_3`, `em3_4`, `em3_5`, `text4_0`, `text4_1`, `lang4`, `prob4`, `em4_0`, `em4_1`, `em4_2`, `em4_3`, `em4_4`, `em4_5`, `text5_0`, `text5_1`, `lang5`, `prob5`, `em5_0`, `em5_1`, `em5_2`, `em5_3`, `em5_4`, `em5_5`, `text6_0`, `text6_1`, `lang6`, `prob6`, `em6_0`, `em6_1`, `em6_2`, `em6_3`, `em6_4`, `em6_5`, `text7_0`, `text7_1`, `lang7`, `prob7`, `em7_0`, `em7_1`, `em7_2`, `em7_3`, `em7_4`, `em7_5`) VALUES
(16644, 'Need TXT YTDB', '', 0, 100, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0);
UPDATE `creature_loot_template` SET `entry` = '37569' WHERE `creature_loot_template`.`entry` =36478 AND `item` in (50380,50379);
UPDATE `creature_loot_template` SET `entry` = '37568' WHERE `entry` =36499 AND `item` in (50380,50379);
UPDATE `creature_loot_template` SET `entry` = '37566' WHERE `entry` =36620 AND `item` in (50380,50379);
UPDATE `creature_loot_template` SET `entry` = '37563' WHERE `entry` =36666 AND `item` in (50380,50379);
UPDATE `creature_loot_template` SET `entry` = '37609' WHERE `entry` =36788 AND `item` in (50380,50379);
UPDATE `creature_loot_template` SET `entry` = '37638' WHERE `entry` =36830 AND `item` in (50380,50379);
UPDATE `creature_loot_template` SET `entry` = '37644' WHERE `entry` =36840 AND `item` in (50380,50379);
UPDATE `creature_loot_template` SET `entry` = '37635' WHERE `entry` =36879 AND `item` in (50380,50379);
UPDATE `creature_loot_template` SET `entry` = '37622' WHERE `entry` =36886 AND `item` in (50380,50379);
UPDATE `creature_loot_template` SET `entry` = '37642' WHERE `entry` =36893 AND `item` in (50380,50379);
UPDATE `creature_loot_template` SET `entry` = '38524' WHERE `entry` =38172 AND `item` in (50380,50379);
UPDATE `creature_loot_template` SET `entry` = '38525' WHERE `entry` =38173 AND `item` in (50380,50379);
UPDATE `creature_loot_template` SET `entry` = '38563' WHERE `entry` =38175 AND `item` in (50380,50379);
UPDATE `creature_loot_template` SET `entry` = '38564' WHERE `entry` =38177 AND `item` in (50380,50379);
UPDATE `creature_loot_template` SET `entry` = '37637' WHERE `entry` =36842 AND `item` =50379;
UPDATE `creature_loot_template` SET `entry` = '37626' WHERE `entry` =36891 AND `item` =50379;
UPDATE `creature_loot_template` SET `entry` = '38249' WHERE `entry` =37711 AND `item` =50379;
UPDATE `creature_loot_template` SET `entry` = '38026' WHERE `entry` =37713 AND `item` =50379;
UPDATE `creature_loot_template` SET `entry` = '38193' WHERE `entry` =36564 AND `item` =50379;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '1' WHERE `item` in (50380,50379);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`) VALUES ('37609', '50379', '1', '0', '1', '1'), ('37626', '50380', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`) VALUES ('37642', '50379', '1', '0', '1', '1'), ('38026', '50380', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`) VALUES ('37635', '50379', '1', '0', '1', '1'), ('37637', '50380', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`) VALUES ('38193', '50380', '1', '0', '1', '1'), ('38249', '50380', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`) VALUES ('38563', '50379', '1', '0', '1', '1');
UPDATE `creature_template` SET `lootid` = '37568' WHERE `entry` =37568;
UPDATE `creature_loot_template` SET `entry` = '37568' WHERE `entry` =12403 AND `item` =50319;
DELETE FROM `creature` WHERE `guid` = 10992;

# virusav
UPDATE `gossip_scripts` SET `datalong`=40958 WHERE `id`=8671;

# FIX
UPDATE `gameobject` SET `spawntimesecs` = 120 WHERE `guid` = 7875;
DELETE FROM `creature` WHERE `id` = 18181;
UPDATE `creature_model_info` SET `bounding_radius`=0.3694949,`combat_reach`=1.81125,`gender`=1 WHERE `modelid`=23967; -- Chief Engineer Galpen Rolltie
UPDATE `creature_model_info` SET `bounding_radius`=0.3694949,`combat_reach`=1.81125,`gender`=1 WHERE `modelid`=23220; -- Crafty Wobblesprocket
INSERT INTO `creature` (`guid`, `id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`) VALUES
(111479,33233,603,1,1,0,0,560.1334,-143.035431,393.822632,0,120,0,0,1,0,0,0),
(111480,33233,603,1,1,0,0,572.410645,-138.656357,393.904419,0,120,0,0,1,0,0,0),
(111481,33233,603,1,1,0,0,585.9284,-146.587509,391.6004,0,120,0,0,1,0,0,0),
(111482,33233,603,1,1,0,0,589.7287,-137.1148,393.9011,0,120,0,0,1,0,0,0),
(111483,33233,603,1,1,0,0,605.9284,-140.108887,393.7972,0,120,0,0,1,0,0,0),
(111484,33233,603,1,1,0,0,630.2436,-276.259064,392.3122,0,120,0,0,1,0,0,0),
(111485,33233,603,1,1,0,0,638.241638,-272.1735,392.135132,0,120,0,0,1,0,0,0);
UPDATE `creature_template` SET `InhabitType`=7 WHERE `entry`=27452;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`) VALUES
(111486, 24938, 530, 1, 1, 22911, 0, 12700.2, -6865.85, 12.5483, 0.742416, 600, 0, 0, 6986, 0, 0, 2),
(111487, 24938, 530, 1, 1, 22911, 0, 12690.9, -6874.34, 12.4344, 3.88401, 600, 0, 0, 6986, 0, 0, 2),
(111488, 24938, 530, 1, 1, 22911, 0, 12658, -6841.25, 12.4231, 3.90757, 600, 0, 0, 6986, 0, 0, 2),
(111489, 24938, 530, 1, 1, 22911, 0, 12667.8, -6831.93, 12.5473, 0.809175, 600, 0, 0, 6986, 0, 0, 2),
(111490, 24938, 530, 1, 1, 22911, 0, 12670.4, -6854.46, 12.422, 3.89579, 600, 0, 0, 6986, 0, 0, 2),
(111491, 24938, 530, 1, 1, 22911, 0, 12678.7, -6862.69, 12.4261, 3.89579, 600, 0, 0, 6986, 0, 0, 2),
(111492, 24938, 530, 1, 1, 22911, 0, 12688.8, -6853.61, 12.5505, 0.734558, 600, 0, 0, 6986, 0, 0, 2),
(111493, 24938, 530, 1, 1, 22911, 0, 12680.7, -6845.13, 12.5501, 0.707069, 600, 0, 0, 6986, 0, 0, 2);
UPDATE `creature_template` SET `InhabitType`=4 WHERE `entry` IN (21173,21170,22404,22405,22406);
INSERT IGNORE INTO `gameobject_template` (`entry`,`type`,`displayId`,`name`,`castBarCaption`,`unk1`,`faction`,`flags`,`size`,`data0`,`data1`,`data2`,`data3`,`data4`,`data5`,`data6`,`data7`,`data8`,`data9`,`data10`,`data11`,`data12`,`data13`,`data14`,`data15`,`data16`,`data17`,`data18`,`data19`,`data20`,`data21`,`data22`,`data23`,`ScriptName`) VALUES 
(183929,6,0, '', '', '',35,0,1,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, '');
UPDATE `creature_template` SET `mechanic_immune_mask`=`mechanic_immune_mask`|16|8388608 WHERE `type`=6;
UPDATE `creature_template` SET `InhabitType`=5 WHERE `entry`=30118;
UPDATE `creature_template` SET `speed_walk`=2.4,`speed_run`=0.857142857 WHERE `entry`=30084;
INSERT INTO `gameobject` (guid,id,map,spawnMask,phaseMask,position_x,position_y,position_z,orientation,spawntimesecs,animprogress,state) VALUES
(5691,193905,616,1,1,764.56,1284.63,269,1.82,-604800,100,1), 
(5693,193967,616,2,1,764.56,1284.63,269,1.82,-604800,100,1);
UPDATE `creature_model_info` SET `bounding_radius`=0.306,`combat_reach`=1,`gender`=1 WHERE `modelid`=31719; -- Vanira
UPDATE `creature_model_info` SET `bounding_radius`=1.5,`combat_reach`=0,`gender`=2 WHERE `modelid`=31720; -- Vanira's Sentry Totem
UPDATE `creature_model_info` SET `bounding_radius`=0.25,`combat_reach`=1,`gender`=2 WHERE `modelid`=31727; -- Sen'jin Frog
UPDATE `creature_model_info` SET `bounding_radius`=0.3,`combat_reach`=1,`gender`=2 WHERE `modelid`=22469; -- Atunned Frog
UPDATE `creature_model_info` SET `bounding_radius`=0.306,`combat_reach`=1,`gender`=0 WHERE `modelid`=31726; -- Handler Marnlek
UPDATE `creature_model_info` SET `bounding_radius`=0,`combat_reach`=1,`gender`=2 WHERE `modelid`=31725; -- Scout Bat
UPDATE `creature_model_info` SET `bounding_radius`=0.4,`combat_reach`=0,`gender`=2 WHERE `modelid`=19595; -- Spy Frog Credit
UPDATE `creature_model_info` SET `bounding_radius`=1.15,`combat_reach`=1,`gender`=0 WHERE `modelid`=31788; -- Spirit of the Tiger
UPDATE `creature_model_info` SET `bounding_radius`=0.125,`combat_reach`=0,`gender`=2 WHERE `modelid`=17188; -- Tiger Matriarch Credit
UPDATE `creature_model_info` SET `bounding_radius`=1.272,`combat_reach`=2,`gender`=1 WHERE `modelid`=31765; -- Tiger Matriarch
UPDATE `creature_model_info` SET `bounding_radius`=0.306,`combat_reach`=1,`gender`=1 WHERE `modelid`=31734; -- Zen'tabra
UPDATE `creature_model_info` SET `bounding_radius`=0.306,`combat_reach`=1,`gender`=0 WHERE `modelid`=31762; -- Champion Uru'zin
UPDATE `creature_model_info` SET `bounding_radius`=0.306,`combat_reach`=1,`gender`=1 WHERE `modelid`=31841; -- Darkspear Warrior
UPDATE `creature_model_info` SET `bounding_radius`=0.306,`combat_reach`=1,`gender`=1 WHERE `modelid`=31738; -- Darkspear Scout
UPDATE `creature_model_info` SET `bounding_radius`=0.3672,`combat_reach`=1,`gender`=0 WHERE `modelid`=31736; -- Vol'jin
UPDATE `creature_model_info` SET `bounding_radius`=0.306,`combat_reach`=1,`gender`=0 WHERE `modelid`=9768; -- Ritual Dancer
UPDATE `creature_model_info` SET `bounding_radius`=0.306,`combat_reach`=1,`gender`=1 WHERE `modelid`=2589; -- Troll Citizien (1)
UPDATE `creature_model_info` SET `bounding_radius`=0.306,`combat_reach`=1,`gender`=0 WHERE `modelid`=2588; -- Troll Citizien (2)
UPDATE `creature_model_info` SET `bounding_radius`=0.125,`combat_reach`=0,`gender`=2 WHERE `modelid`=17188; -- Troll Dance Leader
UPDATE `creature_model_info` SET `bounding_radius`=0.175,`combat_reach`=0,`gender`=2 WHERE `modelid`=22769; -- Dance Participant
UPDATE `creature_model_info` SET `bounding_radius`=0.306,`combat_reach`=1,`gender`=1 WHERE `modelid`=2589; -- Ritual Drummer
UPDATE `creature_model_info` SET `bounding_radius`=0.125,`combat_reach`=0,`gender`=2 WHERE `modelid`=17188; -- Omen Event Credit
UPDATE `creature_model_info` SET `bounding_radius`=0.306,`combat_reach`=1,`gender`=1 WHERE `modelid`=4033; -- Darkspear Ancestor
UPDATE `creature_model_info` SET `bounding_radius`=0.5355,`combat_reach`=2,`gender`=0 WHERE `modelid`=31819; -- Voice of the Spirits
INSERT INTO `creature` (guid,id,map,spawnMask,phaseMask,modelid,equipment_id,position_x,position_y,position_z,orientation,spawntimesecs,spawndist,currentwaypoint,curhealth,curmana,DeathState,MovementType) VALUES 
(111495,23289,530,1,1,0,0,-5155.48975,696.2224,42.196106,4.90454865,120,0,0,1,0,0,0), -- Mine Car
(111494,23289,530,1,1,0,0,-5195.42334,620.3688,44.1691132,6.20430231,120,0,0,1,0,0,0); -- Mine Car
UPDATE `creature_model_info` SET `bounding_radius`=0.5,`combat_reach`=1,`gender`=2 WHERE `modelid`=11686; -- Dragonmaw Peon Work Node
UPDATE `creature_model_info` SET `bounding_radius`=0.62,`combat_reach`=2,`gender`=2 WHERE `modelid`=21412; -- Nethermine Flayer
UPDATE `creature_model_info` SET `bounding_radius`=0.3361105,`combat_reach`=1.1,`gender`=0 WHERE `modelid`=20284; -- Nethermine Ravager
UPDATE `creature_model_info` SET `bounding_radius`=0.4687497,`combat_reach`=2.025,`gender`=0 WHERE `modelid`=20893; -- Dragonmaw Skybreaker
UPDATE `creature_model_info` SET `bounding_radius`=2.5,`combat_reach`=5,`gender`=0 WHERE `modelid`=20896; -- Dragonmaw Ascendant
UPDATE `creature_model_info` SET `bounding_radius`=0.5022,`combat_reach`=2.025,`gender`=0 WHERE `modelid`=21421; -- Murg "Oldie" Muckjaw
UPDATE `creature_model_info` SET `bounding_radius`=0.520833,`combat_reach`=2.25,`gender`=0 WHERE `modelid`=21424; -- Corlok the Vet
UPDATE `creature_model_info` SET `bounding_radius`=0.520833,`combat_reach`=2.25,`gender`=0 WHERE `modelid`=21426; -- Captain Skyshatter
UPDATE `creature_model_info` SET `bounding_radius`=1,`combat_reach`=0,`gender`=0 WHERE `modelid`=21422; -- Trope the Filth-Belcher
UPDATE `creature_template` SET `speed_walk`=2,`speed_run`=2 WHERE `entry`=22253; -- Dragonmaw Ascendant
INSERT INTO `gameobject` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecs`) VALUES
(5695,185915,530,1,1,-4244.827,325.0044,134.4166,0.1396245,0,0,0.06975555,0.9975641,1600),
(5696,185915,530,1,1,-4221.473,370.1472,136.2317,2.111848,0,0,0.8703556,0.4924237,1600),
(5697,185915,530,1,1,-5103.112,707.9791,85.04285,0.2792516,0,0,0.1391726,0.9902682,1600);
UPDATE `creature_model_info` SET `bounding_radius`=0.248,`combat_reach`=4,`gender`=0 WHERE `modelid`=26663; -- Grocklar
UPDATE `creature_model_info` SET `bounding_radius`=0.5,`combat_reach`=1,`gender`=2 WHERE `modelid`=18083; -- Seething Hate
UPDATE `creature_model_info` SET `bounding_radius`=0.6076385,`combat_reach`=2.625,`gender`=2 WHERE `modelid`=28284; -- Crazed Indu'le Survivor
UPDATE `game_event` SET `start_time` = '2011-04-03 23:01:00', `end_time` = '2020-12-30 19:00:00' WHERE `evententry` = 5;
UPDATE `game_event` SET `start_time` = '2011-06-05 12:01:00', `end_time` = '2020-12-30 19:00:00' WHERE `evententry` = 4;
REPLACE INTO `gameobject_scripts` VALUES ('40116', '2', '8', '17375', '0', '0', '0', '0', '0', '0');
REPLACE INTO `gameobject_scripts` VALUES ('39615', '2', '8', '17375', '0', '0', '0', '0', '0', '0');
REPLACE INTO `gameobject_scripts` VALUES ('19777', '2', '8', '17375', '0', '0', '0', '0', '0', '0');
REPLACE INTO `gameobject_scripts` VALUES ('60258', '2', '8', '17375', '0', '0', '0', '0', '0', '0');
REPLACE INTO `gameobject_scripts` VALUES ('49299', '2', '8', '17375', '0', '0', '0', '0', '0', '0');
REPLACE INTO `gameobject_scripts` VALUES ('49300', '2', '8', '17375', '0', '0', '0', '0', '0', '0');
REPLACE INTO `gameobject_scripts` VALUES ('43932', '2', '8', '17375', '0', '0', '0', '0', '0', '0');
REPLACE INTO `gameobject_scripts` VALUES ('60257', '2', '8', '17375', '0', '0', '0', '0', '0', '0');
REPLACE INTO `gameobject_scripts` VALUES ('49298', '2', '8', '17375', '0', '0', '0', '0', '0', '0');
REPLACE INTO `gameobject_scripts` VALUES ('1839', '2', '8', '17375', '0', '0', '0', '0', '0', '0');
REPLACE INTO `gameobject_scripts` VALUES ('43931', '2', '8', '17375', '0', '0', '0', '0', '0', '0');
REPLACE INTO `gameobject_scripts` VALUES ('66523', '2', '8', '17375', '0', '0', '0', '0', '0', '0');
REPLACE INTO `gameobject_scripts` VALUES ('66526', '2', '8', '17375', '0', '0', '0', '0', '0', '0');
REPLACE INTO `gameobject_scripts` VALUES ('66527', '2', '8', '17375', '0', '0', '0', '0', '0', '0');
REPLACE INTO `gameobject_scripts` VALUES ('73718', '2', '8', '34956', '0', '0', '0', '0', '0', '0');
REPLACE INTO `gameobject_scripts` VALUES ('1769', '2', '8', '34716', '0', '0', '0', '0', '0', '0');
REPLACE INTO `gameobject_scripts` VALUES ('1772', '2', '8', '34716', '0', '0', '0', '0', '0', '0');
REPLACE INTO `gameobject_scripts` VALUES ('1773', '2', '8', '34716', '0', '0', '0', '0', '0', '0');
REPLACE INTO `gameobject_scripts` VALUES ('1774', '2', '8', '34716', '0', '0', '0', '0', '0', '0');
REPLACE INTO `gameobject_scripts` VALUES ('1775', '2', '8', '34716', '0', '0', '0', '0', '0', '0');
REPLACE INTO `gameobject_scripts` VALUES ('1777', '2', '8', '34716', '0', '0', '0', '0', '0', '0');
REPLACE INTO `gameobject_scripts` VALUES ('1779', '2', '8', '34716', '0', '0', '0', '0', '0', '0');
REPLACE INTO `gameobject_scripts` VALUES ('1781', '2', '8', '34716', '0', '0', '0', '0', '0', '0');
REPLACE INTO `gameobject_scripts` VALUES ('1784', '2', '8', '34716', '0', '0', '0', '0', '0', '0');
REPLACE INTO `gameobject_scripts` VALUES ('1787', '2', '8', '34716', '0', '0', '0', '0', '0', '0');
REPLACE INTO `gameobject_scripts` VALUES ('1788', '2', '8', '34716', '0', '0', '0', '0', '0', '0');
REPLACE INTO `gameobject_scripts` VALUES ('1794', '2', '8', '34716', '0', '0', '0', '0', '0', '0');
REPLACE INTO `gameobject_scripts` VALUES ('1795', '2', '8', '34716', '0', '0', '0', '0', '0', '0');
REPLACE INTO `gameobject_scripts` VALUES ('1797', '2', '8', '34716', '0', '0', '0', '0', '0', '0');
REPLACE INTO `gameobject_scripts` VALUES ('1799', '2', '8', '34716', '0', '0', '0', '0', '0', '0');
REPLACE INTO `gameobject_scripts` VALUES ('1800', '2', '8', '34716', '0', '0', '0', '0', '0', '0');
REPLACE INTO `gameobject_scripts` VALUES ('51934', '2', '8', '27113', '0', '0', '0', '0', '0', '0');
REPLACE INTO `gameobject_scripts` VALUES ('51940', '2', '8', '27114', '0', '0', '0', '0', '0', '0');
REPLACE INTO `gameobject_scripts` VALUES ('51939', '2', '8', '27115', '0', '0', '0', '0', '0', '0');
REPLACE INTO `gameobject_scripts` VALUES ('52486', '2', '15', '43094', '1', '0', '0', '0', '0', '0');
REPLACE INTO `gameobject_scripts` VALUES ('52484', '2', '15', '43094', '1', '0', '0', '0', '0', '0');
REPLACE INTO `gameobject_scripts` VALUES ('52485', '2', '15', '43094', '1', '0', '0', '0', '0', '0');
REPLACE INTO `gameobject_scripts` VALUES ('55901', '2', '8', '23720', '0', '0', '0', '0', '0', '0');
REPLACE INTO `gameobject_scripts` VALUES ('55909', '2', '8', '23720', '0', '0', '0', '0', '0', '0');
REPLACE INTO `gameobject_scripts` VALUES ('55911', '2', '8', '23720', '0', '0', '0', '0', '0', '0');
REPLACE INTO `gameobject_scripts` VALUES ('55912', '2', '8', '23720', '0', '0', '0', '0', '0', '0');
REPLACE INTO `gameobject_scripts` VALUES ('55922', '2', '8', '23720', '0', '0', '0', '0', '0', '0');
REPLACE INTO `gameobject_scripts` VALUES ('55923', '2', '8', '23720', '0', '0', '0', '0', '0', '0');
REPLACE INTO `gameobject_scripts` VALUES ('55924', '2', '8', '23720', '0', '0', '0', '0', '0', '0');
REPLACE INTO `gameobject_scripts` VALUES ('55555', '2', '10', '22920', '600000', '0', '0', '0', '0', '0');
REPLACE INTO `gameobject_scripts` VALUES ('11940', '2', '10', '22930', '600000', '0', '-242.415', '-8.66085', '16.4886', '1.47953');
REPLACE INTO `gameobject_scripts` VALUES ('55577', '2', '7', '10977', '0', '0', '0', '0', '0', '0');
REPLACE INTO `gameobject_scripts` VALUES ('22016', '2', '8', '20787', '0', '0', '0', '0', '0', '0');
REPLACE INTO `gameobject_scripts` VALUES ('21647', '2', '8', '18428', '0', '0', '0', '0', '0', '0');
REPLACE INTO `gameobject_scripts` VALUES ('21651', '2', '8', '18428', '0', '0', '0', '0', '0', '0');
REPLACE INTO `gameobject_scripts` VALUES ('21652', '2', '8', '18428', '0', '0', '0', '0', '0', '0');
REPLACE INTO `gameobject_scripts` VALUES ('21645', '2', '8', '18428', '0', '0', '0', '0', '0', '0');
REPLACE INTO `gameobject_scripts` VALUES ('21646', '2', '8', '18428', '0', '0', '0', '0', '0', '0');
REPLACE INTO `gameobject_scripts` VALUES ('21648', '2', '8', '18428', '0', '0', '0', '0', '0', '0');
REPLACE INTO `gameobject_scripts` VALUES ('21640', '2', '8', '18428', '0', '0', '0', '0', '0', '0');
REPLACE INTO `gameobject_scripts` VALUES ('67005', '2', '8', '18428', '0', '0', '0', '0', '0', '0');
REPLACE INTO `gameobject_scripts` VALUES ('67006', '2', '8', '18428', '0', '0', '0', '0', '0', '0');
REPLACE INTO `gameobject_scripts` VALUES ('21644', '2', '8', '18428', '0', '0', '0', '0', '0', '0');
REPLACE INTO `gameobject_scripts` VALUES ('21643', '2', '8', '18428', '0', '0', '0', '0', '0', '0');
REPLACE INTO `gameobject_scripts` VALUES ('21642', '2', '8', '18428', '0', '0', '0', '0', '0', '0');
REPLACE INTO `gameobject_scripts` VALUES ('21641', '2', '8', '18428', '0', '0', '0', '0', '0', '0');
REPLACE INTO `gameobject_scripts` VALUES ('21655', '2', '8', '18428', '0', '0', '0', '0', '0', '0');
REPLACE INTO `gameobject_scripts` VALUES ('21654', '2', '8', '18428', '0', '0', '0', '0', '0', '0');
REPLACE INTO `gameobject_scripts` VALUES ('21656', '2', '8', '18428', '0', '0', '0', '0', '0', '0');
REPLACE INTO `gameobject_scripts` VALUES ('21653', '2', '8', '18428', '0', '0', '0', '0', '0', '0');
REPLACE INTO `gameobject_scripts` VALUES ('21649', '2', '8', '18428', '0', '0', '0', '0', '0', '0');
REPLACE INTO `gameobject_scripts` VALUES ('21650', '2', '8', '18428', '0', '0', '0', '0', '0', '0');
REPLACE INTO `gameobject_scripts` VALUES ('67004', '2', '8', '18428', '0', '0', '0', '0', '0', '0');
REPLACE INTO `gameobject_scripts` VALUES ('21711', '2', '8', '18444', '0', '0', '0', '0', '0', '0');
REPLACE INTO `gameobject_scripts` VALUES ('21657', '2', '8', '18369', '0', '0', '0', '0', '0', '0');
REPLACE INTO `gameobject_scripts` VALUES ('21657', '1', '0', '0', '18369', '2000000464', '0', '0', '0', '0');
REPLACE INTO `gameobject_scripts` VALUES ('21658', '2', '8', '20812', '0', '0', '0', '0', '0', '0');
REPLACE INTO `gameobject_scripts` VALUES ('21658', '1', '0', '0', '20812', '2000000465', '0', '0', '0', '0');
REPLACE INTO `gameobject_scripts` VALUES ('21671', '2', '8', '17682', '0', '0', '0', '0', '0', '0');
REPLACE INTO `gameobject_scripts` VALUES ('21672', '2', '22', '14', '17556', '0', '0', '0', '0', '0');
REPLACE INTO `gameobject_scripts` VALUES ('10341', '2', '22', '14', '10992', '0', '0', '0', '0', '0');

# Conditions
REPLACE INTO `conditions` VALUES ('14', '3043', '3755', '0', '14', '5122', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '3043', '3757', '0', '8', '5122', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '10026', '13902', '0', '6', '67', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '10025', '13901', '0', '6', '469', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '5675', '0', '0', '14', '7785', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '5675', '1', '0', '14', '7785', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '5675', '0', '0', '2', '18563', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '5675', '1', '0', '2', '18564', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '5675', '0', '0', '26', '18564', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '5675', '1', '0', '26', '18563', '1', '0', '0', '', null);
REPLACE INTO `gossip_menu` VALUES ('3043', '3755');
REPLACE INTO `gossip_menu` VALUES ('3043', '3757');
REPLACE INTO `gossip_menu` VALUES ('10025', '13901');
REPLACE INTO `gossip_menu` VALUES ('10026', '13902');
REPLACE INTO `gossip_menu_option` VALUES ('4244', '0', '3', 'Train me.', '5', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('6562', '0', '2', 'Show me where I can fly.', '4', '8192', '0', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('6568', '0', '1', 'I want to browse your goods.', '3', '128', '0', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('5675', '0', '0', 'What do you know of it?', '1', '1', '5689', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('5675', '1', '0', 'What do you know of it?', '1', '1', '5689', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('5689', '0', '0', 'I am listening, Demitrian.', '1', '1', '5688', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('5688', '0', '0', 'Continue, please.', '1', '1', '5687', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('5687', '0', '0', 'A battle?', '1', '1', '5702', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('5702', '0', '0', '<Nod>', '1', '1', '5701', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('5701', '0', '0', 'Caught unaware? How?', '1', '1', '5704', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('5704', '0', '0', 'So what did Ragnaros do next?', '1', '1', '5703', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('1469', '0', '3', 'Train me.', '5', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4152', '0', '3', 'Train me.', '5', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('8124', '0', '1', 'I want to browse your goods.', '3', '128', '0', '0', '0', '0', '0', '');
UPDATE conditions SET SourceGroup=1141 WHERE SourceTypeOrReferenceId=15 AND SourceGroup=50404;
UPDATE conditions SET SourceGroup=1141 WHERE SourceTypeOrReferenceId=14 AND SourceGroup=50404;
UPDATE conditions SET SourceGroup=11361 WHERE SourceTypeOrReferenceId=15 AND SourceGroup=14637;
UPDATE conditions SET SourceGroup=11361 WHERE SourceTypeOrReferenceId=14 AND SourceGroup=14637;


# FIX
# DELETE FROM conditions WHERE SourceTypeOrReferenceId=15 AND SourceGroup=50314;
# DELETE FROM conditions WHERE SourceTypeOrReferenceId=14 AND SourceGroup=50314;
# UPDATE conditions SET SourceGroup=9732 WHERE SourceTypeOrReferenceId=15 AND SourceGroup=28666;
# UPDATE conditions SET SourceGroup=9732 WHERE SourceTypeOrReferenceId=14 AND SourceGroup=28666;

# WDB_Check
UPDATE `npc_text` SET `WDBVerified`=1 WHERE `ID` IN (9516,14330,15608,15609,9842,9704,9708,6520,14451,14452,10955);

# Temp_FIX
update gossip_scripts set datalong2=3 where datalong2=2 AND command=15;
update quest_start_scripts set datalong2=3 where datalong2=2 AND command=15;
update quest_end_scripts set datalong2=3 where datalong2=2 AND command=15;
DELETE FROM conditions WHERE ConditionTypeOrReference=14 AND ConditionValue1=0;
UPDATE conditions SET ConditionValue2=0 WHERE ConditionTypeOrReference=25 AND ConditionValue2=1;
UPDATE conditions SET ConditionValue2=0 WHERE ConditionTypeOrReference=17 AND ConditionValue2=1;
UPDATE `creature_template` SET `gossip_menu_id` = 0 WHERE `npcflag` = `npcflag`|32;
UPDATE `gossip_menu_option` SET `box_text`='Are you sure you wish to purchase a Dual Talent Specialization?' WHERE `option_id` =18;
UPDATE creature_template_addon SET path_id=0;

# NPC_FIX
UPDATE
`creature_template`, `creature_template` AS `copy`
SET
`copy`.`RegenHealth`=`creature_template`.`RegenHealth`,
`copy`.`unit_class`=`creature_template`.`unit_class`,
`copy`.`unit_flags`=`creature_template`.`unit_flags`,
`copy`.`npcflag`=`creature_template`.`npcflag`,
`copy`.`dynamicflags`=`creature_template`.`dynamicflags`,
`copy`.`equipment_id`=`creature_template`.`equipment_id`,
`copy`.`faction_A`=`creature_template`.`faction_A`,
`copy`.`faction_H`=`creature_template`.`faction_H`,
`copy`.`speed_run`=`creature_template`.`speed_run`,
`copy`.`speed_walk`=`creature_template`.`speed_walk`,
`copy`.`scale`=`creature_template`.`scale`,
`copy`.`dmgschool`=`creature_template`.`dmgschool`,
`copy`.`mingold`=`creature_template`.`mingold`,
`copy`.`maxgold`=`creature_template`.`maxgold`,
`copy`.`VehicleId`=`creature_template`.`VehicleId`,
`copy`.`mechanic_immune_mask`=`creature_template`.`mechanic_immune_mask`
WHERE
`copy`.`entry`=`creature_template`.`difficulty_entry_1`;
UPDATE
`creature_template`, `creature_template` AS `copy`
SET
`copy`.`RegenHealth`=`creature_template`.`RegenHealth`,
`copy`.`unit_class`=`creature_template`.`unit_class`,
`copy`.`unit_flags`=`creature_template`.`unit_flags`,
`copy`.`npcflag`=`creature_template`.`npcflag`,
`copy`.`dynamicflags`=`creature_template`.`dynamicflags`,
`copy`.`equipment_id`=`creature_template`.`equipment_id`,
`copy`.`faction_A`=`creature_template`.`faction_A`,
`copy`.`faction_H`=`creature_template`.`faction_H`,
`copy`.`speed_run`=`creature_template`.`speed_run`,
`copy`.`speed_walk`=`creature_template`.`speed_walk`,
`copy`.`scale`=`creature_template`.`scale`,
`copy`.`dmgschool`=`creature_template`.`dmgschool`,
`copy`.`mingold`=`creature_template`.`mingold`,
`copy`.`maxgold`=`creature_template`.`maxgold`,
`copy`.`VehicleId`=`creature_template`.`VehicleId`,
`copy`.`mechanic_immune_mask`=`creature_template`.`mechanic_immune_mask`
WHERE
`copy`.`entry`=`creature_template`.`difficulty_entry_2`;
UPDATE
`creature_template`, `creature_template` AS `copy`
SET
`copy`.`RegenHealth`=`creature_template`.`RegenHealth`,
`copy`.`unit_class`=`creature_template`.`unit_class`,
`copy`.`unit_flags`=`creature_template`.`unit_flags`,
`copy`.`npcflag`=`creature_template`.`npcflag`,
`copy`.`dynamicflags`=`creature_template`.`dynamicflags`,
`copy`.`equipment_id`=`creature_template`.`equipment_id`,
`copy`.`faction_A`=`creature_template`.`faction_A`,
`copy`.`faction_H`=`creature_template`.`faction_H`,
`copy`.`speed_run`=`creature_template`.`speed_run`,
`copy`.`speed_walk`=`creature_template`.`speed_walk`,
`copy`.`scale`=`creature_template`.`scale`,
`copy`.`dmgschool`=`creature_template`.`dmgschool`,
`copy`.`mingold`=`creature_template`.`mingold`,
`copy`.`maxgold`=`creature_template`.`maxgold`,
`copy`.`VehicleId`=`creature_template`.`VehicleId`,
`copy`.`mechanic_immune_mask`=`creature_template`.`mechanic_immune_mask`
WHERE
`copy`.`entry`=`creature_template`.`difficulty_entry_3`;

# Final_FIX
UPDATE quest_template SET SpecialFlags=SpecialFlags|1 WHERE QuestFlags=QuestFlags|4096;
UPDATE quest_template SET SpecialFlags=SpecialFlags|1 WHERE QuestFlags=QuestFlags|32768;
DELETE FROM `creature_addon` WHERE `guid` NOT IN (SELECT `guid` FROM `creature`);
DELETE FROM `linked_respawn` WHERE `guid` NOT IN (SELECT `guid` FROM `creature`);
DELETE FROM `linked_respawn` WHERE `linkedGuid` NOT IN (SELECT `guid` FROM `creature`);
DELETE FROM `game_event_gameobject` WHERE `guid` NOT IN (SELECT `guid` FROM `gameobject`);
DELETE FROM `game_event_creature` WHERE `guid` NOT IN (SELECT `guid` FROM `creature`);
UPDATE creature_template SET unit_flags=unit_flags&~2048 WHERE unit_flags&2048=2048;
UPDATE creature_template SET unit_flags=unit_flags&~524288 WHERE unit_flags&524288=524288;
UPDATE creature_template SET unit_flags=unit_flags&~67108864 WHERE unit_flags&67108864=67108864;
UPDATE creature_template SET unit_flags=unit_flags&~8388608 WHERE unit_flags&8388608=8388608;
UPDATE `creature` SET `MovementType` = 0 WHERE `spawndist` = 0 AND `MovementType`=1;
UPDATE `creature` SET `spawndist`=0 WHERE `MovementType`=0;
UPDATE `creature` SET `spawntimesecs` = 300 WHERE `spawntimesecs` = 25;
UPDATE `gameobject` SET `spawntimesecs` = 300 WHERE `spawntimesecs` = 25;
UPDATE `creature_template` SET `scale` = 1 WHERE `scale` = 0;
update gameobject_template, gameobject set gameobject.animprogress = 100 where gameobject_template.entry = gameobject.id and gameobject_template.type = 0;
update gameobject_template, gameobject set gameobject.animprogress = 100 where gameobject_template.entry = gameobject.id and gameobject_template.type = 3;
update gameobject_template, gameobject set gameobject.animprogress = 100 where gameobject_template.entry = gameobject.id and gameobject_template.type = 10;
update gameobject_template, gameobject set gameobject.animprogress = 100 where gameobject_template.entry = gameobject.id and gameobject_template.type = 25;
UPDATE `gameobject` SET `state`=1 WHERE `state`=0 AND `id` IN (SELECT entry FROM `gameobject_template` WHERE `type`=3);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` IN (SELECT `id` FROM `creature_questrelation`);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` IN (SELECT `id` FROM `creature_involvedrelation`);
UPDATE `gameobject` SET `state` = 0 WHERE `id` IN (SELECT `entry` FROM `gameobject_template` WHERE `type` = 0 AND `data0` = 1);
UPDATE `gameobject_template` SET `flags`=`flags`&~4 WHERE `type` IN (2,19,17);
DELETE FROM `gameobject_scripts` WHERE `id` NOT IN (SELECT `guid` FROM `gameobject`);
DELETE FROM `gameobject_scripts` WHERE `command` in (11, 12) and `datalong` NOT IN (SELECT `guid` FROM `gameobject`);
DELETE FROM `creature_onkill_reputation` WHERE `creature_id` NOT IN (SELECT `entry` FROM `creature_template`);
UPDATE `item_template` SET `spelltrigger_2` = 0 WHERE `spellid_2` = 0 AND `spelltrigger_2` = 6;
UPDATE `creature_template` SET npcflag = npcflag|1 WHERE `gossip_menu_id` > 0;
UPDATE `creature_template` SET `ScriptName` = '' WHERE `AIName` = 'EventAI' AND `ScriptName` = 'generic_creature';
UPDATE `creature_template` SET `ScriptName` = '' WHERE `AIName` = 'SmartAI' AND `ScriptName` = 'generic_creature';

UPDATE
`creature`, `waypoint_data`
SET
`creature`.`spawndist`=0,
`creature`.`MovementType`=2
WHERE
`creature`.`guid`=`waypoint_data`.`id`;

DELETE
`waypoint_data`
FROM
`waypoint_data`
LEFT JOIN
(`creature`)
ON
(`creature`.`guid`=`waypoint_data`.`id`)
WHERE
`creature`.`guid` IS NULL;

ALTER TABLE `waypoint_data` ADD INDEX `temp_action` (`action`);
ALTER TABLE `waypoint_scripts` ADD INDEX `temp_id` (`id`);
DELETE
`waypoint_scripts`
FROM
`waypoint_scripts`
LEFT JOIN
(`waypoint_data`)
ON
(`waypoint_data`.`action`=`waypoint_scripts`.`id`)
WHERE
`waypoint_data`.`action` IS NULL;
ALTER TABLE `waypoint_data` DROP INDEX `temp_action`;
ALTER TABLE `waypoint_scripts` DROP INDEX `temp_id`;

update creature_addon set path_id=0;
UPDATE
`creature_addon`, `waypoint_data`
SET
`creature_addon`.`path_id`=`creature_addon`.`guid`
WHERE
`creature_addon`.`guid`=`waypoint_data`.`id`;

UPDATE version SET `cache_id`= '591';
UPDATE version SET `core_revision`= '11600';
UPDATE version SET `db_version`= 'YTDB_0.14.2_R591_TC_R11600_TDBAI_335.0.3_RuDB_R38.8';
