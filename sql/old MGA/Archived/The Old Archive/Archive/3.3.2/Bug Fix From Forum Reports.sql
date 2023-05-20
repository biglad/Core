-- Fix Henry Stern
UPDATE `creature_template` SET `unit_flags`='0' WHERE (`entry`='8696');

-- Fix human The Tome of Divinity quest
UPDATE `quest_template` SET `ReqItemId1`='0',`ReqItemCount1`='0' WHERE (`entry`='1786');

-- Fix dwarf The Tome of Divinity quest
UPDATE `quest_template` SET `ReqItemId1`='0',`ReqItemCount1`='0' WHERE (`entry`='1783');
UPDATE `quest_template` SET `ReqSpellCast1`='8593' WHERE (`entry`='1783');