INSERT INTO `script_texts` (`npc_entry`,`entry`,`content_default`,`comment`) VALUES ('36856','-1700042','Please dont loose this and sorry iv not had chance to wash it yet.','MGA text');
INSERT INTO `script_texts` (`npc_entry`,`entry`,`content_default`) VALUES ('36856','-1700043','I have all ready given you a tabard, no go away and dont waist my time!');
UPDATE `script_texts` SET `comment`='MGA text' WHERE (`npc_entry`='36856') AND (`entry`='-1700043');
UPDATE `creature_template` SET `ScriptName`='npc_mga_shandy_gossgleam' WHERE (`entry`='36856');






UPDATE `creature_template` SET `ScriptName`='npc_mga_arcanist_tybalin' WHERE (`entry`='36669');
INSERT INTO `script_texts` (`npc_entry`,`entry`,`content_default`,`comment`) VALUES ('36669','-1700044','Look after this book well please.','MGA text');
INSERT INTO `script_texts` (`npc_entry`,`entry`,`content_default`,`comment`) VALUES ('36669','-1700045','Go Away, you cant read two books at once.','MGA text');
INSERT INTO `script_texts` (`npc_entry`,`entry`,`content_default`,`comment`) VALUES ('36670','-1700046','Look after this book well please.','MGA text');
INSERT INTO `script_texts` (`npc_entry`,`entry`,`content_default`,`comment`) VALUES ('36670','-1700047','Go Away, you cant read two books at once.','MGA text');


UPDATE `creature_template` SET `ScriptName`='curcible_of_souls' WHERE (`entry`='37094');
UPDATE `item_template` SET `spellid_1`='0' WHERE (`entry`='49920');
UPDATE `creature_template` SET `ScriptName`='npc_mga_magister_hathorel' WHERE (`entry`='36670');

UPDATE `creature_template` SET `modelid1`='11686', `modelid3`='11686', `name`='Quel\'Delar Re-forge', `subname`='MGA Temp Fix', `ScriptName`='forgemastersanvil' WHERE (`entry`='500915');


UPDATE `creature_template` SET `ScriptName`='thalorien_dawnseeker' WHERE (`entry`='37552');
UPDATE `creature_template` SET `npcflag`='1' WHERE (`entry`='37552');


UPDATE `creature_template` SET `npcflag`='1', `ScriptName`='warden_of_the_sunwell' WHERE (`entry`='37523');

 UPDATE `item_template` SET `spellid_1`='0' WHERE (`entry`='49879');
 UPDATE `creature_template` SET `name`='The Purification of Quel\'Delar', `subname`='MGA Temp Fix' WHERE (`entry`='500917');
 UPDATE `creature_template` SET `modelid1`='6967', `modelid3`='6967' WHERE (`entry`='500917');
 UPDATE `creature_template` SET `flags_extra`='2' WHERE (`entry`='500917');
 UPDATE `creature_template` SET `ScriptName`='cleansingtheblade' WHERE (`entry`='500917');
 