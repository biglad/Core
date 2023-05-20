

-- Cold Hearted quest NPCs
UPDATE `creature_template` SET `faction_A`='35',`faction_H`='35',`npcflag`='1' WHERE (`entry`='29709');
-- was 2113
UPDATE `creature_template` SET `faction_A`='35',`faction_H`='35',`npcflag`='1' WHERE (`entry`='29639');

-- Goblin Reputation Quests
UPDATE `quest_template` SET `RewRepFaction1` = 87, `RewRepFaction2` = 21, `RewRepFaction3` = 577, `RewRepFaction4` = 369, `RewRepFaction5` = 470,  `RewRepValue1` = -500, `RewRepValue2` = 500, `RewRepValue3` = 250, `RewRepValue4` = 250, `RewRepValue5` = 250 WHERE `entry` = 9259;
UPDATE `quest_template` SET `RewRepFaction1` = 87, `RewRepFaction2` = 21, `RewRepFaction3` = 577, `RewRepFaction4` = 369, `RewRepFaction5` = 470,  `RewRepValue1` = -500, `RewRepValue2` = 250, `RewRepValue3` = 500, `RewRepValue4` = 250, `RewRepValue5` = 250 WHERE `entry` = 9266;
UPDATE `quest_template` SET `RewRepFaction1` = 87, `RewRepFaction2` = 21, `RewRepFaction3` = 577, `RewRepFaction4` = 369, `RewRepFaction5` = 470,  `RewRepValue1` = -500, `RewRepValue2` = 250, `RewRepValue3` = 250, `RewRepValue4` = 500, `RewRepValue5` = 250 WHERE `entry` = 9268;
UPDATE `quest_template` SET `RewRepFaction1` = 87, `RewRepFaction2` = 21, `RewRepFaction3` = 577, `RewRepFaction4` = 369, `RewRepFaction5` = 470,  `RewRepValue1` = -500, `RewRepValue2` = 250, `RewRepValue3` = 250, `RewRepValue4` = 250, `RewRepValue5` = 500 WHERE `entry` = 9267;


-- Quest 11960 "Planning for the Future"
-- Add scriptname to creature.
UPDATE `creature_template` SET `flags_extra`=`flags_extra`|2,`AIName`= 'EventAI'  WHERE `entry`=26200;
-- Called when player trys to loot Snowfall Glade Pup
DELETE FROM `npc_spellclick_spells` WHERE `npc_entry`=26200;
INSERT INTO `npc_spellclick_spells` (`npc_entry`,`spell_id`,`quest_start`,`quest_start_active`,`quest_end`,`cast_flags`,`aura_required`,`aura_forbidden`,`user_type`) VALUES
-- Dismount player, if mounted.
(26200,61286,11960,1,11960,2,0,0,0),
-- Cast dummy spell on creature to start EAI
(26200,39996,11960,1,11960,1,0,0,0);
-- EAI Script for Snowfall Glade Pup
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=26200;
INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES 
-- Will create quest item in players bag when creature is hit by dummy spell then goto next phase.
(262000,26200,8,0,100,0,39996,-1,0,0,11,65208,0,16,11,46773,6,16,41,0,0,0, 'Stun npc,Create item, despawn npc');

-- Quest 12519 "Troll Patrol: Whatdya Want, a Medal?" FIX
-- All Drakkari Corpse should appear dead
DELETE FROM `creature_template_addon` WHERE `entry`=28162;
INSERT INTO `creature_template_addon` (`entry`,`bytes1`,`emote`) VALUES (28162,7,65);
-- Drakkari Corpse should not move, add scriptname.
UPDATE `creature` SET `DeathState`=0, `spawndist`=0, `MovementType`=0 WHERE `id`=28162;
UPDATE `creature_template` SET `KillCredit1`=28022,`npcflag`=0,`dynamicflags`=36,`flags_extra`=`flags_extra`|2,`AIName`= 'EventAI'  WHERE `entry`=28162;
-- Clear any creature addons because they will override creature_template_addons.
DELETE FROM `creature_addon` WHERE `guid` IN
(96292,96355,96356,96357,96362,96363,96372,96374,96411,96412,96455,96459,96460,96462,96463,96485,96486);
-- Called when player trys to loot Drakkari Corpse
DELETE FROM `npc_spellclick_spells` WHERE `npc_entry`=28162;
INSERT INTO `npc_spellclick_spells` (`npc_entry`,`spell_id`,`quest_start`,`quest_start_active`,`quest_end`,`cast_flags`,`aura_required`,`aura_forbidden`,`user_type`) VALUES
 -- Dismount player, if mounted.
(28162,61286,12519,1,12519,2,0,0,0),
 -- Cast dummy spell on creature to start EAI
(28162,39996,12519,1,12519,1,0,0,0);
-- EAI Script for Drakkari Corpse
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=28162;
INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES 
-- Will create quest item in players bag when creature is hit by dummy spell then goto next phase.
(281620,28162,8,0,100,0,39996,-1,0,0,11,50737,6,16,23,1,0,0,0,0,0,0, 'Create item spell'),
-- Wait 3 seconds, then despawn creature.
(281621,28162,1,1,100,0,3000,3000,3000,3000,41,0,0,0,0,0,0,0,0,0,0,0, 'Despawn');


-- Quest 10255 "Testing the Antidote" Fix

-- Ensure Item 23337 will only work on creature 16880 "Hulking Helboar".
DELETE FROM `item_required_target` WHERE `entry`=23337;
INSERT INTO `item_required_target` (`entry`,`type`,`targetEntry`) VALUES (23337,1,16880);

-- Ensure Spell 34665 will only work on creature 16880 "Hulking Helboar".
DELETE FROM `spell_script_target` WHERE `entry`=34665;
INSERT INTO `spell_script_target` (`entry`,`type`,`targetEntry`) VALUES (34665,1,16880);

-- Ensure Spell 33909 will only work on creature 16880 "Hulking Helboar".
DELETE FROM `spell_script_target` WHERE `entry`=33909;
INSERT INTO `spell_script_target` (`entry`,`type`,`targetEntry`) VALUES (33909,1,16880);

-- Hulking Helboar EAI for "Testing the Antidote"
DELETE FROM `creature_ai_scripts` WHERE `id`=1688002;
INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES
(1688002, 16880, 8, 0, 100, 0, 34665, -1, 0, 0, 16, 16880, 34665, 6, 0, 0, 0, 0, 0, 0, 0, 0, 'Give quest credit.');


-- Fix creature 25835 "William Allerton" for quest 11599 "Thassarian, My Brother"
UPDATE `creature_template` SET `unit_flags`=`unit_flags`&~512,`npcflag`=`npcflag`|2,`dynamicflags`=`dynamicflags`|32,`dynamicflags`=`dynamicflags`|4 WHERE `entry`=25385;  
UPDATE `creature` SET `DeathState`=0 WHERE `id`=25385; 
DELETE FROM `creature_addon` WHERE guid=99763; 
INSERT INTO `creature_addon` (`guid`,`bytes1`,`emote`) VALUES (99763,7,65);

-- Quest 12740 Parachutes for the Argent Crusade
-- Item should only work on Argent Crusaders or Argent Shieldmen
DELETE FROM `item_required_target` WHERE `entry`=39615;
INSERT INTO `item_required_target` (`entry`,`type`,`targetEntry`) VALUES 
(39615,1,28028),
(39615,1,28029);
-- EAI script for quest credit
UPDATE `creature_template` SET `AIName`= 'EventAI' WHERE `entry` IN (28028,28029); 
DELETE FROM `creature_ai_scripts` WHERE `id` IN (280280,280290);
INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES
(280280,28028,8,0,100,0,53031,-1,0,0,33,29060,6,0,0,0,0,0,0,0,0,0, 'Quest 12740 credit'),
(280290,28029,8,0,100,0,53031,-1,0,0,33,29060,6,0,0,0,0,0,0,0,0,0, 'Quest 12740 credit');

-- Troll Patrol
UPDATE `quest_template` SET `RewSpellCast`=50574 WHERE `entry` IN (12502,12564,12588);


-- QUEST 11698 Kill credit fix "data from wdb"
UPDATE `creature_template` SET `KillCredit1`=25660 WHERE `entry` IN (26126,25684,24957);

-- QUEST 11561 Kill credit fix "data from wdb"
UPDATE `creature_template` SET `KillCredit1`=25217 WHERE `entry` IN (25215,25216);

-- Bosses Entries
SET @DarkRunedChest := 24556;

-- Boss (Mal`Ganis)
-- Delete Previous Loot Template
DELETE FROM `gameobject_loot_template` WHERE `entry` = @DarkRunedChest;

-- Data: WoW Armory
INSERT INTO `gameobject_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`groupid`,`mincountOrRef`,`maxcount`,`lootcondition`,`condition_value1`,`condition_value2`) VALUES
(@DarkRunedChest,37108,0,1,1,1,0,0,0), -- Dreadlord`s Blade
(@DarkRunedChest,37112,0,1,1,1,0,0,0), -- Beguiling Scepter
(@DarkRunedChest,37107,0,1,1,1,0,0,0), -- Leeka`s Shield
(@DarkRunedChest,37111,0,1,1,1,0,0,0), -- Soul Preserver
(@DarkRunedChest,37133,0,2,1,1,0,0,0), -- Demonic Fabric Bands
(@DarkRunedChest,37110,0,2,1,1,0,0,0), -- Gauntlets of Dark Conversion
(@DarkRunedChest,37114,0,2,1,1,0,0,0), -- Gloves of Northern Lordaeron
(@DarkRunedChest,34109,0,2,1,1,0,0,0), -- Discarded Silver Hand Spaulders
--
(@DarkRunedChest,43876,8.5,0,1,1,0,0,0), -- A Guide to Northern Cloth Scavenging
(@DarkRunedChest,39152,25,0,1,1,0,0,0), -- Manual: Heavy Frostweave Bandage
--
(@DarkRunedChest,43228,100,0,3,4,1,57940,0), -- Stone Keeper`s Shard
--
(@DarkRunedChest,43852,8.5,0,1,1,0,0,0), -- Thick Fur Clothing Scraps
(@DarkRunedChest,33470,100,0,1,7,0,0,0); -- Frostweave Cloth

-- Bosses Entries
SET @Bjarngrim := 28586;
SET @Volkhan := 28587;
SET @Ionar := 28546;
SET @Loken := 28923;

-- Boss (General Bjarngrim)
-- Delete Previous Loot Template
DELETE FROM `creature_loot_template` WHERE `entry` = @Bjarngrim;

-- Set Lootid
UPDATE `creature_template` SET `lootid` = @Bjarngrim WHERE `entry` = @Bjarngrim;

-- Create New Loot Template
-- Data: WoW Armory
INSERT INTO `creature_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`groupid`,`mincountOrRef`,`maxcount`,`lootcondition`,`condition_value1`,`condition_value2`) VALUES
(@Bjarngrim,36980,0,1,1,1,0,0,0), -- Hewn Sparring Quarterstaff
(@Bjarngrim,36982,0,1,1,1,0,0,0), -- Mantle of Electrical Charges
(@Bjarngrim,36979,0,1,1,1,0,0,0), -- Bjarngrim Family Signet
(@Bjarngrim,36981,0,1,1,1,0,0,0), -- Hardened Vrykul Throwing Axe
--
(@Bjarngrim,43876,8.5,0,1,1,0,0,0), -- A Guide to Northern Cloth Scavenging
(@Bjarngrim,39152,25,0,1,1,0,0,0), -- Manual: Heavy Frostweave Bandage
--
(@Bjarngrim,43228,100,0,3,3,1,57940,0), -- Stone Keepers Shard
(@Bjarngrim,42780,100,0,1,3,0,0,0), -- Relic of Ulduar (boss drop is 100%)
--
(@Bjarngrim,43852,8.5,0,1,1,0,0,0), -- Thick Fur Clothing Scraps
(@Bjarngrim,33470,100,0,1,7,0,0,0); -- Frostweave Cloth


-- Boss (Volkhan)
-- Delete Previous Loot Template
DELETE FROM `creature_loot_template` WHERE `entry` = @Volkhan;

-- Set Lootid
UPDATE `creature_template` SET `lootid` = @Volkhan WHERE `entry` = @Volkhan;

-- Create New Loot Template
-- Data: WoW Armory
INSERT INTO `creature_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`groupid`,`mincountOrRef`,`maxcount`,`lootcondition`,`condition_value1`,`condition_value2`) VALUES
(@Volkhan,36984,0,1,1,1,0,0,0), -- Eternally Folded Blade
(@Volkhan,36985,0,1,1,1,0,0,0), -- Volkhan`s Hood
(@Volkhan,36983,0,1,1,1,0,0,0), -- Cape of Seething Steam
(@Volkhan,36986,0,1,1,1,0,0,0), -- Kilt of Molten Golems
--
(@Volkhan,43876,8.5,0,1,1,0,0,0), -- A Guide to Northern Cloth Scavenging
(@Volkhan,39152,25,0,1,1,0,0,0), -- Manual: Heavy Frostweave Bandage
--
(@Volkhan,43228,100,0,3,3,1,57940,0), -- Stone Keepers Shard
(@Volkhan,42780,100,0,1,3,0,0,0), -- Relic of Ulduar (boss drop is 100%)
--
(@Volkhan,43852,8.5,0,1,1,0,0,0), -- Thick Fur Clothing Scraps (Armory 3%-14%)
(@Volkhan,33470,100,0,1,7,0,0,0); -- Frostweave Cloth


-- Boss (Ionar)
-- Delete Previous Loot Template
DELETE FROM `creature_loot_template` WHERE `entry` = @Ionar;

-- Set Lootid
UPDATE `creature_template` SET `lootid` = @Ionar WHERE `entry` = @Ionar;

