INSERT INTO `script_texts` (`npc_entry`,`entry`,`content_default`,`comment`) VALUES ('36856','-1700042','Please dont loose this and sorry iv not had chance to wash it yet.','MGA text');
INSERT INTO `script_texts` (`npc_entry`,`entry`,`content_default`) VALUES ('36856','-1700043','I have all ready given you a tabard, no go away and dont waist my time!');
UPDATE `script_texts` SET `comment`='MGA text' WHERE (`npc_entry`='36856') AND (`entry`='-1700043');
UPDATE `creature_template` SET `ScriptName`='npc_mga_shandy_gossgleam' WHERE (`entry`='36856');






UPDATE `creature_template` SET `ScriptName`='npc_mga_arcanist_tybalin' WHERE (`entry`='36669');
INSERT INTO `script_texts` (`npc_entry`,`entry`,`content_default`,`comment`) VALUES ('36669','-1700044','Look after this book well please.','MGA text');
INSERT INTO `script_texts` (`npc_entry`,`entry`,`content_default`,`comment`) VALUES ('36669','-1700045','Go Away, you cant read two books at once.','MGA text');
INSERT INTO `script_texts` (`npc_entry`,`entry`,`content_default`,`comment`) VALUES ('36670','-1700046','Look after this book well please.','MGA text');
INSERT INTO `script_texts` (`npc_entry`,`entry`,`content_default`,`comment`) VALUES ('36670','-1700047','Go Away, you cant read two books at once.','MGA text');
