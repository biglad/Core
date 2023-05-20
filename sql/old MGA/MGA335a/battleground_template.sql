/*
Navicat MySQL Data Transfer

Source Server         : MGA-One
Source Server Version : 50067
Source Host           : 192.168.0.135:3306
Source Database       : 335a_world

Target Server Type    : MYSQL
Target Server Version : 50067
File Encoding         : 65001

Date: 2011-09-04 11:59:29
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `battleground_template`
-- ----------------------------
DROP TABLE IF EXISTS `battleground_template`;
CREATE TABLE `battleground_template` (
  `id` mediumint(8) unsigned NOT NULL,
  `MinPlayersPerTeam` smallint(5) unsigned NOT NULL default '0',
  `MaxPlayersPerTeam` smallint(5) unsigned NOT NULL default '0',
  `MinLvl` tinyint(3) unsigned NOT NULL default '0',
  `MaxLvl` tinyint(3) unsigned NOT NULL default '0',
  `AllianceStartLoc` mediumint(8) unsigned NOT NULL,
  `AllianceStartO` float NOT NULL,
  `HordeStartLoc` mediumint(8) unsigned NOT NULL,
  `HordeStartO` float NOT NULL,
  `Weight` tinyint(2) unsigned NOT NULL default '1',
  `ScriptName` char(64) NOT NULL default '',
  `Comment` char(32) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of battleground_template
-- ----------------------------
INSERT INTO `battleground_template` VALUES ('1', '10', '40', '51', '80', '611', '3.16312', '610', '0.715504', '0', '', 'Alterac Valley');
INSERT INTO `battleground_template` VALUES ('2', '4', '10', '10', '80', '769', '3.14159', '770', '0.151581', '4', '', 'Warsong Gulch');
INSERT INTO `battleground_template` VALUES ('3', '4', '15', '20', '80', '890', '3.91571', '889', '0.813671', '3', '', 'Arathi Basin');
INSERT INTO `battleground_template` VALUES ('7', '4', '15', '61', '80', '1103', '3.03123', '1104', '0.055761', '3', '', 'Eye of The Storm');
INSERT INTO `battleground_template` VALUES ('4', '0', '2', '10', '80', '929', '0', '936', '3.14159', '1', '', 'Nagrand Arena');
INSERT INTO `battleground_template` VALUES ('5', '0', '2', '10', '80', '939', '0', '940', '3.14159', '1', '', 'Blades\'s Edge Arena');
INSERT INTO `battleground_template` VALUES ('6', '0', '2', '10', '80', '0', '0', '0', '0', '1', '', 'All Arena');
INSERT INTO `battleground_template` VALUES ('8', '0', '2', '10', '80', '1258', '0', '1259', '3.14159', '1', '', 'Ruins of Lordaeron');
INSERT INTO `battleground_template` VALUES ('9', '4', '15', '71', '80', '1367', '0', '1368', '0', '2', '', 'Strand of the Ancients');
INSERT INTO `battleground_template` VALUES ('10', '5', '5', '10', '80', '1362', '0', '1363', '0', '1', '', 'Dalaran Sewers');
INSERT INTO `battleground_template` VALUES ('11', '5', '5', '10', '80', '1364', '0', '1365', '0', '1', '', 'The Ring of Valor');
INSERT INTO `battleground_template` VALUES ('30', '20', '40', '71', '80', '1485', '0', '1486', '3.16124', '1', '', 'Isle of Conquest');
INSERT INTO `battleground_template` VALUES ('32', '4', '10', '0', '80', '0', '0', '0', '0', '1', '', 'Random battleground');
