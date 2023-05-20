/*
Navicat MySQL Data Transfer

Source Server         : LISA
Source Server Version : 50524
Source Host           : LISA:3306
Source Database       : cata-world

Target Server Type    : MYSQL
Target Server Version : 50524
File Encoding         : 65001

Date: 2012-09-12 15:46:08
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `mga_event_data`
-- ----------------------------
DROP TABLE IF EXISTS `mga_event_data`;
CREATE TABLE `mga_event_data` (
  `id` int(11) NOT NULL DEFAULT '0',
  `active` int(11) DEFAULT '0',
  `gossip` varchar(255) DEFAULT NULL,
  `map` int(11) DEFAULT NULL,
  `x` float(11,2) DEFAULT NULL,
  `y` float(11,2) DEFAULT NULL,
  `z` float(11,2) DEFAULT NULL,
  `turnedon` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of mga_event_data
-- ----------------------------
INSERT INTO `mga_event_data` VALUES ('1', '0', 'megaboss', '1', '-9954.21', '128.26', '0.38', '0');
INSERT INTO `mga_event_data` VALUES ('2', '1', 'SWTH', '0', '-14292.68', '546.20', '8.85', '1');
INSERT INTO `mga_event_data` VALUES ('3', '0', 'PlaryLand', '1', '7434.29', '-1559.22', '187.57', '0');
INSERT INTO `mga_event_data` VALUES ('4', '0', 'Emerald Dream', '169', '-491.23', '2535.25', '266.12', '0');
INSERT INTO `mga_event_data` VALUES ('6', '1', 'swj', '35', '-117.20', '137.30', '-40.37', '1');
INSERT INTO `mga_event_data` VALUES ('5', '0', 'Azshara Crater', '37', '25.70', '439.20', '306.20', '0');

-- ----------------------------
-- Table structure for `mga_promo_rewards`
-- ----------------------------
DROP TABLE IF EXISTS `mga_promo_rewards`;
CREATE TABLE `mga_promo_rewards` (
  `id` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `comment` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of mga_promo_rewards
-- ----------------------------
INSERT INTO `mga_promo_rewards` VALUES ('38644', 'Item', 'Gives Arene points');
INSERT INTO `mga_promo_rewards` VALUES ('900001', 'Game Object', 'Chest that gives epic loots');
INSERT INTO `mga_promo_rewards` VALUES ('37711', 'Item', 'Only in rare cases');
INSERT INTO `mga_promo_rewards` VALUES ('21140', 'Item', 'Only in rare cases');
INSERT INTO `mga_promo_rewards` VALUES ('18154', 'Item', 'Best one to use......');
INSERT INTO `mga_promo_rewards` VALUES ('37742', 'Item', 'Gives Honor points');
INSERT INTO `mga_promo_rewards` VALUES ('900002', 'Game Object', 'Chest that gives epicer loots');
INSERT INTO `mga_promo_rewards` VALUES ('900003', 'Game Object', 'Chest that gives even more epicer loots');
INSERT INTO `mga_promo_rewards` VALUES ('49426', 'Item', 'EoF');
INSERT INTO `mga_promo_rewards` VALUES ('47241', 'Item', 'EoT');
INSERT INTO `mga_promo_rewards` VALUES ('43346', 'Item', 'Has loot click link');
INSERT INTO `mga_promo_rewards` VALUES ('10456', 'Item', 'Coin Bag');
INSERT INTO `mga_promo_rewards` VALUES ('52006', 'Item', 'Sack of Frosty Treasures');
