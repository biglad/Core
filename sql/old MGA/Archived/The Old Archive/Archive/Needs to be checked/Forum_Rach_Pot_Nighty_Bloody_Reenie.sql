-- Fix for [Quest] Junkboxes Needed.

UPDATE `quest_template` SET `ZoneOrSort`='36' WHERE (`entry`='8249'); 

-- for 9 wintergrasp marks of honor.

INSERT INTO `npc_vendor` (`entry`, `item`, `ExtendedCost`) VALUES ('32294', '44115', '2576');

INSERT INTO `npc_vendor` (`entry`, `item`, `ExtendedCost`) VALUES ('32296', '44115', '2576'); 

-- Adding all the items that where missing costing 50 Emblem's of Trimuph, Or 30 Emblem's of triumph.

INSERT INTO `npc_vendor` (`entry`, `item`, `ExtendedCost`) VALUES ('34252', '48474', '2686');
INSERT INTO `npc_vendor` (`entry`, `item`, `ExtendedCost`) VALUES ('34252', '48531', '2686');
INSERT INTO `npc_vendor` (`entry`, `item`, `ExtendedCost`) VALUES ('34252', '48529', '2686');
INSERT INTO `npc_vendor` (`entry`, `item`, `ExtendedCost`) VALUES ('34252', '48472', '2686');
INSERT INTO `npc_vendor` (`entry`, `item`, `ExtendedCost`) VALUES ('34252', '48533', '2686');
INSERT INTO `npc_vendor` (`entry`, `item`, `ExtendedCost`) VALUES ('34252', '48476', '2686');
INSERT INTO `npc_vendor` (`entry`, `item`, `ExtendedCost`) VALUES ('34252', '48602', '2686');
INSERT INTO `npc_vendor` (`entry`, `item`, `ExtendedCost`) VALUES ('34252', '48632', '2686');
INSERT INTO `npc_vendor` (`entry`, `item`, `ExtendedCost`) VALUES ('34252', '48634', '2686');
INSERT INTO `npc_vendor` (`entry`, `item`, `ExtendedCost`) VALUES ('34252', '48568', '2686');
INSERT INTO `npc_vendor` (`entry`, `item`, `ExtendedCost`) VALUES ('34252', '48564', '2686');
INSERT INTO `npc_vendor` (`entry`, `item`, `ExtendedCost`) VALUES ('34252', '48604', '2686');
INSERT INTO `npc_vendor` (`entry`, `item`, `ExtendedCost`) VALUES ('34252', '48635', '2686');
INSERT INTO `npc_vendor` (`entry`, `item`, `ExtendedCost`) VALUES ('34252', '48605', '2686');
INSERT INTO `npc_vendor` (`entry`, `item`, `ExtendedCost`) VALUES ('34252', '48372', '2686');
INSERT INTO `npc_vendor` (`entry`, `item`, `ExtendedCost`) VALUES ('34252', '48436', '2686');
INSERT INTO `npc_vendor` (`entry`, `item`, `ExtendedCost`) VALUES ('34252', '48429', '2686');
INSERT INTO `npc_vendor` (`entry`, `item`, `ExtendedCost`) VALUES ('34252', '48371', '2686');
INSERT INTO `npc_vendor` (`entry`, `item`, `ExtendedCost`) VALUES ('34252', '48445', '2686');
INSERT INTO `npc_vendor` (`entry`, `item`, `ExtendedCost`) VALUES ('34252', '48373', '2686');
INSERT INTO `npc_vendor` (`entry`, `item`, `ExtendedCost`) VALUES ('34252', '48566', '2686');
INSERT INTO `npc_vendor` (`entry`, `item`, `ExtendedCost`) VALUES ('34252', '48374', '2687');
INSERT INTO `npc_vendor` (`entry`, `item`, `ExtendedCost`) VALUES ('34252', '48448', '2687');
INSERT INTO `npc_vendor` (`entry`, `item`, `ExtendedCost`) VALUES ('34252', '48636', '2687');
INSERT INTO `npc_vendor` (`entry`, `item`, `ExtendedCost`) VALUES ('34252', '48606', '2687');
INSERT INTO `npc_vendor` (`entry`, `item`, `ExtendedCost`) VALUES ('34252', '48572', '2687');
INSERT INTO `npc_vendor` (`entry`, `item`, `ExtendedCost`) VALUES ('34252', '48449', '2687');
INSERT INTO `npc_vendor` (`entry`, `item`, `ExtendedCost`) VALUES ('34252', '48375', '2687');
INSERT INTO `npc_vendor` (`entry`, `item`, `ExtendedCost`) VALUES ('34252', '48480', '2687');
INSERT INTO `npc_vendor` (`entry`, `item`, `ExtendedCost`) VALUES ('34252', '48537', '2687');
INSERT INTO `npc_vendor` (`entry`, `item`, `ExtendedCost`) VALUES ('34252', '48535', '2687');
INSERT INTO `npc_vendor` (`entry`, `item`, `ExtendedCost`) VALUES ('34252', '48478', '2687');
INSERT INTO `npc_vendor` (`entry`, `item`, `ExtendedCost`) VALUES ('34252', '48603', '2687');
INSERT INTO `npc_vendor` (`entry`, `item`, `ExtendedCost`) VALUES ('34252', '48574', '2687'); 



