DELETE FROM `creature_template` WHERE (`entry`='500913');
INSERT INTO `creature_template` VALUES (500913, 0, 0, 0, 0, 0, 30076, 0, 30076, 0, 'Tuulikki', 'The Epic Vendor', '', 0, 100, 100, 2, 35, 35, 5, 1.71, 1.14286, 1, 0, 0, 0, 0, 0, 1, 2000, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 'npc_mga_epic_shop', 0);
UPDATE `creature_template` SET `npcflag`='129' WHERE (`entry`='500913');
-- ITEMS TO SELL
DELETE FROM `npc_vendor` WHERE (`entry`='500913');
INSERT INTO `npc_vendor` (`entry`, `item`) VALUES ('500913', '49908'); -- Primordial Saronite
UPDATE `item_template` SET `BuyPrice`='1000000' WHERE (`entry`='49908'); 


INSERT INTO `npc_vendor` (`entry`, `item`) VALUES ('500913', '36910'); -- Titanium Ore
UPDATE `item_template` SET `BuyPrice`='220000' WHERE (`entry`='36910'); 

INSERT INTO `npc_vendor` (`entry`, `item`) VALUES ('500913', '36912'); -- Saronite Ore
UPDATE `item_template` SET `BuyPrice`='1000000' WHERE (`entry`='36912');

INSERT INTO `npc_vendor` (`entry`, `item`) VALUES ('500913', '10620'); -- Thorium Ore
UPDATE `item_template` SET `BuyPrice`='200000' WHERE (`entry`='10620');

INSERT INTO `npc_vendor` (`entry`, `item`) VALUES ('500913', '33568'); -- Borean Leather
UPDATE `item_template` SET `BuyPrice`='220000' WHERE (`entry`='33568');

INSERT INTO `npc_vendor` (`entry`, `item`) VALUES ('500913', '44128'); -- Arctic Fur
UPDATE `item_template` SET `BuyPrice`='230000' WHERE (`entry`='44128');

INSERT INTO `npc_vendor` (`entry`, `item`) VALUES ('500913', '23572'); -- Primal Nether
UPDATE `item_template` SET `BuyPrice`='2500000' WHERE (`entry`='23572'); -- COST IN COPPER (DEFAULT 5000)

INSERT INTO `npc_vendor` (`entry`, `item`) VALUES ('500913', '30183'); -- Nether Vortex
UPDATE `item_template` SET `BuyPrice`='5000000' WHERE (`entry`='30183'); -- COST IN COPPER (DEFAULT 5000)

INSERT INTO `npc_vendor` (`entry`, `item`) VALUES ('500913', '43102'); -- Frozen Orb
UPDATE `item_template` SET `BuyPrice`='8000000' WHERE (`entry`='43102'); -- COST IN COPPER (DEFAULT 5000)

INSERT INTO `npc_vendor` (`entry`, `item`) VALUES ('500913', '45087'); -- Runed orb
UPDATE `item_template` SET `BuyPrice`='25000000' WHERE (`entry`='45087'); -- COST IN COPPER (DEFAULT 5000)

INSERT INTO `npc_vendor` (`entry`, `item`) VALUES ('500913', '47556'); -- Crusader Orb
UPDATE `item_template` SET `BuyPrice`='40000000' WHERE (`entry`='47556'); -- COST IN COPPER (DEFAULT 5000)

INSERT INTO `npc_vendor` (`entry`, `item`) VALUES ('500913', '49908'); -- Primordial Saronite
UPDATE `item_template` SET `BuyPrice`='80000000' WHERE (`entry`='49908'); -- COST IN COPPER (DEFAULT 5000)

INSERT INTO `npc_vendor` (`entry`, `item`) VALUES ('500913', '11382'); -- Blood of the Mountain
UPDATE `item_template` SET `BuyPrice`='10000000' WHERE (`entry`='11382'); -- COST IN COPPER (DEFAULT 5000)

INSERT INTO `npc_vendor` (`entry`, `item`) VALUES ('500913', '12363'); -- Arcane Crystal
UPDATE `item_template` SET `BuyPrice`='2500000' WHERE (`entry`='12363'); -- COST IN COPPER (DEFAULT 5000)

INSERT INTO `npc_vendor` (`entry`, `item`) VALUES ('500913', '11370'); -- Dark Iron Ore
UPDATE `item_template` SET `BuyPrice`='250000' WHERE (`entry`='11370'); -- COST IN COPPER (DEFAULT 5000)