-- Create New Loot Template
-- Data: WoW Armory
INSERT INTO `creature_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`groupid`,`mincountOrRef`,`maxcount`,`lootcondition`,`condition_value1`,`condition_value2`) VALUES
(@Ionar,39535,0,1,1,1,0,0,0), -- Ionar`s Girdle
(@Ionar,36657,0,1,1,1,0,0,0), -- Tornado Cuffs
(@Ionar,39534,0,1,1,1,0,0,0), -- Pauldrons of the Lightning Revenant
(@Ionar,39536,0,1,1,1,0,0,0), -- Thundercloud Grasps
--
(@Ionar,43228,100,0,3,3,1,57940,0), -- Stone Keepers Shard
(@Ionar,42780,100,0,1,3,0,0,0), -- Relic of Ulduar (boss drop is 100%)
--
(@Ionar,42107,19.5,0,1,1,1,57940,0), -- Elemental Armor Scrap
(@Ionar,37700,100,0,2,9,0,0,0); -- Crystallized Air


-- Boss (Loken)
-- Delete Previous Loot Template
DELETE FROM `creature_loot_template` WHERE `entry` = @Loken;

-- Set Lootid
UPDATE `creature_template` SET `lootid` = @Loken WHERE `entry` = @Loken;

-- Create New Loot Template
-- Data: WoW Armory
INSERT INTO `creature_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`groupid`,`mincountOrRef`,`maxcount`,`lootcondition`,`condition_value1`,`condition_value2`) VALUES
(@Loken,36991,0,1,1,1,0,0,0), -- Raiments of the Titans
(@Loken,36995,0,1,1,1,0,0,0), -- Fists of Loken
(@Loken,36992,0,1,1,1,0,0,0), -- Leather-Braced Chain Leggings
(@Loken,36994,0,1,1,1,0,0,0), -- Projectile Activator
(@Loken,36988,0,2,1,1,0,0,0), -- Chaotic Spiral Amulet
(@Loken,36989,0,2,1,1,0,0,0), -- Ancient Measuring Rod
(@Loken,36993,0,2,1,1,0,0,0), -- Seal of the Pantheon
(@Loken,36996,0,2,1,1,0,0,0), -- Hood of the Furtive Assassin
(@Loken,41799,100,0,1,1,0,0,0), -- Design: Eternal Earthsiege Diamond
--
(@Loken,43151,100,0,1,1,9,13108,0), -- Referenced Loken`s Tongue for Quest 13108
--
(@Loken,43876,8.5,0,1,1,0,0,0), -- A Guide to Northern Cloth Scavenging
(@Loken,39152,25,0,1,1,0,0,0), -- Manual: Heavy Frostweave Bandage
--
(@Loken,43228,100,0,3,3,1,57940,0), -- Stone Keepers Shard
(@Loken,42780,100,0,1,3,0,0,0), -- Relic of Ulduar (boss drop is 100%)
--
(@Loken,43852,8.5,0,1,1,0,0,0), -- Thick Fur Clothing Scraps (Armory 3%-14%)
(@Loken,33470,100,0,1,7,0,0,0); -- Frostweave Cloth

-- Bosses Entries
SET @Drakos := 27654;
SET @Varos := 27447;
SET @Mage := 27655;
SET @Chestloot := 191349;

-- Boss (Drakos the Interrogator)
-- Delete Previous Loot Template
DELETE FROM `creature_loot_template` WHERE `entry` = @Drakos;

-- Set Lootid
UPDATE `creature_template` SET `lootid` = @Drakos WHERE `entry` = @Drakos;

-- Create New Loot Template
-- Data: WoW Armory
INSERT INTO `creature_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`groupid`,`mincountOrRef`,`maxcount`,`lootcondition`,`condition_value1`,`condition_value2`) VALUES
(@Drakos,36944,0,1,1,1,0,0,0), -- Lifeblade of Belgaristrasz
(@Drakos,36946,0,1,1,1,0,0,0), -- Runic Cage Chestpiece
(@Drakos,36943,0,1,1,1,0,0,0), -- Timeless Beads of Eternos
(@Drakos,36945,0,1,1,1,0,0,0), -- Verdisa`s Cuffs of Dreaming
--
(@Drakos,43228,100,0,3,3,1,57940,0); -- Stone Keeper`s Shard


-- Boss (Varos Cloudstrider)
-- Delete Previous Loot Template
DELETE FROM `creature_loot_template` WHERE `entry` = @Varos;

-- Set Lootid
UPDATE `creature_template` SET `lootid` = @Varos WHERE `entry` = @Varos;

-- Create New Loot Template
-- Data: WoW Armory
INSERT INTO `creature_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`groupid`,`mincountOrRef`,`maxcount`,`lootcondition`,`condition_value1`,`condition_value2`) VALUES
(@Varos,36950,0,1,1,1,0,0,0), -- Wing Commander`s Breastplate
(@Varos,36948,0,1,1,1,0,0,0), -- Horned Helm of Varos
(@Varos,36947,0,1,1,1,0,0,0), -- Centrifuge Core Cloak
(@Varos,36949,0,1,1,1,0,0,0), -- Gloves of the Azure-Lord
--
(@Varos,43228,100,0,3,3,1,57940,0); -- Stone Keeper`s Shard


-- Boss (Mage-Lord Urom)
-- Delete Previous Loot Template
DELETE FROM `creature_loot_template` WHERE `entry` = @Mage;

-- Set Lootid
UPDATE `creature_template` SET `lootid` = @Mage WHERE `entry` = @Mage;

-- Create New Loot Template
-- Data: WoW Armory
INSERT INTO `creature_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`groupid`,`mincountOrRef`,`maxcount`,`lootcondition`,`condition_value1`,`condition_value2`) VALUES
(@Mage,36952,0,1,1,1,0,0,0), -- Girdle of Obscuring
(@Mage,36953,0,1,1,1,0,0,0), -- Spaulders of Skillful Maneuvers
(@Mage,36951,0,1,1,1,0,0,0), -- Sidestepping Handguards
(@Mage,36954,0,1,1,1,0,0,0), -- The Conjurer`s Slippers
--
(@Mage,21525,100,0,1,1,12,2,0), -- Green Winter Hat
--
(@Mage,43228,100,0,3,3,1,57940,0); -- Stone Keeper`s Shard


-- Boss (Ley-Guardian Eregos)
-- Delete Previous Loot Template
DELETE FROM `gameobject_loot_template` WHERE `entry` = @Chestloot;

-- Set Lootid
UPDATE `gameobject_template` SET `Data1` = @Chestloot WHERE `entry` = @Chestloot;

-- Create New Loot Template
-- Data: WoW Armory
INSERT INTO `gameobject_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`groupid`,`mincountOrRef`,`maxcount`,`lootcondition`,`condition_value1`,`condition_value2`) VALUES
(@Chestloot,36961,0,1,1,1,0,0,0), -- Dragonflight Great-Ring
(@Chestloot,36972,0,1,1,1,0,0,0), -- Tome of Arcane Phenomena
(@Chestloot,36975,0,1,1,1,0,0,0), -- Malygos` Favor
(@Chestloot,36973,0,1,1,1,0,0,0), -- Vestments of the Scholar
(@Chestloot,36962,0,2,1,1,0,0,0), -- Wyrmclaw Battleaxe
(@Chestloot,36969,0,2,1,1,0,0,0), -- Helm of the Ley-Guardian
(@Chestloot,36974,0,2,1,1,0,0,0), -- Eregos` Ornamented Chestguard
(@Chestloot,36971,0,2,1,1,0,0,0), -- Headguard of Westrift
(@Chestloot,41798,100,0,1,1,0,0,0), -- Design: Bracing Earthsiege Diamond
--
(@Chestloot,43228,100,0,3,3,1,57940,0); -- Stone Keeper`s Shard

-- Bosses Entries
SET @Sorrowgrave := 26668;
SET @Gortok := 26687;
SET @Skadi := 26693;
SET @Ymiron := 26861;

-- Boss (Svala Sorrowgrave)
-- Delete Previous Loot Template
DELETE FROM `creature_loot_template` WHERE `entry` = @Sorrowgrave;

-- Set Lootid
UPDATE `creature_template` SET `lootid` = @Sorrowgrave WHERE `entry` = @Sorrowgrave;

-- Create New Loot Template
-- Data: WoW Armory
INSERT INTO `creature_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`groupid`,`mincountOrRef`,`maxcount`,`lootcondition`,`condition_value1`,`condition_value2`) VALUES
(@Sorrowgrave,37037,0,1,1,1,0,0,0), -- Ritualistic Athame
(@Sorrowgrave,37043,0,1,1,1,0,0,0), -- Tear-Linked Gauntlets
(@Sorrowgrave,37038,0,1,1,1,0,0,0), -- Brazier Igniter
(@Sorrowgrave,37040,0,1,1,1,0,0,0), -- Svala`s Bloodied Shackles
--
(@Sorrowgrave,43228,100,0,3,3,1,57940,0), -- Stone Keeper`s Shard
--
(@Sorrowgrave,43876,8.5,0,1,1,0,0,0), -- A Guide to Northern Cloth Scavenging
(@Sorrowgrave,39152,25,0,1,1,0,0,0), -- Manual: Heavy Frostweave Bandage
--
(@Sorrowgrave,43852,8.5,0,1,1,0,0,0), -- Thick Fur Clothing Scraps (Armory 3%-14%)
(@Sorrowgrave,33470,100,0,1,7,0,0,0); -- Frostweave Cloth


-- Boss (Gortok Palehoof)
-- Delete Previous Loot Template
DELETE FROM `creature_loot_template` WHERE `entry` = @Gortok;

-- Set Lootid
UPDATE `creature_template` SET `lootid` = @Gortok WHERE `entry` = @Gortok;

-- Create New Loot Template
-- Data: WoW Armory
INSERT INTO `creature_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`groupid`,`mincountOrRef`,`maxcount`,`lootcondition`,`condition_value1`,`condition_value2`) VALUES
(@Gortok,37052,0,1,1,1,0,0,0), -- Reanimated Armor
(@Gortok,37048,0,1,1,1,0,0,0), -- Shroud of Resurrection
(@Gortok,37050,0,1,1,1,0,0,0), -- Trophy Gatherer
(@Gortok,37051,0,1,1,1,0,0,0), -- Seal of Valgarde
--
(@Gortok,43228,100,0,3,3,1,57940,0), -- Stone Keeper`s Shard
--
(@Gortok,43876,8.5,0,1,1,0,0,0), -- A Guide to Northern Cloth Scavenging
(@Gortok,39152,25,0,1,1,0,0,0), -- Manual: Heavy Frostweave Bandage
--
(@Gortok,43852,8.5,0,1,1,0,0,0), -- Thick Fur Clothing Scraps (Armory 3%-14%)
(@Gortok,33470,100,0,1,7,0,0,0); -- Frostweave Cloth


-- Boss (Skadi the Ruthless)
-- Delete Previous Loot Template
DELETE FROM `creature_loot_template` WHERE `entry` = @Skadi;

-- Set Lootid
UPDATE `creature_template` SET `lootid` = @Skadi WHERE `entry` = @Skadi;

-- Create New Loot Template
-- Data: WoW Armory
INSERT INTO `creature_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`groupid`,`mincountOrRef`,`maxcount`,`lootcondition`,`condition_value1`,`condition_value2`) VALUES
(@Skadi,37056,0,1,1,1,0,0,0), -- Harpooner`s Striders
(@Skadi,37057,0,1,1,1,0,0,0), -- Drake Rider`s Tunic
(@Skadi,37055,0,1,1,1,0,0,0), -- Silken Amice of the Ymirjar
(@Skadi,37053,0,1,1,1,0,0,0), -- Amulet of Deflected Blows
--
(@Skadi,43228,100,0,3,3,1,57940,0), -- Stone Keeper`s Shard
--
(@Skadi,43876,8.5,0,1,1,0,0,0), -- A Guide to Northern Cloth Scavenging
(@Skadi,39152,25,0,1,1,0,0,0), -- Manual: Heavy Frostweave Bandage
--
(@Skadi,43852,8.5,0,1,1,0,0,0), -- Thick Fur Clothing Scraps (Armory 3%-14%)
(@Skadi,33470,100,0,1,7,0,0,0); -- Frostweave Cloth


-- Boss (King Ymiron)
-- Delete Previous Loot Template
DELETE FROM `creature_loot_template` WHERE `entry` = @Ymiron;

-- Set Lootid
UPDATE `creature_template` SET `lootid` = @Ymiron WHERE `entry` = @Ymiron;

-- Create New Loot Template
-- Data: WoW Armory
INSERT INTO `creature_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`groupid`,`mincountOrRef`,`maxcount`,`lootcondition`,`condition_value1`,`condition_value2`) VALUES
(@Ymiron,37065,0,1,1,1,0,0,0), -- Ymiron`s Blade
(@Ymiron,37062,0,1,1,1,0,0,0), -- Crown of Forgotten Kings
(@Ymiron,37066,0,1,1,1,0,0,0), -- Ancient Royal Legguards
(@Ymiron,37058,0,1,1,1,0,0,0), -- Signet of Ranulf
(@Ymiron,37061,0,2,1,1,0,0,0), -- Tor`s Crest
(@Ymiron,37067,0,2,1,1,0,0,0), -- Ceremonial Pyre Mantle
(@Ymiron,37064,0,2,1,1,0,0,0), -- Vestige of Haldor
(@Ymiron,37060,0,2,1,1,0,0,0), -- Jeweled Coronation Sword
--
(@Ymiron,41797,100,0,1,1,0,0,0), -- Design: Austere Earthsiege Diamond
--
(@Ymiron,43228,100,0,3,3,1,57940,0), -- Stone Keeper`s Shard
--
(@Ymiron,43876,8.5,0,1,1,0,0,0), -- A Guide to Northern Cloth Scavenging
(@Ymiron,39152,25,0,1,1,0,0,0), -- Manual: Heavy Frostweave Bandage
--
(@Ymiron,43852,8.5,0,1,1,0,0,0), -- Thick Fur Clothing Scraps (Armory 3%-14%)
(@Ymiron,33470,100,0,1,7,0,0,0); -- Frostweave Cloth

