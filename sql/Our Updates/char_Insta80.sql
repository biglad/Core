/*
 Navicat Premium Data Transfer

 Source Server         : UBUNTU
 Source Server Type    : MySQL
 Source Server Version : 80033 (8.0.33-0ubuntu0.22.04.2)
 Source Host           : 192.168.1.105:3306
 Source Schema         : world-dev

 Target Server Type    : MySQL
 Target Server Version : 80033 (8.0.33-0ubuntu0.22.04.2)
 File Encoding         : 65001

 Date: 24/05/2023 19:35:40
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for char_Insta80
-- ----------------------------
DROP TABLE IF EXISTS `char_Insta80`;
CREATE TABLE `char_Insta80`  (
  `char_id` int NOT NULL,
  `acct_id` int NOT NULL,
  `status` int NULL DEFAULT 0,
  PRIMARY KEY (`char_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
