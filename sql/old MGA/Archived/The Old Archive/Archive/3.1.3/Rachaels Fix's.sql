-- Fix for Malganis Chest & Infinite Corruptor 
UPDATE `gameobject` SET `spawntimesecs`='48000' WHERE (`guid`='1728763') ;
UPDATE `creature` SET `spawntimesecs`='12000' WHERE (`guid`='4461822') ;


-- Fix for Skin of Shadow Drops.
INSERT IGNORE INTO `creature_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`groupid`,`mincountOrRef`,`maxcount`,`lootcondition`,`condition_value1`,`condition_value2`) VALUES ('10502','12753','18','0','1','1','0','0','0');
INSERT IGNORE INTO `creature_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`groupid`,`mincountOrRef`,`maxcount`,`lootcondition`,`condition_value1`,`condition_value2`) VALUES ('10505','12753','18','0','1','1','0','0','0');
INSERT IGNORE INTO `creature_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`groupid`,`mincountOrRef`,`maxcount`,`lootcondition`,`condition_value1`,`condition_value2`) VALUES ('10901','12753','17','0','1','1','0','0','0');
INSERT IGNORE INTO `creature_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`groupid`,`mincountOrRef`,`maxcount`,`lootcondition`,`condition_value1`,`condition_value2`) VALUES ('10507','12753','16','0','1','1','0','0','0');
INSERT IGNORE INTO `creature_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`groupid`,`mincountOrRef`,`maxcount`,`lootcondition`,`condition_value1`,`condition_value2`) VALUES ('10488','12753','14','0','1','1','0','0','0');
INSERT IGNORE INTO `creature_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`groupid`,`mincountOrRef`,`maxcount`,`lootcondition`,`condition_value1`,`condition_value2`) VALUES ('10491','12753','14','0','1','1','0','0','0');

-- Fix for Frayed Abomination Stitching Drop
INSERT IGNORE INTO `creature_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`groupid`,`mincountOrRef`,`maxcount`,`lootcondition`,`condition_value1`,`condition_value2`) VALUES ('10439','12735','97','0','1','1','0','0','0');
INSERT IGNORE INTO `creature_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`groupid`,`mincountOrRef`,`maxcount`,`lootcondition`,`condition_value1`,`condition_value2`) VALUES ('10417','12735','16','0','1','1','0','0','0');
INSERT IGNORE INTO `creature_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`groupid`,`mincountOrRef`,`maxcount`,`lootcondition`,`condition_value1`,`condition_value2`) VALUES ('10416','12735','15','0','1','1','0','0','0');
INSERT IGNORE INTO `creature_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`groupid`,`mincountOrRef`,`maxcount`,`lootcondition`,`condition_value1`,`condition_value2`) VALUES ('10414','12735','15','0','1','1','0','0','0');

-- Herioc Instance Loots for Utgarde Pinnacle.

