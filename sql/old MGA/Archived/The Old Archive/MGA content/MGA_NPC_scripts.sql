-- code shop chat data
INSERT IGNORE INTO `script_texts` (`npc_entry`,`entry`,`content_default`) VALUES ('500911','-1900007','You have entered an invalid code. Please check out for typo\'s.');
INSERT IGNORE INTO `script_texts` (`npc_entry`,`entry`,`content_default`) VALUES ('500911','-1900008','Your inventory is full, please make sure you have at least one free slot.');
INSERT IGNORE INTO `script_texts` (`npc_entry`,`entry`,`content_default`) VALUES ('500911','-1900009','Unexpected technical error. Please inform a Staffmember.');
INSERT IGNORE INTO `script_texts` (`npc_entry`,`entry`,`content_default`) VALUES ('500911','-1900010','There you go! Thanks for your custom, have fun.');
INSERT IGNORE INTO `script_texts` (`npc_entry`,`entry`,`content_default`) VALUES ('500911','-1900011','Good bye!');
-- mga guardians
UPDATE `creature_template` SET `name`='Guardian of MGA',`subname`='Area Closed - STAY OUT' WHERE (`entry`='5764');

UPDATE `creature_template` SET `ScriptName`='npc_gm_token_swap' WHERE (`entry`='500020');
UPDATE `creature_template` SET `ScriptName`='MGA_Ebon_Hold_TP_DOWN' WHERE (`entry`='500114');
UPDATE `creature_template` SET `ScriptName`='MGA_Ebon_Hold_TP_UP' WHERE (`entry`='500115');
UPDATE `creature_template` SET `ScriptName`='MGA_Ebon_Hold_TP_DOWN609' WHERE (`entry`='500116');
UPDATE `creature_template` SET `ScriptName`='MGA_Ebon_Hold_TP_UP609' WHERE (`entry`='500117');
UPDATE `creature_template` SET `ScriptName`='MGA_Ebon_Hold_TP_LEAVE' WHERE (`entry`='500118');
UPDATE `creature_template` SET `ScriptName`='npc_gm_token_shop' WHERE (`entry`='500011');
UPDATE `creature_template` SET `ScriptName`='mga_token_codeshop' WHERE (`entry`='500911');
UPDATE `creature_template` SET `ScriptName`='IronforgeEntry' WHERE (`entry`='500912');
UPDATE `creature_template` SET `ScriptName`='npc_mga_ctoken_swap' WHERE (`entry`='500913');
UPDATE `creature_template` SET `ScriptName`='mga_guild_warper' WHERE (`entry`='500914');
UPDATE `creature_template` SET `ScriptName`='npc_corastrasza' WHERE (`entry`='500915');
UPDATE `creature_template` SET `ScriptName`='npc_iruk' WHERE (`entry`='500917');
UPDATE `creature_template` SET `ScriptName`='mga_guild_shopone' WHERE (`entry`='500311');
UPDATE `creature_template` SET `ScriptName`='archmage_vargoth' WHERE (`entry`='19481');
UPDATE `gameobject_template` SET `ScriptName`='go_wg2fort_portal' WHERE (`entry`='190763');
UPDATE `gameobject_template` SET `ScriptName`='go_keep2wg_portal' WHERE (`entry`='191575');
UPDATE `gameobject_template` SET `ScriptName`='go_wg2voa_portal' WHERE (`entry`='192819');

UPDATE `creature_template` SET `ScriptName`='boss_infinite' WHERE (`entry`='32273');
UPDATE `creature_template` SET `ScriptName`='npc_YmirjarSkycaller' WHERE (`entry`='31260');
UPDATE `creature_template` SET `ScriptName`='boss_saurfang' WHERE (`entry`='37813');

UPDATE `gameobject_template` SET `ScriptName`='icecrown_teleporter' WHERE (`entry`='202242');
UPDATE `gameobject_template` SET `ScriptName`='icecrown_teleporter' WHERE (`entry`='202245');
UPDATE `gameobject_template` SET `ScriptName`='icecrown_teleporter' WHERE (`entry`='202243');
UPDATE `gameobject_template` SET `ScriptName`='icecrown_teleporter' WHERE (`entry`='202244');

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

-- NPC Renamer NPC
INSERT IGNORE INTO `script_texts` (`npc_entry`,`entry`,`content_default`) VALUES ('500112','-1700139','You have been flagged for a rename, please exit and reload the game, thank you.');
INSERT IGNORE INTO `script_texts` (`npc_entry`,`entry`,`content_default`) VALUES ('500112','-1700140','You are not in the rename system please visit the account page on the web site to enable rename for this character.');
INSERT IGNORE INTO `script_texts` (`npc_entry`,`entry`,`content_default`) VALUES ('500112','-1700141','You do not have a MGA Token in your bag, get one and i will rename you.');


UPDATE `script_texts` SET `content_default`='For a limited time and during promotion time ALL new accounts get one (1) free level 80, for more info on this please visit www.mgawow.co.uk login with your new account and make sure popup blockers are turned off.  Thank you and welcome to MGA' WHERE (`npc_entry`='500612') AND (`entry`='-1705552');
INSERT INTO `script_texts` (`entry`, `content_default`) VALUES ('-1710500', 'You have been given some Arena Points');
INSERT INTO `script_texts` (`entry`, `content_default`) VALUES ('-1710501', 'You have been given some Honor Points');