INSERT INTO `npc_vendor` (`entry`, `item`) VALUES ('500913', '36910'); -- Titanium Ore
UPDATE `item_template` SET `BuyPrice`='1500000' WHERE (`entry`='36910'); -- COST IN COPPER (DEFAULT 5000)

INSERT INTO `npc_vendor` (`entry`, `item`) VALUES ('500913', '10620'); -- Thorium Ore
UPDATE `item_template` SET `BuyPrice`='250000' WHERE (`entry`='10620'); -- COST IN COPPER (DEFAULT 5000)

INSERT INTO `npc_vendor` (`entry`, `item`) VALUES ('500913', '33568'); -- Borean Leather
UPDATE `item_template` SET `BuyPrice`='500000' WHERE (`entry`='33568'); -- COST IN COPPER (DEFAULT 5000)

INSERT INTO `npc_vendor` (`entry`, `item`) VALUES ('500913', '21887'); -- Knothide Leather
UPDATE `item_template` SET `BuyPrice`='250000' WHERE (`entry`='21887'); -- COST IN COPPER (DEFAULT 5000)

INSERT INTO `npc_vendor` (`entry`, `item`) VALUES ('500913', '44128'); -- Arctic Fur
UPDATE `item_template` SET `BuyPrice`='5000000' WHERE (`entry`='44128'); -- COST IN COPPER (DEFAULT 5000)

INSERT INTO `npc_vendor` (`entry`, `item`) VALUES ('500913', '18335'); -- Pristine Black Diamond
UPDATE `item_template` SET `BuyPrice`='5000000' WHERE (`entry`='18335'); -- COST IN COPPER (DEFAULT 5000)

INSERT INTO `npc_vendor` (`entry`, `item`) VALUES ('500913', '34057'); -- Abyss Crystal
UPDATE `item_template` SET `BuyPrice`='1000000' WHERE (`entry`='34057'); -- COST IN COPPER (DEFAULT 5000)

INSERT INTO `npc_vendor` (`entry`, `item`) VALUES ('500913', '34052'); -- Dream Shard
UPDATE `item_template` SET `BuyPrice`='1500000' WHERE (`entry`='34052'); -- COST IN COPPER (DEFAULT 5000)

INSERT INTO `npc_vendor` (`entry`, `item`) VALUES ('500913', '22450'); -- Void Crystal
UPDATE `item_template` SET `BuyPrice`='500000' WHERE (`entry`='22450'); -- COST IN COPPER (DEFAULT 5000)

INSERT INTO `npc_vendor` (`entry`, `item`) VALUES ('500913', '13468'); -- Black Lotus
UPDATE `item_template` SET `BuyPrice`='500000' WHERE (`entry`='13468'); -- COST IN COPPER (DEFAULT 5000)

INSERT INTO `npc_vendor` (`entry`, `item`) VALUES ('500913', '22794'); -- Fel Lotus
UPDATE `item_template` SET `BuyPrice`='1000000' WHERE (`entry`='22794'); -- COST IN COPPER (DEFAULT 5000)

INSERT INTO `npc_vendor` (`entry`, `item`) VALUES ('500913', '8831'); -- Purple Lotus
UPDATE `item_template` SET `BuyPrice`='100000' WHERE (`entry`='8831'); -- COST IN COPPER (DEFAULT 5000)

INSERT INTO `npc_vendor` (`entry`, `item`) VALUES ('500913', '36908'); -- Frost Lotus
UPDATE `item_template` SET `BuyPrice`='1000000' WHERE (`entry`='36908'); -- COST IN COPPER (DEFAULT 5000)

INSERT INTO `npc_vendor` (`entry`, `item`) VALUES ('500913', '36905'); -- Lichbloom
UPDATE `item_template` SET `BuyPrice`='250000' WHERE (`entry`='36905'); -- COST IN COPPER (DEFAULT 5000)

INSERT INTO `npc_vendor` (`entry`, `item`) VALUES ('500913', '36906'); -- Icethorn
UPDATE `item_template` SET `BuyPrice`='250000' WHERE (`entry`='36906'); -- COST IN COPPER (DEFAULT 5000)

INSERT INTO `npc_vendor` (`entry`, `item`) VALUES ('500913', '37921'); -- Deadnettle
UPDATE `item_template` SET `BuyPrice`='100000' WHERE (`entry`='37921'); -- COST IN COPPER (DEFAULT 5000)