-- Bosses Entries
SET @TribunalChest := 24661;

-- Boss (Tribunal Chest)
-- Delete Previous Loot Template
DELETE FROM `gameobject_loot_template` WHERE `entry` = @TribunalChest;

-- Data: WoW Armory
INSERT INTO `gameobject_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`groupid`,`mincountOrRef`,`maxcount`,`lootcondition`,`condition_value1`,`condition_value2`) VALUES
(@TribunalChest,35677,0,1,1,1,0,0,0), -- Cosmos Vestments
(@TribunalChest,35675,0,1,1,1,0,0,0), -- Linked Armor of the Sphere
(@TribunalChest,35676,0,1,1,1,0,0,0), -- Constellation Leggings
--
(@TribunalChest,42780,35,0,1,3,0,0,0), -- Relic of Ulduar
--
(@TribunalChest,43228,100,0,2,4,1,57940,0); -- Stone Keeper`s Shard

-- Bosses Entries
SET @TribunalChest := 26260;

-- Boss (Tribunal Chest)
-- Delete Previous Loot Template
DELETE FROM `gameobject_loot_template` WHERE `entry` = @TribunalChest;

-- Data: WoW Armory
INSERT INTO `gameobject_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`groupid`,`mincountOrRef`,`maxcount`,`lootcondition`,`condition_value1`,`condition_value2`) VALUES
(@TribunalChest,37655,0,1,1,1,0,0,0), -- Mantle of the Tribunal
(@TribunalChest,37656,0,1,1,1,0,0,0), -- Raging Construct Bands
(@TribunalChest,37654,0,1,1,1,0,0,0), -- Sabatons of the Ages
(@TribunalChest,37653,0,1,1,1,0,0,0), -- Sword of Justice
--
(@TribunalChest,42780,35,0,1,3,0,0,0), -- Relic of Ulduar
--
(@TribunalChest,40752,100,0,1,1,0,0,0), -- Emblem of Heroism
(@TribunalChest,43228,100,0,2,4,1,57940,0); -- Stone Keeper`s Shard


-- Normal Mod --
DELETE FROM `creature_onkill_reputation` WHERE creature_id In (28825,28585,28695,28583,28578,28926,29240,28836,28837,28581,28826,28547,28961,28965,28838,28584,28579,28580,28582,28835,28920,28586,28587,28546,28923);
INSERT INTO `creature_onkill_reputation` VALUES 
(28825, 1037, 1052, 7, 0, 1, 7, 0, 1, 1),
(28585, 1037, 1052, 7, 0, 1, 7, 0, 1, 1),
(28695, 1037, 1052, 7, 0, 1, 7, 0, 1, 1),
(28583, 1037, 1052, 7, 0, 5, 7, 0, 5, 1),
(28578, 1037, 1052, 7, 0, 5, 7, 0, 5, 1),
(28926, 1037, 1052, 7, 0, 5, 7, 0, 5, 1),
(29240, 1037, 1052, 7, 0, 5, 7, 0, 5, 1),
(28836, 1037, 1052, 7, 0, 5, 7, 0, 5, 1),
(28837, 1037, 1052, 7, 0, 5, 7, 0, 5, 1),
(28581, 1037, 1052, 7, 0, 5, 7, 0, 5, 1),
(28826, 1037, 1052, 7, 0, 5, 7, 0, 5, 1),
(28547, 1037, 1052, 7, 0, 5, 7, 0, 5, 1),
(28961, 1037, 1052, 7, 0, 5, 7, 0, 5, 1),
(28965, 1037, 1052, 7, 0, 5, 7, 0, 5, 1),
(28838, 1037, 1052, 7, 0, 5, 7, 0, 5, 1),
(28584, 1037, 1052, 7, 0, 5, 7, 0, 5, 1),
(28579, 1037, 1052, 7, 0, 5, 7, 0, 5, 1),
(28580, 1037, 1052, 7, 0, 5, 7, 0, 5, 1),
(28582, 1037, 1052, 7, 0, 10, 7, 0, 10, 1),
(28835, 1037, 1052, 7, 0, 10, 7, 0, 10, 1),
(28920, 1037, 1052, 7, 0, 10, 7, 0, 10, 1),
(28586, 1037, 1052, 7, 0, 50, 7, 0, 50, 1),
(28587, 1037, 1052, 7, 0, 50, 7, 0, 50, 1),
(28546, 1037, 1052, 7, 0, 50, 7, 0, 50, 1),
(28923, 1037, 1052, 7, 0, 50, 7, 0, 50, 1);

-- Heroic Mod --
DELETE FROM `creature_onkill_reputation` WHERE creature_id In (30965,30970,30969,30964,30967,31867,30973,30975,30976,30977,30978,30979,30980,30982,30981,30983,30966,30968,30974,30971,30972,31533,31536,31537,31538);
INSERT INTO `creature_onkill_reputation` VALUES 
(30965, 1037, 1052, 7, 0, 2, 7, 0, 2, 1),
(30970, 1037, 1052, 7, 0, 2, 7, 0, 2, 1),
(30969, 1037, 1052, 7, 0, 2, 7, 0, 2, 1),
(30964, 1037, 1052, 7, 0, 15, 7, 0, 15, 1),
(30967, 1037, 1052, 7, 0, 15, 7, 0, 15, 1),
(31867, 1037, 1052, 7, 0, 15, 7, 0, 15, 1),
(30973, 1037, 1052, 7, 0, 15, 7, 0, 15, 1),
(30975, 1037, 1052, 7, 0, 15, 7, 0, 15, 1),
(30976, 1037, 1052, 7, 0, 15, 7, 0, 15, 1),
(30977, 1037, 1052, 7, 0, 15, 7, 0, 15, 1),
(30978, 1037, 1052, 7, 0, 15, 7, 0, 15, 1),
(30979, 1037, 1052, 7, 0, 15, 7, 0, 15, 1),
(30980, 1037, 1052, 7, 0, 15, 7, 0, 15, 1),
(30982, 1037, 1052, 7, 0, 15, 7, 0, 15, 1),
(30981, 1037, 1052, 7, 0, 15, 7, 0, 15, 1),
(30983, 1037, 1052, 7, 0, 15, 7, 0, 15, 1),
(30966, 1037, 1052, 7, 0, 15, 7, 0, 15, 1),
(30968, 1037, 1052, 7, 0, 15, 7, 0, 15, 1),
(30974, 1037, 1052, 7, 0, 30, 7, 0, 30, 1),
(30971, 1037, 1052, 7, 0, 30, 7, 0, 30, 1),
(30972, 1037, 1052, 7, 0, 30, 7, 0, 30, 1),
(31533, 1037, 1052, 7, 0, 250, 7, 0, 250, 1),
(31536, 1037, 1052, 7, 0, 250, 7, 0, 250, 1),
(31537, 1037, 1052, 7, 0, 250, 7, 0, 250, 1),
(31538, 1037, 1052, 7, 0, 250, 7, 0, 250, 1);

-- Normal Mod --
DELETE FROM `creature_onkill_reputation` WHERE creature_id In (27731,27737,27734,28200,28249,27729,27742,27744,27743,27732,28199,28201,27736,26529,26530,26532,26533);
INSERT INTO `creature_onkill_reputation` VALUES 
(27731, 1037, 1052, 7, 0, 1, 7, 0, 1, 1),
(27737, 1037, 1052, 7, 0, 1, 7, 0, 1, 1),
(27734, 1037, 1052, 7, 0, 5, 7, 0, 5, 1),
(28200, 1037, 1052, 7, 0, 5, 7, 0, 5, 1),
(28249, 1037, 1052, 7, 0, 5, 7, 0, 5, 1),
(27729, 1037, 1052, 7, 0, 5, 7, 0, 5, 1),
(27742, 1037, 1052, 7, 0, 5, 7, 0, 5, 1),
(27744, 1037, 1052, 7, 0, 5, 7, 0, 5, 1),
(27743, 1037, 1052, 7, 0, 5, 7, 0, 5, 1),
(27732, 1037, 1052, 7, 0, 5, 7, 0, 5, 1),
(28199, 1037, 1052, 7, 0, 5, 7, 0, 5, 1),
(28201, 1037, 1052, 7, 0, 10, 7, 0, 10, 1),
(27736, 1037, 1052, 7, 0, 10, 7, 0, 10, 1),
(26529, 1037, 1052, 7, 0, 50, 7, 0, 50, 1),
(26530, 1037, 1052, 7, 0, 50, 7, 0, 50, 1),
(26532, 1037, 1052, 7, 0, 50, 7, 0, 50, 1),
(26533, 1037, 1052, 7, 0, 50, 7, 0, 50, 1);

-- Heroic Mod --
DELETE FROM `creature_onkill_reputation` WHERE creature_id In (31201,31208,31187,31184,31179,31178,31202,31203,31206,31180,31188,31200,31199,31211,31212,31215,31217,32273);
INSERT INTO `creature_onkill_reputation` VALUES 
(31201, 1037, 1052, 7, 0, 2, 7, 0, 2, 1),
(31208, 1037, 1052, 7, 0, 2, 7, 0, 2, 1),
(31187, 1037, 1052, 7, 0, 15, 7, 0, 15, 1),
(31184, 1037, 1052, 7, 0, 15, 7, 0, 15, 1),
(31179, 1037, 1052, 7, 0, 15, 7, 0, 15, 1),
(31178, 1037, 1052, 7, 0, 15, 7, 0, 15, 1),
(31202, 1037, 1052, 7, 0, 15, 7, 0, 15, 1),
(31203, 1037, 1052, 7, 0, 15, 7, 0, 15, 1),
(31206, 1037, 1052, 7, 0, 15, 7, 0, 15, 1),
(31180, 1037, 1052, 7, 0, 15, 7, 0, 15, 1),
(31188, 1037, 1052, 7, 0, 15, 7, 0, 15, 1),
(31200, 1037, 1052, 7, 0, 30, 7, 0, 30, 1),
(31199, 1037, 1052, 7, 0, 30, 7, 0, 30, 1),
(31211, 1037, 1052, 7, 0, 250, 7, 0, 250, 1),
(31212, 1037, 1052, 7, 0, 250, 7, 0, 250, 1),
(31215, 1037, 1052, 7, 0, 250, 7, 0, 250, 1),
(31217, 1037, 1052, 7, 0, 250, 7, 0, 250, 1),
(32273, 1037, 1052, 7, 0, 250, 7, 0, 250, 1);

-- Bosses Entries
SET @Drakos := (SELECT `heroic_entry` FROM `creature_template` WHERE `entry` = 27654);
SET @Varos := (SELECT `heroic_entry` FROM `creature_template` WHERE `entry` = 27447);
SET @Mage := (SELECT `heroic_entry` FROM `creature_template` WHERE `entry` = 27655);
SET @Chestloot := 193603;

-- Boss (Drakos the Interrogator)
-- Delete Previous Loot Template
DELETE FROM `creature_loot_template` WHERE `entry` = @Drakos;

-- Set Lootid
UPDATE `creature_template` SET `lootid` = @Drakos WHERE `entry` = @Drakos;

-- Create New Loot Template
-- Data: WoW Armory
INSERT INTO `creature_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`groupid`,`mincountOrRef`,`maxcount`,`lootcondition`,`condition_value1`,`condition_value2`) VALUES
(@Drakos,37256,0,1,1,1,0,0,0), -- Scaled Armor of Drakos
(@Drakos,37257,0,1,1,1,0,0,0), -- Band of Torture
(@Drakos,37255,0,1,1,1,0,0,0), -- The Interrogator
(@Drakos,37258,0,1,1,1,0,0,0), -- Drakewing Raiments
--
(@Drakos,40752,100,0,1,1,0,0,0), -- Emblem of Heroism
(@Drakos,43228,100,0,3,4,1,57940,0); -- Stone Keeper`s Shard


-- Boss (Varos Cloudstrider)
-- Delete Previous Loot Template
DELETE FROM `creature_loot_template` WHERE `entry` = @Varos;

-- Set Lootid
UPDATE `creature_template` SET `lootid` = @Varos WHERE `entry` = @Varos;

-- Create New Loot Template
-- Data: WoW Armory
INSERT INTO `creature_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`groupid`,`mincountOrRef`,`maxcount`,`lootcondition`,`condition_value1`,`condition_value2`) VALUES
(@Varos,37261,0,1,1,1,0,0,0), -- Gloves of Radiant Light
(@Varos,37263,0,1,1,1,0,0,0), -- Legplates of the Oculus Guardian
(@Varos,37262,0,1,1,1,0,0,0), -- Azure Ringmail Leggings
(@Varos,37260,0,1,1,1,0,0,0), -- Cloudstrider`s Waraxe
--
(@Varos,40752,100,0,1,1,0,0,0), -- Emblem of Heroism
(@Varos,43228,100,0,3,4,1,57940,0); -- Stone Keeper`s Shard


-- Boss (Mage-Lord Urom)
-- Delete Previous Loot Template
DELETE FROM `creature_loot_template` WHERE `entry` = @Mage;

-- Set Lootid
UPDATE `creature_template` SET `lootid` = @Mage WHERE `entry` = @Mage;

-- Create New Loot Template
-- Data: WoW Armory
INSERT INTO `creature_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`groupid`,`mincountOrRef`,`maxcount`,`lootcondition`,`condition_value1`,`condition_value2`) VALUES
(@Mage,37195,0,1,1,1,0,0,0), -- Band of Enchanted Growth
(@Mage,37288,0,1,1,1,0,0,0), -- Catalytic Bands
(@Mage,37289,0,1,1,1,0,0,0), -- Sash of Phantasmal Images
(@Mage,37264,0,1,1,1,0,0,0), -- Pendulum of Telluric Currents
--
(@Mage,21525,100,0,1,1,12,2,0), -- Green Winter Hat
--
(@Mage,40752,100,0,1,1,0,0,0), -- Emblem of Heroism
(@Mage,43228,100,0,3,4,1,57940,0); -- Stone Keeper`s Shard


-- Boss (Ley-Guardian Eregos)
-- Delete Previous Loot Template
DELETE FROM `gameobject_loot_template` WHERE `entry` = @Chestloot;

-- Set Lootid
UPDATE `gameobject_template` SET `Data1` = @Chestloot WHERE `entry` = @Chestloot;

-- Create New Loot Template
-- Data: WoW Armory
INSERT INTO `gameobject_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`groupid`,`mincountOrRef`,`maxcount`,`lootcondition`,`condition_value1`,`condition_value2`) VALUES
(@Chestloot,37362,0,1,1,1,0,0,0), -- Leggings of Protective Auras
(@Chestloot,37363,0,1,1,1,0,0,0), -- Gauntlets of Dragon Wrath
(@Chestloot,37360,0,1,1,1,0,0,0), -- Staff of Draconic Combat
(@Chestloot,37361,0,1,1,1,0,0,0), -- Cuffs of Winged Levitation
(@Chestloot,37293,0,2,1,1,0,0,0), -- Mask of the Watcher
(@Chestloot,37292,0,2,1,1,0,0,0), -- Ley-Guardian`s Legguards
(@Chestloot,37291,0,2,1,1,0,0,0), -- Ancient Dragon Spirit Cape
(@Chestloot,37294,0,2,1,1,0,0,0), -- Crown of Unbridled Magic
(@Chestloot,41798,100,0,1,1,0,0,0), -- Design: Bracing Earthsiege Diamond
--
(@Chestloot,43668,100,0,1,1,9,13247,0), -- Ley Line Tuner for Quest 13247
--
(@Chestloot,43102,100,0,1,1,0,0,0), -- Frozen Orb
--
(@Chestloot,40752,100,0,1,1,0,0,0), -- Emblem of Heroism
(@Chestloot,43228,100,0,3,4,1,57940,0); -- Stone Keeper`s Shard

