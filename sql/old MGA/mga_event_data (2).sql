/*
Navicat MySQL Data Transfer

Source Server         : LISA
Source Server Version : 50524
Source Host           : LISA:3306
Source Database       : 335a_world

Target Server Type    : MYSQL
Target Server Version : 50524
File Encoding         : 65001

Date: 2012-10-01 08:35:40
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
