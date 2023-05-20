/*
Navicat MySQL Data Transfer

Source Server         : MGA-WoW
Source Server Version : 50067
Source Host           : lisa:3306
Source Database       : 335a_world

Target Server Type    : MYSQL
Target Server Version : 50067
File Encoding         : 65001

Date: 2011-03-19 08:34:41
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
INSERT INTO `battleground_template` VALUES ('1', '10', '40', '51', '80', '611', '2.72532', '610', '2.27452', '0', '', 'Alterac Valley');
INSERT INTO `battleground_template` VALUES ('2', '4', '10', '10', '80', '769', '3.14159', '770', '3.14159', '2', '', 'Warsong Gulch');
INSERT INTO `battleground_template` VALUES ('3', '4', '15', '20', '80', '890', '3.40156', '889', '0.263892', '2', '', 'Arathi Basin');
INSERT INTO `battleground_template` VALUES ('7', '4', '15', '61', '80', '1103', '3.40156', '1104', '0.263892', '2', '', 'Eye of The Storm');
INSERT INTO `battleground_template` VALUES ('4', '0', '2', '10', '80', '929', '0', '936', '3.14159', '1', '', 'Nagrand Arena');
INSERT INTO `battleground_template` VALUES ('5', '0', '2', '10', '80', '939', '0', '940', '3.14159', '1', '', 'Blades\'s Edge Arena');
INSERT INTO `battleground_template` VALUES ('6', '0', '2', '10', '80', '0', '0', '0', '0', '1', '', 'All Arena');
INSERT INTO `battleground_template` VALUES ('8', '0', '2', '10', '80', '1258', '0', '1259', '3.14159', '1', '', 'Ruins of Lordaeron');
INSERT INTO `battleground_template` VALUES ('9', '4', '15', '71', '80', '1367', '0', '1368', '0', '1', '', 'Strand of the Ancients');
INSERT INTO `battleground_template` VALUES ('10', '0', '2', '10', '80', '1362', '0', '1363', '0', '0', '', 'Dalaran Sewers');
INSERT INTO `battleground_template` VALUES ('11', '5', '5', '10', '80', '1364', '0', '1365', '0', '0', '', 'The Ring of Valor');
INSERT INTO `battleground_template` VALUES ('30', '20', '40', '71', '80', '1485', '0', '1486', '0', '1', '', 'Isle of Conquest');
INSERT INTO `battleground_template` VALUES ('32', '4', '10', '10', '80', '0', '0', '0', '0', '1', '', 'Random battleground');
