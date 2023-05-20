/*
 Navicat Premium Data Transfer

 Source Server         : UBUNTU
 Source Server Type    : MySQL
 Source Server Version : 80032 (8.0.32-0ubuntu0.22.04.2)
 Source Host           : 192.168.1.105:3306
 Source Schema         : characters

 Target Server Type    : MySQL
 Target Server Version : 80032 (8.0.32-0ubuntu0.22.04.2)
 File Encoding         : 65001

 Date: 15/03/2023 14:44:46
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for map_ids9
-- ----------------------------
DROP TABLE IF EXISTS `map_ids9`;
CREATE TABLE `map_ids9`  (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of map_ids9
-- ----------------------------
INSERT INTO `map_ids9` VALUES ('44', '<unused> Monastery');
INSERT INTO `map_ids9` VALUES ('35', '<unused>StormwindPrison');
INSERT INTO `map_ids9` VALUES ('619', 'Ahn\'kahet: The Old Kingdom');
INSERT INTO `map_ids9` VALUES ('531', 'Ahn\'Qiraj Temple');
INSERT INTO `map_ids9` VALUES ('449', 'Alliance PVP Barracks');
INSERT INTO `map_ids9` VALUES ('30', 'Alterac Valley');
INSERT INTO `map_ids9` VALUES ('529', 'Arathi Basin');
INSERT INTO `map_ids9` VALUES ('650', 'Argent Tournament Dungeon');
INSERT INTO `map_ids9` VALUES ('649', 'Argent Tournament Raid');
INSERT INTO `map_ids9` VALUES ('558', 'Auchindoun: Auchenai Crypts');
INSERT INTO `map_ids9` VALUES ('557', 'Auchindoun: Mana-Tombs');
INSERT INTO `map_ids9` VALUES ('556', 'Auchindoun: Sethekk Halls');
INSERT INTO `map_ids9` VALUES ('555', 'Auchindoun: Shadow Labyrinth');
INSERT INTO `map_ids9` VALUES ('601', 'Azjol-Nerub');
INSERT INTO `map_ids9` VALUES ('37', 'Azshara Crater');
INSERT INTO `map_ids9` VALUES ('564', 'Black Temple');
INSERT INTO `map_ids9` VALUES ('48', 'Blackfathom Deeps');
INSERT INTO `map_ids9` VALUES ('230', 'Blackrock Depths');
INSERT INTO `map_ids9` VALUES ('229', 'Blackrock Spire');
INSERT INTO `map_ids9` VALUES ('469', 'Blackwing Lair');
INSERT INTO `map_ids9` VALUES ('562', 'Blade\'s Edge Arena');
INSERT INTO `map_ids9` VALUES ('29', 'CashTest');
INSERT INTO `map_ids9` VALUES ('548', 'Coilfang: Serpentshrine Cavern');
INSERT INTO `map_ids9` VALUES ('547', 'Coilfang: The Slave Pens');
INSERT INTO `map_ids9` VALUES ('545', 'Coilfang: The Steamvault');
INSERT INTO `map_ids9` VALUES ('546', 'Coilfang: The Underbog');
INSERT INTO `map_ids9` VALUES ('42', 'Collin\'s Test');
INSERT INTO `map_ids9` VALUES ('597', 'Craig Test');
INSERT INTO `map_ids9` VALUES ('617', 'Dalaran Sewers');
INSERT INTO `map_ids9` VALUES ('36', 'Deadmines');
INSERT INTO `map_ids9` VALUES ('369', 'Deeprun Tram');
INSERT INTO `map_ids9` VALUES ('451', 'Development Land');
INSERT INTO `map_ids9` VALUES ('605', 'Development Land (non-weighted textures)');
INSERT INTO `map_ids9` VALUES ('429', 'Dire Maul');
INSERT INTO `map_ids9` VALUES ('600', 'Drak\'Tharon Keep');
INSERT INTO `map_ids9` VALUES ('0', 'Eastern Kingdoms');
INSERT INTO `map_ids9` VALUES ('609', 'Ebon Hold');
INSERT INTO `map_ids9` VALUES ('169', 'Emerald Dream');
INSERT INTO `map_ids9` VALUES ('573', 'ExteriorTest');
INSERT INTO `map_ids9` VALUES ('566', 'Eye of the Storm');
INSERT INTO `map_ids9` VALUES ('632', 'Forge of Souls');
INSERT INTO `map_ids9` VALUES ('90', 'Gnomeregan');
INSERT INTO `map_ids9` VALUES ('565', 'Gruul\'s Lair');
INSERT INTO `map_ids9` VALUES ('604', 'Gundrak');
INSERT INTO `map_ids9` VALUES ('602', 'Halls of Lightning');
INSERT INTO `map_ids9` VALUES ('668', 'Halls of Reflection');
INSERT INTO `map_ids9` VALUES ('599', 'Halls of Stone');
INSERT INTO `map_ids9` VALUES ('543', 'Hellfire Citadel: Ramparts');
INSERT INTO `map_ids9` VALUES ('542', 'Hellfire Citadel: The Blood Furnace');
INSERT INTO `map_ids9` VALUES ('540', 'Hellfire Citadel: The Shattered Halls');
INSERT INTO `map_ids9` VALUES ('450', 'Horde PVP Barracks');
INSERT INTO `map_ids9` VALUES ('631', 'Icecrown Citadel Raid');
INSERT INTO `map_ids9` VALUES ('628', 'Isle of Conquest');
INSERT INTO `map_ids9` VALUES ('1', 'Kalimdor');
INSERT INTO `map_ids9` VALUES ('532', 'Karazhan');
INSERT INTO `map_ids9` VALUES ('585', 'Magister\'s Terrace');
INSERT INTO `map_ids9` VALUES ('544', 'Magtheridon\'s Lair');
INSERT INTO `map_ids9` VALUES ('349', 'Maraudon');
INSERT INTO `map_ids9` VALUES ('409', 'Molten Core');
INSERT INTO `map_ids9` VALUES ('559', 'Nagrand Arena');
INSERT INTO `map_ids9` VALUES ('533', 'Naxxramas');
INSERT INTO `map_ids9` VALUES ('571', 'Northrend');
INSERT INTO `map_ids9` VALUES ('249', 'Onyxia\'s Lair');
INSERT INTO `map_ids9` VALUES ('269', 'Opening of the Dark Portal');
INSERT INTO `map_ids9` VALUES ('530', 'Outland');
INSERT INTO `map_ids9` VALUES ('658', 'Pit Of Saron');
INSERT INTO `map_ids9` VALUES ('606', 'QA and DVD');
INSERT INTO `map_ids9` VALUES ('389', 'Ragefire Chasm');
INSERT INTO `map_ids9` VALUES ('129', 'Razorfen Downs');
INSERT INTO `map_ids9` VALUES ('47', 'Razorfen Kraul');
INSERT INTO `map_ids9` VALUES ('509', 'Ruins of Ahn\'Qiraj');
INSERT INTO `map_ids9` VALUES ('572', 'Ruins of Lordaeron');
INSERT INTO `map_ids9` VALUES ('189', 'Scarlet Monastery');
INSERT INTO `map_ids9` VALUES ('289', 'Scholomance');
INSERT INTO `map_ids9` VALUES ('25', 'Scott Test');
INSERT INTO `map_ids9` VALUES ('33', 'Shadowfang Keep');
INSERT INTO `map_ids9` VALUES ('723', 'Stormwind');
INSERT INTO `map_ids9` VALUES ('34', 'Stormwind Stockade');
INSERT INTO `map_ids9` VALUES ('607', 'Strand of the Ancients');
INSERT INTO `map_ids9` VALUES ('329', 'Stratholme');
INSERT INTO `map_ids9` VALUES ('109', 'Sunken Temple');
INSERT INTO `map_ids9` VALUES ('598', 'Sunwell Fix (Unused)');
INSERT INTO `map_ids9` VALUES ('550', 'Tempest Keep');
INSERT INTO `map_ids9` VALUES ('552', 'Tempest Keep: The Arcatraz');
INSERT INTO `map_ids9` VALUES ('553', 'Tempest Keep: The Botanica');
INSERT INTO `map_ids9` VALUES ('554', 'Tempest Keep: The Mechanar');
INSERT INTO `map_ids9` VALUES ('13', 'Testing');
INSERT INTO `map_ids9` VALUES ('534', 'The Battle for Mount Hyjal');
INSERT INTO `map_ids9` VALUES ('595', 'The Culling of Stratholme');
INSERT INTO `map_ids9` VALUES ('560', 'The Escape From Durnholde');
INSERT INTO `map_ids9` VALUES ('616', 'The Eye of Eternity');
INSERT INTO `map_ids9` VALUES ('576', 'The Nexus');
INSERT INTO `map_ids9` VALUES ('615', 'The Obsidian Sanctum');
INSERT INTO `map_ids9` VALUES ('578', 'The Oculus');
INSERT INTO `map_ids9` VALUES ('618', 'The Ring of Valor');
INSERT INTO `map_ids9` VALUES ('724', 'The Ruby Sanctum');
INSERT INTO `map_ids9` VALUES ('580', 'The Sunwell');
INSERT INTO `map_ids9` VALUES ('641', 'Transport: A Airship (BG)');
INSERT INTO `map_ids9` VALUES ('712', 'Transport: A Airship (ICC Dungeon)');
INSERT INTO `map_ids9` VALUES ('672', 'Transport: A Airship (ICC Raid)');
INSERT INTO `map_ids9` VALUES ('593', 'Transport: Booty Bay to Ratchet');
INSERT INTO `map_ids9` VALUES ('592', 'Transport: Borean Tundra Test');
INSERT INTO `map_ids9` VALUES ('586', 'Transport: Exodar to Auberdine');
INSERT INTO `map_ids9` VALUES ('587', 'Transport: Feathermoon Ferry');
INSERT INTO `map_ids9` VALUES ('590', 'Transport: Grom\'Gol to Undercity');
INSERT INTO `map_ids9` VALUES ('642', 'Transport: H Airship (BG)');
INSERT INTO `map_ids9` VALUES ('713', 'Transport: H Airship (ICC Dungeon)');
INSERT INTO `map_ids9` VALUES ('673', 'Transport: H Airship (ICC Raid)');
INSERT INTO `map_ids9` VALUES ('594', 'Transport: Howling Fjord Sister Mercy (Quest)');
INSERT INTO `map_ids9` VALUES ('588', 'Transport: Menethil to Auberdine');
INSERT INTO `map_ids9` VALUES ('584', 'Transport: Menethil to Theramore');
INSERT INTO `map_ids9` VALUES ('612', 'Transport: Menethil to Valgarde');
INSERT INTO `map_ids9` VALUES ('621', 'Transport: Moa\'ki to Kamagua');
INSERT INTO `map_ids9` VALUES ('620', 'Transport: Moa\'ki to Unu\'pe');
INSERT INTO `map_ids9` VALUES ('596', 'Transport: Naglfar');
INSERT INTO `map_ids9` VALUES ('622', 'Transport: Orgrim\'s Hammer');
INSERT INTO `map_ids9` VALUES ('589', 'Transport: Orgrimmar to Grom\'Gol');
INSERT INTO `map_ids9` VALUES ('647', 'Transport: Orgrimmar to Thunderbluff');
INSERT INTO `map_ids9` VALUES ('613', 'Transport: Orgrimmar to Warsong Hold');
INSERT INTO `map_ids9` VALUES ('582', 'Transport: Rut\'theran to Auberdine');
INSERT INTO `map_ids9` VALUES ('614', 'Transport: Stormwind to Valiance Keep');
INSERT INTO `map_ids9` VALUES ('718', 'Transport: The Mighty Wind (ICC Raid)');
INSERT INTO `map_ids9` VALUES ('623', 'Transport: The Skybreaker');
INSERT INTO `map_ids9` VALUES ('610', 'Transport: Tirisfal to Vengeance Landing');
INSERT INTO `map_ids9` VALUES ('591', 'Transport: Undercity to Orgrimmar');
INSERT INTO `map_ids9` VALUES ('70', 'Uldaman');
INSERT INTO `map_ids9` VALUES ('603', 'Ulduar');
INSERT INTO `map_ids9` VALUES ('574', 'Utgarde Keep');
INSERT INTO `map_ids9` VALUES ('575', 'Utgarde Pinnacle');
INSERT INTO `map_ids9` VALUES ('624', 'Vault of Archavon');
INSERT INTO `map_ids9` VALUES ('608', 'Violet Hold');
INSERT INTO `map_ids9` VALUES ('43', 'Wailing Caverns');
INSERT INTO `map_ids9` VALUES ('489', 'Warsong Gulch');
INSERT INTO `map_ids9` VALUES ('568', 'Zul\'Aman');
INSERT INTO `map_ids9` VALUES ('209', 'Zul\'Farrak');
INSERT INTO `map_ids9` VALUES ('309', 'Zul\'Gurub');

SET FOREIGN_KEY_CHECKS = 1;
