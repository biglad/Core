UPDATE `creature_template` SET `modelid1`='14452', `modelid3`='14452', `name`='Azreal', `subname`='Master of Teleports', `ScriptName`='npc_mga_vote_teleporter' WHERE (`entry`='500912');

DROP TABLE IF EXISTS `vote_tp`;
CREATE TABLE `vote_tp` (
  `guid` int(11) NOT NULL,
  `time` int(255) NOT NULL default '0',
  `tptime` int(255) NOT NULL default '0',
  PRIMARY KEY  (`guid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

