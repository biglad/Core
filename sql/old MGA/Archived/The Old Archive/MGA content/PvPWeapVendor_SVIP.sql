DELETE FROM `creature_template` WHERE (`entry`='500888');
INSERT INTO `creature_template` VALUES (500888, 0, 0, 0, 0, 0, 30076, 0, 30076, 0, 'Tuulikki', 'SVIP The PvP Weapon Vendor', '', 0, 100, 100, 2, 35, 35, 5, 1.71, 1.14286, 1, 0, 0, 0, 0, 0, 1, 2000, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 'npc_mga_pvp_shop', 0);
UPDATE `creature_template` SET `npcflag`='129' WHERE (`entry`='500888');
UPDATE `creature_template` SET `name`='Kryten' WHERE (`entry`='500888');

-- ITEMS TO SELL
-- DELETE FROM `npc_vendor` WHERE (`entry`='500888');
-- INSERT INTO `npc_vendor` (`entry`, `item`) VALUES ('500888', '49908'); -- Primordial Saronite
-- UPDATE `item_template` SET `BuyPrice`='1000000' WHERE (`entry`='49908'); 
-- UPDATE `npc_vendor` SET `ExtendedCost`='2743' WHERE (`entry`='500888') AND (`item`='50380') AND (`ExtendedCost`='0');
-- http://wiki.mgawow.co.uk/MGAWOW/ItemExtendedCost.html
-- 2965 1500 rating needed + AP
-- 1961 140 ratiing needed + honor
-- 2438 - low end price
-- 2965 - 52K honor.
DELETE FROM `npc_vendor` WHERE (`entry`='500888');
INSERT INTO `npc_vendor` (`entry`, `item`, `ExtendedCost`) VALUES ('500888', '45954', '2965');
INSERT INTO `npc_vendor` (`entry`, `item`, `ExtendedCost`) VALUES ('500888', '42565', '2965');
INSERT INTO `npc_vendor` (`entry`, `item`, `ExtendedCost`) VALUES ('500888', '42514', '2965');
INSERT INTO `npc_vendor` (`entry`, `item`, `ExtendedCost`) VALUES ('500888', '42364', '2965');
INSERT INTO `npc_vendor` (`entry`, `item`, `ExtendedCost`) VALUES ('500888', '42281', '2965');
INSERT INTO `npc_vendor` (`entry`, `item`, `ExtendedCost`) VALUES ('500888', '42323', '2965');
INSERT INTO `npc_vendor` (`entry`, `item`, `ExtendedCost`) VALUES ('500888', '42233', '2965');
INSERT INTO `npc_vendor` (`entry`, `item`, `ExtendedCost`) VALUES ('500888', '45950', '2965');
INSERT INTO `npc_vendor` (`entry`, `item`, `ExtendedCost`) VALUES ('500888', '42209', '2965');
INSERT INTO `npc_vendor` (`entry`, `item`, `ExtendedCost`) VALUES ('500888', '45953', '2965');
INSERT INTO `npc_vendor` (`entry`, `item`, `ExtendedCost`) VALUES ('500888', '45949', '2965');
INSERT INTO `npc_vendor` (`entry`, `item`, `ExtendedCost`) VALUES ('500888', '45961', '2965');
INSERT INTO `npc_vendor` (`entry`, `item`, `ExtendedCost`) VALUES ('500888', '45962', '2965');
INSERT INTO `npc_vendor` (`entry`, `item`, `ExtendedCost`) VALUES ('500888', '42385', '2965');
INSERT INTO `npc_vendor` (`entry`, `item`, `ExtendedCost`) VALUES ('500888', '45967', '2965');
INSERT INTO `npc_vendor` (`entry`, `item`, `ExtendedCost`) VALUES ('500888', '44422', '2965');
INSERT INTO `npc_vendor` (`entry`, `item`, `ExtendedCost`) VALUES ('500888', '42353', '2965');
INSERT INTO `npc_vendor` (`entry`, `item`, `ExtendedCost`) VALUES ('500888', '45969', '2965');
INSERT INTO `npc_vendor` (`entry`, `item`, `ExtendedCost`) VALUES ('500888', '45952', '2965');
INSERT INTO `npc_vendor` (`entry`, `item`, `ExtendedCost`) VALUES ('500888', '42333', '2965');
INSERT INTO `npc_vendor` (`entry`, `item`, `ExtendedCost`) VALUES ('500888', '45957', '2965');
INSERT INTO `npc_vendor` (`entry`, `item`, `ExtendedCost`) VALUES ('500888', '45951', '2965');
INSERT INTO `npc_vendor` (`entry`, `item`, `ExtendedCost`) VALUES ('500888', '42228', '2965');
INSERT INTO `npc_vendor` (`entry`, `item`, `ExtendedCost`) VALUES ('500888', '42496', '2965');
INSERT INTO `npc_vendor` (`entry`, `item`, `ExtendedCost`) VALUES ('500888', '45968', '2965');
INSERT INTO `npc_vendor` (`entry`, `item`, `ExtendedCost`) VALUES ('500888', '45963', '2965');
INSERT INTO `npc_vendor` (`entry`, `item`, `ExtendedCost`) VALUES ('500888', '42266', '2965');
INSERT INTO `npc_vendor` (`entry`, `item`, `ExtendedCost`) VALUES ('500888', '42271', '2965');
INSERT INTO `npc_vendor` (`entry`, `item`, `ExtendedCost`) VALUES ('500888', '45956', '2965');
INSERT INTO `npc_vendor` (`entry`, `item`, `ExtendedCost`) VALUES ('500888', '42491', '2965');
INSERT INTO `npc_vendor` (`entry`, `item`, `ExtendedCost`) VALUES ('500888', '45970', '2965');
INSERT INTO `npc_vendor` (`entry`, `item`, `ExtendedCost`) VALUES ('500888', '42256', '2965');
INSERT INTO `npc_vendor` (`entry`, `item`, `ExtendedCost`) VALUES ('500888', '42520', '2965');
INSERT INTO `npc_vendor` (`entry`, `item`, `ExtendedCost`) VALUES ('500888', '42328', '2965');
INSERT INTO `npc_vendor` (`entry`, `item`, `ExtendedCost`) VALUES ('500888', '42276', '2965');
INSERT INTO `npc_vendor` (`entry`, `item`, `ExtendedCost`) VALUES ('500888', '45964', '2965');
INSERT INTO `npc_vendor` (`entry`, `item`, `ExtendedCost`) VALUES ('500888', '42291', '2965');
INSERT INTO `npc_vendor` (`entry`, `item`, `ExtendedCost`) VALUES ('500888', '45938', '2965');
INSERT INTO `npc_vendor` (`entry`, `item`, `ExtendedCost`) VALUES ('500888', '42571', '2965');
INSERT INTO `npc_vendor` (`entry`, `item`, `ExtendedCost`) VALUES ('500888', '45939', '2965');
INSERT INTO `npc_vendor` (`entry`, `item`, `ExtendedCost`) VALUES ('500888', '42532', '2965');
INSERT INTO `npc_vendor` (`entry`, `item`, `ExtendedCost`) VALUES ('500888', '42486', '2965');
INSERT INTO `npc_vendor` (`entry`, `item`, `ExtendedCost`) VALUES ('500888', '42261', '2965');
INSERT INTO `npc_vendor` (`entry`, `item`, `ExtendedCost`) VALUES ('500888', '45971', '2965');
INSERT INTO `npc_vendor` (`entry`, `item`, `ExtendedCost`) VALUES ('500888', '42243', '2965');
INSERT INTO `npc_vendor` (`entry`, `item`, `ExtendedCost`) VALUES ('500888', '42560', '2965');
INSERT INTO `npc_vendor` (`entry`, `item`, `ExtendedCost`) VALUES ('500888', '42249', '2965');
INSERT INTO `npc_vendor` (`entry`, `item`, `ExtendedCost`) VALUES ('500888', '45937', '2965');
INSERT INTO `npc_vendor` (`entry`, `item`, `ExtendedCost`) VALUES ('500888', '45955', '2965');
INSERT INTO `npc_vendor` (`entry`, `item`, `ExtendedCost`) VALUES ('500888', '42347', '2965');
INSERT INTO `npc_vendor` (`entry`, `item`, `ExtendedCost`) VALUES ('500888', '45958', '2965');
INSERT INTO `npc_vendor` (`entry`, `item`, `ExtendedCost`) VALUES ('500888', '45966', '2965');
INSERT INTO `npc_vendor` (`entry`, `item`, `ExtendedCost`) VALUES ('500888', '42391', '2965');
INSERT INTO `npc_vendor` (`entry`, `item`, `ExtendedCost`) VALUES ('500888', '45948', '2965');
INSERT INTO `npc_vendor` (`entry`, `item`, `ExtendedCost`) VALUES ('500888', '45965', '2965');
INSERT INTO `npc_vendor` (`entry`, `item`, `ExtendedCost`) VALUES ('500888', '42503', '2965');
INSERT INTO `npc_vendor` (`entry`, `item`, `ExtendedCost`) VALUES ('500888', '45959', '2965');
INSERT INTO `npc_vendor` (`entry`, `item`, `ExtendedCost`) VALUES ('500888', '42451', '2965');
INSERT INTO `npc_vendor` (`entry`, `item`, `ExtendedCost`) VALUES ('500888', '44421', '2965');