-- Magmoth Fire Totem 25444 should not have random movement
UPDATE `creature` SET `MovementType`=0 WHERE id=25444;

-- Quest 13110 The Restless Dead Fix
UPDATE `quest_template` SET `ReqCreatureOrGoId1`=31043,`ReqSpellCast1`=57806 WHERE `entry`=13110;


-- Quest 9433 A Dip in the Moonwell Fix
UPDATE `creature_template` SET `spell2`=29992 WHERE `entry`=17178;

-- fix 815 broken item stats
UPDATE `item_template` SET StatsCount = upper(stat_value1/(stat_value1+1)) + upper(stat_value2/(stat_value2+1)) + upper(stat_value3/(stat_value3+1)) + upper(stat_value4/(stat_value4+1)) + upper(stat_value5/(stat_value5+1)) + upper(stat_value6/(stat_value6+1)) + upper(stat_value7/(stat_value7+1)) + upper(stat_value8/(stat_value8+1)) + upper(stat_value9/(stat_value9+1)) + upper(stat_value10/(stat_value10+1)) ;

-- Bosses Entries
SET @Sladran := (SELECT `heroic_entry` FROM `creature_template` WHERE `entry` = 29304);
SET @Colossus := (SELECT `heroic_entry` FROM `creature_template` WHERE `entry` = 29307);
SET @Elemental := (SELECT `heroic_entry` FROM `creature_template` WHERE `entry` = 29573);
SET @Moorabi := (SELECT `heroic_entry` FROM `creature_template` WHERE `entry` = 29305);
SET @Galdarah := (SELECT `heroic_entry` FROM `creature_template` WHERE `entry` = 29306);
SET @Ferocious := 29932;

-- Boss (Slad`ran)
-- Delete Previous Loot Template
DELETE FROM `creature_loot_template` WHERE `entry` = @Sladran;

-- Set Lootid
UPDATE `creature_template` SET `lootid` = @Sladran WHERE `entry` = @Sladran;

-- Create New Loot Template
-- Data: WoW Armory
INSERT INTO `creature_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`groupid`,`mincountOrRef`,`maxcount`,`lootcondition`,`condition_value1`,`condition_value2`) VALUES
(@Sladran,37628,0,1,1,1,0,0,0), -- Slad`ran`s Coiled Cord
(@Sladran,37626,0,1,1,1,0,0,0), -- Wand of Sseratus
(@Sladran,37627,0,1,1,1,0,0,0), -- Snake Den Spaulders
(@Sladran,37629,0,1,1,1,0,0,0), -- Slithering Slippers
--
(@Sladran,40752,100,0,1,1,0,0,0), -- Emblem of Heroism
(@Sladran,43228,100,0,2,4,1,57940,0), -- Stone Keeper`s Shard
--
(@Sladran,43876,8.5,0,1,1,0,0,0), -- A Guide to Northern Cloth Scavenging
(@Sladran,39152,25,0,1,1,0,0,0), -- Manual: Heavy Frostweave Bandage
--
(@Sladran,43852,8.5,0,1,1,0,0,0), -- Thick Fur Clothing Scraps (Armory 3%-14%)
(@Sladran,33470,100,0,1,7,0,0,0); -- Frostweave Cloth


-- Drakkari Colossus & Elemental

-- Set Lootid
UPDATE `creature_template` SET `lootid` = @Colossus WHERE `entry` = @Colossus;
UPDATE `creature_template` SET `lootid` = @Elemental WHERE `entry` = @Elemental;

-- Delete Previous Loot Template
DELETE FROM `creature_loot_template` WHERE `entry` IN (@Colossus,@Elemental);
DELETE FROM `reference_loot_template` WHERE `entry` IN (35038,@Colossus,@Elemental);

-- Create new reference loot template
-- Data: WoW Armory
INSERT INTO `reference_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`groupid`,`mincountOrRef`,`maxcount`,`lootcondition`,`condition_value1`,`condition_value2`) VALUES
(35038,37635,0,1,1,1,0,0,0), -- Pauldrons of the Colossus
(35038,37637,0,1,1,1,0,0,0), -- Living Mojo Belt
(35038,37634,0,1,1,1,0,0,0), -- Bracers of the Divine Elemental
(35038,37636,0,1,1,1,0,0,0), -- Helm of Cheated Fate
--
(35038,43158,100,0,1,1,9,13111,0), -- Drakkari Colossus Fragment for Quest 13111
--
(35038,40752,100,0,1,1,0,0,0), -- Emblem of Heroism
(35038,43228,100,0,2,4,1,57940,0), -- Stone Keeper`s Shard
--
(35038,43876,8.5,0,1,1,0,0,0), -- A Guide to Northern Cloth Scavenging
(35038,39152,25,0,1,1,0,0,0), -- Manual: Heavy Frostweave Bandage
--
(35038,43852,8.5,0,1,1,0,0,0), -- Thick Fur Clothing Scraps (Armory 3%-14%)
(35038,33470,100,0,1,7,0,0,0); -- Frostweave Cloth

-- Creature Loot
INSERT INTO `creature_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`groupid`,`mincountOrRef`,`maxcount`,`lootcondition`,`condition_value1`,`condition_value2`) VALUES
(@Colossus,35038,100,0,-35038,1,0,0,0),
(@Elemental,35038,100,0,-35038,1,0,0,0);


-- Boss (Moorabi)
-- Delete Previous Loot Template
DELETE FROM `creature_loot_template` WHERE `entry` = @Moorabi;

-- Set Lootid
UPDATE `creature_template` SET `lootid` = @Moorabi WHERE `entry` = @Moorabi;

-- Create New Loot Template
-- Data: WoW Armory
INSERT INTO `creature_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`groupid`,`mincountOrRef`,`maxcount`,`lootcondition`,`condition_value1`,`condition_value2`) VALUES
(@Moorabi,37631,0,1,1,1,0,0,0), -- Fist of the Deity
(@Moorabi,37633,0,1,1,1,0,0,0), -- Ground Tremor Helm
(@Moorabi,37630,0,1,1,1,0,0,0), -- Shroud of Moorabi
(@Moorabi,37632,0,1,1,1,0,0,0), -- Mojo Frenzy Greaves
--
(@Moorabi,40752,100,0,1,1,0,0,0), -- Emblem of Heroism
(@Moorabi,43228,100,0,2,4,1,57940,0), -- Stone Keeper`s Shard
--
(@Moorabi,43876,8.5,0,1,1,0,0,0), -- A Guide to Northern Cloth Scavenging
(@Moorabi,39152,25,0,1,1,0,0,0), -- Manual: Heavy Frostweave Bandage
--
(@Moorabi,43852,8.5,0,1,1,0,0,0), -- Thick Fur Clothing Scraps (Armory 3%-14%)
(@Moorabi,33470,100,0,1,7,0,0,0); -- Frostweave Cloth


-- Boss (Gal`darah)
-- Delete Previous Loot Template
DELETE FROM `creature_loot_template` WHERE `entry` = @Galdarah;

-- Set Lootid
UPDATE `creature_template` SET `lootid` = @Galdarah WHERE `entry` = @Galdarah;

-- Create New Loot Template
-- Data: WoW Armory
INSERT INTO `creature_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`groupid`,`mincountOrRef`,`maxcount`,`lootcondition`,`condition_value1`,`condition_value2`) VALUES
(@Galdarah,37645,0,1,1,1,0,0,0), -- Horn-Tipped Gauntlets
(@Galdarah,37642,0,1,1,1,0,0,0), -- Hemorrhaging Circle
(@Galdarah,37643,0,1,1,1,0,0,0), -- Sash of Blood Removal
(@Galdarah,37644,0,1,1,1,0,0,0), -- Gored Hide Legguards
(@Galdarah,37639,0,2,1,1,0,0,0), -- Grips of the Beast God
(@Galdarah,37638,0,2,1,1,0,0,0), -- Offering of Sacrifice
(@Galdarah,37641,0,2,1,1,0,0,0), -- Arcane Flame Altar-Garb
(@Galdarah,37640,0,2,1,1,0,0,0), -- Boots of Transformation
--
(@Galdarah,43693,100,0,1,1,9,13250,0), -- Mojo Remnant of Akali for Quest 13250
--
(@Galdarah,43102,100,0,1,1,0,0,0), -- Frozen Orb
--
(@Galdarah,40752,100,0,1,1,0,0,0), -- Emblem of Heroism
(@Galdarah,43228,100,0,2,4,1,57940,0), -- Stone Keeper`s Shard
--
(@Galdarah,43876,8.5,0,1,1,0,0,0), -- A Guide to Northern Cloth Scavenging
(@Galdarah,39152,25,0,1,1,0,0,0), -- Manual: Heavy Frostweave Bandage
--
(@Galdarah,43852,8.5,0,1,1,0,0,0), -- Thick Fur Clothing Scraps (Armory 3%-14%)
(@Galdarah,33470,100,0,1,7,0,0,0); -- Frostweave Cloth


-- Boss (Eck the Ferocious)
-- Delete Previous Loot Template
DELETE FROM `creature_loot_template` WHERE `entry` = @Ferocious;

-- Set Lootid
UPDATE `creature_template` SET `lootid` = @Ferocious WHERE `entry` = @Ferocious;

-- Create New Loot Template
-- Data: WoW Armory
INSERT INTO `creature_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`groupid`,`mincountOrRef`,`maxcount`,`lootcondition`,`condition_value1`,`condition_value2`) VALUES
(@Ferocious,43312,0,1,1,1,0,0,0), -- Gorloc Muddy Footwraps
(@Ferocious,43311,0,1,1,1,0,0,0), -- Helmet of the Shrine
(@Ferocious,43310,0,1,1,1,0,0,0), -- Engraved Chestplate of Eck
(@Ferocious,43313,0,1,1,1,0,0,0), -- Leggings of the Ruins Dweller
--
(@Ferocious,40752,100,0,1,1,0,0,0), -- Emblem of Heroism
(@Ferocious,43228,100,0,4,4,1,57940,0), -- Stone Keeper`s Shard
--
(@Ferocious,43876,8.5,0,1,1,0,0,0), -- A Guide to Northern Cloth Scavenging
(@Ferocious,39152,25,0,1,1,0,0,0), -- Manual: Heavy Frostweave Bandage
--
(@Ferocious,43852,8.5,0,1,1,0,0,0), -- Thick Fur Clothing Scraps (Armory 3%-14%)
(@Ferocious,33470,100,0,1,7,0,0,0); -- Frostweave Cloth

-- Bosses Entries
SET @Sladran := 29304;
SET @Colossus := 29307;
SET @Elemental := 29573;
SET @Moorabi := 29305;
SET @Galdarah := 29306;

-- Boss (Slad`ran)
-- Delete Previous Loot Template
DELETE FROM `creature_loot_template` WHERE `entry` = @Sladran;

-- Set Lootid
UPDATE `creature_template` SET `lootid` = @Sladran WHERE `entry` = @Sladran;

-- Create New Loot Template
-- Data: WoW Armory
INSERT INTO `creature_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`groupid`,`mincountOrRef`,`maxcount`,`lootcondition`,`condition_value1`,`condition_value2`) VALUES
(@Sladran,35583,0,1,1,1,0,0,0), -- Witch Doctor`s Wildstaff
(@Sladran,35585,0,1,1,1,0,0,0), -- Cannibal`s Legguards
(@Sladran,35584,0,1,1,1,0,0,0), -- Embroidered Gown of Zul`Drak
--
(@Sladran,43228,100,0,1,1,1,57940,0), -- Stone Keeper`s Shard
--
(@Sladran,43876,8.5,0,1,1,0,0,0), -- A Guide to Northern Cloth Scavenging
(@Sladran,39152,25,0,1,1,0,0,0), -- Manual: Heavy Frostweave Bandage
--
(@Sladran,43852,8.5,0,1,1,0,0,0), -- Thick Fur Clothing Scraps (Armory 3%-14%)
(@Sladran,33470,100,0,1,7,0,0,0); -- Frostweave Cloth


-- Drakkari Colossus & Elemental

-- Set Lootid
UPDATE `creature_template` SET `lootid` = @Colossus WHERE `entry` = @Colossus;
UPDATE `creature_template` SET `lootid` = @Elemental WHERE `entry` = @Elemental;

-- Delete Previous Loot Template
DELETE FROM `creature_loot_template` WHERE `entry` IN (@Colossus,@Elemental);
DELETE FROM `reference_loot_template` WHERE `entry` IN (35037,@Colossus,@Elemental);

-- Create new reference loot template
-- Data: WoW Armory
INSERT INTO `reference_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`groupid`,`mincountOrRef`,`maxcount`,`lootcondition`,`condition_value1`,`condition_value2`) VALUES
(35037,35590,0,1,1,1,0,0,0), -- Drakkari Hunting Bow
(35037,35592,0,1,1,1,0,0,0), -- Hauberk of Totemic Mastery
(35037,35591,0,1,1,1,0,0,0), -- Shoulderguards of the Ice Troll
--
(35037,43158,100,0,1,1,9,13111,0), -- Drakkari Colossus Fragment for Quest 13111
--
(35037,43228,100,0,4,4,1,57940,0); -- Stone Keeper`s Shard

-- Reference the loot
INSERT INTO `reference_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`groupid`,`mincountOrRef`,`maxcount`,`lootcondition`,`condition_value1`,`condition_value2`) VALUES
(@Colossus,35037,100,0,-35037,1,0,0,0),
(@Elemental,35037,100,0,-35037,1,0,0,0);


