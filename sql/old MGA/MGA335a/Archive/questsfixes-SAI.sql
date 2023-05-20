-- SAI for quest 10913 "An Improper Burial"
-- Spell script target for Sha'tari Torch (quest An Improper Burial) 
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=13 AND `SourceEntry`=39189;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(13,0,39189,0,18,1,21846,0,0,'', 'Sha''tari Torch'),
(13,0,39189,1,18,1,21859,0,0,'', 'Sha''tari Torch');-- Slain Sha'tar Vindicator SAI.
SET @ENTRY:=21859;
UPDATE `creature_template` SET `AIName`= 'SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=9 AND `entryorguid`=@ENTRY*100;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,11,0,100,0,0,0,0,0,22,1,0,0,0,0,0,0,0,0,0,0,0,0,0,'On spawn set phase 1'),
(@ENTRY,0,1,0,8,1,100,0,39189,0,0,0,80,@ENTRY*100,0,0,0,0,0,0,0,0,0,0,0,0,0, 'On spell hit run script'),
(@ENTRY*100,9,0,0,0,0,100,0,0,0,0,0,22,0,0,0,0,0,0,0,0,0,0,0,0,0,0, 'set phase 0'),
(@ENTRY*100,9,1,0,1,0,100,0,1000,1000,0,0,11,39199,4,1,0,0,0,0,0,0,0,0,0,0,0, 'cast'),
(@ENTRY*100,9,2,0,0,0,100,0,1000,1000,0,0,33,21859,0,0,0,0,0,0,0,0,0,0,0,0,0, 'killcredit'),
(@ENTRY*100,9,3,0,0,0,100,0,2000,2000,0,0,41,0,0,0,0,0,0,0,0,0,0,0,0,0,0, 'despawn after 2 sec');
-- Slain Auchenai Warrior SAI.
SET @ENTRY:=21846;
UPDATE `creature_template` SET `AIName`= 'SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=9 AND `entryorguid`=@ENTRY*100;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(@ENTRY,0,0,0,11,0,100,0,0,0,0,0,22,1,0,0,0,0,0,0,0,0,0,0,0,0,0,'On spawn set phase 1'),
(@ENTRY,0,1,0,8,1,100,0,39189,0,0,0,80,@ENTRY*100,0,0,0,0,0,0,0,0,0,0,0,0,0, 'On spell hit run script'),
(@ENTRY*100,9,0,0,0,0,100,0,0,0,0,0,22,0,0,0,0,0,0,0,0,0,0,0,0,0,0, 'set phase 0'),
(@ENTRY*100,9,1,0,1,0,100,0,1000,1000,0,0,11,39199,4,1,0,0,0,0,0,0,0,0,0,0,0, 'cast'),
(@ENTRY*100,9,2,0,0,0,100,0,1000,1000,0,0,33,21846,0,0,0,0,0,0,0,0,0,0,0,0,0, 'killcredit'),
(@ENTRY*100,9,3,0,0,0,100,0,2000,2000,0,0,41,0,0,0,0,0,0,0,0,0,0,0,0,0,0, 'despawn after 2 sec');

-- 
-- quest fix for Ally of the Netherwing (q10870) (moved from cpp to sai)
SET @KARNYAKU:=22112; -- Karnyaku
UPDATE `creature_template` SET `AIName`='SmartAI', `ScriptName`='' WHERE `entry`=@KARNYAKU; -- Remove cpp script from creature_template
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@KARNYAKU;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(@KARNYAKU,0,0,0,19,0,100,0,10870,0,0,0,52,649,0,0,0,0,0,0,0,0,0,0,0,0,0,'activate taxi');

-- Fix for Quest 14444 & 24555 "What The Dragons Know"
-- Krasus SAI
SET @ENTRY := 27990;
UPDATE `creature_template` SET `AIName`= 'SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
 DELETE FROM `smart_scripts` WHERE `source_type`=9 AND `entryorguid` IN ((@ENTRY*100),(@ENTRY*100)+1);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,62,0,100,0,10199,0,0,0,80,@ENTRY*100,0,0,0,0,0,0,0,0,0,0,0,0,0, 'On gossip option select run script'),
