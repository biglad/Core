/*
MySQL Data Transfer
Source Host: 192.168.0.130
Source Database: trinity_world1
Target Host: 192.168.0.130
Target Database: trinity_world1
Date: 17/08/2009 07:38:54
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for guild_transfer
-- ----------------------------
CREATE TABLE `guild_transfer` (
  `id` int(4) unsigned NOT NULL auto_increment,
  `name1` varchar(13) default NULL,
  `name2` varchar(13) default NULL,
  `status` tinyint(1) default NULL,
  `duplicate` tinyint(1) default NULL,
  `level` int(2) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records 
-- ----------------------------