-- Dragon Flayer Fanatic
-- Frostweave Cloth
INSERT IGNORE INTO `creature_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`groupid`,`mincountOrRef`,`maxcount`,`lootcondition`,`condition_value1`,`condition_value2`) VALUES ('30765','33470','34','0','2','7','0','0','0');
-- 	Thick Fur Clothing Scraps
INSERT IGNORE INTO `creature_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`groupid`,`mincountOrRef`,`maxcount`,`lootcondition`,`condition_value1`,`condition_value2`) VALUES ('30765','43852','19','0','1','2','0','0','0');
-- Salted Venison
INSERT IGNORE INTO `creature_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`groupid`,`mincountOrRef`,`maxcount`,`lootcondition`,`condition_value1`,`condition_value2`) VALUES ('30765','33454','8','0','1','1','0','0','0');
-- Honey Mint Tea
INSERT IGNORE INTO `creature_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`groupid`,`mincountOrRef`,`maxcount`,`lootcondition`,`condition_value1`,`condition_value2`) VALUES ('30765','33445','4','0','1','1','0','0','0');
-- Runic Healing Potion
INSERT IGNORE INTO `creature_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`groupid`,`mincountOrRef`,`maxcount`,`lootcondition`,`condition_value1`,`condition_value2`) VALUES ('30765','33447','2','0','1','1','0','0','0');
-- Runic Mana Potion
INSERT IGNORE INTO `creature_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`groupid`,`mincountOrRef`,`maxcount`,`lootcondition`,`condition_value1`,`condition_value2`) VALUES ('30765','33448','1','0','1','1','0','0','0');
-- Ymirjar Physician's Robe
INSERT IGNORE INTO `creature_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`groupid`,`mincountOrRef`,`maxcount`,`lootcondition`,`condition_value1`,`condition_value2`) VALUES ('30765','37587','1','0','1','1','0','0','0');
-- Tracker's Balanced Knives
INSERT IGNORE INTO `creature_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`groupid`,`mincountOrRef`,`maxcount`,`lootcondition`,`condition_value1`,`condition_value2`) VALUES ('30765','37410','1','0','1','1','0','0','0');
-- Bands of Fading Light
INSERT IGNORE INTO `creature_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`groupid`,`mincountOrRef`,`maxcount`,`lootcondition`,`condition_value1`,`condition_value2`) VALUES ('30765','37590','1','0','1','1','0','0','0');


-- Dragon Flayer Deathseeker
-- Frostweave Cloth
INSERT IGNORE INTO `creature_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`groupid`,`mincountOrRef`,`maxcount`,`lootcondition`,`condition_value1`,`condition_value2`) VALUES ('30764','33470','34','0','2','7','0','0','0');
-- 	Thick Fur Clothing Scraps
INSERT IGNORE INTO `creature_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`groupid`,`mincountOrRef`,`maxcount`,`lootcondition`,`condition_value1`,`condition_value2`) VALUES ('30764','43852','19','0','1','2','0','0','0');
-- Salted Venison
INSERT IGNORE INTO `creature_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`groupid`,`mincountOrRef`,`maxcount`,`lootcondition`,`condition_value1`,`condition_value2`) VALUES ('30764','33454','8','0','1','1','0','0','0');
-- Honey Mint Tea
INSERT IGNORE INTO `creature_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`groupid`,`mincountOrRef`,`maxcount`,`lootcondition`,`condition_value1`,`condition_value2`) VALUES ('30764','33445','4','0','1','1','0','0','0');
-- Runic Healing Potion
INSERT IGNORE INTO `creature_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`groupid`,`mincountOrRef`,`maxcount`,`lootcondition`,`condition_value1`,`condition_value2`) VALUES ('30764','33447','2','0','1','1','0','0','0');
-- Runic Mana Potion
INSERT IGNORE INTO `creature_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`groupid`,`mincountOrRef`,`maxcount`,`lootcondition`,`condition_value1`,`condition_value2`) VALUES ('30764','33448','1','0','1','1','0','0','0');
-- Ymirjar Physician's Robe
INSERT IGNORE INTO `creature_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`groupid`,`mincountOrRef`,`maxcount`,`lootcondition`,`condition_value1`,`condition_value2`) VALUES ('30764','37587','1','0','1','1','0','0','0');
-- Tracker's Balanced Knives
INSERT IGNORE INTO `creature_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`groupid`,`mincountOrRef`,`maxcount`,`lootcondition`,`condition_value1`,`condition_value2`) VALUES ('30764','37410','1','0','1','1','0','0','0');
-- Bands of Fading Light
INSERT IGNORE INTO `creature_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`groupid`,`mincountOrRef`,`maxcount`,`lootcondition`,`condition_value1`,`condition_value2`) VALUES ('30764','37590','1','0','1','1','0','0','0');


