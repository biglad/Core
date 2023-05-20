-- Massacre At Light's Point
UPDATE `quest_template` SET Method = 0 WHERE entry = 12701;

-- The Light of Dawn Making sure its not autocompleted as the script works with the disabled spell
UPDATE `quest_template` SET Method = 2 WHERE entry = 12801;

-- Gift of the harverster
UPDATE `quest_template` SET ReqItemId1 = 39253 WHERE entry = 12698;

-- Keleseth's persuader
UPDATE `quest_template` SET ReqItemId1 = 39371 WHERE entry = 12720;
UPDATE `quest_template` SET ReqItemCount1 = 2 WHERE entry = 12720;

-- Makeshift Cover
UPDATE `quest_template` SET ReqItemId1 = 39645 WHERE entry = 12754;

-- Horn of the frostbrood
UPDATE `quest_template` SET ReqItemId1 = 39700 WHERE entry = 12779;

-- Disabled Spells can be removed after fixed
-- Disable spell 52893
INSERT IGNORE INTO `spell_disabled` VALUES ( '52893', '3', 'Crash server, Disabled until fixed');
-- Blade Barrier
INSERT IGNORE INTO `spell_disabled` VALUES ( '49182', '1', 'Blade Barrier Rank 1 - Wrong procs');
INSERT IGNORE INTO `spell_disabled` VALUES ( '49500', '1', 'Blade Barrier Rank 2 - Wrong procs');
INSERT IGNORE INTO `spell_disabled` VALUES ( '49501', '1', 'Blade Barrier Rank 3 - Wrong procs');
INSERT IGNORE INTO `spell_disabled` VALUES ( '55225', '1', 'Blade Barrier Rank 4 - Wrong procs');
INSERT IGNORE INTO `spell_disabled` VALUES ( '55226', '1', 'Blade Barrier Rank 5 - Wrong procs');

-- Blade Barrier Effects
INSERT IGNORE INTO `spell_disabled` VALUES ( '51789', '1', 'Blade Barrier Rank 1 Effect - Wrong procs');
INSERT IGNORE INTO `spell_disabled` VALUES ( '64855', '1', 'Blade Barrier Rank 2 Effect - Wrong procs');
INSERT IGNORE INTO `spell_disabled` VALUES ( '64856', '1', 'Blade Barrier Rank 3 Effect - Wrong procs');
INSERT IGNORE INTO `spell_disabled` VALUES ( '64858', '1', 'Blade Barrier Rank 4 Effect - Wrong procs');
INSERT IGNORE INTO `spell_disabled` VALUES ( '64859', '1', 'Blade Barrier Rank 5 Effect - Wrong procs');



-- MGA NPCs Script text
-- MGA_token_swap
INSERT IGNORE INTO `script_texts` (`entry`,`content_default`,`sound`,`type`,`language`,`emote`,`comment`) VALUES
(-1700000, 'I created you a MGA Token',0,0,0,1,'MGA text'),
(-1700001, 'You dont have enough tokens silly, Do you have plastic?',0,0,0,1,'MGA text'),
(-1700002, 'Here you got 1 Mini Token, Thank you',0,0,0,1,'MGA text'),
(-1700003, 'Ohh blue shinny Badge of Justice, can i keep it?',0,0,0,1,'MGA text'),
(-1700004, 'Many ways, All battle grounds reward them also Vote4us, Bounty Scheme & Events',0,0,0,1,'MGA text'),
(-1700005, 'Oh a shiny Sunmote!',0,0,0,1,'MGA text'),
(-1700006, 'Fine then, I\'ll go play with my toys, see you later.',0,0,0,1,'MGA text');

-- MGA_token_shop
INSERT IGNORE INTO `script_texts` (`entry`,`content_default`,`sound`,`type`,`language`,`emote`,`comment`) VALUES
(-1700007, 'Talk to you later!',0,0,0,1,'MGA text'),
(-1700008, 'Pleasure doing business with you. Talk to me again if you want to exchange again.',0,0,0,1,'MGA text'),
(-1700009, 'Sorry mate, come see me when you got enough tokens to trade in.',0,0,0,1,'MGA text'),
(-1700010, 'Here you go, 500 gold coins, dont spend it all at once.',0,0,0,1,'MGA text'),
(-1700011, 'Stop wasting my time, gold digger! Get a job or some MGA tokens.',0,0,0,1,'MGA text'),
(-1700012, 'Here you go, 1250 gold coins, dont spend it all at once.',0,0,0,1,'MGA text'),
(-1700013, 'I bet the Aldor will be glad to see this in their hands.',0,0,0,1,'MGA text'),
(-1700014, 'You need more MGA Token(s), come back when you have some, now be gone with you!',0,0,0,1,'MGA text'),
(-1700015, 'I bet the Scryers will be glad to see this in their hands.',0,0,0,1,'MGA text'),
(-1700016, 'For the Alliance!',0,0,0,1,'MGA text'),
(-1700017, 'For the Horde!',0,0,0,1,'MGA text');