(@ENTRY,0,1,0,62,0,100,0,10199,1,0,0,80,(@ENTRY*100)+1,0,0,0,0,0,0,0,0,0,0,0,0,0, 'On gossip option select run script'),
(@ENTRY*100,9,0,0,0,0,100,0,0,0,0,0,81,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Turn off Gossip & Questgiver flags'),
(@ENTRY*100,9,1,0,0,0,100,0,0,0,0,0,81,0,0,0,0,0,0,9,26917,0,10,0,0,0,0,'Turn of Gossip & Questgiver flags for Alexstrasza'),
(@ENTRY*100,9,2,0,0,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Say text 0'),
(@ENTRY*100,9,3,0,0,0,100,0,4000,4000,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Say text 1'),
(@ENTRY*100,9,4,0,0,0,100,0,4000,4000,0,0,1,2,0,0,0,0,0,1,0,0,0,0,0,0,0,'Say text 2'),
(@ENTRY*100,9,5,0,0,0,100,0,4000,4000,0,0,1,3,0,0,0,0,0,1,0,0,0,0,0,0,0,'Say text 3'),
(@ENTRY*100,9,6,0,0,0,100,0,4000,4000,0,0,1,0,0,0,0,0,0,9,38017,0,30,0,0,0,0,'Kalecgos Say text 0'),
(@ENTRY*100,9,7,0,0,0,100,0,4000,4000,0,0,1,1,0,0,0,0,0,9,38017,0,30,0,0,0,0,'Kalecgos Say text 1'),
(@ENTRY*100,9,8,0,0,0,100,0,4000,4000,0,0,1,4,0,0,0,0,0,1,0,0,0,0,0,0,0,'Say text 4'),
(@ENTRY*100,9,9,0,0,0,100,0,4000,4000,0,0,1,2,0,0,0,0,0,9,38017,0,30,0,0,0,0,'Kalecgos Say text 2'),
(@ENTRY*100,9,10,0,0,0,100,0,4000,4000,0,0,1,0,0,0,0,0,0,9,26917,0,10,0,0,0,0,'Alexstrasza Say text 0'),
(@ENTRY*100,9,11,0,0,0,100,0,4000,4000,0,0,1,3,0,0,0,0,0,9,38017,0,30,0,0,0,0,'Kalecgos Say text 3'),
(@ENTRY*100,9,12,0,0,0,100,0,4000,4000,0,0,1,5,0,0,0,0,0,1,0,0,0,0,0,0,0,'Say text 5'),
(@ENTRY*100,9,13,0,0,0,100,0,4000,4000,0,0,1,4,0,0,0,0,0,9,38017,0,30,0,0,0,0,'Kalecgos Say text 4'),
(@ENTRY*100,9,14,0,0,0,100,0,4000,4000,0,0,1,6,0,0,0,0,0,1,0,0,0,0,0,0,0,'Say text 6'),
(@ENTRY*100,9,15,0,0,0,100,0,4000,4000,0,0,33,36715,0,0,0,0,0,7,0,0,0,0,0,0,0,'Give quest credit'),
(@ENTRY*100,9,16,0,0,0,100,0,4000,4000,0,0,81,3,0,0,0,0,0,1,0,0,0,0,0,0,0,'Turn on Gossip & Questgiver flags'),
(@ENTRY*100,9,17,0,0,0,100,0,0,0,0,0,81,3,0,0,0,0,0,9,26917,0,10,0,0,0,0,'Turn on Gossip & Questgiver flags for Alexstrasza'),
((@ENTRY*100)+1,9,0,0,0,0,100,0,0,0,0,0,81,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Turn off Gossip & Questgiver flags'),
((@ENTRY*100)+1,9,1,0,0,0,100,0,0,0,0,0,81,0,0,0,0,0,0,9,26917,0,10,0,0,0,0,'Turn of Gossip & Questgiver flags for Alexstrasza'),
((@ENTRY*100)+1,9,2,0,0,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Say text 0'),
((@ENTRY*100)+1,9,3,0,0,0,100,0,4000,4000,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Say text 1'),
((@ENTRY*100)+1,9,4,0,0,0,100,0,4000,4000,0,0,1,2,0,0,0,0,0,1,0,0,0,0,0,0,0,'Say text 2'),
((@ENTRY*100)+1,9,5,0,0,0,100,0,4000,4000,0,0,1,3,0,0,0,0,0,1,0,0,0,0,0,0,0,'Say text 3'),
((@ENTRY*100)+1,9,6,0,0,0,100,0,4000,4000,0,0,1,0,0,0,0,0,0,9,38017,0,30,0,0,0,0,'Kalecgos Say text 0'),
((@ENTRY*100)+1,9,7,0,0,0,100,0,4000,4000,0,0,1,1,0,0,0,0,0,9,38017,0,30,0,0,0,0,'Kalecgos Say text 1'),
((@ENTRY*100)+1,9,8,0,0,0,100,0,4000,4000,0,0,1,4,0,0,0,0,0,1,0,0,0,0,0,0,0,'Say text 4'),
((@ENTRY*100)+1,9,9,0,0,0,100,0,4000,4000,0,0,1,2,0,0,0,0,0,9,38017,0,30,0,0,0,0,'Kalecgos Say text 2'),
((@ENTRY*100)+1,9,10,0,0,0,100,0,4000,4000,0,0,1,0,0,0,0,0,0,9,26917,0,10,0,0,0,0,'Alexstrasza Say text 0'),
((@ENTRY*100)+1,9,11,0,0,0,100,0,4000,4000,0,0,1,3,0,0,0,0,0,9,38017,0,30,0,0,0,0,'Kalecgos Say text 3'),
((@ENTRY*100)+1,9,12,0,0,0,100,0,4000,4000,0,0,1,5,0,0,0,0,0,1,0,0,0,0,0,0,0,'Say text 5'),
((@ENTRY*100)+1,9,13,0,0,0,100,0,4000,4000,0,0,1,4,0,0,0,0,0,9,38017,0,30,0,0,0,0,'Kalecgos Say text 4'),
((@ENTRY*100)+1,9,14,0,0,0,100,0,4000,4000,0,0,1,7,0,0,0,0,0,1,0,0,0,0,0,0,0,'Say text 7'),
((@ENTRY*100)+1,9,15,0,0,0,100,0,4000,4000,0,0,33,36715,0,0,0,0,0,7,0,0,0,0,0,0,0,'Give quest credit'),
((@ENTRY*100)+1,9,16,0,0,0,100,0,4000,4000,0,0,81,3,0,0,0,0,0,1,0,0,0,0,0,0,0,'Turn on Gossip & Questgiver flags'),
((@ENTRY*100)+1,9,17,0,0,0,100,0,0,0,0,0,81,3,0,0,0,0,0,9,26917,0,10,0,0,0,0,'Turn on Gossip & Questgiver flags for Alexstrasza');
-- Creature Gossip_menu_option Update from sniff
DELETE FROM `gossip_menu_option` WHERE `menu_id`=10199 AND `id` IN (0,1);
INSERT INTO `gossip_menu_option` (`menu_id`,`id`,`option_icon`,`option_text`,`option_id`,`npc_option_npcflag`,`action_menu_id`,`action_poi_id`,`action_script_id`,`box_coded`,`box_money`,`box_text`) VALUES
(10199,0,0, 'What do you know of ancient swords?',1,1,0,0,0,0,0, ''),
(10199,1,0, 'What do you know of ancient swords?',1,1,0,0,0,0,0, '');
-- Add gossip_menu_option condition for 10199
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=15 AND `SourceGroup`=10199;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ConditionTypeOrReference`,`ConditionValue1`) VALUES
(15,10199,0,9,14444), -- Quest "What The Dragons Know - Alliance" Has to be active and not complete
(15,10199,1,9,24555); -- Quest "What The Dragons Know - Horde" Has to be active and not complete
-- Add texts for Krasus.
SET @ENTRY := 27990;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES 
(@ENTRY,0,0,'You''re too late, $n. Another visitor from Dalaran came asking after information about the same prismatic dragon blades.',0,0,100,1,0,0,'Krasus'),
(@ENTRY,1,0,'From your description, I''m certain the book I loaned our visitor could allow you to easily identify the weapon.',0,0,100,1,0,0,'Krasus'),
(@ENTRY,2,0,'I''m afraid you''ll have to ask the -- Well, perhaps Kalecgos can help.',0,0,100,1,0,0,'Krasus'),
(@ENTRY,3,0,'$n may have found the remains of a prismatic blade, Kalecgos. Will you offer your help to our visitor?',0,0,100,1,0,0,'Krasus'),
(@ENTRY,4,0,'You believe our allies will not be able to control the power of the swords?',0,0,100,1,0,0,'Krasus'),
(@ENTRY,5,0,'As will we all.',0,0,100,1,0,0,'Krasus'),
(@ENTRY,6,0,'Please, mortal, speak with Arcanist Tybalin in Dalaran. He may be able to negotiate with the Sunreavers for access to the book.',0,0,100,1,0,0,'Krasus'),
(@ENTRY,7,0,'Please, mortal, seek out Magister Hathorel in Dalaran. He might be able to negotiate with the Silver Covenant for access to the book.',0,0,100,1,0,0,'Krasus');
-- Add texts for Kalecgos.
SET @ENTRY := 38017;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES 
(@ENTRY,0,0,'Are you certain you should be helping these mortals in their quest for the sword?',0,0,100,1,0,0,'Kalecgos'),
(@ENTRY,1,0,'These blades, Krasus... They were made long ago, when things were... different.',0,0,100,1,0,0,'Kalecgos'),
(@ENTRY,2,0,'Our enemies once turned our strongest weapon against us. What makes you think the prismatic blades will be any different?',0,0,100,1,0,0,'Kalecgos'),
(@ENTRY,3,0,'As you wish, my queen. I will not stand in their way, but I will keep a close watch.',0,0,100,1,0,0,'Kalecgos');
-- Add texts for Alexstrasza the Life-Binder.
SET @ENTRY := 26917;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES 
(@ENTRY,0,0,'Mortal champions have long used these weapons to combat evil. I see no reason to keep the swords from them in this battle.',0,0,100,1,0,0,'Alexstrasza the Life-Binder');