INSERT INTO `npc_vendor` (`entry`, `item`) VALUES ('500913', '36904'); -- Tiger Lily
UPDATE `item_template` SET `BuyPrice`='250000' WHERE (`entry`='36904'); -- COST IN COPPER (DEFAULT 5000)

INSERT INTO `npc_vendor` (`entry`, `item`) VALUES ('500913', '36903'); -- Adder's Tongue
UPDATE `item_template` SET `BuyPrice`='250000' WHERE (`entry`='36903'); -- COST IN COPPER (DEFAULT 5000)

INSERT INTO `npc_vendor` (`entry`, `item`) VALUES ('500913', '36901'); -- Adder's Tongue
UPDATE `item_template` SET `BuyPrice`='250000' WHERE (`entry`='36901'); -- COST IN COPPER (DEFAULT 5000)

INSERT INTO `npc_vendor` (`entry`, `item`) VALUES ('500913', '41805'); -- Borean Man O' War
UPDATE `item_template` SET `BuyPrice`='50000' WHERE (`entry`='41805'); -- COST IN COPPER (DEFAULT 5000)

INSERT INTO `npc_vendor` (`entry`, `item`) VALUES ('500913', '36909'); -- Cobalt Ore
UPDATE `item_template` SET `BuyPrice`='500000' WHERE (`entry`='36909'); -- COST IN COPPER (DEFAULT 5000)

INSERT INTO `npc_vendor` (`entry`, `item`) VALUES ('500913', '50379'); -- Battered Hilt Alliance
UPDATE `item_template` SET `BuyPrice`='100000000' WHERE (`entry`='50379'); -- COST IN COPPER (DEFAULT 5000)
UPDATE `item_template` SET `FlagsExtra`='6' WHERE (`entry`='50379');
UPDATE `npc_vendor` SET `ExtendedCost`='2743' WHERE (`entry`='500913') AND (`item`='50379') AND (`ExtendedCost`='0');
UPDATE `item_template` SET `BuyPrice`='1000000000' WHERE (`entry`='50379');

INSERT INTO `npc_vendor` (`entry`, `item`) VALUES ('500913', '50380'); -- Battered Hilt Horde
UPDATE `item_template` SET `BuyPrice`='100000000' WHERE (`entry`='50380'); -- COST IN COPPER
UPDATE `item_template` SET `FlagsExtra`='5' WHERE (`entry`='50380');
UPDATE `npc_vendor` SET `ExtendedCost`='2743' WHERE (`entry`='500913') AND (`item`='50380') AND (`ExtendedCost`='0');
UPDATE `item_template` SET `BuyPrice`='1000000000' WHERE (`entry`='50380');

INSERT INTO `npc_vendor` (`entry`, `item`) VALUES ('500913', '37377'); -- Netherbreath Spellblade
INSERT INTO `npc_vendor` (`entry`, `item`) VALUES ('500913', '37162'); -- Bulwark of the Noble Protector
INSERT INTO `npc_vendor` (`entry`, `item`) VALUES ('500913', '37291'); -- Ancient Dragon Spirit Cape
INSERT INTO `npc_vendor` (`entry`, `item`) VALUES ('500913', '43285'); -- Amulet of the Spell Flinger
INSERT INTO `npc_vendor` (`entry`, `item`) VALUES ('500913', '37660'); -- Forge Ember
INSERT INTO `npc_vendor` (`entry`, `item`) VALUES ('500913', '37873'); -- Mark of the War Prisoner
INSERT INTO `npc_vendor` (`entry`, `item`) VALUES ('500913', '37177'); -- Wand of the San'layn
INSERT INTO `npc_vendor` (`entry`, `item`) VALUES ('500913', '37718'); -- Temple Crystal Fragment
INSERT INTO `npc_vendor` (`entry`, `item`) VALUES ('500913', '37651'); -- The Prospector's Prize
INSERT INTO `npc_vendor` (`entry`, `item`) VALUES ('500913', '37732'); -- Spectral Seal of the Prophet
-- we need to set some prices for these lvl 200 caster items (blue)


-- INSERT INTO `npc_vendor` (`entry`, `item`) VALUES ('500913', '49623'); -- Shadowmourne
-- UPDATE `item_template` SET `BuyPrice`='2500000000000' WHERE (`entry`='49623'); -- COST IN COPPER