-- MGA Char importer both files
INSERT IGNORE INTO `script_texts` (`entry`,`content_default`,`sound`,`type`,`language`,`emote`,`comment`) VALUES
(-1700018, 'You are not in the list of transfered guildmembers. Please consult your guild master or an MGA staffmember.',0,0,0,1,'MGA text'),
(-1700019, 'Not enough bag space. Please make sure you have at least 8 free slots.',0,0,0,1,'MGA text'),
(-1700020, 'I am unable to teach you this profession at this skill. This could be because you have no free professions left, or your skill is already higher than what I can grant you. Please talk to me again and decide what you want to do next.',0,0,0,1,'MGA text'),
(-1700021, 'Phase One completed, you have been given your money, level and bags. Please speak to me again for the next phase when you have at least 8 free slots in your bag.',0,0,0,1,'MGA text'),
(-1700022, 'Phase Two completed, you have been given your Dungeon 2 Set. Please speak to me again for the next phase when you have at least 3 free slots in your bag.',0,0,0,1,'MGA text'),
(-1700023, 'Congratulations on your new profession.',0,0,0,1,'MGA text'),
(-1700024, 'Congratulations on your new profession. You have completed the innoculation procedure. Welcome to MGA!',0,0,0,1,'MGA text'),
(-1700025, 'Welcome to MGA, the innoculation procedure is now complete!',0,0,0,1,'MGA text'),
(-1700026, 'I work as a teleporter for guilds that are transfering to MGA - Members from that guild may make use of me to guide them to the place where their innoculation will be completed.',0,0,0,1,'MGA text'),
(-1700027, 'Good bye.',0,0,0,1,'MGA text');

-- MGA Ctoken swap
INSERT IGNORE `script_texts` (`entry`,`content_default`,`sound`,`type`,`language`,`emote`,`comment`) VALUES
(-1700028, 'Sorry, no token for you. Better luck next time!',0,0,0,1,'MGA text'),
(-1700029, 'There you go, how lucky were you?',0,0,0,1,'MGA text'),
(-1700030, 'See the NPC called Rachael and complete the \'GIMME THE VORTEX\' quest..',0,0,0,1,'MGA text'),
(-1700031, 'Next time speak to me for a reason! Now be gone with you!',0,0,0,1,'MGA text');

-- MGA Old Ironforge
INSERT IGNORE `script_texts` (`entry`,`content_default`,`sound`,`type`,`language`,`emote`,`comment`) VALUES
(-1700032, 'Off you go!',0,0,0,1,'MGA text'),
(-1700033, 'Sorry but I need a MGA Teleport Stone',0,0,0,1,'MGA text'),
(-1700034, 'Old Ironforge is a forgotten place full of mlog forgotten things.',0,0,0,1,'MGA text');

-- Teleporters Ebon Hold
UPDATE gameobject_template SET data3 = 54699 WHERE entry = 990001; -- going up
UPDATE gameobject_template SET data3 = 54725 WHERE entry = 990002; -- going down

update creature_template set spell1 = 50232, spell2 = 50248, spell3 = 50240, spell4 = 50253, spell5 = 43775, VehicleId = 156 where entry = 27756;
update creature_template set spell1 = 50328, spell2 = 50341, spell3 = 50344, spell5 = 43775, VehicleId = 156 where entry = 27692;
update creature_template set spell1 = 49840, spell2 = 49838, spell3 = 49592, spell5 = 43775, VehicleId = 156 where entry = 27755;

UPDATE `creature_template` SET npcflag = 1 WHERE `entry` = '27657';
UPDATE `creature_template` SET npcflag = 1 WHERE `entry` = '27658';
UPDATE `creature_template` SET npcflag = 1 WHERE `entry` = '27659';
UPDATE `creature_template` SET `scriptname` = 'npc_occulusnpcs' WHERE `entry` = '27657';
UPDATE `creature_template` SET `scriptname` = 'npc_occulusnpcs' WHERE `entry` = '27658';
UPDATE `creature_template` SET `scriptname` = 'npc_occulusnpcs' WHERE `entry` = '27659';


INSERT IGNORE INTO `script_texts` (`entry`,`content_default`,`sound`,`type`,`language`,`emote`,`comment`) VALUES
(-1700160, 'You chose the Emrald Drake',0,0,0,1,'MGA text'),
(-1700161, 'You chose the Ruby Drake',0,0,0,1,'MGA text'),
(-1700162, 'You chose the Amber Drake',0,0,0,1,'MGA text');


UPDATE `creature_template` SET `lootid`='28408' WHERE (`entry`='28408');
UPDATE `creature_template` SET `lootid`='304516' WHERE (`entry`='304516');
UPDATE `creature_template` SET `lootid`='30516' WHERE (`entry`='30516');
UPDATE `creature_template` SET `lootid`='30517' WHERE (`entry`='30517');
UPDATE `creature_template` SET `lootid`='304517' WHERE (`entry`='304517'); 
UPDATE `creature_template` SET `pickpocketloot`='27715' WHERE (`entry`='27715');
UPDATE `creature_template` SET `pickpocketloot`='27717' WHERE (`entry`='27717');
UPDATE `creature_template` SET `pickpocketloot`='27718' WHERE (`entry`='27718');
UPDATE `creature_template` SET `pickpocketloot`='27727' WHERE (`entry`='27727');
UPDATE `creature_template` SET `pickpocketloot`='30020' WHERE (`entry`='30020');
UPDATE `creature_template` SET `npcflag`='3' WHERE (`entry`='27658');
UPDATE `creature_loot_template` SET `mincountOrRef`='1' WHERE (`mincountOrRef`='0');