-- Boss (Moorabi)
-- Delete Previous Loot Template
DELETE FROM `creature_loot_template` WHERE `entry` = @Moorabi;

-- Set Lootid
UPDATE `creature_template` SET `lootid` = @Moorabi WHERE `entry` = @Moorabi;

-- Create New Loot Template
-- Data: WoW Armory
INSERT INTO `creature_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`groupid`,`mincountOrRef`,`maxcount`,`lootcondition`,`condition_value1`,`condition_value2`) VALUES
(@Moorabi,35588,0,1,1,1,0,0,0), -- Forlorn Breastplate of War
(@Moorabi,35589,0,1,1,1,0,0,0), -- Arcane Focal Signet
(@Moorabi,35587,0,1,1,1,0,0,0), -- Frozen Scepter of Necromancy
--
(@Moorabi,43228,100,0,1,1,1,57940,0), -- Stone Keeper`s Shard
--
(@Moorabi,43876,8.5,0,1,1,0,0,0), -- A Guide to Northern Cloth Scavenging
(@Moorabi,39152,25,0,1,1,0,0,0), -- Manual: Heavy Frostweave Bandage
--
(@Moorabi,43852,8.5,0,1,1,0,0,0), -- Thick Fur Clothing Scraps (Armory 3%-14%)
(@Moorabi,33470,100,0,1,7,0,0,0); -- Frostweave Cloth


-- Boss (Gal`darah)
-- Delete Previous Loot Template
DELETE FROM `creature_loot_template` WHERE `entry` = @Galdarah;

-- Set Lootid
UPDATE `creature_template` SET `lootid` = @Galdarah WHERE `entry` = @Galdarah;

-- Create New Loot Template
-- Data: WoW Armory
INSERT INTO `creature_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`groupid`,`mincountOrRef`,`maxcount`,`lootcondition`,`condition_value1`,`condition_value2`) VALUES
(@Galdarah,43306,0,1,1,1,0,0,0), -- Gal`darah`s Signet
(@Galdarah,43309,0,1,1,1,0,0,0), -- Amulet of the Stampede
(@Galdarah,43305,0,1,1,1,0,0,0), -- Shroud of Akali
--
(@Galdarah,43228,100,0,1,1,1,57940,0), -- Stone Keeper`s Shard
--
(@Galdarah,43876,8.5,0,1,1,0,0,0), -- A Guide to Northern Cloth Scavenging
(@Galdarah,39152,25,0,1,1,0,0,0), -- Manual: Heavy Frostweave Bandage
--
(@Galdarah,43852,8.5,0,1,1,0,0,0), -- Thick Fur Clothing Scraps (Armory 3%-14%)
(@Galdarah,33470,100,0,1,7,0,0,0); -- Frostweave Cloth

-- Bosses Entries
SET @Sorrowgrave := (SELECT `heroic_entry` FROM `creature_template` WHERE `entry` = 26668);
SET @Gortok := (SELECT `heroic_entry` FROM `creature_template` WHERE `entry` = 26687);
SET @Skadi := (SELECT `heroic_entry` FROM `creature_template` WHERE `entry` = 26693);
SET @Ymiron := (SELECT `heroic_entry` FROM `creature_template` WHERE `entry` = 26861);


-- Boss (Svala Sorrowgrave)
-- Delete Previous Loot Template
DELETE FROM `creature_loot_template` WHERE `entry` = @Sorrowgrave;

-- Set Lootid
UPDATE `creature_template` SET `lootid` = @Sorrowgrave WHERE `entry` = @Sorrowgrave;

-- Create New Loot Template
-- Data: WoW Armory
INSERT INTO `creature_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`groupid`,`mincountOrRef`,`maxcount`,`lootcondition`,`condition_value1`,`condition_value2`) VALUES
(@Sorrowgrave,37367,0,1,1,1,0,0,0), -- Echoing Stompers
(@Sorrowgrave,37370,0,1,1,1,0,0,0), -- Cuffs of the Trussed Hall
(@Sorrowgrave,37368,0,1,1,1,0,0,0), -- Silent Spectator Shoulderpads
(@Sorrowgrave,37369,0,1,1,1,0,0,0), -- Sorrowgrave`s Breeches
--
(@Sorrowgrave,43228,100,0,3,4,1,57940,0), -- Stone Keeper`s Shard
(@Sorrowgrave,40752,100,0,1,1,0,0,0), -- Emblem of Heroism
--
(@Sorrowgrave,43876,8.5,0,1,1,0,0,0), -- A Guide to Northern Cloth Scavenging
(@Sorrowgrave,39152,25,0,1,1,0,0,0), -- Manual: Heavy Frostweave Bandage
--
(@Sorrowgrave,43852,8.5,0,1,1,0,0,0), -- Thick Fur Clothing Scraps (Armory 3%-14%)
(@Sorrowgrave,33470,100,0,1,7,0,0,0); -- Frostweave Cloth


-- Boss (Gortok Palehoof)
-- Delete Previous Loot Template
DELETE FROM `creature_loot_template` WHERE `entry` = @Gortok;

-- Set Lootid
UPDATE `creature_template` SET `lootid` = @Gortok WHERE `entry` = @Gortok;

-- Create New Loot Template
-- Data: WoW Armory
INSERT INTO `creature_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`groupid`,`mincountOrRef`,`maxcount`,`lootcondition`,`condition_value1`,`condition_value2`) VALUES
(@Gortok,37374,0,1,1,1,0,0,0), -- Ravenous Leggings of the Furbolg
(@Gortok,37376,0,1,1,1,0,0,0), -- Ferocious Pauldrons of the Rhino
(@Gortok,37373,0,1,1,1,0,0,0), -- Massive Spaulders of the Jormungar
(@Gortok,37371,0,1,1,1,0,0,0), -- Ring of the Frenzied Wolvar
--
(@Gortok,43228,100,0,3,4,1,57940,0), -- Stone Keeper`s Shard
(@Gortok,40752,100,0,1,1,0,0,0), -- Emblem of Heroism
--
(@Gortok,43876,8.5,0,1,1,0,0,0), -- A Guide to Northern Cloth Scavenging
(@Gortok,39152,25,0,1,1,0,0,0), -- Manual: Heavy Frostweave Bandage
--
(@Gortok,43852,8.5,0,1,1,0,0,0), -- Thick Fur Clothing Scraps (Armory 3%-14%)
(@Gortok,33470,100,0,1,7,0,0,0); -- Frostweave Cloth


-- Boss (Skadi the Ruthless)
-- Delete Previous Loot Template
DELETE FROM `creature_loot_template` WHERE `entry` = @Skadi;

-- Set Lootid
UPDATE `creature_template` SET `lootid` = @Skadi WHERE `entry` = @Skadi;

-- Create New Loot Template
-- Data: WoW Armory
INSERT INTO `creature_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`groupid`,`mincountOrRef`,`maxcount`,`lootcondition`,`condition_value1`,`condition_value2`) VALUES
(@Skadi,37379,0,1,1,1,0,0,0), -- Skadi`s Iron Belt
(@Skadi,37389,0,1,1,1,0,0,0), -- Crenelation Leggings
(@Skadi,37377,0,1,1,1,0,0,0), -- Netherbreath Spellblade
(@Skadi,37384,0,1,1,1,0,0,0), -- Staff of Wayward Principles
(@Skadi,44151,1.5,0,1,1,0,0,0), -- Reins of the Blue Proto-Drake
--
(@Skadi,43228,100,0,3,4,1,57940,0), -- Stone Keeper`s Shard
(@Skadi,40752,100,0,1,1,0,0,0), -- Emblem of Heroism
--
(@Skadi,43876,8.5,0,1,1,0,0,0), -- A Guide to Northern Cloth Scavenging
(@Skadi,39152,25,0,1,1,0,0,0), -- Manual: Heavy Frostweave Bandage
--
(@Skadi,43852,8.5,0,1,1,0,0,0), -- Thick Fur Clothing Scraps (Armory 3%-14%)
(@Skadi,33470,100,0,1,7,0,0,0); -- Frostweave Cloth


-- Boss (King Ymiron)
-- Delete Previous Loot Template
DELETE FROM `creature_loot_template` WHERE `entry` = @Ymiron;

-- Set Lootid
UPDATE `creature_template` SET `lootid` = @Ymiron WHERE `entry` = @Ymiron;

-- Create New Loot Template
-- Data: WoW Armory
INSERT INTO `creature_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`groupid`,`mincountOrRef`,`maxcount`,`lootcondition`,`condition_value1`,`condition_value2`) VALUES
(@Ymiron,37408,0,1,1,1,0,0,0), -- Girdle of Bane
(@Ymiron,37409,0,1,1,1,0,0,0), -- Gilt-Edged Leather Gauntlets
(@Ymiron,37407,0,1,1,1,0,0,0), -- Sovereign`s Belt
(@Ymiron,37401,0,1,1,1,0,0,0), -- Red Sword of Courage
(@Ymiron,37398,0,2,1,1,0,0,0), -- Mantle of Discarded Ways
(@Ymiron,37395,0,2,1,1,0,0,0), -- Ornamented Plate Regalia
(@Ymiron,37397,0,2,1,1,0,0,0), -- Gold Amulet of Kings
(@Ymiron,37390,0,2,1,1,0,0,0), -- Meteorite Whetstone
(@Ymiron,41797,100,0,1,1,0,0,0), -- Design: Austere Earthsiege Diamond
--
(@Ymiron,43669,100,0,1,1,9,13248,0), -- Locket of the Deceased Queen for Quest 13248
--
(@Ymiron,43102,100,0,1,1,0,0,0), -- Frozen Orb
--
(@Ymiron,43228,100,0,3,4,1,57940,0), -- Stone Keeper`s Shard
(@Ymiron,40752,100,0,1,1,0,0,0), -- Emblem of Heroism
--
(@Ymiron,43876,8.5,0,1,1,0,0,0), -- A Guide to Northern Cloth Scavenging
(@Ymiron,39152,25,0,1,1,0,0,0), -- Manual: Heavy Frostweave Bandage
--
(@Ymiron,43852,8.5,0,1,1,0,0,0), -- Thick Fur Clothing Scraps (Armory 3%-14%)
(@Ymiron,33470,100,0,1,7,0,0,0); -- Frostweave Cloth


-- Bosses Entries
SET @Erekem := (SELECT `heroic_entry` FROM `creature_template` WHERE `entry` = 29315);
SET @Moragg := (SELECT `heroic_entry` FROM `creature_template` WHERE `entry` = 29316);
SET @Ichoron := (SELECT `heroic_entry` FROM `creature_template` WHERE `entry` = 29313);
SET @Xevozz := (SELECT `heroic_entry` FROM `creature_template` WHERE `entry` = 29266);
SET @Lavanthor := (SELECT `heroic_entry` FROM `creature_template` WHERE `entry` = 29312);
SET @Zuramat := (SELECT `heroic_entry` FROM `creature_template` WHERE `entry` = 29314);
SET @Cyanigosa := (SELECT `heroic_entry` FROM `creature_template` WHERE `entry` = 31134);

-- Boss (Erekem)
-- Delete Previous Loot Template
DELETE FROM `creature_loot_template` WHERE `entry` = @Erekem;

-- Set Lootid
UPDATE `creature_template` SET `lootid` = @Erekem WHERE `entry` = @Erekem;

-- Create New Loot Template
-- Data: WoW Armory
INSERT INTO `creature_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`groupid`,`mincountOrRef`,`maxcount`,`lootcondition`,`condition_value1`,`condition_value2`) VALUES
(@Erekem,43407,0,1,1,1,0,0,0), -- Stormstrike Mace
(@Erekem,43405,0,1,1,1,0,0,0), -- Sabatons of Erekem
(@Erekem,43406,0,1,1,1,0,0,0), -- Cloak of the Gushing Wound
--
(@Erekem,43876,8.5,0,1,1,0,0,0), -- A Guide to Northern Cloth Scavenging
(@Erekem,39152,25,0,1,1,0,0,0), -- Manual: Heavy Frostweave Bandage
--
(@Erekem,40752,100,0,1,1,0,0,0), -- Emblem of Heroism
(@Erekem,43228,100,0,2,4,1,57940,0), -- Stone Keeper`s Shard
--
(@Erekem,43852,8.5,0,1,1,0,0,0), -- Thick Fur Clothing Scraps (Armory 3%-14%)
(@Erekem,33470,100,0,1,7,0,0,0); -- Frostweave Cloth


-- Boss (Moragg)
-- Delete Previous Loot Template
DELETE FROM `creature_loot_template` WHERE `entry` = @Moragg;

-- Set Lootid
UPDATE `creature_template` SET `lootid` = @Moragg WHERE `entry` = @Moragg;

