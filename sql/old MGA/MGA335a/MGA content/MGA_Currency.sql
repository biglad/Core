UPDATE `item_template` SET `name`='MGA Mini Token',`stackable`='100' WHERE (`entry`='18154');
UPDATE `item_template` SET `name`='MGA Token',`stackable`='100' WHERE (`entry`='21140');
UPDATE `item_template` SET `name`='Emblem of MGA', `description`='Can be exchanged for ..........' WHERE (`entry`='43308');
UPDATE `item_template` SET `stackable`='100' WHERE (`entry`='43308');
UPDATE `item_template` SET `name`='MGA Super VIP Emblem', `stackable`='1', `description`='The owner of this item is EPIC!' WHERE (`entry`='43307');
UPDATE `item_template` SET `spellid_1`='56572', `spelltrigger_1`='5', `spellcooldown_1`='0' WHERE (`entry`='43307');
UPDATE `item_template` SET `Flags`='0', `AllowableClass`='-1', `AllowableRace`='-1', `ItemLevel`='0' WHERE (`entry`='43307');
UPDATE `item_template` SET `Flags`='0', `AllowableClass`='-1', `AllowableRace`='-1', `ItemLevel`='0', `RequiredLevel`='0', `BagFamily`='0' WHERE (`entry`='43308');
UPDATE `item_template` SET `BagFamily`='0' WHERE (`entry`='43307');
UPDATE `item_template` SET `Quality`='6' WHERE (`entry`='43307');
UPDATE `item_template` SET `Quality`='4' WHERE (`entry`='43308');
UPDATE `item_template` SET `class`='0', `subclass`='8' WHERE (`entry`='43307');
UPDATE `item_template` SET `class`='0', `subclass`='8' WHERE (`entry`='43308');
UPDATE `item_template` SET `maxcount`='1' WHERE (`entry`='43307');
UPDATE `item_template` SET `spellid_1`='42365' WHERE (`entry`='43307');
UPDATE `item_template` SET `spellid_2`='43776', `spelltrigger_2`='5' WHERE (`entry`='43307');
UPDATE `item_template` SET `spellid_3`='60106', `spelltrigger_3`='5' WHERE (`entry`='43307');
UPDATE `item_template` SET `spellcooldown_3`='0' WHERE (`entry`='43307');
UPDATE `item_template` SET `spellcooldown_2`='0' WHERE (`entry`='43307');
UPDATE `item_template` SET `spellid_4`='50247', `spelltrigger_4`='5' WHERE (`entry`='43307');
UPDATE `item_template` SET `spellid_5`='20370', `spelltrigger_5`='5' WHERE (`entry`='43307');
UPDATE `item_template` SET `spellid_1`='20371' WHERE (`entry`='43307');
UPDATE `item_template` SET `subclass`='8' WHERE (`entry`='43307');
UPDATE `item_template` SET `spellid_1`='0', `spelltrigger_1`='0', `spellcooldown_1`='0' WHERE (`entry`='43307');
UPDATE `item_template` SET `spellid_1`='20370', `spelltrigger_1`='5', `spellid_5`='0', `spelltrigger_5`='0' WHERE (`entry`='43307');
UPDATE `item_template` SET `spellid_5`='23990', `spelltrigger_5`='5', `spellcooldown_5`='0' WHERE (`entry`='43307');
UPDATE `item_template` SET `spellcooldown_2`='0', `spellid_3`='18443', `spellcooldown_3`='0' WHERE (`entry`='43307');
UPDATE `item_template` SET `spellid_4`='74996' WHERE (`entry`='43307');
UPDATE `item_template` SET `Quality`='7' WHERE (`entry`='21140');
UPDATE `item_template` SET `Quality`='7' WHERE (`entry`='18154');
UPDATE `item_template` SET `Flags`='134221824' WHERE (`entry`='21140'); 
UPDATE `item_template` SET `Flags`='134221824' WHERE (`entry`='18154');


