INSERT INTO `script_texts` (`npc_entry`,`entry`,`content_default`) VALUES ('31111','-1700039','I PITY DA FOOL!');
INSERT INTO `script_texts` (`npc_entry`,`entry`,`content_default`) VALUES ('31111','-1700040','You\'ve already been pitied FOOL!');
INSERT INTO `script_texts` (`npc_entry`,`entry`,`content_default`) VALUES ('31111','-1700041','FOOL! I\'ve come to MGA to Pity you!');

UPDATE creature_template SET unit_flags = 1 WHERE entry = 31111;