UPDATE `gameobject_template` SET `flags`='655360 4' WHERE (`entry`='190947');
-- sets New Avalon Registry to be lootable

UPDATE `gameobject_template` SET `data14`='0' WHERE (`entry`='190937');
-- sets Empty Cauldron to be lootable

UPDATE `gameobject_template` SET`data14`='0' WHERE (`entry`='190938');
-- sets Iron Chain to be lootable

-- EoE: Malygos 10man Loot Table.
INSERT IGNORE INTO `creature_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`groupid`,`m incountOrRef`,`maxcount`,`lootcondition`,`conditio n_value1`,`condition_value2`) VALUES ('28859','40475','15','0','1','1','0','0','0');
INSERT IGNORE INTO `creature_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`groupid`,`m incountOrRef`,`maxcount`,`lootcondition`,`conditio n_value1`,`condition_value2`) VALUES ('28859','40519','15','0','1','1','0','0','0');
INSERT IGNORE INTO `creature_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`groupid`,`m incountOrRef`,`maxcount`,`lootcondition`,`conditio n_value1`,`condition_value2`) VALUES ('28859','40491','15','0','1','1','0','0','0');
INSERT IGNORE INTO `creature_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`groupid`,`m incountOrRef`,`maxcount`,`lootcondition`,`conditio n_value1`,`condition_value2`) VALUES ('28859','40488','15','0','1','1','0','0','0');
INSERT IGNORE INTO `creature_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`groupid`,`m incountOrRef`,`maxcount`,`lootcondition`,`conditio n_value1`,`condition_value2`) VALUES ('28859','40486','15','0','1','1','0','0','0');
INSERT IGNORE INTO `creature_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`groupid`,`m incountOrRef`,`maxcount`,`lootcondition`,`conditio n_value1`,`condition_value2`) VALUES ('28859','40489','14','0','1','1','0','0','0');
INSERT IGNORE INTO `creature_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`groupid`,`m incountOrRef`,`maxcount`,`lootcondition`,`conditio n_value1`,`condition_value2`) VALUES ('28859','40497','14','0','1','1','0','0','0');
INSERT IGNORE INTO `creature_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`groupid`,`m incountOrRef`,`maxcount`,`lootcondition`,`conditio n_value1`,`condition_value2`) VALUES ('28859','40511','14','0','1','1','0','0','0');
INSERT IGNORE INTO `creature_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`groupid`,`m incountOrRef`,`maxcount`,`lootcondition`,`conditio n_value1`,`condition_value2`) VALUES ('28859','40526','9','0','1','1','0','0','0');
INSERT IGNORE INTO `creature_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`groupid`,`m incountOrRef`,`maxcount`,`lootcondition`,`conditio n_value1`,`condition_value2`) VALUES ('28859','40474','9','0','1','1','0','0','0');
INSERT IGNORE INTO `creature_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`groupid`,`m incountOrRef`,`maxcount`,`lootcondition`,`conditio n_value1`,`condition_value2`) VALUES ('28859','43953','0.6','0','1','1','0','0','0');
INSERT IGNORE INTO `creature_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`groupid`,`m incountOrRef`,`maxcount`,`lootcondition`,`conditio n_value1`,`condition_value2`) VALUES ('28859','43952','0.7','0','1','1','0','0','0');
INSERT IGNORE INTO `creature_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`groupid`,`m incountOrRef`,`maxcount`,`lootcondition`,`conditio n_value1`,`condition_value2`) VALUES ('28859','44650','100','0','1','1','0','0','0');
INSERT IGNORE INTO `creature_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`groupid`,`m incountOrRef`,`maxcount`,`lootcondition`,`conditio n_value1`,`condition_value2`) VALUES ('28859','34057','6','0','1','3','0','0','0');
INSERT IGNORE INTO `creature_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`groupid`,`m incountOrRef`,`maxcount`,`lootcondition`,`conditio n_value1`,`condition_value2`) VALUES ('28859','47241','100','1','5','5','0','0','0'); 

-- 25 man
INSERT IGNORE INTO `creature_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`groupid`,`m incountOrRef`,`maxcount`,`lootcondition`,`conditio n_value1`,`condition_value2`) VALUES ('31734','40592','11','0','1','1','0','0','0');
INSERT IGNORE INTO `creature_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`groupid`,`m incountOrRef`,`maxcount`,`lootcondition`,`conditio n_value1`,`condition_value2`) VALUES ('31734','40594','11','0','1','1','0','0','0');
INSERT IGNORE INTO `creature_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`groupid`,`m incountOrRef`,`maxcount`,`lootcondition`,`conditio n_value1`,`condition_value2`) VALUES ('31734','40566','11','0','1','1','0','0','0');
INSERT IGNORE INTO `creature_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`groupid`,`m incountOrRef`,`maxcount`,`lootcondition`,`conditio n_value1`,`condition_value2`) VALUES ('31734','40194','10','0','1','1','0','0','0');
INSERT IGNORE INTO `creature_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`groupid`,`m incountOrRef`,`maxcount`,`lootcondition`,`conditio n_value1`,`condition_value2`) VALUES ('31734','40543','11','0','1','1','0','0','0');
INSERT IGNORE INTO `creature_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`groupid`,`m incountOrRef`,`maxcount`,`lootcondition`,`conditio n_value1`,`condition_value2`) VALUES ('31734','40590','11','0','1','1','0','0','0');
INSERT IGNORE INTO `creature_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`groupid`,`m incountOrRef`,`maxcount`,`lootcondition`,`conditio n_value1`,`condition_value2`) VALUES ('31734','40560','11','0','1','1','0','0','0');
INSERT IGNORE INTO `creature_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`groupid`,`m incountOrRef`,`maxcount`,`lootcondition`,`conditio n_value1`,`condition_value2`) VALUES ('31734','40589','11','0','1','1','0','0','0');
INSERT IGNORE INTO `creature_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`groupid`,`m incountOrRef`,`maxcount`,`lootcondition`,`conditio n_value1`,`condition_value2`) VALUES ('31734','40555','11','0','1','1','0','0','0');
INSERT IGNORE INTO `creature_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`groupid`,`m incountOrRef`,`maxcount`,`lootcondition`,`conditio n_value1`,`condition_value2`) VALUES ('31734','40591','11','0','1','1','0','0','0');
INSERT IGNORE INTO `creature_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`groupid`,`m incountOrRef`,`maxcount`,`lootcondition`,`conditio n_value1`,`condition_value2`) VALUES ('31734','40588','11','0','1','1','0','0','0');
INSERT IGNORE INTO `creature_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`groupid`,`m incountOrRef`,`maxcount`,`lootcondition`,`conditio n_value1`,`condition_value2`) VALUES ('31734','40564','11','0','1','1','0','0','0');
INSERT IGNORE INTO `creature_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`groupid`,`m incountOrRef`,`maxcount`,`lootcondition`,`conditio n_value1`,`condition_value2`) VALUES ('31734','40561','11','0','1','1','0','0','0');
INSERT IGNORE INTO `creature_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`groupid`,`m incountOrRef`,`maxcount`,`lootcondition`,`conditio n_value1`,`condition_value2`) VALUES ('31734','40539','9','0','1','1','0','0','0');
INSERT IGNORE INTO `creature_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`groupid`,`m incountOrRef`,`maxcount`,`lootcondition`,`conditio n_value1`,`condition_value2`) VALUES ('31734','40541','9','0','1','1','0','0','0');
INSERT IGNORE INTO `creature_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`groupid`,`m incountOrRef`,`maxcount`,`lootcondition`,`conditio n_value1`,`condition_value2`) VALUES ('31734','40562','9','0','1','1','0','0','0');
INSERT IGNORE INTO `creature_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`groupid`,`m incountOrRef`,`maxcount`,`lootcondition`,`conditio n_value1`,`condition_value2`) VALUES ('31734','40532','9','0','1','1','0','0','0');
INSERT IGNORE INTO `creature_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`groupid`,`m incountOrRef`,`maxcount`,`lootcondition`,`conditio n_value1`,`condition_value2`) VALUES ('31734','40549','9','0','1','1','0','0','0');
INSERT IGNORE INTO `creature_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`groupid`,`m incountOrRef`,`maxcount`,`lootcondition`,`conditio n_value1`,`condition_value2`) VALUES ('31734','40531','9','0','1','1','0','0','0');
INSERT IGNORE INTO `creature_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`groupid`,`m incountOrRef`,`maxcount`,`lootcondition`,`conditio n_value1`,`condition_value2`) VALUES ('31734','40558','8','0','1','1','0','0','0');
INSERT IGNORE INTO `creature_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`groupid`,`m incountOrRef`,`maxcount`,`lootcondition`,`conditio n_value1`,`condition_value2`) VALUES ('31734','43952','0.7','0','1','1','0','0','0');
INSERT IGNORE INTO `creature_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`groupid`,`m incountOrRef`,`maxcount`,`lootcondition`,`conditio n_value1`,`condition_value2`) VALUES ('31734','40526','9','0','1','1','0','0','0');
INSERT IGNORE INTO `creature_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`groupid`,`m incountOrRef`,`maxcount`,`lootcondition`,`conditio n_value1`,`condition_value2`) VALUES ('31734','40474','9','0','1','1','0','0','0');
INSERT IGNORE INTO `creature_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`groupid`,`m incountOrRef`,`maxcount`,`lootcondition`,`conditio n_value1`,`condition_value2`) VALUES ('31734','34057','6','0','1','3','0','0','0');
INSERT IGNORE INTO `creature_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`groupid`,`m incountOrRef`,`maxcount`,`lootcondition`,`conditio n_value1`,`condition_value2`) VALUES ('31734','47241','100','0','5','5','0','0','0');
INSERT IGNORE INTO `creature_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`groupid`,`m incountOrRef`,`maxcount`,`lootcondition`,`conditio n_value1`,`condition_value2`) VALUES ('31734','44650','100','0','1','1','0','0','0'); 

-- Decomposed Ghoul Loot Update
INSERT IGNORE INTO `creature_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`groupid`,`m incountOrRef`,`maxcount`,`lootcondition`,`conditio n_value1`,`condition_value2`) VALUES ('31812','36912','70','0','1','7','0','0','0');
INSERT IGNORE INTO `creature_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`groupid`,`m incountOrRef`,`maxcount`,`lootcondition`,`conditio n_value1`,`condition_value2`) VALUES ('31812','37703','30','0','1','7','0','0','0');
INSERT IGNORE INTO `creature_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`groupid`,`m incountOrRef`,`maxcount`,`lootcondition`,`conditio n_value1`,`condition_value2`) VALUES ('31812','37701','20','0','2','8','0','0','0');
INSERT IGNORE INTO `creature_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`groupid`,`m incountOrRef`,`maxcount`,`lootcondition`,`conditio n_value1`,`condition_value2`) VALUES ('31812','36906','10','0','3','3','0','0','0');
INSERT IGNORE INTO `creature_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`groupid`,`m incountOrRef`,`maxcount`,`lootcondition`,`conditio n_value1`,`condition_value2`) VALUES ('31812','36905','17','0','2','3','0','0','0');
INSERT IGNORE INTO `creature_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`groupid`,`m incountOrRef`,`maxcount`,`lootcondition`,`conditio n_value1`,`condition_value2`) VALUES ('31812','37704','7','0','3','3','0','0','0');
INSERT IGNORE INTO `creature_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`groupid`,`m incountOrRef`,`maxcount`,`lootcondition`,`conditio n_value1`,`condition_value2`) VALUES ('31812','36910','3','0','1','1','0','0','0');
INSERT IGNORE INTO `creature_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`groupid`,`m incountOrRef`,`maxcount`,`lootcondition`,`conditio n_value1`,`condition_value2`) VALUES ('31812','37700','3','0','1','1','0','0','0'); 

-- Added loot for Frostskull Mangus mob's in icecrown
INSERT IGNORE INTO `creature_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`groupid`,`m incountOrRef`,`maxcount`,`lootcondition`,`conditio n_value1`,`condition_value2`) VALUES ('31813','36912','80','0','1','4','0','0','0');
INSERT IGNORE INTO `creature_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`groupid`,`m incountOrRef`,`maxcount`,`lootcondition`,`conditio n_value1`,`condition_value2`) VALUES ('31813','37703','40','0','1','2','0','0','0');
INSERT IGNORE INTO `creature_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`groupid`,`m incountOrRef`,`maxcount`,`lootcondition`,`conditio n_value1`,`condition_value2`) VALUES ('31813','37701','27','0','1','2','0','0','0');
INSERT IGNORE INTO `creature_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`groupid`,`m incountOrRef`,`maxcount`,`lootcondition`,`conditio n_value1`,`condition_value2`) VALUES ('31813','36908','13','0','1','1','0','0','0');
INSERT IGNORE INTO `creature_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`groupid`,`m incountOrRef`,`maxcount`,`lootcondition`,`conditio n_value1`,`condition_value2`) VALUES ('31813','36905','13','0','2','2','0','0','0');
INSERT IGNORE INTO `creature_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`groupid`,`m incountOrRef`,`maxcount`,`lootcondition`,`conditio n_value1`,`condition_value2`) VALUES ('31813','36934','7','0','1','1','0','0','0');
INSERT IGNORE INTO `creature_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`groupid`,`m incountOrRef`,`maxcount`,`lootcondition`,`conditio n_value1`,`condition_value2`) VALUES ('31813','36933','7','0','1','1','0','0','0'); 

