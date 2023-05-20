DELETE FROM `creature_template` WHERE (`entry`='500999');
INSERT INTO `creature_template` VALUES (500999, 0, 0, 0, 0, 0, 30076, 0, 30076, 0, 'Tuulikki', 'The PvP Weapon Vendor', '', 0, 100, 100, 2, 35, 35, 5, 1.71, 1.14286, 1, 0, 0, 0, 0, 0, 1, 2000, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 'npc_mga_pvp_shop', 0);
UPDATE `creature_template` SET `npcflag`='129' WHERE (`entry`='500999');
UPDATE `creature_template` SET `name`='Smegg Head' WHERE (`entry`='500999');

-- ITEMS TO SELL
--DELETE FROM `npc_vendor` WHERE (`entry`='500999');
--INSERT INTO `npc_vendor` (`entry`, `item`) VALUES ('500999', '49908'); -- Primordial Saronite
-- UPDATE `item_template` SET `BuyPrice`='1000000' WHERE (`entry`='49908'); 
-- UPDATE `npc_vendor` SET `ExtendedCost`='2743' WHERE (`entry`='500999') AND (`item`='50380') AND (`ExtendedCost`='0');
-- http://wiki.mgawow.co.uk/MGAWOW/ItemExtendedCost.html
-- 2953 1500 rating needed + AP
-- 1961 140 ratiing needed + honor
-- 2438 - low end price
-- 2965 - 52K honor.
DELETE FROM `npc_vendor` WHERE (`entry`='500999');
INSERT INTO `npc_vendor` (`entry`, `item`, `ExtendedCost`) VALUES ('500999', '45954', '2953');
INSERT INTO `npc_vendor` (`entry`, `item`, `ExtendedCost`) VALUES ('500999', '42565', '2953');
INSERT INTO `npc_vendor` (`entry`, `item`, `ExtendedCost`) VALUES ('500999', '42514', '2953');
INSERT INTO `npc_vendor` (`entry`, `item`, `ExtendedCost`) VALUES ('500999', '42364', '2953');
INSERT INTO `npc_vendor` (`entry`, `item`, `ExtendedCost`) VALUES ('500999', '42281', '2953');
INSERT INTO `npc_vendor` (`entry`, `item`, `ExtendedCost`) VALUES ('500999', '42323', '2953');
INSERT INTO `npc_vendor` (`entry`, `item`, `ExtendedCost`) VALUES ('500999', '42233', '2953');
INSERT INTO `npc_vendor` (`entry`, `item`, `ExtendedCost`) VALUES ('500999', '45950', '2953');
INSERT INTO `npc_vendor` (`entry`, `item`, `ExtendedCost`) VALUES ('500999', '42209', '2953');
INSERT INTO `npc_vendor` (`entry`, `item`, `ExtendedCost`) VALUES ('500999', '45953', '2953');
INSERT INTO `npc_vendor` (`entry`, `item`, `ExtendedCost`) VALUES ('500999', '45949', '2953');
INSERT INTO `npc_vendor` (`entry`, `item`, `ExtendedCost`) VALUES ('500999', '45961', '2953');
INSERT INTO `npc_vendor` (`entry`, `item`, `ExtendedCost`) VALUES ('500999', '45962', '2953');
INSERT INTO `npc_vendor` (`entry`, `item`, `ExtendedCost`) VALUES ('500999', '42385', '2953');
INSERT INTO `npc_vendor` (`entry`, `item`, `ExtendedCost`) VALUES ('500999', '45967', '2953');
INSERT INTO `npc_vendor` (`entry`, `item`, `ExtendedCost`) VALUES ('500999', '44422', '2953');
INSERT INTO `npc_vendor` (`entry`, `item`, `ExtendedCost`) VALUES ('500999', '42353', '2953');
INSERT INTO `npc_vendor` (`entry`, `item`, `ExtendedCost`) VALUES ('500999', '45969', '2953');
INSERT INTO `npc_vendor` (`entry`, `item`, `ExtendedCost`) VALUES ('500999', '45952', '2953');
INSERT INTO `npc_vendor` (`entry`, `item`, `ExtendedCost`) VALUES ('500999', '42333', '2953');
INSERT INTO `npc_vendor` (`entry`, `item`, `ExtendedCost`) VALUES ('500999', '45957', '2953');
INSERT INTO `npc_vendor` (`entry`, `item`, `ExtendedCost`) VALUES ('500999', '45951', '2953');
INSERT INTO `npc_vendor` (`entry`, `item`, `ExtendedCost`) VALUES ('500999', '42228', '2953');
INSERT INTO `npc_vendor` (`entry`, `item`, `ExtendedCost`) VALUES ('500999', '42496', '2953');
INSERT INTO `npc_vendor` (`entry`, `item`, `ExtendedCost`) VALUES ('500999', '45968', '2953');
INSERT INTO `npc_vendor` (`entry`, `item`, `ExtendedCost`) VALUES ('500999', '45963', '2953');
INSERT INTO `npc_vendor` (`entry`, `item`, `ExtendedCost`) VALUES ('500999', '42266', '2953');
INSERT INTO `npc_vendor` (`entry`, `item`, `ExtendedCost`) VALUES ('500999', '42271', '2953');
INSERT INTO `npc_vendor` (`entry`, `item`, `ExtendedCost`) VALUES ('500999', '45956', '2953');
INSERT INTO `npc_vendor` (`entry`, `item`, `ExtendedCost`) VALUES ('500999', '42491', '2953');
INSERT INTO `npc_vendor` (`entry`, `item`, `ExtendedCost`) VALUES ('500999', '45970', '2953');
INSERT INTO `npc_vendor` (`entry`, `item`, `ExtendedCost`) VALUES ('500999', '42256', '2953');
INSERT INTO `npc_vendor` (`entry`, `item`, `ExtendedCost`) VALUES ('500999', '42520', '2953');
INSERT INTO `npc_vendor` (`entry`, `item`, `ExtendedCost`) VALUES ('500999', '42328', '2953');
INSERT INTO `npc_vendor` (`entry`, `item`, `ExtendedCost`) VALUES ('500999', '42276', '2953');
INSERT INTO `npc_vendor` (`entry`, `item`, `ExtendedCost`) VALUES ('500999', '45964', '2953');
INSERT INTO `npc_vendor` (`entry`, `item`, `ExtendedCost`) VALUES ('500999', '42291', '2953');
INSERT INTO `npc_vendor` (`entry`, `item`, `ExtendedCost`) VALUES ('500999', '45938', '2953');
INSERT INTO `npc_vendor` (`entry`, `item`, `ExtendedCost`) VALUES ('500999', '42571', '2953');
INSERT INTO `npc_vendor` (`entry`, `item`, `ExtendedCost`) VALUES ('500999', '45939', '2953');
INSERT INTO `npc_vendor` (`entry`, `item`, `ExtendedCost`) VALUES ('500999', '42532', '2953');
INSERT INTO `npc_vendor` (`entry`, `item`, `ExtendedCost`) VALUES ('500999', '42486', '2953');
INSERT INTO `npc_vendor` (`entry`, `item`, `ExtendedCost`) VALUES ('500999', '42261', '2953');
INSERT INTO `npc_vendor` (`entry`, `item`, `ExtendedCost`) VALUES ('500999', '45971', '2953');
INSERT INTO `npc_vendor` (`entry`, `item`, `ExtendedCost`) VALUES ('500999', '42243', '2953');
INSERT INTO `npc_vendor` (`entry`, `item`, `ExtendedCost`) VALUES ('500999', '42560', '2953');
INSERT INTO `npc_vendor` (`entry`, `item`, `ExtendedCost`) VALUES ('500999', '42249', '2953');
INSERT INTO `npc_vendor` (`entry`, `item`, `ExtendedCost`) VALUES ('500999', '45937', '2953');
INSERT INTO `npc_vendor` (`entry`, `item`, `ExtendedCost`) VALUES ('500999', '45955', '2953');
INSERT INTO `npc_vendor` (`entry`, `item`, `ExtendedCost`) VALUES ('500999', '42347', '2953');
INSERT INTO `npc_vendor` (`entry`, `item`, `ExtendedCost`) VALUES ('500999', '45958', '2953');
INSERT INTO `npc_vendor` (`entry`, `item`, `ExtendedCost`) VALUES ('500999', '45966', '2953');
INSERT INTO `npc_vendor` (`entry`, `item`, `ExtendedCost`) VALUES ('500999', '42391', '2953');
INSERT INTO `npc_vendor` (`entry`, `item`, `ExtendedCost`) VALUES ('500999', '45948', '2953');
INSERT INTO `npc_vendor` (`entry`, `item`, `ExtendedCost`) VALUES ('500999', '45965', '2953');
INSERT INTO `npc_vendor` (`entry`, `item`, `ExtendedCost`) VALUES ('500999', '42503', '2953');
INSERT INTO `npc_vendor` (`entry`, `item`, `ExtendedCost`) VALUES ('500999', '45959', '2953');
INSERT INTO `npc_vendor` (`entry`, `item`, `ExtendedCost`) VALUES ('500999', '42451', '2953');
INSERT INTO `npc_vendor` (`entry`, `item`, `ExtendedCost`) VALUES ('500999', '44421', '2953');