INSERT INTO `npc_vendor` (`entry`, `item`) VALUES ('500913', '36907'); -- Talandra's Rose
UPDATE `item_template` SET `BuyPrice`='500000' WHERE (`entry`='36907'); -- COST IN COPPER

INSERT INTO `npc_vendor` (`entry`, `item`) VALUES ('500913', '17204'); -- Eye of Sulfuras
UPDATE `item_template` SET `BuyPrice`='50000000' WHERE (`entry`='17204'); -- COST IN COPPER

INSERT INTO `npc_vendor` (`entry`, `item`) VALUES ('500913', '18564'); -- Bindings of the Windseeker right
UPDATE `item_template` SET `BuyPrice`='50000000' WHERE (`entry`='18564'); -- COST IN COPPER

INSERT INTO `npc_vendor` (`entry`, `item`) VALUES ('500913', '18563'); -- Bindings of the Windseeker left
UPDATE `item_template` SET `BuyPrice`='50000000' WHERE (`entry`='18563'); -- COST IN COPPER

INSERT INTO `npc_vendor` (`entry`, `item`) VALUES ('500913', '19872'); -- Swift Razzashi Raptor
UPDATE `item_template` SET `BuyPrice`='100000000' WHERE (`entry`='19872'); -- COST IN COPPER

INSERT INTO `npc_vendor` (`entry`, `item`) VALUES ('500913', '19902'); -- Swift Zulian Tiger
UPDATE `item_template` SET `BuyPrice`='100000000' WHERE (`entry`='19902'); -- COST IN COPPER

INSERT INTO `npc_vendor` (`entry`, `item`) VALUES ('500913', '19902'); -- Deathcharger's Reins
UPDATE `item_template` SET `BuyPrice`='200000000' WHERE (`entry`='19902'); -- COST IN COPPER

INSERT INTO `npc_vendor` (`entry`, `item`) VALUES ('500913', '30480'); -- Fiery Warhorse's Reins
UPDATE `item_template` SET `BuyPrice`='200000000' WHERE (`entry`='30480'); -- COST IN COPPER

INSERT INTO `npc_vendor` (`entry`, `item`) VALUES ('500913', '12302'); -- Reins of the Ancient Frostsaber
UPDATE `item_template` SET `BuyPrice`='50000000' WHERE (`entry`='12302'); -- COST IN COPPER

INSERT INTO `npc_vendor` (`entry`, `item`) VALUES ('500913', '12351'); -- Horn of the Arctic Wolf
UPDATE `item_template` SET `BuyPrice`='50000000' WHERE (`entry`='12351'); -- COST IN COPPER

INSERT INTO `npc_vendor` (`entry`, `item`) VALUES ('500913', '13328'); -- Black Ram
UPDATE `item_template` SET `BuyPrice`='50000000' WHERE (`entry`='13328'); -- COST IN COPPER

INSERT INTO `npc_vendor` (`entry`, `item`) VALUES ('500913', '12353'); -- White Stallion Bridle
UPDATE `item_template` SET `BuyPrice`='50000000' WHERE (`entry`='12353'); -- COST IN COPPER

INSERT INTO `npc_vendor` (`entry`, `item`) VALUES ('500913', '12354'); -- Palomino Bridle
UPDATE `item_template` SET `BuyPrice`='50000000' WHERE (`entry`='12354'); -- COST IN COPPER

INSERT INTO `npc_vendor` (`entry`, `item`) VALUES ('500913', '13327'); -- Icy Blue Mechanostrider Mod A
UPDATE `item_template` SET `BuyPrice`='50000000' WHERE (`entry`='13327'); -- COST IN COPPER

INSERT INTO `npc_vendor` (`entry`, `item`) VALUES ('500913', '8586'); -- Whistle of the Mottled Red Raptor
UPDATE `item_template` SET `BuyPrice`='50000000' WHERE (`entry`='8586'); -- COST IN COPPER

INSERT INTO `npc_vendor` (`entry`, `item`) VALUES ('500913', '15293'); -- Teal Kodo
UPDATE `item_template` SET `BuyPrice`='50000000' WHERE (`entry`='15293'); -- COST IN COPPER

INSERT INTO `npc_vendor` (`entry`, `item`) VALUES ('500913', '13317'); -- Whistle of the Ivory Raptor
UPDATE `item_template` SET `BuyPrice`='50000000' WHERE (`entry`='13317'); -- COST IN COPPER