-- Scourge Hulk
-- Frostweave Cloth
INSERT IGNORE INTO `creature_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`groupid`,`mincountOrRef`,`maxcount`,`lootcondition`,`condition_value1`,`condition_value2`) VALUES ('30806','33470','34','0','2','7','0','0','0');
-- 	Thick Fur Clothing Scraps
INSERT IGNORE INTO `creature_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`groupid`,`mincountOrRef`,`maxcount`,`lootcondition`,`condition_value1`,`condition_value2`) VALUES ('30806','43852','19','0','1','2','0','0','0');
-- Honey Mint Tea
INSERT IGNORE INTO `creature_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`groupid`,`mincountOrRef`,`maxcount`,`lootcondition`,`condition_value1`,`condition_value2`) VALUES ('30806','33445','4','0','1','1','0','0','0');
-- Runic Healing Potion
INSERT IGNORE INTO `creature_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`groupid`,`mincountOrRef`,`maxcount`,`lootcondition`,`condition_value1`,`condition_value2`) VALUES ('30806','33447','2','0','1','1','0','0','0');
-- Runic Mana Potion
INSERT IGNORE INTO `creature_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`groupid`,`mincountOrRef`,`maxcount`,`lootcondition`,`condition_value1`,`condition_value2`) VALUES ('30806','33448','1','0','1','1','0','0','0');
-- Ymirjar Physician's Robe
INSERT IGNORE INTO `creature_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`groupid`,`mincountOrRef`,`maxcount`,`lootcondition`,`condition_value1`,`condition_value2`) VALUES ('30806','37587','1','0','1','1','0','0','0');
-- Tracker's Balanced Knives
INSERT IGNORE INTO `creature_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`groupid`,`mincountOrRef`,`maxcount`,`lootcondition`,`condition_value1`,`condition_value2`) VALUES ('30806','37410','1','0','1','1','0','0','0');
-- Bands of Fading Light
INSERT IGNORE INTO `creature_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`groupid`,`mincountOrRef`,`maxcount`,`lootcondition`,`condition_value1`,`condition_value2`) VALUES ('30806','37590','1','0','1','1','0','0','0');
-- Sparkling Frostcap
INSERT IGNORE INTO `creature_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`groupid`,`mincountOrRef`,`maxcount`,`lootcondition`,`condition_value1`,`condition_value2`) VALUES ('30806','35947','8','0','1','1','0','0','0');

-- Ymirjar Berzerker
-- Frostweave Cloth
INSERT IGNORE INTO `creature_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`groupid`,`mincountOrRef`,`maxcount`,`lootcondition`,`condition_value1`,`condition_value2`) VALUES ('30816','33470','34','0','2','7','0','0','0');
-- 	Thick Fur Clothing Scraps
INSERT IGNORE INTO `creature_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`groupid`,`mincountOrRef`,`maxcount`,`lootcondition`,`condition_value1`,`condition_value2`) VALUES ('30816','43852','19','0','1','2','0','0','0');
-- Honey Mint Tea
INSERT IGNORE INTO `creature_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`groupid`,`mincountOrRef`,`maxcount`,`lootcondition`,`condition_value1`,`condition_value2`) VALUES ('30816','33445','4','0','1','1','0','0','0');
-- Runic Healing Potion
INSERT IGNORE INTO `creature_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`groupid`,`mincountOrRef`,`maxcount`,`lootcondition`,`condition_value1`,`condition_value2`) VALUES ('30816','33447','2','0','1','1','0','0','0');
-- Runic Mana Potion
INSERT IGNORE INTO `creature_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`groupid`,`mincountOrRef`,`maxcount`,`lootcondition`,`condition_value1`,`condition_value2`) VALUES ('30816','33448','1','0','1','1','0','0','0');
-- Ymirjar Physician's Robe
INSERT IGNORE INTO `creature_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`groupid`,`mincountOrRef`,`maxcount`,`lootcondition`,`condition_value1`,`condition_value2`) VALUES ('30816','37587','1','0','1','1','0','0','0');
-- Tracker's Balanced Knives
INSERT IGNORE INTO `creature_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`groupid`,`mincountOrRef`,`maxcount`,`lootcondition`,`condition_value1`,`condition_value2`) VALUES ('30816','37410','1','0','1','1','0','0','0');
-- Bands of Fading Light
INSERT IGNORE INTO `creature_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`groupid`,`mincountOrRef`,`maxcount`,`lootcondition`,`condition_value1`,`condition_value2`) VALUES ('30816','37590','1','0','1','1','0','0','0');
-- Sparkling Frostcap
INSERT IGNORE INTO `creature_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`groupid`,`mincountOrRef`,`maxcount`,`lootcondition`,`condition_value1`,`condition_value2`) VALUES ('30816','35947','8','0','1','1','0','0','0');