-- Create New Loot Template
-- Data: WoW Armory
INSERT INTO `creature_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`groupid`,`mincountOrRef`,`maxcount`,`lootcondition`,`condition_value1`,`condition_value2`) VALUES
(@Moragg,43410,0,1,1,1,0,0,0), -- Moragg`s Chestguard
(@Moragg,43409,0,1,1,1,0,0,0), -- Saliva Corroded Pike
(@Moragg,43408,0,1,1,1,0,0,0), -- Solitaire of Reflecting Beams
--
(@Moragg,43876,8.5,0,1,1,0,0,0), -- A Guide to Northern Cloth Scavenging
(@Moragg,39152,25,0,1,1,0,0,0), -- Manual: Heavy Frostweave Bandage
--
(@Moragg,40752,100,0,1,1,0,0,0), -- Emblem of Heroism
(@Moragg,43228,100,0,2,4,1,57940,0), -- Stone Keeper`s Shard
--
(@Moragg,43852,8.5,0,1,1,0,0,0), -- Thick Fur Clothing Scraps (Armory 3%-14%)
(@Moragg,33470,100,0,1,7,0,0,0); -- Frostweave Cloth


-- Boss (Ichoron)
-- Delete Previous Loot Template
DELETE FROM `creature_loot_template` WHERE `entry` = @Ichoron;

-- Set Lootid
UPDATE `creature_template` SET `lootid` = @Ichoron WHERE `entry` = @Ichoron;

-- Create New Loot Template
-- Data: WoW Armory
INSERT INTO `creature_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`groupid`,`mincountOrRef`,`maxcount`,`lootcondition`,`condition_value1`,`condition_value2`) VALUES
(@Ichoron,43401,0,1,1,1,0,0,0), -- Water-Drenched Robe
(@Ichoron,37862,0,1,1,1,0,0,0), -- Gauntlets of the Water Revenant
(@Ichoron,37869,0,1,1,1,0,0,0), -- Globule Signet
--
(@Ichoron,37705,100,0,2,7,0,0,0), -- Crystallized Water
--
(@Ichoron,43876,8.5,0,1,1,0,0,0), -- A Guide to Northern Cloth Scavenging
(@Ichoron,39152,25,0,1,1,0,0,0), -- Manual: Heavy Frostweave Bandage
--
(@Ichoron,40752,100,0,1,1,0,0,0), -- Emblem of Heroism
(@Ichoron,43228,100,0,2,4,1,57940,0), -- Stone Keeper`s Shard
--
(@Ichoron,43852,8.5,0,1,1,0,0,0), -- Thick Fur Clothing Scraps (Armory 3%-14%)
(@Ichoron,33470,100,0,1,7,0,0,0); -- Frostweave Cloth


-- Boss (Xevozz)
-- Delete Previous Loot Template
DELETE FROM `creature_loot_template` WHERE `entry` = @Xevozz;

-- Set Lootid
UPDATE `creature_template` SET `lootid` = @Xevozz WHERE `entry` = @Xevozz;

-- Create New Loot Template
-- Data: WoW Armory
INSERT INTO `creature_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`groupid`,`mincountOrRef`,`maxcount`,`lootcondition`,`condition_value1`,`condition_value2`) VALUES
(@Xevozz,37868,0,1,1,1,0,0,0), -- Girdle of the Ethereal
(@Xevozz,37867,0,1,1,1,0,0,0), -- Footwraps of Teleportation
(@Xevozz,37861,0,1,1,1,0,0,0), -- Necklace of Arcane Spheres
--
(@Xevozz,43876,8.5,0,1,1,0,0,0), -- A Guide to Northern Cloth Scavenging
(@Xevozz,39152,25,0,1,1,0,0,0), -- Manual: Heavy Frostweave Bandage
--
(@Xevozz,40752,100,0,1,1,0,0,0), -- Emblem of Heroism
(@Xevozz,43228,100,0,2,4,1,57940,0), -- Stone Keeper`s Shard
--
(@Xevozz,43852,8.5,0,1,1,0,0,0), -- Thick Fur Clothing Scraps (Armory 3%-14%)
(@Xevozz,33470,100,0,1,7,0,0,0); -- Frostweave Cloth


-- Boss (Lavanthor)
-- Delete Previous Loot Template
DELETE FROM `creature_loot_template` WHERE `entry` = @Lavanthor;

-- Set Lootid
UPDATE `creature_template` SET `lootid` = @Lavanthor WHERE `entry` = @Lavanthor;

-- Create New Loot Template
-- Data: WoW Armory
INSERT INTO `creature_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`groupid`,`mincountOrRef`,`maxcount`,`lootcondition`,`condition_value1`,`condition_value2`) VALUES
(@Lavanthor,37870,0,1,1,1,0,0,0), -- Twin-Headed Boots
(@Lavanthor,37872,0,1,1,1,0,0,0), -- Lavanthor`s Talisman
(@Lavanthor,37871,0,1,1,1,0,0,0), -- The Key
--
(@Lavanthor,43876,8.5,0,1,1,0,0,0), -- A Guide to Northern Cloth Scavenging
(@Lavanthor,39152,25,0,1,1,0,0,0), -- Manual: Heavy Frostweave Bandage
--
(@Lavanthor,40752,100,0,1,1,0,0,0), -- Emblem of Heroism
(@Lavanthor,43228,100,0,2,4,1,57940,0), -- Stone Keeper`s Shard
--
(@Lavanthor,43852,8.5,0,1,1,0,0,0), -- Thick Fur Clothing Scraps (Armory 3%-14%)
(@Lavanthor,33470,100,0,1,7,0,0,0); -- Frostweave Cloth


-- Boss (Zuramat the Obliterator)
-- Delete Previous Loot Template
DELETE FROM `creature_loot_template` WHERE `entry` = @Zuramat;

-- Set Lootid
UPDATE `creature_template` SET `lootid` = @Zuramat WHERE `entry` = @Zuramat;

-- Create New Loot Template
-- Data: WoW Armory
INSERT INTO `creature_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`groupid`,`mincountOrRef`,`maxcount`,`lootcondition`,`condition_value1`,`condition_value2`) VALUES
(@Zuramat,43404,0,1,1,1,0,0,0), -- Zuramat`s Necklace
(@Zuramat,43402,0,1,1,1,0,0,0), -- The Obliterator Greaves
(@Zuramat,43403,0,1,1,1,0,0,0), -- Shroud of Darkness
--
(@Zuramat,43876,8.5,0,1,1,0,0,0), -- A Guide to Northern Cloth Scavenging
(@Zuramat,39152,25,0,1,1,0,0,0), -- Manual: Heavy Frostweave Bandage
--
(@Zuramat,40752,100,0,1,1,0,0,0), -- Emblem of Heroism
(@Zuramat,43228,100,0,2,4,1,57940,0), -- Stone Keeper`s Shard
--
(@Zuramat,43852,8.5,0,1,1,0,0,0), -- Thick Fur Clothing Scraps (Armory 3%-14%)
(@Zuramat,33470,100,0,1,7,0,0,0); -- Frostweave Cloth


-- Boss (Cyanigosa)
-- Delete Previous Loot Template
DELETE FROM `creature_loot_template` WHERE `entry` = @Cyanigosa;

-- Set Lootid
UPDATE `creature_template` SET `lootid` = @Cyanigosa WHERE `entry` = @Cyanigosa;

-- Create New Loot Template
-- Data: WoW Armory
INSERT INTO `creature_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`groupid`,`mincountOrRef`,`maxcount`,`lootcondition`,`condition_value1`,`condition_value2`) VALUES
(@Cyanigosa,37884,0,1,1,1,0,0,0), -- Azure Cloth Bindings
(@Cyanigosa,37883,0,1,1,1,0,0,0), -- Staff of Trickery
(@Cyanigosa,37886,0,1,1,1,0,0,0), -- Handgrips of the Savage Emissary
(@Cyanigosa,43500,0,1,1,1,0,0,0), -- Bolstered Legplates
(@Cyanigosa,37875,0,2,1,1,0,0,0), -- Spaulders of the Violet Hold
(@Cyanigosa,37876,0,2,1,1,0,0,0), -- Cyanigosa`s Leggings
(@Cyanigosa,37873,0,2,1,1,0,0,0), -- Mark of the War Prisoner
(@Cyanigosa,37874,0,2,1,1,0,0,0), -- Gauntlets of Capture
(@Cyanigosa,41791,100,0,1,1,0,0,0), -- Design: Thick Autumn`s Glow
--
(@Cyanigosa,43823,100,0,1,1,9,13256,0), -- Head of Cyanigosa for Quest 13256
--
(@Cyanigosa,43102,100,0,1,1,0,0,0), -- Frozen Orb
--
(@Cyanigosa,43876,8.5,0,1,1,0,0,0), -- A Guide to Northern Cloth Scavenging
(@Cyanigosa,39152,25,0,1,1,0,0,0), -- Manual: Heavy Frostweave Bandage
--
(@Cyanigosa,40752,100,0,1,1,0,0,0), -- Emblem of Heroism
(@Cyanigosa,43228,100,0,2,4,1,57940,0), -- Stone Keeper`s Shard
--
(@Cyanigosa,43852,8.5,0,1,1,0,0,0), -- Thick Fur Clothing Scraps (Armory 3%-14%)
(@Cyanigosa,33470,100,0,1,7,0,0,0); -- Frostweave Cloth

-- Bosses Entries
SET @Erekem := 29315;
SET @Moragg := 29316;
SET @Ichoron := 29313;
SET @Xevozz := 29266;
SET @Lavanthor := 29312;
SET @Zuramat := 29314;
SET @Cyanigosa := 31134;

-- Boss (Erekem)
-- Delete Previous Loot Template
DELETE FROM `creature_loot_template` WHERE `entry` = @Erekem;

-- Set Lootid
UPDATE `creature_template` SET `lootid` = @Erekem WHERE `entry` = @Erekem;

-- Create New Loot Template
-- Data: WoW Armory
INSERT INTO `creature_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`groupid`,`mincountOrRef`,`maxcount`,`lootcondition`,`condition_value1`,`condition_value2`) VALUES
(@Erekem,43375,0,1,1,1,0,0,0), -- Trousers of the Arakkoa
(@Erekem,43363,0,1,1,1,0,0,0), -- Screeching Cape
--
(@Erekem,43228,100,0,1,1,1,57940,0), -- Stone Keeper`s Shard
--
(@Erekem,43876,8.5,0,1,1,0,0,0), -- A Guide to Northern Cloth Scavenging
(@Erekem,39152,25,0,1,1,0,0,0), -- Manual: Heavy Frostweave Bandage
--
(@Erekem,43852,8.5,0,1,1,0,0,0), -- Thick Fur Clothing Scraps (Armory 3%-14%)
(@Erekem,33470,100,0,1,7,0,0,0); -- Frostweave Cloth


-- Boss (Moragg)
-- Delete Previous Loot Template
DELETE FROM `creature_loot_template` WHERE `entry` = @Moragg;

-- Set Lootid
UPDATE `creature_template` SET `lootid` = @Moragg WHERE `entry` = @Moragg;

-- Create New Loot Template
-- Data: WoW Armory
INSERT INTO `creature_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`groupid`,`mincountOrRef`,`maxcount`,`lootcondition`,`condition_value1`,`condition_value2`) VALUES
(@Moragg,43387,0,1,1,1,0,0,0), -- Shoulderplates of the Beholder
(@Moragg,43382,0,1,1,1,0,0,0), -- Band of Eyes
--
(@Moragg,43228,100,0,1,1,1,57940,0), -- Stone Keeper`s Shard
--
(@Moragg,43876,8.5,0,1,1,0,0,0), -- A Guide to Northern Cloth Scavenging
(@Moragg,39152,25,0,1,1,0,0,0), -- Manual: Heavy Frostweave Bandage
--
(@Moragg,43852,8.5,0,1,1,0,0,0), -- Thick Fur Clothing Scraps (Armory 3%-14%)
(@Moragg,33470,100,0,1,7,0,0,0); -- Frostweave Cloth


-- Boss (Ichoron)
-- Delete Previous Loot Template
DELETE FROM `creature_loot_template` WHERE `entry` = @Ichoron;

-- Set Lootid
UPDATE `creature_template` SET `lootid` = @Ichoron WHERE `entry` = @Ichoron;

-- Create New Loot Template
-- Data: WoW Armory
INSERT INTO `creature_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`groupid`,`mincountOrRef`,`maxcount`,`lootcondition`,`condition_value1`,`condition_value2`) VALUES
(@Ichoron,35643,0,1,1,1,0,0,0), -- Spaulders of Ichoron
(@Ichoron,35647,0,1,1,1,0,0,0), -- Handguards of Rapid Pursuit
--
(@Ichoron,37705,100,0,2,7,0,0,0), -- Crystallized Water
(@Ichoron,42107,19.5,0,1,1,1,57940,0), -- Elemental Armor Scrap
--
(@Ichoron,43228,100,0,1,1,1,57940,0), -- Stone Keeper`s Shard
--
(@Ichoron,43876,8.5,0,1,1,0,0,0), -- A Guide to Northern Cloth Scavenging
(@Ichoron,39152,25,0,1,1,0,0,0), -- Manual: Heavy Frostweave Bandage
--
(@Ichoron,43852,8.5,0,1,1,0,0,0), -- Thick Fur Clothing Scraps (Armory 3%-14%)
(@Ichoron,33470,100,0,1,7,0,0,0); -- Frostweave Cloth


-- Boss (Xevozz)
-- Delete Previous Loot Template
DELETE FROM `creature_loot_template` WHERE `entry` = @Xevozz;

-- Set Lootid
UPDATE `creature_template` SET `lootid` = @Xevozz WHERE `entry` = @Xevozz;

-- Create New Loot Template
-- Data: WoW Armory
INSERT INTO `creature_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`groupid`,`mincountOrRef`,`maxcount`,`lootcondition`,`condition_value1`,`condition_value2`) VALUES
(@Xevozz,35644,0,1,1,1,0,0,0), -- Xevozz`s Belt
(@Xevozz,35642,0,1,1,1,0,0,0), -- Riot Shield
--
(@Xevozz,43228,100,0,1,1,1,57940,0), -- Stone Keeper`s Shard
--
(@Xevozz,43876,8.5,0,1,1,0,0,0), -- A Guide to Northern Cloth Scavenging
(@Xevozz,39152,25,0,1,1,0,0,0), -- Manual: Heavy Frostweave Bandage
--
(@Xevozz,43852,8.5,0,1,1,0,0,0), -- Thick Fur Clothing Scraps (Armory 3%-14%)
(@Xevozz,33470,100,0,1,7,0,0,0); -- Frostweave Cloth


