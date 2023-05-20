/*
Navicat MySQL Data Transfer

Source Server         : MGA-WoW-Asylum
Source Server Version : 50067
Source Host           : lisa:3306
Source Database       : 313_chars

Target Server Type    : MYSQL
Target Server Version : 50067
File Encoding         : 65001

Date: 2011-02-17 20:04:51
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `players_reports_status2`
-- ----------------------------
DROP TABLE IF EXISTS `players_reports_status2`;
CREATE TABLE `players_reports_status2` (
  `guid` int(10) unsigned NOT NULL default '0',
  `creation_time` int(10) unsigned NOT NULL default '0',
  `average` bigint(20) unsigned NOT NULL default '0',
  `total_reports` bigint(20) unsigned NOT NULL default '0',
  `speed_reports` bigint(20) unsigned NOT NULL default '0',
  `fly_reports` bigint(20) unsigned NOT NULL default '0',
  `jump_reports` bigint(20) unsigned NOT NULL default '0',
  `waterwalk_reports` bigint(20) unsigned NOT NULL default '0',
  `teleportplane_reports` bigint(20) unsigned NOT NULL default '0',
  PRIMARY KEY  (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of players_reports_status2
-- ----------------------------