-- Ymirjar Dusk Shaman
-- Frostweave Cloth
INSERT IGNORE INTO `creature_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`groupid`,`mincountOrRef`,`maxcount`,`lootcondition`,`condition_value1`,`condition_value2`) VALUES ('30817','33470','34','0','2','7','0','0','0');
-- 	Thick Fur Clothing Scraps
INSERT IGNORE INTO `creature_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`groupid`,`mincountOrRef`,`maxcount`,`lootcondition`,`condition_value1`,`condition_value2`) VALUES ('30817','43852','19','0','1','2','0','0','0');
-- Honey Mint Tea
INSERT IGNORE INTO `creature_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`groupid`,`mincountOrRef`,`maxcount`,`lootcondition`,`condition_value1`,`condition_value2`) VALUES ('30817','33445','4','0','1','1','0','0','0');
-- Runic Healing Potion
INSERT IGNORE INTO `creature_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`groupid`,`mincountOrRef`,`maxcount`,`lootcondition`,`condition_value1`,`condition_value2`) VALUES ('30817','33447','2','0','1','1','0','0','0');
-- Runic Mana Potion
INSERT IGNORE INTO `creature_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`groupid`,`mincountOrRef`,`maxcount`,`lootcondition`,`condition_value1`,`condition_value2`) VALUES ('30817','33448','1','0','1','1','0','0','0');
-- Berserker's Sabatons
INSERT IGNORE INTO `creature_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`groupid`,`mincountOrRef`,`maxcount`,`lootcondition`,`condition_value1`,`condition_value2`) VALUES ('30817','37068','1','0','1','1','0','0','0');
-- Tundra Wolf Boots
INSERT IGNORE INTO `creature_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`groupid`,`mincountOrRef`,`maxcount`,`lootcondition`,`condition_value1`,`condition_value2`) VALUES ('30817','37070','1','0','1','1','0','0','0');


-- Ymirjar Necromancer
-- Frostweave Cloth
INSERT IGNORE INTO `creature_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`groupid`,`mincountOrRef`,`maxcount`,`lootcondition`,`condition_value1`,`condition_value2`) VALUES ('30820','33470','34','0','2','7','0','0','0');
-- 	Thick Fur Clothing Scraps
INSERT IGNORE INTO `creature_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`groupid`,`mincountOrRef`,`maxcount`,`lootcondition`,`condition_value1`,`condition_value2`) VALUES ('30820','43852','19','0','1','1','0','0','0');
-- Honey Mint Tea
INSERT IGNORE INTO `creature_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`groupid`,`mincountOrRef`,`maxcount`,`lootcondition`,`condition_value1`,`condition_value2`) VALUES ('30820','33445','4','0','1','1','0','0','0');
-- Runic Healing Potion
INSERT IGNORE INTO `creature_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`groupid`,`mincountOrRef`,`maxcount`,`lootcondition`,`condition_value1`,`condition_value2`) VALUES ('30820','33447','2','0','1','1','0','0','0');
-- Runic Mana Potion
INSERT IGNORE INTO `creature_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`groupid`,`mincountOrRef`,`maxcount`,`lootcondition`,`condition_value1`,`condition_value2`) VALUES ('30820','33448','1','0','1','1','0','0','0');
-- Berserker's Sabatons
INSERT IGNORE INTO `creature_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`groupid`,`mincountOrRef`,`maxcount`,`lootcondition`,`condition_value1`,`condition_value2`) VALUES ('30820','37068','1','0','1','1','0','0','0');
-- Tundra Wolf Boots
INSERT IGNORE INTO `creature_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`groupid`,`mincountOrRef`,`maxcount`,`lootcondition`,`condition_value1`,`condition_value2`) VALUES ('30820','37070','1','0','1','1','0','0','0');