-- Boss (Lavanthor)
-- Delete Previous Loot Template
DELETE FROM `creature_loot_template` WHERE `entry` = @Lavanthor;

-- Set Lootid
UPDATE `creature_template` SET `lootid` = @Lavanthor WHERE `entry` = @Lavanthor;

-- Create New Loot Template
-- Data: WoW Armory
INSERT INTO `creature_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`groupid`,`mincountOrRef`,`maxcount`,`lootcondition`,`condition_value1`,`condition_value2`) VALUES
(@Lavanthor,35646,0,1,1,1,0,0,0), -- Lava Burn Gloves
(@Lavanthor,35645,0,1,1,1,0,0,0), -- Prison Warden`s Shotgun
--
(@Lavanthor,43228,100,0,1,1,1,57940,0), -- Stone Keeper`s Shard
--
(@Lavanthor,43876,8.5,0,1,1,0,0,0), -- A Guide to Northern Cloth Scavenging
(@Lavanthor,39152,25,0,1,1,0,0,0), -- Manual: Heavy Frostweave Bandage
--
(@Lavanthor,43852,8.5,0,1,1,0,0,0), -- Thick Fur Clothing Scraps (Armory 3%-14%)
(@Lavanthor,33470,100,0,1,7,0,0,0); -- Frostweave Cloth


-- Boss (Zuramat the Obliterator)
-- Delete Previous Loot Template
DELETE FROM `creature_loot_template` WHERE `entry` = @Zuramat;

-- Set Lootid
UPDATE `creature_template` SET `lootid` = @Zuramat WHERE `entry` = @Zuramat;

-- Create New Loot Template
-- Data: WoW Armory
INSERT INTO `creature_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`groupid`,`mincountOrRef`,`maxcount`,`lootcondition`,`condition_value1`,`condition_value2`) VALUES
(@Zuramat,43358,0,1,1,1,0,0,0), -- Pendant of Shadow Beams
(@Zuramat,43353,0,1,1,1,0,0,0), -- Void Sentry Legplates
--
(@Zuramat,43228,100,0,1,1,1,57940,0), -- Stone Keeper`s Shard
--
(@Zuramat,43876,8.5,0,1,1,0,0,0), -- A Guide to Northern Cloth Scavenging
(@Zuramat,39152,25,0,1,1,0,0,0), -- Manual: Heavy Frostweave Bandage
--
(@Zuramat,43852,8.5,0,1,1,0,0,0), -- Thick Fur Clothing Scraps (Armory 3%-14%)
(@Zuramat,33470,100,0,1,7,0,0,0); -- Frostweave Cloth


-- Boss (Cyanigosa)
-- Delete Previous Loot Template
DELETE FROM `creature_loot_template` WHERE `entry` = @Cyanigosa;

-- Set Lootid
UPDATE `creature_template` SET `lootid` = @Cyanigosa WHERE `entry` = @Cyanigosa;

-- Create New Loot Template
-- Data: WoW Armory
INSERT INTO `creature_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`groupid`,`mincountOrRef`,`maxcount`,`lootcondition`,`condition_value1`,`condition_value2`) VALUES
(@Cyanigosa,35650,0,1,1,1,0,0,0), -- Boots of the Portal Guardian
(@Cyanigosa,35651,0,1,1,1,0,0,0), -- Plate Claws of the Dragon
(@Cyanigosa,35649,0,1,1,1,0,0,0), -- Jailer`s Baton
--
(@Cyanigosa,43228,100,0,1,1,1,57940,0), -- Stone Keeper`s Shard
--
(@Cyanigosa,43876,8.5,0,1,1,0,0,0), -- A Guide to Northern Cloth Scavenging
(@Cyanigosa,39152,25,0,1,1,0,0,0), -- Manual: Heavy Frostweave Bandage
--
(@Cyanigosa,43852,8.5,0,1,1,0,0,0), -- Thick Fur Clothing Scraps (Armory 3%-14%)
(@Cyanigosa,33470,100,0,1,7,0,0,0); -- Frostweave Cloth

-- Bosses Entries
SET @Nadox := (SELECT `heroic_entry` FROM `creature_template` WHERE `entry` = 29309);
SET @Taldaram := (SELECT `heroic_entry` FROM `creature_template` WHERE `entry` = 29308);
SET @Shadowseeker := (SELECT `heroic_entry` FROM `creature_template` WHERE `entry` = 29310);
SET @Volazj := (SELECT `heroic_entry` FROM `creature_template` WHERE `entry` = 29311);
SET @Amanitar := (SELECT `heroic_entry` FROM `creature_template` WHERE `entry` = 30258);

-- Boss (Elder Nadox)
-- Delete Previous Loot Template
DELETE FROM `creature_loot_template` WHERE `entry` = @Nadox;

-- Set Lootid
UPDATE `creature_template` SET `lootid` = @Nadox WHERE `entry` = @Nadox;

-- Create New Loot Template
-- Data: WoW Armory
INSERT INTO `creature_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`groupid`,`mincountOrRef`,`maxcount`,`lootcondition`,`condition_value1`,`condition_value2`) VALUES
(@Nadox,37591,0,1,1,1,0,0,0), -- Nerubian Shield Ring
(@Nadox,37593,0,1,1,1,0,0,0), -- Sprinting Shoulderpads
(@Nadox,37594,0,1,1,1,0,0,0), -- Elder Headpiece
(@Nadox,37592,0,1,1,1,0,0,0), -- Brood Plague Helmet
--
(@Nadox,43876,8.5,0,1,1,0,0,0), -- A Guide to Northern Cloth Scavenging
(@Nadox,39152,25,0,1,1,0,0,0), -- Manual: Heavy Frostweave Bandage
--
(@Nadox,40752,100,0,1,1,0,0,0), -- Emblem of Heroism
(@Nadox,43228,100,0,1,4,1,57940,0), -- Stone Keeper`s Shard
--
(@Nadox,43852,8.5,0,1,1,0,0,0), -- Thick Fur Clothing Scraps (Armory 3%-14%)
(@Nadox,33470,100,0,1,7,0,0,0); -- Frostweave Cloth


-- Boss (Prince Taldaram)
-- Delete Previous Loot Template
DELETE FROM `creature_loot_template` WHERE `entry` = @Taldaram;

-- Set Lootid
UPDATE `creature_template` SET `lootid` = @Taldaram WHERE `entry` = @Taldaram;

-- Create New Loot Template
-- Data: WoW Armory
INSERT INTO `creature_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`groupid`,`mincountOrRef`,`maxcount`,`lootcondition`,`condition_value1`,`condition_value2`) VALUES
(@Taldaram,37614,0,1,1,1,0,0,0), -- Gauntlets of the Plundering Geist
(@Taldaram,37595,0,1,1,1,0,0,0), -- Necklace of Taldaram
(@Taldaram,37613,0,1,1,1,0,0,0), -- Flame Sphere Bindings
(@Taldaram,37612,0,1,1,1,0,0,0), -- Bonegrinder Breastplate
--
(@Taldaram,44731,0,2,1,1,12,8,0), -- Bouquet of Ebon Roses
(@Taldaram,22206,0,2,1,1,12,8,0), -- Bouquet of Red Roses
--
(@Taldaram,43876,8.5,0,1,1,0,0,0), -- A Guide to Northern Cloth Scavenging
(@Taldaram,39152,25,0,1,1,0,0,0), -- Manual: Heavy Frostweave Bandage
--
(@Taldaram,40752,100,0,1,1,0,0,0), -- Emblem of Heroism
(@Taldaram,43228,100,0,1,4,1,57940,0), -- Stone Keeper`s Shard
--
(@Taldaram,43852,8.5,0,1,1,0,0,0), -- Thick Fur Clothing Scraps (Armory 3%-14%)
(@Taldaram,33470,100,0,1,7,0,0,0); -- Frostweave Cloth


-- Boss (Jedoga Shadowseeker)
-- Delete Previous Loot Template
DELETE FROM `creature_loot_template` WHERE `entry` = @Shadowseeker;

-- Set Lootid
UPDATE `creature_template` SET `lootid` = @Shadowseeker WHERE `entry` = @Shadowseeker;