DELETE FROM `creature_loot_template` WHERE (`entry`='14697') AND (`item`='22484');
DELETE FROM `creature_loot_template` WHERE (`entry`='15043') AND (`item`='19975');
UPDATE `item_template` SET `name`='MGA Super VIP Emblem', `Quality`='6', `AllowableClass`='-1', `ItemLevel`='0', `maxcount`='1', `stackable`='1', `spellid_1`='20370', `spelltrigger_1`='5', `spellcooldown_1`='0', `spellid_2`='43776', `spelltrigger_2`='5', `spellcooldown_2`='0', `spellid_3`='18443', `spelltrigger_3`='5', `spellcooldown_3`='0', `spellid_4`='74996', `spelltrigger_4`='5', `spellid_5`='23990', `spelltrigger_5`='5', `spellcooldown_5`='0', `description`='The owner of this item is EPIC!' WHERE (`entry`='22484');
UPDATE `item_template` SET `class`='0', `subclass`='8', `name`='Emblem of MGA', `Quality`='4', `ItemLevel`='0', `stackable`='100', `description`='Can be exchanged for ..........' WHERE (`entry`='19975')
UPDATE `item_template` SET `class`='0', `subclass`='8' WHERE (`entry`='22484');
-- 22484 < NEW ITEM TO USE FOR MGA SUPER VIP
-- 19975 < NEW MGA Emblem
-- 37711 < NEW NEW EoM
DELETE FROM `item_template` WHERE (`entry`='43307');
DELETE FROM `item_template` WHERE (`entry`='43308');
INSERT INTO `item_template` VALUES (43307, 15, 0, -1, 'Arena Points', 40753, 1, 2048, 0, 1, 0, 0, 0, 262143, 32767, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2147483647, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 'Arena Points are gained by being victorious in arena combat. You can trade in these arena points for fabulous prizes!', 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 8192, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, '', 0, 0, 0, 0, 12340);
INSERT INTO `item_template` VALUES (43308, 10, 0, -1, 'Honor Points', 40753, 1, 2048, 0, 1, 0, 0, 0, 262143, 32767, 60, 60, 0, 0, 0, 0, 0, 0, 0, 0, 2147483647, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 1, 'Honor is gained by killing members of the opposite faction in PvP combat. You can use honor points to purchase special items.', 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 8192, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, '', 0, 0, 0, 0, 12340);
UPDATE `item_template` SET `Quality`='7', `Flags`='134221824' WHERE (`entry`='19975');
UPDATE `item_template` SET `Quality`='7', `Flags`='134221824' WHERE (`entry`='22484');

-- UPDATE `item_instance` SET `itemEntry`='22484' WHERE (`itemEntry`='43307');
-- UPDATE `item_instance` SET `itemEntry`='19975' WHERE (`itemEntry`='43308');
-- update to new EoM
-- UPDATE `item_instance` SET `itemEntry`='37711' WHERE (`itemEntry`='19975');

DELETE FROM `item_template` WHERE (`entry`='19975');
INSERT INTO `item_template` VALUES (19975, 12, 0, -1, 'Zulian Mudskunk', 4810, 1, 0, 0, 1, 0, 0, 0, -1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, '', 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, '', 0, 0, 0, 0, 12340);

UPDATE `item_template` SET `class`='0', `subclass`='8', `name`='Emblem of MGA', `Quality`='7', `Flags`='134221824', `maxcount`='0', `spellid_1`='0', `description`='Can be exchanged for .........', `Material`='-1', `BagFamily`='0' WHERE (`entry`='37711');
UPDATE `item_template` SET `BagFamily`=NULL WHERE (`entry`='37711');
UPDATE `item_template` SET `BagFamily`=NULL WHERE (`entry`='22484');
UPDATE `item_template` SET `BagFamily`=NULL WHERE (`entry`='21140');
UPDATE `item_template` SET `BagFamily`=NULL WHERE (`entry`='18154');
UPDATE `item_template` SET `BagFamily`=NULL WHERE (`entry`='37711');
UPDATE `item_template` SET `name`='MGA Honor Token', `spellid_1`='0', `description`='Exchange me for Honor Points' WHERE (`entry`='37742')
UPDATE `item_template` SET `Flags`='1' WHERE (`entry`='37742');
UPDATE `item_template` SET `name`='MGA Arena Token', `Flags`='1', `spellid_1`='0', `description`='Exchange me for Arena Points' WHERE (`entry`='38644');

UPDATE `item_template` SET `name`='Emerald Dream Rune', `AllowableClass`='-1', `stackable`='1' WHERE (`entry`='43949');
UPDATE `item_template` SET `class`='0', `subclass`='8', `Quality`='7', `Flags`='0', `AllowableRace`='-1', `description`='Allows passage to the dream state.....', `BagFamily`='0' WHERE (`entry`='43949');

INSERT INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('900001', '43346', '15');
INSERT INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('900002', '43346', '17');
INSERT INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('900003', '43346', '20');

UPDATE `item_template` SET `spellid_4`='0', `spelltrigger_4`='0', `spellcooldown_4`='0', `spellcategorycooldown_4`='0' WHERE (`entry`='22484');

