DROP TABLE IF EXISTS `char_rename`;
CREATE TABLE `char_rename` (
  `rid` int(5) NOT NULL auto_increment,
  `oldname` varchar(255) NOT NULL,
  `newname` varchar(255) NOT NULL default 'Unknown',
  `status` int(5) NOT NULL default '0',
  `charid` int(11) NOT NULL default '0',
  PRIMARY KEY  (`rid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