-- Create New Loot Template
-- Data: WoW Armory
INSERT INTO `creature_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`groupid`,`mincountOrRef`,`maxcount`,`lootcondition`,`condition_value1`,`condition_value2`) VALUES
(@Shadowseeker,43280,0,1,1,1,0,0,0), -- Faceguard of the Hammer Clan
(@Shadowseeker,43283,0,1,1,1,0,0,0), -- Subterranean Waterfall Shroud
(@Shadowseeker,43281,0,1,1,1,0,0,0), -- Edge of Oblivion
(@Shadowseeker,43282,0,1,1,1,0,0,0), -- Shadowseeker`s Pendant
--
(@Shadowseeker,21524,100,0,1,1,12,2,0), -- Red Winter Hat
--
(@Shadowseeker,43876,8.5,0,1,1,0,0,0), -- A Guide to Northern Cloth Scavenging
(@Shadowseeker,39152,25,0,1,1,0,0,0), -- Manual: Heavy Frostweave Bandage
--
(@Shadowseeker,40752,100,0,1,1,0,0,0), -- Emblem of Heroism
(@Shadowseeker,43228,100,0,1,4,1,57940,0), -- Stone Keeper`s Shard
--
(@Shadowseeker,43852,8.5,0,1,1,0,0,0), -- Thick Fur Clothing Scraps (Armory 3%-14%)
(@Shadowseeker,33470,100,0,1,7,0,0,0); -- Frostweave Cloth


-- Boss (Herald Volazj)
-- Delete Previous Loot Template
DELETE FROM `creature_loot_template` WHERE `entry` = @Volazj;

-- Set Lootid
UPDATE `creature_template` SET `lootid` = @Volazj WHERE `entry` = @Volazj;

-- Create New Loot Template
-- Data: WoW Armory
INSERT INTO `creature_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`groupid`,`mincountOrRef`,`maxcount`,`lootcondition`,`condition_value1`,`condition_value2`) VALUES
(@Volazj,37620,0,1,1,1,0,0,0), -- Bracers of the Herald
(@Volazj,37619,0,1,1,1,0,0,0), -- Wand of Ahn`kahet
(@Volazj,37623,0,1,1,1,0,0,0), -- Fiery Obelisk Handguards
(@Volazj,37622,0,1,1,1,0,0,0), -- Skirt of the Old Kingdom
(@Volazj,37617,0,2,1,1,0,0,0), -- Staff of Sinister Claws
(@Volazj,37615,0,2,1,1,0,0,0), -- Titanium Compound Bow
(@Volazj,37616,0,2,1,1,0,0,0), -- Kilt of the Forgotten One
(@Volazj,37618,0,2,1,1,0,0,0), -- Greaves of Ancient Evil
--
(@Volazj,41790,100,0,1,1,0,0,0), -- Design: Precise Scarlet Ruby
--
(@Volazj,43821,100,0,1,1,9,13255,0), -- Faceless One`s Withered Brain for Quest 13255
--
(@Volazj,43102,100,0,1,1,0,0,0), -- Frozen Orb
--
(@Volazj,43876,8.5,0,1,1,0,0,0), -- A Guide to Northern Cloth Scavenging
(@Volazj,39152,25,0,1,1,0,0,0), -- Manual: Heavy Frostweave Bandage
--
(@Volazj,40752,100,0,1,1,0,0,0), -- Emblem of Heroism
(@Volazj,43228,100,0,1,4,1,57940,0), -- Stone Keeper`s Shard
--
(@Volazj,43852,8.5,0,1,1,0,0,0), -- Thick Fur Clothing Scraps (Armory 3%-14%)
(@Volazj,33470,100,0,1,7,0,0,0); -- Frostweave Cloth


-- Boss (Amanitar)
-- Delete Previous Loot Template
DELETE FROM `creature_loot_template` WHERE `entry` = @Amanitar;

-- Set Lootid
UPDATE `creature_template` SET `lootid` = @Amanitar WHERE `entry` = @Amanitar;

-- Create New Loot Template
-- Data: WoW Armory
INSERT INTO `creature_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`groupid`,`mincountOrRef`,`maxcount`,`lootcondition`,`condition_value1`,`condition_value2`) VALUES
(@Amanitar,43286,0,1,1,1,0,0,0), -- Legguards of Swarming Attacks
(@Amanitar,43287,0,1,1,1,0,0,0), -- Silken Bridge Handwraps
(@Amanitar,43285,0,1,1,1,0,0,0), -- Amulet of the Spell Flinger
(@Amanitar,43284,0,1,1,1,0,0,0), -- Amanitar Skullbow
--
(@Amanitar,43876,8.5,0,1,1,0,0,0), -- A Guide to Northern Cloth Scavenging
(@Amanitar,39152,25,0,1,1,0,0,0), -- Manual: Heavy Frostweave Bandage
--
(@Amanitar,40752,100,0,1,1,0,0,0), -- Emblem of Heroism
(@Amanitar,43228,100,0,4,4,1,57940,0), -- Stone Keeper`s Shard
--
(@Amanitar,43852,8.5,0,1,1,0,0,0), -- Thick Fur Clothing Scraps (Armory 3%-14%)
(@Amanitar,33470,100,0,1,7,0,0,0); -- Frostweave Cloth

-- Heroic Mod --
DELETE FROM `creature_onkill_reputation` WHERE `creature_id` IN (31678,31681,31671,31672,31635,31183,31659,31660,30747,31661,31662,31663,31666,31667,31675,31658,31665,31676,31669,30748,31679,31656,31673);
INSERT INTO `creature_onkill_reputation` VALUES 
(31678, 1037, 1052, 7, 0, 2, 7, 0, 2, 1),
(31681, 1037, 1052, 7, 0, 2, 7, 0, 2, 1),
(31671, 1037, 1052, 7, 0, 2, 7, 0, 2, 1),
(31672, 1037, 1052, 7, 0, 2, 7, 0, 2, 1),
(31635, 1037, 1052, 7, 0, 2, 7, 0, 2, 1),
(31183, 1037, 1052, 7, 0, 2, 7, 0, 2, 1),
(31659, 1037, 1052, 7, 0, 15, 7, 0, 15, 1),
(31660, 1037, 1052, 7, 0, 15, 7, 0, 15, 1),
(30747, 1037, 1052, 7, 0, 15, 7, 0, 15, 1),
(31661, 1037, 1052, 7, 0, 15, 7, 0, 15, 1),
(31662, 1037, 1052, 7, 0, 15, 7, 0, 15, 1),
(31663, 1037, 1052, 7, 0, 15, 7, 0, 15, 1),
(31666, 1037, 1052, 7, 0, 15, 7, 0, 15, 1),
(31667, 1037, 1052, 7, 0, 15, 7, 0, 15, 1),
(31675, 1037, 1052, 7, 0, 15, 7, 0, 15, 1),
(31658, 1037, 1052, 7, 0, 15, 7, 0, 15, 1),
(31665, 1037, 1052, 7, 0, 15, 7, 0, 15, 1),
(31676, 1037, 1052, 7, 0, 15, 7, 0, 15, 1),
(31669, 1037, 1052, 7, 0, 30, 7, 0, 30, 1),
(30748, 1037, 1052, 7, 0, 250, 7, 0, 250, 1),
(31679, 1037, 1052, 7, 0, 250, 7, 0, 250, 1),
(31656, 1037, 1052, 7, 0, 250, 7, 0, 250, 1),
(31673, 1037, 1052, 7, 0, 250, 7, 0, 250, 1);

INSERT IGNORE INTO `creature_onkill_reputation` VALUES
 (30529, 1037, 1052, 7, 0, 250, 7, 0, 250, 1),
 (30510, 1037, 1052, 7, 0, 250, 7, 0, 250, 1),
 (30540, 1037, 1052, 7, 0, 250, 7, 0, 250, 1),
 (30532, 1037, 1052, 7, 0, 250, 7, 0, 250, 1),
 (30398, 1052, 0, 7, 0, 250, 0, 0, 0, 1),
 (30397, 1037, 0, 7, 0, 250, 0, 0, 0, 1),
 (30528, 1037, 1052, 7, 0, 2, 7, 0, 2, 1),
 (32665, 1037, 1052, 7, 0, 2, 7, 0, 2, 1),
 (30520, 1037, 1052, 7, 0, 2, 7, 0, 2, 1),
 (30524, 1037, 1052, 7, 0, 30, 7, 0, 30, 1),
 (30496, 1052, 0, 7, 0, 15, 0, 0, 0, 1),
 (30498, 1052, 0, 7, 0, 15, 0, 0, 0, 1),
 (27949, 1052, 0, 7, 0, 250, 0, 0, 0, 1),
 (30509, 1052, 0, 7, 0, 15, 0, 0, 0, 1),
 (30516, 1037, 1052, 7, 0, 15, 7, 0, 15, 1),
 (30457, 1037, 1052, 7, 0, 15, 7, 0, 15, 1),
 (30517, 1037, 1052, 7, 0, 15, 7, 0, 15, 1),
 (30459, 1037, 1052, 7, 0, 30, 7, 0, 30, 1),
 (30519, 1037, 1052, 7, 0, 15, 7, 0, 15, 1),
 (30526, 1037, 1052, 7, 0, 15, 7, 0, 15, 1),
 (30525, 1037, 1052, 7, 0, 15, 7, 0, 15, 1),
 (30513, 1037, 1052, 7, 0, 15, 7, 0, 15, 1),
 (30518, 1037, 1052, 7, 0, 15, 7, 0, 15, 1),
 (30495, 1037, 0, 7, 0, 15, 0, 0, 0, 1),
 (30497, 1037, 0, 7, 0, 15, 0, 0, 0, 1),
 (27947, 1037, 0, 7, 0, 250, 0, 0, 0, 1),
 (30508, 1037, 0, 7, 0, 15, 0, 0, 0, 1),
 (30460, 1037, 1052, 7, 0, 15, 7, 0, 15, 1),
 (30478, 1037, 1052, 7, 0, 15, 7, 0, 15, 1),
 (30473, 1037, 1052, 7, 0, 15, 7, 0, 15, 1),
 (30485, 1037, 1052, 7, 0, 15, 7, 0, 15, 1);

-- This fixes the Titles reward for achievement "Insane in the Membrane"
INSERT INTO `achievement_reward`  VALUES ('2336', '145', '145', '0', '0', '', '');

-- changed from Rogues only to Zone: Hillsbrad Foothills
UPDATE `quest_template` SET `ZoneOrSort` = 267 WHERE `entry` = 8249;


-- [Object] Lich Kings Stand
UPDATE `gameobject` SET `phaseMask` = 192 WHERE `guid` IN(66618, 66617);




-- Ajzol-Nerub:Ajzol-Nerub rep
INSERT INTO `creature_onkill_reputation` VALUES (31610, 1037, 1052, 7, 0, 250, 7, 0, 250, 1);
INSERT INTO `creature_onkill_reputation` VALUES (31611, 1037, 1052, 7, 0, 250, 7, 0, 250, 1);
INSERT INTO `creature_onkill_reputation` VALUES (31612, 1037, 1052, 7, 0, 250, 7, 0, 250, 1);
INSERT INTO `creature_onkill_reputation` VALUES (31585, 1037, 1052, 7, 0, 2, 7, 0, 2, 1);
INSERT INTO `creature_onkill_reputation` VALUES (31586, 1037, 1052, 7, 0, 2, 7, 0, 2, 1);
INSERT INTO `creature_onkill_reputation` VALUES (31587, 1037, 1052, 7, 0, 2, 7, 0, 2, 1);
INSERT INTO `creature_onkill_reputation` VALUES (31591, 1037, 1052, 7, 0, 2, 7, 0, 2, 1);
INSERT INTO `creature_onkill_reputation` VALUES (31588, 1037, 1052, 7, 0, 2, 7, 0, 2, 1);
INSERT INTO `creature_onkill_reputation` VALUES (31590, 1037, 1052, 7, 0, 2, 7, 0, 2, 1);
INSERT INTO `creature_onkill_reputation` VALUES (31589, 1037, 1052, 7, 0, 2, 7, 0, 2, 1);
INSERT INTO `creature_onkill_reputation` VALUES (29051, 1037, 1052, 7, 0, 2, 7, 0, 2, 1);
INSERT INTO `creature_onkill_reputation` VALUES (31595, 1037, 1052, 7, 0, 2, 7, 0, 2, 1);
INSERT INTO `creature_onkill_reputation` VALUES (31594, 1037, 1052, 7, 0, 2, 7, 0, 2, 1);
INSERT INTO `creature_onkill_reputation` VALUES (31593, 1037, 1052, 7, 0, 2, 7, 0, 2, 1);
INSERT INTO `creature_onkill_reputation` VALUES (31598, 1037, 1052, 7, 0, 2, 7, 0, 2, 1);
INSERT INTO `creature_onkill_reputation` VALUES (31597, 1037, 1052, 7, 0, 2, 7, 0, 2, 1);
INSERT INTO `creature_onkill_reputation` VALUES (31603, 1037, 1052, 7, 0, 2, 7, 0, 2, 1);
INSERT INTO `creature_onkill_reputation` VALUES (31600, 1037, 1052, 7, 0, 2, 7, 0, 2, 1);
INSERT INTO `creature_onkill_reputation` VALUES (31601, 1037, 1052, 7, 0, 2, 7, 0, 2, 1);
INSERT INTO `creature_onkill_reputation` VALUES (31602, 1037, 1052, 7, 0, 2, 7, 0, 2, 1);
INSERT INTO `creature_onkill_reputation` VALUES (31613, 1037, 1052, 7, 0, 2, 7, 0, 2, 1);
INSERT INTO `creature_onkill_reputation` VALUES (31614, 1037, 1052, 7, 0, 2, 7, 0, 2, 1);
INSERT INTO `creature_onkill_reputation` VALUES (32593, 1037, 1052, 7, 0, 2, 7, 0, 2, 1);
INSERT INTO `creature_onkill_reputation` VALUES (31599, 1037, 1052, 7, 0, 15, 7, 0, 15, 1);
INSERT INTO `creature_onkill_reputation` VALUES (31605, 1037, 1052, 7, 0, 15, 7, 0, 15, 1);
INSERT INTO `creature_onkill_reputation` VALUES (31606, 1037, 1052, 7, 0, 15, 7, 0, 15, 1);
INSERT INTO `creature_onkill_reputation` VALUES (31607, 1037, 1052, 7, 0, 15, 7, 0, 15, 1);
INSERT INTO `creature_onkill_reputation` VALUES (31608, 1037, 1052, 7, 0, 15, 7, 0, 15, 1);
INSERT INTO `creature_onkill_reputation` VALUES (31609, 1037, 1052, 7, 0, 15, 7, 0, 15, 1);
INSERT INTO `creature_onkill_reputation` VALUES (31604, 1037, 1052, 7, 0, 30, 7, 0, 30, 1);
INSERT INTO `creature_onkill_reputation` VALUES (31592, 1037, 1052, 7, 0, 30, 7, 0, 30, 1);
INSERT INTO `creature_onkill_reputation` VALUES (31615, 1037, 1052, 7, 0, 30, 7, 0, 30, 1);
INSERT INTO `creature_onkill_reputation` VALUES (31616, 1037, 1052, 7, 0, 30, 7, 0, 30, 1);
INSERT INTO `creature_onkill_reputation` VALUES (31617, 1037, 1052, 7, 0, 30, 7, 0, 30, 1);



--  Ammen Vale Guardian health fix
UPDATE `creature_template` SET `minhealth` = 11828, `maxhealth` = 11828 WHERE `entry` = 16921;

-- Quest! Warning: Some Assembly Required
UPDATE `creature_template` SET `killcredit1`=24274 WHERE `entry` IN(23564,24199,24198);

-- QUEST Baleheim Bodycount
UPDATE `creature_template` SET `killcredit1`=24231 WHERE `entry` IN(23653,23655,23657);

-- quest Timear Foresees Titanium Vanguards in your future
UPDATE `creature_template` set KillCredit1 = 28838 WHERE ENTRY = 30981;

-- Make NPCs that must be healed as part of priest's Garments quests targetable by spells:
UPDATE `creature_template` SET `unit_flags`=`unit_flags`|'8' WHERE `entry` IN (12429, 12430, 12427, 12423, 12428, 17551);
-- Add external quest complete flag back
UPDATE `quest_template` SET `SpecialFlags`=`SpecialFlags`|2 WHERE `entry` IN (5650, 5648, 5624, 5625, 5621, 9586);

-- [Eversong Woods] Powering our Defenses
UPDATE `quest_template` SET `SpecialFlags`=`SpecialFlags`|2 WHERE `entry`=8490;

--  Irduil <Master Skinning Trainer>
DELETE FROM `npc_trainer` WHERE (`entry`=33641);
INSERT INTO `npc_trainer` (entry, spell, spellcost, reqskill, reqskillvalue, reqlevel) VALUES 
(33641, 8615, 10, 0, 0, 0),
(33641, 8619, 500, 393, 50, 0),
(33641, 8620, 5000, 393, 125, 10),
(33641, 10769, 50000, 393, 200, 25),
(33641, 32679, 100000, 393, 275, 40);

-- [ITEM]Keleseth's Persuader Exploit fix
UPDATE `item_template` SET `map`=609 WHERE `entry`=39371;

-- update flag to vendor and repair --
UPDATE `creature_template` SET `npcflag`=`npcflag`|4224 WHERE `entry`=32253;

-- vendor items --
DELETE FROM `npc_vendor` WHERE `entry` = 32253;
INSERT INTO `npc_vendor` (`entry`,`item`,`maxcount`,`incrtime`,`ExtendedCost`) VALUES
('32253','25861','0','0','0'),
('32253','29007','0','0','0'),
('32253','29008','0','0','0'),
('32253','25875','0','0','0'),
('32253','25876','0','0','0'),
('32253','29013','0','0','0');

-- FIX Dalaran Cooking's Price
UPDATE `item_template` SET `stackable`=-1,`maxcount`=0 WHERE `entry`=43016;

-- This npc should not be attackable
UPDATE `creature_template` SET `unit_flags`=2,`type_flags`=2 WHERE `entry` IN (24068,31655); -- Normal and Heroic Mode

--  Megelon kneel emote
DELETE FROM `creature_template_addon` WHERE `entry`=16475;
INSERT INTO `creature_template_addon` (`entry`,`mount`,`bytes1`,`bytes2`,`emote`,`moveflags`,`auras`) VALUES (16475,0,8,4097,'',0,'');

-- Portal Trainer Archmage Celindra
-- missing spells for training and not setup as a trainer
-- portal trainer dalaran
-- Sources: http://www.wowhead.com/?npc=29156, http://www.wowhead.com/?spell=53142

-- set her up as trainer
UPDATE `creature_template` SET `npcflag`=`npcflag` |48, `trainer_type` = 0, `trainer_class` = 8 WHERE `entry` = 29156;

-- add the missing spells that she trains
DELETE FROM `npc_trainer` WHERE `entry` = 29156;
INSERT INTO `npc_trainer` (entry, spell, spellcost, reqlevel) VALUES
(29156,53142,155000,74),
(29156,53140,100000,71);



