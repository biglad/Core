-- Argent Squire
UPDATE `creature_template` SET `npcflag`='1' WHERE (`entry`='33238');
-- Argent Valiant
UPDATE `creature_template` SET `exp`='2' WHERE (`entry`='33448'); 
-- Stonespine Gargoyle (heroic)
UPDATE `creature_template` SET `spell1`='70275',`spell2`='69575',`ScriptName`='npc_StonespineGargoyle' WHERE (`entry`='12412');   

-- Duchess Mynx <Ebon Blade Quartermaster>
UPDATE `creature_template` SET `exp`='2' WHERE (`entry`='32538');




-- Decomposed Ghoul Loot Fix

-- Crystallized Life
INSERT IGNORE INTO `creature_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`groupid`,`mincountOrRef`,`maxcount`,`lootcondition`,`condition_value1`,`condition_value2`) VALUES ('31812','37704','15','0','1','3','0','0','0');
-- Titanium Ore
INSERT IGNORE INTO `creature_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`groupid`,`mincountOrRef`,`maxcount`,`lootcondition`,`condition_value1`,`condition_value2`) VALUES ('31812','36910','8','0','1','1','0','0','0');
-- Crystallized Air
INSERT IGNORE INTO `creature_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`groupid`,`mincountOrRef`,`maxcount`,`lootcondition`,`condition_value1`,`condition_value2`) VALUES ('31812','37700','8','0','1','1','0','0','0');
-- Crystallized Earth
INSERT IGNORE INTO `creature_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`groupid`,`mincountOrRef`,`maxcount`,`lootcondition`,`condition_value1`,`condition_value2`) VALUES ('31812','37701','8','0','1','4','0','0','0');
-- Lichbloom
INSERT IGNORE INTO `creature_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`groupid`,`mincountOrRef`,`maxcount`,`lootcondition`,`condition_value1`,`condition_value2`) VALUES ('31812','36905','8','0','1','3','0','0','0');
UPDATE `creature_template` SET `lootid`='31812' WHERE (`entry`='31812');

-- Arcanist Adyria <The Scryers>
UPDATE `creature_template` SET `faction_A`='934',`faction_H`='934' WHERE (`entry`='18596');  



-- Uldar Seige Weap Fix by Wracker
UPDATE `creature_template` SET `spell1`='62345',`spell2`='62346' WHERE (`entry`='33060');
UPDATE `creature_template` SET `spell1`='62299' WHERE (`entry`='33062'); 


-- remove extra spawn of ekcs
UPDATE `creature` SET `spawnMask`='0' WHERE (`guid`='81823');

