DROP TABLE IF EXISTS `char_edit`;
CREATE TABLE `char_edit` (
  `eid` int(5) NOT NULL auto_increment,
  `name` varchar(255) NOT NULL,
  `type` int(2) NOT NULL default '0',
  `status` int(5) NOT NULL default '0',
  `charid` int(11) NOT NULL default '0',
  `time` decimal(65,0) NOT NULL default '0',
  PRIMARY KEY  (`eid`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

INSERT IGNORE INTO `script_texts` (`npc_entry`,`entry`,`content_default`) VALUES ('500512','-1700142','You have been flagged for a faction change, please exit and reload the game, thank you.');
INSERT IGNORE INTO `script_texts` (`npc_entry`,`entry`,`content_default`) VALUES ('500512','-1700143','You have been flagged for a race change, please exit and reload the game, thank you.');
INSERT IGNORE INTO `script_texts` (`npc_entry`,`entry`,`content_default`) VALUES ('500512','-1700144','You do not have a MGA Token in your bag, get one and we can continue.');


INSERT INTO `creature_template` VALUES (500512, 0, 0, 0, 0, 0, 14452, 0, 14452, 0, 'Cameron', 'Faction and Race Changer', '', 0, 100, 100, 2, 35, 35, 5, 1, 1.14286, 1, 0, 482, 722, 0, 181, 1, 1400, 1400, 2, 4096, 0, 0, 0, 0, 0, 0, 386, 578, 145, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 'npc_mga_char_editor', 0);