INSERT INTO `npc_vendor` (`entry`, `item`) VALUES ('500913', '12330'); -- Horn of the Red Wolf
UPDATE `item_template` SET `BuyPrice`='50000000' WHERE (`entry`='12330'); -- COST IN COPPER

INSERT INTO `npc_vendor` (`entry`, `item`) VALUES ('500913', '45693'); -- Mimiron's Head
UPDATE `item_template` SET `BuyPrice`='200000000' WHERE (`entry`='45693'); -- COST IN COPPER

INSERT INTO `npc_vendor` (`entry`, `item`) VALUES ('500913', '36907'); -- Talandra's Rose
UPDATE `item_template` SET `BuyPrice`='200000' WHERE (`entry`='36907'); -- COST IN COPPER

INSERT INTO `npc_vendor` (`entry`, `item`) VALUES ('500913', '35513'); -- Swift White Hawkstrider
UPDATE `item_template` SET `BuyPrice`='75000000' WHERE (`entry`='35513'); -- COST IN COPPER

INSERT INTO `npc_vendor` (`entry`, `item`) VALUES ('500913', '13335'); -- Deathcharger's Reins
UPDATE `item_template` SET `BuyPrice`='200000000' WHERE (`entry`='13335'); -- COST IN COPPER

INSERT INTO `npc_vendor` (`entry`, `item`) VALUES ('500913', '43516'); -- Brutal Nether Drake
UPDATE `item_template` SET `BuyPrice`='50000000' WHERE (`entry`='43516'); -- COST IN COPPER

INSERT INTO `npc_vendor` (`entry`, `item`) VALUES ('500913', '46708'); -- Deadly Gladiator's Frost Wyrm
UPDATE `item_template` SET `BuyPrice`='50000000' WHERE (`entry`='46708'); -- COST IN COPPER

INSERT INTO `npc_vendor` (`entry`, `item`) VALUES ('500913', '46171'); -- Furious Gladiator's Frost Wyrm
UPDATE `item_template` SET `BuyPrice`='50000000' WHERE (`entry`='46171'); -- COST IN COPPER

INSERT INTO `npc_vendor` (`entry`, `item`) VALUES ('500913', '46767'); -- Warbot Ignition Key
UPDATE `item_template` SET `BuyPrice`='5000000' WHERE (`entry`='46767'); -- COST IN COPPER

INSERT INTO `npc_vendor` (`entry`, `item`) VALUES ('500913', '50818'); -- Invincible's Reins
UPDATE `item_template` SET `BuyPrice`='500000000' WHERE (`entry`='50818'); -- COST IN COPPER

INSERT INTO `npc_vendor` (`entry`, `item`) VALUES ('500913', '34092'); -- Merciless Nether Drake
UPDATE `item_template` SET `BuyPrice`='50000000' WHERE (`entry`='34092'); -- COST IN COPPER

INSERT INTO `npc_vendor` (`entry`, `item`) VALUES ('500913', '30609'); -- Swift Nether Drake
UPDATE `item_template` SET `BuyPrice`='50000000' WHERE (`entry`='30609'); -- COST IN COPPER

INSERT INTO `npc_vendor` (`entry`, `item`) VALUES ('500913', '37676'); -- Vengeful Nether Drake
UPDATE `item_template` SET `BuyPrice`='50000000' WHERE (`entry`='37676'); -- COST IN COPPER

INSERT INTO `npc_vendor` (`entry`, `item`) VALUES ('500913', '38658'); -- Vampiric Batling
UPDATE `item_template` SET `BuyPrice`='50000000' WHERE (`entry`='38658'); -- COST IN COPPER

INSERT INTO `npc_vendor` (`entry`, `item`) VALUES ('500913', '54651'); -- Gnomeregan Pride
UPDATE `item_template` SET `BuyPrice`='50000000' WHERE (`entry`='54651'); -- COST IN COPPER

INSERT INTO `npc_vendor` (`entry`, `item`) VALUES ('500913', '54653'); -- Darkspear Pride
UPDATE `item_template` SET `BuyPrice`='50000000' WHERE (`entry`='54653'); -- COST IN COPPER

INSERT INTO `npc_vendor` (`entry`, `item`) VALUES ('500913', '6338'); -- Silver Rod
UPDATE `item_template` SET `BuyPrice`='10000' WHERE (`entry`='6338'); -- COST IN COPPER

INSERT INTO `npc_vendor` (`entry`, `item`) VALUES ('500913', '11128'); -- Golden Rod
UPDATE `item_template` SET `BuyPrice`='50000' WHERE (`entry`='11128'); -- COST IN COPPER

