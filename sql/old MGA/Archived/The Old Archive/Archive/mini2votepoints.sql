DROP TABLE IF EXISTS `vote_points`;
CREATE TABLE `vote_points` (
  `guid` int(11) NOT NULL,
  `points` int(11) NOT NULL default '0',
  PRIMARY KEY  (`guid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

DROP TABLE IF EXISTS `donation_points`;
CREATE TABLE `donation_points` (
  `guid` int(11) NOT NULL,
  `points` int(11) NOT NULL default '0',
  PRIMARY KEY  (`guid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;


INSERT INTO `creature_template` VALUES (500613, 0, 0, 0, 0, 0, 6967, 0, 6967, 0, 'Star', 'The Exchanger of MGA', '', 0, 1, 1, 0, 35, 35, 1, 1, 1.14286, 1, 0, 1, 2, 0, 0, 1, 2000, 2000, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 'npc_mga_minitopoints', 0);

INSERT IGNORE INTO `script_texts` (`npc_entry`,`entry`,`content_default`) VALUES ('500613','-1705561','I have exchanged 10 Mini Tokens for 5 Voting points.');
INSERT IGNORE INTO `script_texts` (`npc_entry`,`entry`,`content_default`) VALUES ('500613','-1705562','I have exchanged 20 Mini Tokens for 10 Voting points.');
INSERT IGNORE INTO `script_texts` (`npc_entry`,`entry`,`content_default`) VALUES ('500613','-1705563','I have exchanged 30 Mini Tokens for 15 Voting points.');
INSERT IGNORE INTO `script_texts` (`npc_entry`,`entry`,`content_default`) VALUES ('500613','-1705564','I can exchange mini tokens you have in your bags into vote points for use on the online shop, 2 Mini Tokens = 1 Vote Point..');
INSERT IGNORE INTO `script_texts` (`npc_entry`,`entry`,`content_default`) VALUES ('500613','-1705565','I have exchanged 50 MGA Tokens and added ONE VIP Point to this account...');