-- Ymirjar Savage
-- Frostweave Cloth
INSERT IGNORE INTO `creature_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`groupid`,`mincountOrRef`,`maxcount`,`lootcondition`,`condition_value1`,`condition_value2`) VALUES ('30821','33470','34','0','2','7','0','0','0');
-- 	Thick Fur Clothing Scraps
INSERT IGNORE INTO `creature_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`groupid`,`mincountOrRef`,`maxcount`,`lootcondition`,`condition_value1`,`condition_value2`) VALUES ('30821','43852','19','0','1','1','0','0','0');
-- Honey Mint Tea
INSERT IGNORE INTO `creature_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`groupid`,`mincountOrRef`,`maxcount`,`lootcondition`,`condition_value1`,`condition_value2`) VALUES ('30821','33445','4','0','1','1','0','0','0');
-- Runic Healing Potion
INSERT IGNORE INTO `creature_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`groupid`,`mincountOrRef`,`maxcount`,`lootcondition`,`condition_value1`,`condition_value2`) VALUES ('30821','33447','2','0','1','1','0','0','0');
-- Runic Mana Potion
INSERT IGNORE INTO `creature_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`groupid`,`mincountOrRef`,`maxcount`,`lootcondition`,`condition_value1`,`condition_value2`) VALUES ('30821','33448','1','0','1','1','0','0','0');
-- Ymirjar Physician's Robe
INSERT IGNORE INTO `creature_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`groupid`,`mincountOrRef`,`maxcount`,`lootcondition`,`condition_value1`,`condition_value2`) VALUES ('30821','37587','1','0','1','1','0','0','0');
-- Tracker's Balanced Knives
INSERT IGNORE INTO `creature_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`groupid`,`mincountOrRef`,`maxcount`,`lootcondition`,`condition_value1`,`condition_value2`) VALUES ('30821','37410','1','0','1','1','0','0','0');
-- Bands of Fading Light
INSERT IGNORE INTO `creature_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`groupid`,`mincountOrRef`,`maxcount`,`lootcondition`,`condition_value1`,`condition_value2`) VALUES ('30821','37590','1','0','1','1','0','0','0');
-- Sparkling Frostcap
INSERT IGNORE INTO `creature_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`groupid`,`mincountOrRef`,`maxcount`,`lootcondition`,`condition_value1`,`condition_value2`) VALUES ('30821','35947','8','0','1','1','0','0','0');

-- Ymirjar Flesh Hunter
-- Frostweave Cloth
INSERT IGNORE INTO `creature_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`groupid`,`mincountOrRef`,`maxcount`,`lootcondition`,`condition_value1`,`condition_value2`) VALUES ('30818','33470','34','0','2','7','0','0','0');
-- 	Thick Fur Clothing Scraps
INSERT IGNORE INTO `creature_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`groupid`,`mincountOrRef`,`maxcount`,`lootcondition`,`condition_value1`,`condition_value2`) VALUES ('30818','43852','19','0','1','1','0','0','0');
-- Honey Mint Tea
INSERT IGNORE INTO `creature_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`groupid`,`mincountOrRef`,`maxcount`,`lootcondition`,`condition_value1`,`condition_value2`) VALUES ('30818','33445','4','0','1','1','0','0','0');
-- Runic Healing Potion
INSERT IGNORE INTO `creature_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`groupid`,`mincountOrRef`,`maxcount`,`lootcondition`,`condition_value1`,`condition_value2`) VALUES ('30818','33447','2','0','1','1','0','0','0');
-- Runic Mana Potion
INSERT IGNORE INTO `creature_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`groupid`,`mincountOrRef`,`maxcount`,`lootcondition`,`condition_value1`,`condition_value2`) VALUES ('30818','33448','1','0','1','1','0','0','0');
-- Sparkling Frostcap
INSERT IGNORE INTO `creature_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`groupid`,`mincountOrRef`,`maxcount`,`lootcondition`,`condition_value1`,`condition_value2`) VALUES ('30818','35947','8','0','1','1','0','0','0');

-- Bloodthirsty Tundra Wolf
-- Serrated Fang
INSERT IGNORE INTO `creature_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`groupid`,`mincountOrRef`,`maxcount`,`lootcondition`,`condition_value1`,`condition_value2`) VALUES ('30762','39211','71','0','3','5','0','0','0');
-- Worg Haunch
INSERT IGNORE INTO `creature_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`groupid`,`mincountOrRef`,`maxcount`,`lootcondition`,`condition_value1`,`condition_value2`) VALUES ('30762','43011','45','0','1','2','0','0','0');
-- Indurate Claw
INSERT IGNORE INTO `creature_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`groupid`,`mincountOrRef`,`maxcount`,`lootcondition`,`condition_value1`,`condition_value2`) VALUES ('30762','39212','16','0','2','4','0','0','0');
-- Chilled Meat
INSERT IGNORE INTO `creature_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`groupid`,`mincountOrRef`,`maxcount`,`lootcondition`,`condition_value1`,`condition_value2`) VALUES ('30762','43013','4','0','1','2','0','0','0');



-- Fix for Ingvar the Plunderer 
-- Emblem of Heroism
INSERT IGNORE INTO `creature_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`groupid`,`mincountOrRef`,`maxcount`,`lootcondition`,`condition_value1`,`condition_value2`) VALUES ('23980','40752','100','1','1','1','0','0','0');