INSERT INTO `npc_vendor` (`entry`, `item`) VALUES ('500913', '11144'); -- Truesilver Rod
UPDATE `item_template` SET `BuyPrice`='100000' WHERE (`entry`='11144'); -- COST IN COPPER

INSERT INTO `npc_vendor` (`entry`, `item`) VALUES ('500913', '16206'); -- Arcanite Rod
UPDATE `item_template` SET `BuyPrice`='250000' WHERE (`entry`='16206'); -- COST IN COPPER

INSERT INTO `npc_vendor` (`entry`, `item`) VALUES ('500913', '25843'); -- Fel Iron Rod
UPDATE `item_template` SET `BuyPrice`='500000' WHERE (`entry`='25843'); -- COST IN COPPER

INSERT INTO `npc_vendor` (`entry`, `item`) VALUES ('500913', '25844'); -- Adamantite Rod
UPDATE `item_template` SET `BuyPrice`='1000000' WHERE (`entry`='25844'); -- COST IN COPPER

INSERT INTO `npc_vendor` (`entry`, `item`) VALUES ('500913', '25845'); -- Eternium Rod
UPDATE `item_template` SET `BuyPrice`='2000000' WHERE (`entry`='25845'); -- COST IN COPPER

INSERT INTO `npc_vendor` (`entry`, `item`) VALUES ('500913', '41745'); -- Titanium Rod
UPDATE `item_template` SET `BuyPrice`='5000000' WHERE (`entry`='41745'); -- COST IN COPPER

UPDATE `item_template` SET `BuyPrice`='110000000' WHERE (`entry`='49908');
UPDATE `item_template` SET `BuyPrice`='180000' WHERE (`entry`='38558');


-- some lvl 200 weapons
INSERT INTO `npc_vendor` (`entry`, `item`) VALUES ('500913', '39271'); 
INSERT INTO `npc_vendor` (`entry`, `item`) VALUES ('500913', '45078');
INSERT INTO `npc_vendor` (`entry`, `item`) VALUES ('500913', '45077'); 
INSERT INTO `npc_vendor` (`entry`, `item`) VALUES ('500913', '49120'); 
INSERT INTO `npc_vendor` (`entry`, `item`) VALUES ('500913', '45074'); 
INSERT INTO `npc_vendor` (`entry`, `item`) VALUES ('500913', '45205'); 
INSERT INTO `npc_vendor` (`entry`, `item`) VALUES ('500913', '45203'); 
INSERT INTO `npc_vendor` (`entry`, `item`) VALUES ('500913', '39281'); 
INSERT INTO `npc_vendor` (`entry`, `item`) VALUES ('500913', '39394'); 
INSERT INTO `npc_vendor` (`entry`, `item`) VALUES ('500913', '45128'); 
INSERT INTO `npc_vendor` (`entry`, `item`) VALUES ('500913', '43284'); 
INSERT INTO `npc_vendor` (`entry`, `item`) VALUES ('500913', '39296'); 
INSERT INTO `npc_vendor` (`entry`, `item`) VALUES ('500913', '44504'); 

UPDATE `item_template` SET `BuyPrice`='20000' WHERE (`entry`='39271');
UPDATE `item_template` SET `BuyPrice`='20000' WHERE (`entry`='45078');
UPDATE `item_template` SET `BuyPrice`='20000' WHERE (`entry`='45077');
UPDATE `item_template` SET `BuyPrice`='20000' WHERE (`entry`='49120');
UPDATE `item_template` SET `BuyPrice`='20000' WHERE (`entry`='45074');
UPDATE `item_template` SET `BuyPrice`='20000' WHERE (`entry`='45205');
UPDATE `item_template` SET `BuyPrice`='20000' WHERE (`entry`='45203');
UPDATE `item_template` SET `BuyPrice`='20000' WHERE (`entry`='39281');
UPDATE `item_template` SET `BuyPrice`='20000' WHERE (`entry`='39394');
UPDATE `item_template` SET `BuyPrice`='20000' WHERE (`entry`='45128');
UPDATE `item_template` SET `BuyPrice`='20000' WHERE (`entry`='43284');
UPDATE `item_template` SET `BuyPrice`='20000' WHERE (`entry`='39296');
UPDATE `item_template` SET `BuyPrice`='20000' WHERE (`entry`='44504');