-- Loot fix for the quest [Wanted: Blacktalon the Savage]
INSERT IGNORE INTO `creature_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`groupid`,`m incountOrRef`,`maxcount`,`lootcondition`,`conditio n_value1`,`condition_value2`) VALUES ('17057','23687','85','1','1','1','9','9466','0'); 

-- #Gameobject 759: 'The Holy Spring', add loot 100% drop of ItemID 737: 'Holy Spring Water'
INSERT IGNORE INTO 'gameobject_loot_template' ('entry', 'item', 'ChanceOrQuestChance', 'mincount', 'maxcount') VALUES (759, 737, 100, 1, 1);

-- Sets lootid for Decomposed Ghoul was originally 0 (= No loot)
UPDATE `creature_template` SET `lootid`='31812' WHERE (`entry`='31812');

-- Sets Lootid for Frostskull Magnus
UPDATE `creature_template` SET `lootid`='31813' WHERE (`entry`='31813');

-- Was originally 4.6 Hitting players way to hard. Got the dmg_multiplier value from the 3.2.2a Database where they were working correctly
UPDATE `creature_template` SET `dmg_multiplier`='1' WHERE (`entry`='2267');

-- Was allowing players to fly and isn't meant to have any vechicle ID what so ever 
UPDATE `creature_template` SET `VehicleId`='0' WHERE (`entry`='31689');