-- Frozen orb
INSERT IGNORE INTO `creature_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`groupid`,`mincountOrRef`,`maxcount`,`lootcondition`,`condition_value1`,`condition_value2`) VALUES ('23980','43102','100','0','1','1','0','0','0');

-- Sharp-Barbed Leather Belt
INSERT IGNORE INTO `creature_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`groupid`,`mincountOrRef`,`maxcount`,`lootcondition`,`condition_value1`,`condition_value2`) VALUES ('23980','37194','20','0','1','1','0','0','0');

-- Unsmashable Heavy Band
INSERT IGNORE INTO `creature_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`groupid`,`mincountOrRef`,`maxcount`,`lootcondition`,`condition_value1`,`condition_value2`) VALUES ('23980','37186','20','0','1','1','0','0','0');

-- Plunderer's Helmet
INSERT IGNORE INTO `creature_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`groupid`,`mincountOrRef`,`maxcount`,`lootcondition`,`condition_value1`,`condition_value2`) VALUES ('23980',' 37188','20','0','1','1','0','0','0');

-- Breeches of the Caller
INSERT IGNORE INTO `creature_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`groupid`,`mincountOrRef`,`maxcount`,`lootcondition`,`condition_value1`,`condition_value2`) VALUES ('23980',' 37189','19','0','1','1','0','0','0');

-- Drake-Mounted Crossbow
INSERT IGNORE INTO `creature_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`groupid`,`mincountOrRef`,`maxcount`,`lootcondition`,`condition_value1`,`condition_value2`) VALUES ('23980',' 37191','19','0','1','1','0','0','0');

-- Staggering Legplates
INSERT IGNORE INTO `creature_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`groupid`,`mincountOrRef`,`maxcount`,`lootcondition`,`condition_value1`,`condition_value2`) VALUES ('23980',' 37193','19','0','1','1','0','0','0');

-- Annhylde's Ring
INSERT IGNORE INTO `creature_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`groupid`,`mincountOrRef`,`maxcount`,`lootcondition`,`condition_value1`,`condition_value2`) VALUES ('23980',' 37192','18','0','1','1','0','0','0');

-- Design: Fierce Monarch Topaz
INSERT IGNORE INTO `creature_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`groupid`,`mincountOrRef`,`maxcount`,`lootcondition`,`condition_value1`,`condition_value2`) VALUES ('23980',' 41793','9','0','1','1','0','0','0');

-- Frostweave Cloth”
INSERT IGNORE INTO `creature_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`groupid`,`mincountOrRef`,`maxcount`,`lootcondition`,`condition_value1`,`condition_value2`) VALUES ('23980',' 33470','4','0','1','4','0','0','0');


--  Fix item Loot ?????
INSERT IGNORE INTO `creature_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`groupid`,`mincountOrRef`,`maxcount`,`lootcondition`,`condition_value1`,`condition_value2`) VALUES ('30931','35594','2','0','1','1','0','0','0');









