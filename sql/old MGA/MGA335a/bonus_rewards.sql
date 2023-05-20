/*
Navicat MySQL Data Transfer

Source Server         : MGA-One
Source Server Version : 50067
Source Host           : 192.168.0.135:3306
Source Database       : 335a_world

Target Server Type    : MYSQL
Target Server Version : 50067
File Encoding         : 65001

Date: 2011-12-16 16:21:05
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `bonus_rewards`
-- ----------------------------
DROP TABLE IF EXISTS `bonus_rewards`;
CREATE TABLE `bonus_rewards` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) NOT NULL,
  `item` int(11) NOT NULL default '0',
  `count` int(11) NOT NULL default '1',
  `active` int(11) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of bonus_rewards
-- ----------------------------
INSERT INTO `bonus_rewards` VALUES ('1', 'wsg', '0', '1', '0');
INSERT INTO `bonus_rewards` VALUES ('2', 'rbg', '0', '1', '0');
INSERT INTO `bonus_rewards` VALUES ('3', 'rdf', '0', '1', '0');
INSERT INTO `bonus_rewards` VALUES ('4', 'wg', '0', '1', '0');
INSERT INTO `bonus_rewards` VALUES ('5', 'megaboss', '0', '1', '0');
