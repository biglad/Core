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

 Date: 23/03/2023 13:20:59
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for map_ids
-- ----------------------------
DROP TABLE IF EXISTS `map_ids`;
CREATE TABLE `map_ids`  (
  `id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of map_ids
-- ----------------------------
INSERT INTO `map_ids` VALUES (0, 'Eastern Kingdoms');
INSERT INTO `map_ids` VALUES (1, 'Kalimdor');
INSERT INTO `map_ids` VALUES (13, 'Testing');
INSERT INTO `map_ids` VALUES (25, 'Scott Test');
INSERT INTO `map_ids` VALUES (30, 'Alterac Valley');
INSERT INTO `map_ids` VALUES (33, 'Shadowfang Keep');
INSERT INTO `map_ids` VALUES (34, 'Stormwind Stockade');
INSERT INTO `map_ids` VALUES (35, '<unused>StormwindPrison');
INSERT INTO `map_ids` VALUES (36, 'Deadmines');
INSERT INTO `map_ids` VALUES (37, 'Azshara Crater');
INSERT INTO `map_ids` VALUES (42, 'Collin\'s Test');
INSERT INTO `map_ids` VALUES (43, 'Wailing Caverns');
INSERT INTO `map_ids` VALUES (44, '<unused> Monastery');
INSERT INTO `map_ids` VALUES (47, 'Razorfen Kraul');
INSERT INTO `map_ids` VALUES (48, 'Blackfathom Deeps');
INSERT INTO `map_ids` VALUES (70, 'Uldaman');
INSERT INTO `map_ids` VALUES (90, 'Gnomeregan');
INSERT INTO `map_ids` VALUES (109, 'Sunken Temple');
INSERT INTO `map_ids` VALUES (129, 'Razorfen Downs');
INSERT INTO `map_ids` VALUES (169, 'Emerald Dream');
INSERT INTO `map_ids` VALUES (189, 'Scarlet Monastery');
INSERT INTO `map_ids` VALUES (209, 'Zul\'Farrak');
INSERT INTO `map_ids` VALUES (229, 'Blackrock Spire');
INSERT INTO `map_ids` VALUES (230, 'Blackrock Depths');
INSERT INTO `map_ids` VALUES (249, 'Onyxia\'s Lair');
INSERT INTO `map_ids` VALUES (269, 'Opening of the Dark Portal');
INSERT INTO `map_ids` VALUES (289, 'Scholomance');
INSERT INTO `map_ids` VALUES (309, 'Zul\'Gurub');
INSERT INTO `map_ids` VALUES (329, 'Stratholme');
INSERT INTO `map_ids` VALUES (349, 'Maraudon');
INSERT INTO `map_ids` VALUES (369, 'Deeprun Tram');
INSERT INTO `map_ids` VALUES (389, 'Ragefire Chasm');
INSERT INTO `map_ids` VALUES (409, 'Molten Core');
INSERT INTO `map_ids` VALUES (429, 'Dire Maul');
INSERT INTO `map_ids` VALUES (449, 'Alliance PVP Barracks');
INSERT INTO `map_ids` VALUES (450, 'Horde PVP Barracks');
INSERT INTO `map_ids` VALUES (451, 'Development Land');
INSERT INTO `map_ids` VALUES (469, 'Blackwing Lair');
INSERT INTO `map_ids` VALUES (489, 'Warsong Gulch');
INSERT INTO `map_ids` VALUES (509, 'Ruins of Ahn\'Qiraj');
INSERT INTO `map_ids` VALUES (529, 'Arathi Basin');
INSERT INTO `map_ids` VALUES (530, 'Outland');
INSERT INTO `map_ids` VALUES (531, 'Ahn\'Qiraj Temple');
INSERT INTO `map_ids` VALUES (532, 'Karazhan');
INSERT INTO `map_ids` VALUES (533, 'Naxxramas');
INSERT INTO `map_ids` VALUES (534, 'The Battle for Mount Hyjal');
INSERT INTO `map_ids` VALUES (540, 'Hellfire Citadel: The Shattered Halls');
INSERT INTO `map_ids` VALUES (542, 'Hellfire Citadel: The Blood Furnace');
INSERT INTO `map_ids` VALUES (543, 'Hellfire Citadel: Ramparts');
INSERT INTO `map_ids` VALUES (544, 'Magtheridon\'s Lair');
INSERT INTO `map_ids` VALUES (545, 'Coilfang: The Steamvault');
INSERT INTO `map_ids` VALUES (546, 'Coilfang: The Underbog');
INSERT INTO `map_ids` VALUES (547, 'Coilfang: The Slave Pens');
INSERT INTO `map_ids` VALUES (548, 'Coilfang: Serpentshrine Cavern');
INSERT INTO `map_ids` VALUES (550, 'Tempest Keep');
INSERT INTO `map_ids` VALUES (552, 'Tempest Keep: The Arcatraz');
INSERT INTO `map_ids` VALUES (553, 'Tempest Keep: The Botanica');
INSERT INTO `map_ids` VALUES (554, 'Tempest Keep: The Mechanar');
INSERT INTO `map_ids` VALUES (555, 'Auchindoun: Shadow Labyrinth');
INSERT INTO `map_ids` VALUES (556, 'Auchindoun: Sethekk Halls');
INSERT INTO `map_ids` VALUES (557, 'Auchindoun: Mana-Tombs');
INSERT INTO `map_ids` VALUES (558, 'Auchindoun: Auchenai Crypts');
INSERT INTO `map_ids` VALUES (559, 'Nagrand Arena');
INSERT INTO `map_ids` VALUES (560, 'The Escape From Durnholde');
INSERT INTO `map_ids` VALUES (562, 'Blade\'s Edge Arena');
INSERT INTO `map_ids` VALUES (564, 'Black Temple');
INSERT INTO `map_ids` VALUES (565, 'Gruul\'s Lair');
INSERT INTO `map_ids` VALUES (566, 'Eye of the Storm');
INSERT INTO `map_ids` VALUES (568, 'Zul\'Aman');
INSERT INTO `map_ids` VALUES (571, 'Northrend');
INSERT INTO `map_ids` VALUES (572, 'Ruins of Lordaeron');
INSERT INTO `map_ids` VALUES (573, 'ExteriorTest');
INSERT INTO `map_ids` VALUES (574, 'Utgarde Keep');
INSERT INTO `map_ids` VALUES (575, 'Utgarde Pinnacle');
INSERT INTO `map_ids` VALUES (576, 'The Nexus');
INSERT INTO `map_ids` VALUES (578, 'The Oculus');
INSERT INTO `map_ids` VALUES (580, 'The Sunwell');
INSERT INTO `map_ids` VALUES (582, 'Transport: Rut\'theran to Auberdine');
INSERT INTO `map_ids` VALUES (584, 'Transport: Menethil to Theramore');
INSERT INTO `map_ids` VALUES (585, 'Magister\'s Terrace');
INSERT INTO `map_ids` VALUES (586, 'Transport: Exodar to Auberdine');
INSERT INTO `map_ids` VALUES (587, 'Transport: Feathermoon Ferry');
INSERT INTO `map_ids` VALUES (588, 'Transport: Menethil to Auberdine');
INSERT INTO `map_ids` VALUES (589, 'Transport: Orgrimmar to Grom\'Gol');
INSERT INTO `map_ids` VALUES (590, 'Transport: Grom\'Gol to Undercity');
INSERT INTO `map_ids` VALUES (591, 'Transport: Undercity to Orgrimmar');
INSERT INTO `map_ids` VALUES (592, 'Transport: Borean Tundra Test');
INSERT INTO `map_ids` VALUES (593, 'Transport: Booty Bay to Ratchet');
INSERT INTO `map_ids` VALUES (594, 'Transport: Howling Fjord Sister Mercy (Quest)');
INSERT INTO `map_ids` VALUES (595, 'The Culling of Stratholme');
INSERT INTO `map_ids` VALUES (596, 'Transport: Naglfar');
INSERT INTO `map_ids` VALUES (597, 'Craig Test');
INSERT INTO `map_ids` VALUES (598, 'Sunwell Fix (Unused)');
INSERT INTO `map_ids` VALUES (599, 'Halls of Stone');
INSERT INTO `map_ids` VALUES (600, 'Drak\'Tharon Keep');
INSERT INTO `map_ids` VALUES (601, 'Azjol-Nerub');
INSERT INTO `map_ids` VALUES (602, 'Halls of Lightning');
INSERT INTO `map_ids` VALUES (603, 'Ulduar');
INSERT INTO `map_ids` VALUES (604, 'Gundrak');
INSERT INTO `map_ids` VALUES (605, 'Development Land (non-weighted textures)');
INSERT INTO `map_ids` VALUES (606, 'QA and DVD');
INSERT INTO `map_ids` VALUES (607, 'Strand of the Ancients');
INSERT INTO `map_ids` VALUES (608, 'Violet Hold');
INSERT INTO `map_ids` VALUES (609, 'Ebon Hold');
INSERT INTO `map_ids` VALUES (610, 'Transport: Tirisfal to Vengeance Landing');
INSERT INTO `map_ids` VALUES (612, 'Transport: Menethil to Valgarde');
INSERT INTO `map_ids` VALUES (613, 'Transport: Orgrimmar to Warsong Hold');
INSERT INTO `map_ids` VALUES (614, 'Transport: Stormwind to Valiance Keep');
INSERT INTO `map_ids` VALUES (615, 'The Obsidian Sanctum');
INSERT INTO `map_ids` VALUES (616, 'The Eye of Eternity');
INSERT INTO `map_ids` VALUES (617, 'Dalaran Sewers');
INSERT INTO `map_ids` VALUES (618, 'The Ring of Valor');
INSERT INTO `map_ids` VALUES (619, 'Ahn\'kahet: The Old Kingdom');
INSERT INTO `map_ids` VALUES (620, 'Transport: Moa\'ki to Unu\'pe');
INSERT INTO `map_ids` VALUES (621, 'Transport: Moa\'ki to Kamagua');
INSERT INTO `map_ids` VALUES (622, 'Transport: Orgrim\'s Hammer');
INSERT INTO `map_ids` VALUES (623, 'Transport: The Skybreaker');
INSERT INTO `map_ids` VALUES (624, 'Vault of Archavon');
INSERT INTO `map_ids` VALUES (628, 'Isle of Conquest');
INSERT INTO `map_ids` VALUES (631, 'Icecrown Citadel');
INSERT INTO `map_ids` VALUES (632, 'The Forge of Souls');
INSERT INTO `map_ids` VALUES (641, 'Transport: Alliance Airship BG');
INSERT INTO `map_ids` VALUES (642, 'Transport: HordeAirshipBG');
INSERT INTO `map_ids` VALUES (647, 'Transport: Orgrimmar to Thunder Bluff');
INSERT INTO `map_ids` VALUES (649, 'Trial of the Crusader');
INSERT INTO `map_ids` VALUES (650, 'Trial of the Champion');
INSERT INTO `map_ids` VALUES (658, 'Pit of Saron');
INSERT INTO `map_ids` VALUES (668, 'Halls of Reflection');
INSERT INTO `map_ids` VALUES (672, 'Transport: The Skybreaker (Icecrown Citadel Raid)');
INSERT INTO `map_ids` VALUES (673, 'Transport: Orgrim\'s Hammer (Icecrown Citadel Raid)');
INSERT INTO `map_ids` VALUES (712, 'Transport: The Skybreaker (IC Dungeon)');
INSERT INTO `map_ids` VALUES (713, 'Transport: Orgrim\'s Hammer (IC Dungeon)');
INSERT INTO `map_ids` VALUES (718, 'Trasnport: The Mighty Wind (Icecrown Citadel Raid)');
INSERT INTO `map_ids` VALUES (723, 'Stormwind');
INSERT INTO `map_ids` VALUES (724, 'The Ruby Sanctum');

SET FOREIGN_KEY_CHECKS = 1;
