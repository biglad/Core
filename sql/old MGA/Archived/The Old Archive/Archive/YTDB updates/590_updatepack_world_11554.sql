# Y2kCat
ALTER TABLE db_version_ytdb CHANGE COLUMN 589_FIX_11463 590_FIX_11554 bit;
REPLACE INTO `db_version_ytdb` (`version`) VALUES ('590_FIX_11554');

# TC
DELETE FROM vehicle_template_accessory WHERE entry=29625 AND seat_id=1;
INSERT IGNORE INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(13,0,51590,0,18,1,23837,0,0,'','Spell 51590 targets only ELM General Porpose Bunny');
INSERT IGNORE INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(13,0,43151,0,18,1,24021,0,0,'','Spell 43151 targets only ELM General Purpose Bunny (scale x0.01)');
INSERT IGNORE INTO `conditions` (`SourceTypeOrReferenceId`, `SourceEntry`,`ConditionTypeOrReference`, `ConditionValue1`, `ConditionValue2`, `Comment`) VALUES 
(18,33581,24,1,24238, 'Only use Insult on Bjorn Halgurdsson');
INSERT IGNORE INTO `creature_template_addon` (`entry`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES
(15351,0,0,1,0, NULL), -- Alliance Brigadier General
(16128,0,0,1,0, NULL), -- Rhonin
(20735,0,0,1,0, NULL), -- Archmage Lan'dalock
(23472,0,0,1,0, NULL), -- World Trigger (Large AOI, Not Immune PC/NPC)
(25171,0,0,1,0, NULL), -- Invisible Stalker (Scale x0.5)
(26043,0,0,1,0, NULL), -- Steam Burst
(26119,0,0,1,0, NULL), -- Phoenix Hatchling
(27047,0,0,1,0, NULL), -- Invisible Stalker (Floating Only)
(27870,0,0,1,0, NULL), -- Wild Flower
(28160,0,0,257,0, NULL), -- Archmage Pentarus
(28332,0,0,1,0, NULL), -- Generic Trigger LAB (Large AOI)
(28682,0,0,1,0, NULL), -- Inzi Charmlight
(28685,0,0,1,0, NULL), -- Narisa Redgold
(28686,0,0,1,0, NULL), -- Caliel Brightwillow
(28687,0,0,257,0, NULL), -- Amisi Azuregaze
(28691,0,0,257,0, NULL), -- Susana Averoy
(28692,0,0,257,0, NULL), -- "Red" Jack Findle
(28693,0,0,257,0, NULL), -- Enchanter Nalthanis
(28694,0,0,257,0, NULL), -- Alard Schmied
(28697,0,0,257,0, NULL), -- Timofey Oshenko
(28698,0,0,257,0, NULL), -- Jedidiah Handers
(28699,0,0,257,0, NULL), -- Charles Worth
(28701,0,0,257,0, NULL), -- Timothy Jones
(28702,0,0,257,0, NULL), -- Professor Pallin
(28703,0,0,257,0, NULL), -- Linzy Blackbolt
(28704,0,0,257,0, NULL), -- Dorothy Egan
(28705,0,0,1,0, NULL), -- Katherine Lee
(28706,0,0,257,0, NULL), -- Olisarra the Kind
(28707,0,0,257,0, NULL), -- Angelo Pescatore
(28708,0,0,257,0, NULL), -- Kizi Copperclip
(28714,0,0,257,0, NULL), -- Ildine Sorrowspear
(28715,0,0,257,0, NULL), -- Endora Moorehead
(28716,0,0,257,0, NULL), -- Palja Amboss
(28718,0,0,257,0, NULL), -- Ranid Glowergold
(28721,0,0,257,0, NULL), -- Tiffany Cartier
(28722,0,0,257,0, NULL), -- Bryan Landers
(28723,0,0,257,0, NULL), -- Larana Drome
(28725,0,0,257,0, NULL), -- Patricia Egan
(28726,0,0,257,0, NULL), -- Dominique Stefano
(28727,0,0,257,0, NULL), -- Edward Egan
(28728,0,0,257,0, NULL), -- Dorian Fines
(28742,0,0,257,0, NULL), -- Marcia Chase
(28774,0,0,257,0, NULL), -- Andrew Matthews
(28776,0,0,257,0, NULL), -- Elizabeth Ross
(28956,0,0,257,0, NULL), -- Warcaster Fanoraithe
(28958,0,0,257,0, NULL), -- Jessa Weaver
(28989,0,0,258,0, NULL), -- Aemara
(28990,0,0,257,0, NULL), -- Anthony Durain
(28991,0,0,257,0, NULL), -- Valaden Silverblade
(28992,0,0,257,0, NULL), -- Valerie Langrom
(28993,0,0,1,0, NULL), -- Aerith Primrose
(28994,0,0,257,0, NULL), -- Abra Cadabra
(28995,0,0,257,0, NULL), -- Paldesse
(28997,0,0,257,0, NULL), -- Griselda Hunderland
(29049,0,0,1,0, NULL), -- Arille Azuregaze
(29156,0,0,257,0, NULL), -- Archmage Celindra
(29238,0,0,1,0, NULL), -- Scourge Haunt
(29254,0,0,1,0, NULL), -- Silver Covenant Guardian Mage
(29255,0,0,1,0, NULL), -- Sunreaver Guardian Mage
(29261,0,0,2,0, NULL), -- Windle Sparkshine
(29325,0,0,1,379, NULL), -- Torgo the Younger
(29476,0,0,258,0, NULL), -- Dagna Flintlock
(29478,0,0,257,0, NULL), -- Jepetto Joybuzz
(29491,0,0,257,0, NULL), -- Karandonna
(29493,0,0,257,0, NULL), -- Jarold Puller
(29494,0,0,257,0, NULL), -- Shen Kang Cheng
(29495,0,0,257,0, NULL), -- Norvin Alderman
(29496,0,0,257,0, NULL), -- Kerta the Bold
(29497,0,0,257,69, NULL), -- Walther Whiteford
(29499,0,0,257,0, NULL), -- Bartram Haller
(29505,0,0,257,233, NULL), -- Imindril Spearsong
(29506,0,0,257,0, NULL), -- Orland Schaeffer
(29509,0,0,257,0, NULL), -- Namha Moonwater
(29510,0,0,257,0, NULL), -- Linna Bruder
(29511,0,0,257,0, NULL), -- Lalla Brightweave
(29512,0,0,257,69, NULL), -- Ainderu Summerleaf
(29513,0,0,257,0, NULL), -- Didi the Wrench
(29514,0,0,257,0, NULL), -- Findle Whistlesteam
(29523,0,0,257,0, NULL), -- Bragund Brightlink
(29527,0,0,257,0, NULL), -- Orton Bennet
(29528,0,0,257,0, NULL), -- Debbi Moore
(29529,0,0,257,0, NULL), -- Ninsianna
(29530,0,0,257,0, NULL), -- Binzik Goldbook
(29532,0,0,257,0, NULL), -- Ajay Green
(29533,0,0,1,0, NULL), -- Schembari "Uncle Sal" Shearbolt
(29534,0,0,1,0, NULL), -- "Baroness" Llana
(29535,0,0,257,0, NULL), -- Alchemist Cinesra
(29537,0,0,257,0, NULL), -- Darahir
(29538,0,0,257,0, NULL), -- Hexil Garrot
(29547,0,0,257,0, NULL), -- Applebough
(29548,0,0,257,0, NULL), -- Aimee
(29568,0,0,1,0, NULL), -- "Techs" Rickard Rustbolt
(29628,0,0,257,0, NULL), -- Angelique Butler
(29636,0,0,257,0, NULL), -- Hagatha Moorehead
(29640,0,0,257,0, NULL), -- Josie Birch
(29641,0,0,257,0, NULL), -- Theresa Wolf
(29660,0,0,1,0, NULL), -- Grand Marauder Sai
(29665,0,0,1,0, NULL), -- Pazik "The Pick" Prylock
(29667,0,0,1,0, NULL), -- Warsong Gulch Portal
(29668,0,0,1,0, NULL), -- Arathi Basin Portal
(29669,0,0,1,0, NULL), -- Alterac Valley Portal
(29670,0,0,1,0, NULL), -- Eye of the Storm Portal
(29671,0,0,1,0, NULL), -- Strand of the Ancients Portal
(29673,0,0,1,0, NULL), -- Arathi Basin Portal
(29675,0,0,1,0, NULL), -- Eye of the Storm Portal
(29702,0,0,257,0, NULL), -- Chameli Banaphash
(29703,0,0,257,0, NULL), -- Sheddle Glossgleam
(29714,0,0,1,0, NULL), -- Lucian Trias
(29715,0,0,257,0, NULL), -- Fialla Sweetberry
(29716,0,0,257,0, NULL), -- Clockwork Assistant
(29763,0,0,1,0, NULL), -- Cosmetic Totem Alliance Air
(29764,0,0,1,0, NULL), -- Cosmetic Totem Alliance Earth
(29765,0,0,1,0, NULL), -- Cosmetic Totem Alliance Fire
(29766,0,0,1,0, NULL), -- Cosmetic Totem Alliance Water
(29777,0,0,1,0, NULL), -- Cosmetic Mechanical Gorilla
(29780,0,0,1,0, NULL), -- Cosmetic Mechanical Chicken
(29781,0,0,1,0, NULL), -- Cosmetic Mechanical Squirrel
(29782,0,0,1,0, NULL), -- Cosmetic Mechanical Sheep
(29783,0,0,1,0, NULL), -- Cosmetic Clockwork Robot
(29784,0,0,1,0, NULL), -- Cosmetic Clockwork Robot (Blue)
(29785,0,0,1,0, NULL), -- Cosmetic Clockwork Robot (Red)
(29802,0,0,1,0, NULL), -- Cosmetic Toy Plane
(29807,0,0,1,0, NULL), -- [DND] Dalaran Toy Store Plane String Hook
(29812,0,0,1,0, NULL), -- [DND] Dalaran Toy Store Plane String Bunny
(30094,0,0,1,0, NULL), -- Dalaran Sewer Rat
(30095,0,0,1,0, NULL), -- Dalaran Sewer Turtle
(30104,0,1,257,0, NULL), -- Adamman the Trader
(30115,0,0,2,0, NULL), -- Vereesa Windrunner
(30116,0,0,1,0, NULL), -- Archmage Aethas Sunreaver
(30117,0,0,1,0, NULL), -- Archmage Modera
(30137,0,0,1,0, NULL), -- Shifty Vickers
(30164,0,0,133121,0, NULL), -- Cavedweller Worg
(30352,0,0,256,0, NULL), -- Skybreaker Marine
(30490,0,0,1,0, NULL), -- Rin Duoctane
(30604,0,0,257,0, NULL), -- Teller Almeida
(30605,0,0,257,0, NULL), -- Teller Gee
(30607,0,0,257,0, NULL), -- Teller Plushner
(30659,0,0,1,0, NULL), -- Violet Hold Guard
(30726,0,0,257,0, NULL), -- Archivist Betha
(30755,0,0,256,0, NULL), -- Kor'kron Reaver
(30885,0,0,1,0, NULL), -- Blazik Fireclaw
(31032,0,0,1,0, NULL), -- Derek Odds
(31080,0,0,1,0, NULL), -- Warden Alturas
(31081,0,0,1,0, NULL), -- Officer Van Rossem
(31228,0,0,1,0, NULL), -- Grove Walker
(31236,0,0,1,0, NULL), -- Dappled Stag
(31439,0,0,1,0, NULL), -- Archmage Timear
(31517,0,0,1,0, NULL), -- Dalaran Fountain Invis Stalker
(31557,0,0,1,0, NULL), -- Uda the Beast
(31580,0,0,1,0, NULL), -- Arcanist Ivrenne
(31643,0,0,1,0, NULL), -- Dalaran Well Teleport Bunny
(31730,0,0,1,0, NULL), -- Cosmetic Frog
(32169,0,0,1,0, NULL), -- Arcanist Braedin
(32170,0,0,1,0, NULL), -- Magister Surdiel
(32172,0,0,257,0, NULL), -- Harold Winston
(32216,0,0,257,0, NULL), -- Mei Francis
(32249,0,0,1,0, NULL), -- Worg Pup
(32265,0,50331648,1,0, NULL), -- Northrend Daily Dungeon Image Bunny
(32321,0,0,1,0, NULL), -- Green Warrior
(32322,0,0,1,0, NULL), -- Gold Warrior
(32328,0,0,1,0, NULL), -- [DND] Dalaran Sewer Arena - Controller - Death
(32329,0,0,1,0, NULL), -- Kanika Goldwell
(32330,0,0,1,0, NULL), -- Minzi the Minx
(32332,0,0,1,0, NULL), -- Ramik Slamwrench
(32333,0,0,1,0, NULL), -- "Dapper" Danik Blackshaft
(32334,0,0,1,0, NULL), -- Nixi Fireclaw
(32337,0,0,257,0, NULL), -- Christi Stockton
(32339,0,0,1,0, NULL), -- [DND] Dalaran Sewer Arena - Controller
(32340,0,0,1,0, NULL), -- Gold Shaman
(32342,0,0,1,0, NULL), -- Green Paladin
(32403,0,0,1,0, NULL), -- Sandra Bartan
(32411,0,0,257,0, NULL), -- Afsaneh Asrar
(32413,0,0,1,0, NULL), -- Isirami Fairwind
(32416,0,0,1,0, NULL), -- Stefen Cotter
(32421,0,0,1,0, NULL), -- Marcella Bloom
(32424,0,0,1,0, NULL), -- Laire Brewgold
(32425,0,0,1,0, NULL), -- Galkara the Assassin
(32426,0,0,1,0, NULL), -- Coira Longrifle
(32428,0,0,1,0, NULL), -- Underbelly Rat
(32435,0,0,1,0, NULL), -- Vern
(32441,0,0,1,0, NULL), -- Underbelly Croc
(32450,0,3,1,0, NULL), -- Badluck
(32451,0,0,257,0, NULL), -- Dalaran Citizen
(32466,0,0,1,0, NULL), -- Monstrous Underbelly Rat
(32470,0,0,1,0, NULL), -- Sewer Frog
(32509,0,0,257,0, NULL), -- Brammold Deepmine
(32514,0,0,257,0, NULL), -- Vanessa Sellers
(32515,0,0,257,0, NULL), -- Braeg Stoutbeard
(32516,0,3,257,0, NULL), -- Washed-Up Mage
(32606,0,0,1,0, NULL), -- [DND] Cosmetic Book
(32641,0,0,1,0, NULL), -- Drix Blackwrench
(32650,0,3,1,0, NULL), -- Wounded Dalaran Protector
(32651,0,7,1,0, NULL), -- Wounded Dalaran Shield Guard
(32652,0,3,1,0, NULL), -- Wounded Dalaran Watcher
(32653,0,7,1,0, NULL), -- Wounded Dalaran Serpent
(32664,0,0,1,0, NULL), -- Segacedi
(32668,0,0,257,0, NULL), -- Emi
(32669,0,0,257,0, NULL), -- Colin
(32675,0,0,257,0, NULL), -- Babagahnoosh the Grumpy
(32676,0,0,257,0, NULL), -- Grindle Firespark
(32677,0,0,257,0, NULL), -- Whirt the All-Knowing
(32678,0,0,257,0, NULL), -- Emeline Fizzlefry
(32679,0,0,257,0, NULL), -- Darthalia Ebonscorch
(32680,0,0,257,0, NULL), -- Fabioso the Fabulous
(32681,0,0,257,0, NULL), -- The Magnificent Merleaux
(32683,0,0,257,0, NULL), -- Grezla the Hag
(32684,0,0,257,0, NULL), -- Mona Everspring
(32685,0,0,257,0, NULL), -- Kitz Proudbreeze
(32686,0,0,257,0, NULL), -- Crafticus Mindbender
(32687,0,0,257,0, NULL), -- Linda Ann Kastinglow
(32688,0,0,257,0, NULL), -- Archmage Tenaj
(32689,0,0,257,0, NULL), -- Adorean Lew
(32690,0,0,257,0, NULL), -- Bitty Frostflinger
(32691,0,0,257,0, NULL), -- Magus Fansy Goodbringer
(32692,0,0,257,0, NULL), -- Arcanist Alec
(32693,0,0,257,0, NULL), -- Sabriana Sorrowgaze
(32709,0,0,1,0, NULL), -- Hunaka Greenhoof
(32711,0,0,1,0, NULL), -- Warp-Huntress Kula
(32721,0,0,1,0, NULL), -- Felcaster Virim
(32722,0,0,1,0, NULL), -- Warmage Lukems
(32723,0,0,257,0, NULL), -- Warmage Kath'leen
(32724,0,0,1,0, NULL), -- Warmage Mumplina
(32725,0,0,1,0, NULL), -- Warmage Silva
(32726,0,0,257,0, NULL), -- The Chooch
(32727,0,0,257,0, NULL), -- Natalie Tootiblare
(32728,0,0,257,0, NULL), -- Illusionist Karina
(32729,0,0,257,0, NULL), -- Lofwyr Le'Fleur
(32730,0,0,257,0, NULL), -- Goldlilly Gleamingfell
(32731,0,0,257,0, NULL), -- Metopious Loreseeker
(32732,0,0,257,0, NULL), -- Dorfus Alphamage
(32733,0,0,257,0, NULL), -- Joboba Mezbreaker
(32743,0,1,1,0, NULL), -- Willard Blauvelt
(32744,0,0,1,0, NULL), -- Bakor the Gangly
(32745,0,0,1,0, NULL), -- Amera Sky
(32746,0,0,1,0, NULL), -- Geffon the Unruly
(32747,0,0,1,0, NULL), -- Mendez Nightshadow
(32749,0,1,1,0, NULL), -- Tuff Gorehoof
(32751,0,0,1,0, NULL), -- Backbiter
(32843,0,0,1,0, NULL), -- Tabea
(32844,0,0,1,0, NULL), -- Apollo
(33026,0,0,1,0, NULL), -- Sarah Brady
(33027,0,0,257,0, NULL), -- Jessica Sellers
(33422,0,0,1,0, NULL), -- Unbound Seer
(33778,0,1,1,0, NULL), -- Tournament Hippogryph
(33936,0,0,1,0, NULL), -- Nargle Lashcord
(33937,0,0,1,0, NULL), -- Xazi Smolderpipe
(33938,0,0,1,0, NULL), -- Zom Bocom
(33964,0,0,1,0, NULL), -- Arcanist Firael
(34095,0,0,1,0, NULL), -- Trapjaw Rix
(34252,0,0,257,0, NULL), -- Dubin Clay
(34330,0,3,1,0, NULL), -- Jones
(34952,0,0,1,0, NULL), -- Isle of Conquest Portal
(34953,0,0,1,0, NULL), -- Isle of Conquest Portal
(34984,0,0,1,0, NULL), -- World Trigger (Not Floating)
(35471,0,0,1,0, NULL), -- Sorn Proudmane
(35494,0,0,1,0, NULL), -- Arcanist Miluria
(35496,0,0,257,0, NULL), -- Rueben Lauren
(35497,0,0,257,0, NULL), -- Rafael Langrom
(35498,0,0,257,0, NULL), -- Horace Hunderland
(35500,0,0,257,0, NULL), -- Matilda Brightlink
(35507,0,0,1,0, NULL), -- Enchanter Isian
(35608,0,0,1,0, NULL), -- [DND] Dalaran Argent Tournament Herald Bunny
(35790,0,0,257,0, NULL), -- Usuri Brightcoin
(35826,0,1,1,0, NULL), -- Kaye Toogie
(36506,0,0,1,0, NULL), -- Daros Moonlance
(36669,0,0,1,0, NULL), -- Arcanist Tybalin
(36774,0,0,1,0, NULL), -- Silver Covenant Agent
(36776,0,0,1,0, NULL), -- Sunreaver Agent
(36851,0,0,1,0, NULL), -- Aquanos
(36856,0,0,1,0, NULL), -- Shandy Glossgleam
(37221,0,0,1,0, NULL), -- Lady Jaina Proudmoore
(37225,0,0,0,0, NULL), -- Uther the Lightbringer
(37226,0,0,1,0, NULL), -- The Lich King
(37582,0,0,1,0, NULL), -- Archmage Koreln
(37704,0,0,1,0, NULL), -- Frostmourne Altar Bunny (Quel'Delar)
(37776,0,0,1,0, NULL), -- Apprentice Nelphi
(37780,0,0,2,0, NULL), -- Dark Ranger Vorel
(37849,0,50331648,0,0, NULL), -- Sartharion Image
(37906,0,50331648,1,0, NULL), -- Imprisoned Soul
(37942,0,0,1,0, NULL), -- Arcanist Uovril
(38112,0,0,1,0, NULL), -- Falric
(38113,0,0,1,0, NULL), -- Marwyn
(38172,0,0,1,0, NULL), -- Phantom Mage
(38173,0,0,1,0, NULL), -- Spectral Footman
(38175,0,0,1,0, NULL), -- Ghostly Priest
(38176,0,0,1,0, NULL), -- Tortured Rifleman
(38177,0,0,1,0, NULL), -- Shadowy Mercenary
(38567,0,0,1,0, NULL), -- Phantom Hallucination
(40160,31837,0,257,0, NULL), -- Frozo the Renowned
(7549,0,0,1,0, NULL); -- Tree Frog
DELETE FROM `creature_transport` WHERE `transport_entry`=192242 AND `npc_entry`=31261;
INSERT INTO `creature_transport` (`transport_entry`,`npc_entry`,`TransOffsetX`,`TransOffsetY`,`TransOffsetZ`,`TransOffsetO`,`emote`) VALUES
(192242,31261,-46.16626,12.04395,13.22064,1.437376,0); -- Brother Keltan abord the Skybreaker
INSERT IGNORE INTO `creature_template_addon` (`entry`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES
(28029,0,0,1,375, NULL), -- Argent Crusader
(28026,0,0,1,0, NULL); -- Rampaging Geist

SET @ENTRY := 23285; 
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY; 
UPDATE `creature` SET `spawndist`=20,`MovementType`=1 WHERE `id`=@ENTRY; 
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY; 
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(@ENTRY,0,0,1,1,0,100,1,0,0,0,0,11,29147,0,0,0,0,0,1,0,0,0,0,0,0,0,'Nethermine Burster - OOC - Cast Submerge Visual'), 
(@ENTRY,0,1,0,61,0,100,1,0,0,0,0,18,33554434,0,0,0,0,0,1,0,0,0,0,0,0,0,'Nethermine Burster - OOC - Set Unselectable and Unattackable Flags'), 
(@ENTRY,0,2,3,0,0,100,1,0,0,0,0,28,29147,0,0,0,0,0,1,0,0,0,0,0,0,0,'Nethermine Burster - On Aggro - Remove Submerge Visual'), 
(@ENTRY,0,3,4,61,0,100,0,0,0,0,0,19,33554434,0,0,0,0,0,1,0,0,0,0,0,0,0,'Nethermine Burster - On Aggro - Remove Unselectable and Unattackable Flags'), 
(@ENTRY,0,4,5,61,0,100,0,0,0,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Nethermine Burster - On Aggro - Prevent Combat Movement'), 
(@ENTRY,0,5,0,61,0,100,0,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Nethermine Burster - On Aggro - Set Phase 1'), 
(@ENTRY,0,6,7,0,1,100,0,1000,1000,2100,4500,11,31747,1,0,0,0,0,2,0,0,0,0,0,0,0,'Nethermine Burster - Combat - Cast Poison (Phase 1)'), 
(@ENTRY,0,7,0,61,1,100,0,0,0,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Nethermine Burster - Combat - Prevent Combat Movement (Phase 1)'), 
(@ENTRY,0,8,0,0,1,100,0,20400,20400,45000,50000,11,32738,1,0,0,0,0,2,0,0,0,0,0,0,0,'Nethermine Burster - Combat - Cast Bore (Phase 1)'), 
(@ENTRY,0,9,10,9,1,100,0,20,60,0,0,11,29147,0,0,0,0,0,1,0,0,0,0,0,0,0,'Nethermine Burster - At 20 - 60 Yards Range - Cast Submerge Visual (Phase 1)'),
(@ENTRY,0,10,11,61,1,100,0,0,0,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Nethermine Burster - At 20 - 60 Yards Range - Allow Combat Movement (Phase 1)'), 
(@ENTRY,0,11,0,61,1,100,0,0,0,0,0,22,2,0,0,0,0,0,1,0,0,0,0,0,0,0,'Nethermine Burster - At 20 - 60 Yards Range - Set Phase 2 (Phase 1)'), 
(@ENTRY,0,12,13,9,2,100,0,0,8,0,0,28,29147,0,0,0,0,0,1,0,0,0,0,0,0,0,'Nethermine Burster - At 0 - 8 Yards - Remove Submerge Visual (Phase 2)'), 
(@ENTRY,0,13,14,61,2,100,0,0,0,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Nethermine Burster - Combat - Prevent Combat Movement (Phase 2)'), 
(@ENTRY,0,14,15,61,2,100,0,0,8,0,0,19,33554434,0,0,0,0,0,1,0,0,0,0,0,0,0,'Nethermine Burster - At 0 - 8 Yards - Remove Unselectable and Unattackable Flags (Phase 2)'), 
(@ENTRY,0,15,0,61,2,100,0,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Nethermine Burster - At 20 - 60 Yards Range - Set Phase 1 (Phase 2)'),
(@ENTRY,0,16,0,2,0,100,1,0,10,0,0,11,32714,3,0,0,0,0,1,0,0,0,0,0,0,0,'Nethermine Burster - Health level - Cast Enrage self');
SET @ENTRY := 29129;
SET @AURA := 17327;
SET @SPELL1 := 37361;
SET @SPELL2 := 24050;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,23,0,100,0,@AURA,0,2000,2000,11,@AURA,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Lost Drakkari Spirit - Aura Spirit Particles not present - Add Aura Spirit Particles'),
(@ENTRY,0,1,2,4,0,100,1,0,0,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Lost Drakkari Spirit - On Aggro - Prevent Combat Movement'),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Lost Drakkari Spirit - On Aggro - Set Phase 1'),
(@ENTRY,0,3,0,0,1,100,0,0,0,1000,1000,11,@SPELL1,1,0,0,0,0,2,0,0,0,0,0,0,0,'Lost Drakkari Spirit - Combat - Cast Arcane Bolt (Phase 1)'),
(@ENTRY,0,4,5,3,1,100,0,15,0,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Lost Drakkari Spirit - Mana at 15% - Allow combat movement (Phase 1)'),
(@ENTRY,0,5,0,61,1,100,0,0,0,0,0,22,2,0,0,0,0,0,1,0,0,0,0,0,0,0,'Lost Drakkari Spirit - Mana at 15% - Set phase 2 (Phase 1)'),
(@ENTRY,0,6,0,9,1,100,0,35,80,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Lost Drakkari Spirit - At 35 yards - Allow combat movement (Phase 1)'),
(@ENTRY,0,7,0,9,1,100,0,0,15,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Lost Drakkari Spirit - Below 15 yards - Prevent combat movement (Phase 1)'),
(@ENTRY,0,8,0,3,2,100,0,100,30,100,100,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Lost Drakkari Spirit - Mana above 30% - Set phase 1 (Phase 2)'),
(@ENTRY,0,9,0,0,0,100,0,10000,16000,15000,18000,11,@SPELL2,1,0,0,0,0,2,0,0,0,0,0,0,0,'Lost Drakkari Spirit - Combat - Cast Spirit Burst');
SET @ENTRY   := 28411; -- NPC entry
SET @TARGET  := 23837; -- ELM General Porpose Bunny
SET @SPELL1  := 54532; -- Ice Spike
UPDATE `creature_template` SET `AIName`= 'SmartAI' WHERE `entry`=@ENTRY;
REPLACE INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,1000,4000,10000,17000,11,@SPELL1,0,0,0,0,0,2,0,0,0,0,0,0,0,'Frozen Earth - Combat - Cast Ice Spike on victim'),
(-118930,0,0,0,1,0,100,0,1000,4000,4000,7000,11,51590,2,0,0,0,0,11,@TARGET,120,0,0,0,0,0,'Frozen Earth - OOC - Cast Toss Ice Boulder'),
(-118930,0,1,0,0,0,100,0,1000,4000,10000,17000,11,@SPELL1,0,0,0,0,0,2,0,0,0,0,0,0,0,'Frozen Earth - Combat - Cast Ice Spike on victim'),
(-118932,0,0,0,1,0,100,0,1000,4000,4000,7000,11,51590,2,0,0,0,0,11,@TARGET,120,0,0,0,0,0,'Frozen Earth - OOC - Cast Toss Ice Boulder'),
(-118932,0,1,0,0,0,100,0,1000,4000,10000,17000,11,@SPELL1,0,0,0,0,0,2,0,0,0,0,0,0,0,'Frozen Earth - Combat - Cast Ice Spike on victim'),
(-118934,0,0,0,1,0,100,0,1000,4000,4000,7000,11,51590,2,0,0,0,0,11,@TARGET,120,0,0,0,0,0,'Frozen Earth - OOC - Cast Toss Ice Boulder'),
(-118934,0,1,0,0,0,100,0,1000,4000,10000,17000,11,@SPELL1,0,0,0,0,0,2,0,0,0,0,0,0,0,'Frozen Earth - Combat - Cast Ice Spike on victim'),
(-118936,0,0,0,1,0,100,0,1000,4000,4000,7000,11,51590,2,0,0,0,0,11,@TARGET,120,0,0,0,0,0,'Frozen Earth - OOC - Cast Toss Ice Boulder'),
(-118936,0,1,0,0,0,100,0,1000,4000,10000,17000,11,@SPELL1,0,0,0,0,0,2,0,0,0,0,0,0,0,'Frozen Earth - Combat - Cast Ice Spike on victim'),
(-118938,0,0,0,1,0,100,0,1000,4000,4000,7000,11,51590,2,0,0,0,0,11,@TARGET,120,0,0,0,0,0,'Frozen Earth - OOC - Cast Toss Ice Boulder'),
(-118938,0,1,0,0,0,100,0,1000,4000,10000,17000,11,@SPELL1,0,0,0,0,0,2,0,0,0,0,0,0,0,'Frozen Earth - Combat - Cast Ice Spike on victim'),
(-118940,0,0,0,1,0,100,0,1000,4000,4000,7000,11,51590,2,0,0,0,0,11,@TARGET,120,0,0,0,0,0,'Frozen Earth - OOC - Cast Toss Ice Boulder'),
(-118940,0,1,0,0,0,100,0,1000,4000,10000,17000,11,@SPELL1,0,0,0,0,0,2,0,0,0,0,0,0,0,'Frozen Earth - Combat - Cast Ice Spike on victim'),
(-118942,0,0,0,1,0,100,0,1000,4000,4000,7000,11,51590,2,0,0,0,0,11,@TARGET,120,0,0,0,0,0,'Frozen Earth - OOC - Cast Toss Ice Boulder'),
(-118942,0,1,0,0,0,100,0,1000,4000,10000,17000,11,@SPELL1,0,0,0,0,0,2,0,0,0,0,0,0,0,'Frozen Earth - Combat - Cast Ice Spike on victim');
SET @ENTRY := 21233;
SET @SPELL1 := 36238; -- Fel Cannon Blast
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,1,0,100,1,1000,1000,1000,1000,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Legion Fel Cannon - OOC - Prevent Combat Movement'),
(@ENTRY,0,1,0,0,0,100,0,0,1000,2500,2500,11,@SPELL1,1,0,0,0,0,2,0,0,0,0,0,0,0,'Legion Fel Cannon - Combat - Cast Fel Cannon Blast');
SET @ENTRY := 22461;
SET @SPELL1 := 36238; -- Fel Cannon Blast
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,1,0,100,1,1000,1000,1000,1000,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Fel Cannon MKI - OOC - Prevent Combat Movement'),
(@ENTRY,0,1,0,0,0,100,0,0,1000,2500,2500,11,@SPELL1,1,0,0,0,0,2,0,0,0,0,0,0,0,'Fel Cannon MKI - Combat - Cast Fel Cannon Blast');
SET @ENTRY   := 25392;
SET @CHANNEL := 45491; -- Necrotic Purple Beam
SET @TARGET  := 25534; -- En'kilah Blood Globe
UPDATE `creature_template` SET `speed_run`=1,`AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=9 AND `entryorguid`=@ENTRY*100;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,1,0,100,0,2000,6000,32000,32000,80,@ENTRY*100,0,0,0,0,0,1,0,0,0,0,0,0,0,'High Priest Andorath - OOC - Run Script every 32 sec'),
(@ENTRY*100,9,0,0,0,0,100,0,0,0,0,0,11,@CHANNEL,0,0,0,0,0,11,@TARGET,20,0,0,0,0,0, 'High Priest Andorath - script - Channel spell'),
(@ENTRY*100,9,1,0,0,0,100,0,23000,23000,0,0,92,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'High Priest Andorath - script - Stop Channeling');
SET @ENTRY := 28181;
SET @SPELL := 50795;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,23,0,100,0,@SPELL,0,2000,2000,11,@SPELL,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Zul''Drak Gateway Trigger - Aura Zul''Drak Gateway not present - Add Aura Zul''Drak Gateway');
SET @GOBJ := 201969; -- ball and chain
UPDATE `gameobject_template` SET `AIName`='SmartGameObjectAI' WHERE `entry`=@GOBJ;
DELETE FROM `smart_scripts` WHERE `source_type`=1 AND `entryorguid`=@GOBJ;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(@GOBJ,1,0,0,64,0,100,0,0,0,0,0,33,36764,0,0,0,0,0,7,0,0,0,0,0,0,0, 'credit on gossip hello - alliance'),
(@GOBJ,1,1,0,64,0,100,0,0,0,0,0,33,36770,0,0,0,0,0,7,0,0,0,0,0,0,0, 'credit on gossip hello - horde');
UPDATE `smart_scripts` SET `event_param1`=0,`event_param2`=15 WHERE `entryorguid`=29129 AND `id`=4;
UPDATE `smart_scripts` SET `event_param1`=30,`event_param2`=100 WHERE `entryorguid`=29129 AND `id`=8;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` IN (
11684,11685,11686,11687,11688, -- 10 Player
11679,11680,11681,11682,11683, -- 25 Player
11689,11690,11691,11692,11693, -- 10 Player
11542,11546,11547,11549,11678  -- 25 Player
) AND `type` IN (0,12);
INSERT INTO `achievement_criteria_data` (`criteria_id`, `type`, `value1`, `value2`, `ScriptName`) VALUES 
-- Call of the Crusade (10 player)
(11684,12,0,0, ''),
(11685,12,0,0, ''),
(11686,12,0,0, ''),
(11687,12,0,0, ''),
(11688,12,0,0, ''),
-- Call of the Crusade (25 player)
(11679,12,1,0, ''),
(11680,12,1,0, ''),
(11681,12,1,0, ''),
(11682,12,1,0, ''),
(11683,12,1,0, ''),
-- Call of the Grand Crusade (10 player)
(11689,12,2,0, ''),
(11690,12,2,0, ''),
(11691,12,2,0, ''),
(11692,12,2,0, ''),
(11693,12,2,0, ''),
-- Call of the Grand Crusade (25 player)
(11542,12,3,0, ''),
(11546,12,3,0, ''),
(11547,12,3,0, ''),
(11549,12,3,0, ''),
(11678,12,3,0, '');
SET @ENTRY   := 24018; -- NPC entry
SET @CHANNEL := 43151; -- Necrolord: Purple Beam
SET @TARGET  := 24021; -- ELM General Purpose Bunny (scale x0.01)
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,1,0,100,1,1000,1000,1000,1000,11,@CHANNEL,2,0,0,0,0,11,@TARGET,30,0,0,0,0,0, 'Necro Overlord Mezhen - On spawn & reset - Channel Necrolord: Purple Beam');
SET @ENTRY  := 26073; -- NPC entry
SET @SPELL1 := 45492; -- Shadow Nova
SET @SPELL2 := 11640; -- Renew         cast once below 45%
SET @SPELL3 := 15587; -- Mind Blast    cast below 45% after renew 
UPDATE `creature` SET `modelid`=0,`spawndist`=0,`MovementType`=0 WHERE `id`=@ENTRY;
DELETE FROM `creature_template_addon` WHERE `entry`=26073;
INSERT INTO `creature_template_addon` (`entry`,`bytes1`,`bytes2`) VALUES (26073,1,1);
UPDATE `creature_template` SET `speed_run`=1,`faction_H`=21,`InhabitType`=7,`AIName`= 'SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=9 AND `entryorguid`=@ENTRY*100;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,1,0,100,1,0,0,0,0,8,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'High Priest Talet-Kha - On spawn - Set React State civilian'),
(@ENTRY,0,1,2,1,0,100,1,1000,1000,1000,1000,70,0,0,0,0,0,0,10,85098,25422,0,0,0,0,0, 'High Priest Talet-Kha - OOC - Respawn Mystical Webbing'),
(@ENTRY,0,2,3,61,0,100,0,0,0,0,0,45,0,1,0,0,0,0,10,85098,25422,0,0,0,0,0, 'High Priest Talet-Kha - OOC - Set data Mystical Webbing'),
(@ENTRY,0,3,4,61,0,100,0,0,0,0,0,70,0,0,0,0,0,0,10,85118,25422,0,0,0,0,0, 'High Priest Talet-Kha - OOC - Respawn Mystical Webbing'),
(@ENTRY,0,4,5,61,0,100,0,0,0,0,0,45,0,1,0,0,0,0,10,85118,25422,0,0,0,0,0, 'High Priest Talet-Kha - OOC - Set data Mystical Webbing'),
(@ENTRY,0,5,6,61,0,100,0,0,0,0,0,45,0,1,0,0,0,0,10,85175,23033,0,0,0,0,0, 'High Priest Talet-Kha - OOC - Set data Invisible Stalker'),
(@ENTRY,0,6,0,61,0,100,0,0,0,0,0,45,0,1,0,0,0,0,10,85176,23033,0,0,0,0,0, 'High Priest Talet-Kha - OOC - Set data Invisible Stalker'),
(@ENTRY,0,7,0,1,0,100,0,3000,3000,3000,3000,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0, 'High Priest Talet-Kha - OOC - Set phase 1'),
(@ENTRY,0,8,0,23,1,100,1,45497,0,0,0,80,@ENTRY*100,0,0,0,0,0,1,0,0,0,0,0,0,0, 'High Priest Talet-Kha - On Aura missing - Run Script (Phase 1)'),
(@ENTRY,0,9,10,2,1,100,0,0,45,0,0,11,11640,1,0,0,0,0,1,0,0,0,0,0,0,0, 'High Priest Talet-Kha - Health 45% - Cast Renew on self'),
(@ENTRY,0,10,0,61,1,100,0,0,0,0,0,22,2,0,0,0,0,0,1,0,0,0,0,0,0,0, 'High Priest Talet-Kha - OOC - Set phase 2'),
(@ENTRY,0,11,0,0,2,100,0,1500,1500,1500,1500,11,15587,0,0,0,0,0,2,0,0,0,0,0,0,0, 'High Priest Talet-Kha - Combat - Cast Mind Blast on victim (Phase 2)'),
(@ENTRY*100,9,0,0,0,0,100,0,3000,3000,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'High Priest Talet-Kha - script - Text 0'),
(@ENTRY*100,9,1,0,0,0,100,0,500,500,0,0,69,0,0,0,0,0,0,1,0,0,0,3788.444,3418.249,85.05618,0, 'High Priest Talet-Kha - script - Move to'),
(@ENTRY*100,9,2,0,0,0,100,0,500,500,0,0,66,0,0,0,0,0,0,1,0,0,0,0,0,0,1.1672, 'High Priest Talet-Kha - script - turn to'),
(@ENTRY*100,9,3,0,0,0,100,0,1500,1500,0,0,91,1,0,0,0,0,0,1,0,0,0,0,0,0,0, 'High Priest Talet-Kha - script - Bytes1 set to 0'),
(@ENTRY*100,9,4,0,0,0,100,0,100,100,0,0,19,33555200,0,0,0,0,0,1,0,0,0,0,0,0,0, 'High Priest Talet-Kha - script - Remove unitflags'),
(@ENTRY*100,9,5,0,0,0,100,0,100,100,0,0,8,2,0,0,0,0,0,1,0,0,0,0,0,0,0, 'High Priest Talet-Kha - script - Set React State Hostile'),
(@ENTRY*100,9,6,0,0,0,100,0,100,100,0,0,11,@SPELL1,1,0,0,0,0,1,0,0,0,0,0,0,0, 'High Priest Talet-Kha - script - Aura self');
DELETE FROM `creature_text` WHERE `entry` IN (26073);
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(26073,0,0, 'Who disturbs my meditation?!',1,7,100,15,0,0, 'High Priest Talet-Kha');
SET @ENTRY := 25422; -- NPC entry
SET @CHANNEL := 45497; -- Web Beam
SET @TARGET  := 26073; -- High Priest Talet-Kha
UPDATE `creature_template` SET `AIName`= 'SmartAI' WHERE `entry`=@ENTRY;
REPLACE INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(-102844,0,0,0,11,0,100,0,0,0,0,0,8,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Mystical Webbing - On spawn - Set React State civilian'),
(-102844,0,1,0,1,0,100,1,1000,1000,1000,1000,11,@CHANNEL,2,0,0,0,0,11,@TARGET,40,0,0,0,0,0, 'Mystical Webbing - On spawn & reset - Web Beam'),
(-102844,0,2,0,6,0,100,1,0,0,0,0,45,0,2,0,0,0,0,10,85176,23033,0,0,0,0,0, 'Mystical Webbing - On death - set data 0 2 Invisible Stalker'),
(-102844,0,3,4,38,0,100,0,0,1,0,0,45,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Invisible Stalker (Floating) - On dataset 0 1 - set data 0 0'),
(-102844,0,4,0,61,0,100,0,0,0,0,0,70,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Invisible Stalker (Floating) - On dataset 0 1 - reset AI'),
(-102845,0,0,0,11,0,100,0,0,0,0,0,8,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Mystical Webbing - On spawn - Set React State civilian'),
(-102845,0,1,0,1,0,100,1,1000,1000,1000,1000,11,@CHANNEL,2,0,0,0,0,11,@TARGET,40,0,0,0,0,0, 'Mystical Webbing - On spawn & reset - Web Beam'),
(-102845,0,2,0,6,0,100,1,0,0,0,0,45,0,2,0,0,0,0,10,85175,23033,0,0,0,0,0, 'Mystical Webbing - On death - set data 0 2 Invisible Stalker'),
(-102845,0,3,4,38,0,100,0,0,1,0,0,45,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Invisible Stalker (Floating) - On dataset 0 1 - set data 0 0'),
(-102845,0,4,0,61,0,100,0,0,0,0,0,70,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Invisible Stalker (Floating) - On dataset 0 1 - reset AI');
-- SAI for Invisible Stalker (Floating)
SET @ENTRY := 23033; -- NPC entry
SET @CHANNEL := 45497; -- Web Beam
SET @TARGET  := 26073; -- High Priest Talet-Kha
UPDATE `creature_template` SET `AIName`= 'SmartAI' WHERE `entry`=@ENTRY;
REPLACE INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
-- Invisible Stalker (Floating)
(-111477,0,0,0,38,0,100,0,0,1,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Invisible Stalker (Floating) - On dataset 0 1 - Set Phase 1'),
(-111477,0,1,0,38,0,100,0,0,2,0,0,22,2,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Invisible Stalker (Floating) - On dataset 0 2 - Set Phase 2'),
(-111477,0,2,3,1,1,100,0,0,0,0,0,11,@CHANNEL,2,0,0,0,0,11,@TARGET,40,0,0,0,0,0, 'Invisible Stalker (Floating) - OOC - Cast Web Beam on target (Phase 1)'),
(-111477,0,3,4,61,1,100,0,0,0,0,0,45,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Invisible Stalker (Floating) - OOC - Set data 0 0 (Phase 1)'),
(-111477,0,4,0,61,1,100,0,0,0,0,0,22,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Invisible Stalker (Floating) - OOC - Set Phase 0 (Phase 1)'),
(-111477,0,5,6,1,2,100,0,0,0,0,0,92,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Invisible Stalker (Floating) - OOC - Stop casting (Phase 2)'),
(-111477,0,6,0,61,2,100,0,0,0,0,0,22,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Invisible Stalker (Floating) - OOC - Set Phase 0 (Phase 2)'),
-- Invisible Stalker (Floating)
(-111478,0,0,0,38,0,100,0,0,1,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Invisible Stalker (Floating) - On dataset 0 1 - Set Phase 1'),
(-111478,0,1,0,38,0,100,0,0,2,0,0,22,2,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Invisible Stalker (Floating) - On dataset 0 2 - Set Phase 2'),
(-111478,0,2,3,1,1,100,0,0,0,0,0,11,@CHANNEL,2,0,0,0,0,11,@TARGET,40,0,0,0,0,0, 'Invisible Stalker (Floating) - OOC - Cast Web Beam on target (Phase 1)'),
(-111478,0,3,4,61,1,100,0,0,0,0,0,45,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Invisible Stalker (Floating) - OOC - Set data 0 0 (Phase 1)'),
(-111478,0,4,0,61,1,100,0,0,0,0,0,22,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Invisible Stalker (Floating) - OOC - Set Phase 0 (Phase 1)'),
(-111478,0,5,6,1,2,100,0,0,0,0,0,92,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Invisible Stalker (Floating) - OOC - Stop casting (Phase 2)'),
(-111478,0,6,0,61,2,100,0,0,0,0,0,22,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Invisible Stalker (Floating) - OOC - Set Phase 0 (Phase 2)');
-- Pathing for Stormfleet Deckhand SAI
SET @ENTRY := 25234;
SET @PATH1 := @ENTRY*100;
SET @PATH2 := @ENTRY*100+1;
SET @PATH3 := @ENTRY*100+2;
SET @PATH4 := @ENTRY*100+3;
-- SAI for Stormfleet Deckhand
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
REPLACE INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(-95054,0,0,0,11,0,100,0,0,0,0,0,53,0,@PATH1,1,0,0,0,1,0,0,0,0,0,0,0, 'Stormfleet Deckhand - On spawn - Start WP movement'),
(-95054,0,1,2,40,0,100,0,4,@PATH1,0,0,54,10000,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Stormfleet Deckhand - Reach wp 4 - pause wp'),
(-95054,0,2,0,61,0,100,0,0,0,0,0,80,@ENTRY*100,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Stormfleet Deckhand - Reach wp 4 - run script'),
(-95054,0,3,4,40,0,100,0,8,@PATH1,0,0,54,21000,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Stormfleet Deckhand - Reach wp 8 - pause wp'),
(-95054,0,4,5,61,0,100,0,0,0,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,5.794493, 'Stormfleet Deckhand - Reach wp 8 - turn to'),
(-95054,0,5,0,61,0,100,0,0,0,0,0,80,@ENTRY*100+1,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Stormfleet Deckhand - Reach wp 8 - run script'),
(-95055,0,0,0,11,0,100,0,0,0,0,0,53,0,@PATH2,1,0,0,0,1,0,0,0,0,0,0,0, 'Stormfleet Deckhand - On spawn - Start WP movement'),
(-95055,0,1,2,40,0,100,0,6,@PATH2,0,0,54,10000,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Stormfleet Deckhand - Reach wp 6 - pause wp'),
(-95055,0,2,0,61,0,100,0,0,0,0,0,80,@ENTRY*100,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Stormfleet Deckhand - Reach wp 6 - run script'),
(-95055,0,3,4,40,0,100,0,13,@PATH2,0,0,54,21000,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Stormfleet Deckhand - Reach wp 13 - pause wp'),
(-95055,0,4,0,61,0,100,0,0,0,0,0,80,@ENTRY*100+1,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Stormfleet Deckhand - Reach wp 13 - run script'),
(-95068,0,0,0,11,0,100,0,0,0,0,0,53,0,@PATH3,1,0,0,0,1,0,0,0,0,0,0,0, 'Stormfleet Deckhand - On spawn - Start WP movement'),
(-95068,0,1,2,40,0,100,0,17,@PATH3,0,0,54,10000,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Stormfleet Deckhand - Reach wp 17 - pause wp'),
(-95068,0,2,0,61,0,100,0,0,0,0,0,80,@ENTRY*100,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Stormfleet Deckhand - Reach wp 17 - run script'),
(-95068,0,3,4,40,0,100,0,9,@PATH3,0,0,54,21000,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Stormfleet Deckhand - Reach wp 9 - pause wp'),
(-95068,0,4,0,61,0,100,0,0,0,0,0,80,@ENTRY*100+1,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Stormfleet Deckhand - Reach wp 9 - run script'),
(-95069,0,0,0,11,0,100,0,0,0,0,0,53,0,@PATH4,1,0,0,0,1,0,0,0,0,0,0,0, 'Stormfleet Deckhand - On spawn - Start WP movement'),
(-95069,0,1,2,40,0,100,0,3,@PATH4,0,0,54,11000,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Stormfleet Deckhand - Reach wp 3 - pause wp'),
(-95069,0,2,0,61,0,100,0,0,0,0,0,80,@ENTRY*100+2,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Stormfleet Deckhand - Reach wp 3 - run script'),
(-95069,0,3,4,40,0,100,0,13,@PATH4,0,0,54,11000,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Stormfleet Deckhand - Reach wp 13 - pause wp'),
(-95069,0,4,0,61,0,100,0,0,0,0,0,80,@ENTRY*100+2,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Stormfleet Deckhand - Reach wp 13 - run script'),
(-95069,0,5,6,40,0,100,0,16,@PATH4,0,0,54,11000,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Stormfleet Deckhand - Reach wp 16 - pause wp'),
(-95069,0,6,0,61,0,100,0,0,0,0,0,80,@ENTRY*100+2,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Stormfleet Deckhand - Reach wp 16 - run script'),
(-95069,0,7,8,40,0,100,0,25,@PATH4,0,0,54,11000,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Stormfleet Deckhand - Reach wp 25 - pause wp'),
(-95069,0,8,9,61,0,100,0,0,0,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,5.969026, 'Stormfleet Deckhand - Reach wp 25 - turn to'),
(-95069,0,9,0,61,0,100,0,0,0,0,0,80,@ENTRY*100+2,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Stormfleet Deckhand - Reach wp 25 - run script'),
(@ENTRY*100,9,0,0,0,0,100,0,0,0,0,0,90,8,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Stormfleet Deckhand - script - set bytes1'),
(@ENTRY*100,9,1,0,0,0,100,0,10000,10000,0,0,91,8,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Stormfleet Deckhand - script - remove bytes1'),
(@ENTRY*100+1,9,0,0,0,0,100,0,3000,3000,0,0,5,22,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Stormfleet Deckhand - script - emote'),
(@ENTRY*100+1,9,1,0,0,0,100,0,6000,6000,0,0,5,70,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Stormfleet Deckhand - script - emote'),
(@ENTRY*100+1,9,2,0,0,0,100,0,6000,6000,0,0,5,22,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Stormfleet Deckhand - script - emote'),
(@ENTRY*100+2,9,0,0,0,0,100,0,1000,1000,0,0,17,69,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Stormfleet Deckhand - script - set state STATE_USESTANDING'),
(@ENTRY*100+2,9,1,0,0,0,100,0,8000,8000,0,0,17,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Stormfleet Deckhand - script - set state NONE'),
(@ENTRY*100+2,9,2,0,0,0,100,0,0,0,0,0,90,2,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Stormfleet Deckhand - script - set bytes1'),
(@ENTRY*100+2,9,3,0,0,0,100,0,2000,2000,0,0,91,2,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Stormfleet Deckhand - script - remove bytes1');
-- Waypoints for Stormfleet Deckhand from sniff
DELETE FROM `waypoints` WHERE `entry` IN (@PATH1,@PATH2,@PATH3,@PATH4);
INSERT INTO `waypoints` (`entry`,`pointid`,`position_x`,`position_y`,`position_z`,`point_comment`) VALUES
(@PATH1,1,2261.388,5305.248,21.68184, 'Stormfleet Deckhand'),
(@PATH1,2,2259.963,5295.583,20.08975, 'Stormfleet Deckhand'),
(@PATH1,3,2260.002,5286.996,15.49093, 'Stormfleet Deckhand'),
(@PATH1,4,2257.711,5281.927,12.09341, 'Stormfleet Deckhand'),
(@PATH1,5,2261.763,5286.725,15.76729, 'Stormfleet Deckhand'),
(@PATH1,6,2260.902,5294.649,19.95268, 'Stormfleet Deckhand'),
(@PATH1,7,2263.460,5304.816,21.72922, 'Stormfleet Deckhand'),
(@PATH1,8,2265.704,5314.686,22.43809, 'Stormfleet Deckhand'),
(@PATH2,1,2248.875,5255.391,36.45885, 'Stormfleet Deckhand'),
(@PATH2,2,2246.625,5256.641,37.20885, 'Stormfleet Deckhand'),
(@PATH2,3,2244.625,5258.641,36.45885, 'Stormfleet Deckhand'),
(@PATH2,4,2241.625,5258.391,37.20885, 'Stormfleet Deckhand'),
(@PATH2,5,2238.625,5259.391,36.45885, 'Stormfleet Deckhand'),
(@PATH2,6,2232.960,5260.392,35.71835, 'Stormfleet Deckhand'),
(@PATH2,7,2235.375,5260.141,36.20885, 'Stormfleet Deckhand'),
(@PATH2,8,2239.375,5259.141,36.45885, 'Stormfleet Deckhand'),
(@PATH2,9,2241.625,5258.641,37.20885, 'Stormfleet Deckhand'),
(@PATH2,10,2244.625,5258.641,36.45885, 'Stormfleet Deckhand'),
(@PATH2,11,2247.125,5256.391,37.20885, 'Stormfleet Deckhand'),
(@PATH2,12,2249.125,5255.391,36.45885, 'Stormfleet Deckhand'),
(@PATH2,13,2253.791,5252.389,35.69936, 'Stormfleet Deckhand'),
(@PATH3,1,2212.298,5281.927,10.82595, 'Stormfleet Deckhand'),
(@PATH3,2,2211.701,5275.361,10.82595, 'Stormfleet Deckhand'),
(@PATH3,3,2224.383,5268.124,7.166187, 'Stormfleet Deckhand'),
(@PATH3,4,2235.353,5264.704,8.606246, 'Stormfleet Deckhand'),
(@PATH3,5,2244.243,5262.414,11.81635, 'Stormfleet Deckhand'),
(@PATH3,6,2248.373,5259.464,11.78494, 'Stormfleet Deckhand'),
(@PATH3,7,2247.781,5252.418,11.96684, 'Stormfleet Deckhand'),
(@PATH3,8,2246.383,5249.14,15.53435, 'Stormfleet Deckhand'),
(@PATH3,9,2243.871,5243.415,21.4974, 'Stormfleet Deckhand'),
(@PATH3,10,2245.975,5248.252,16.51618, 'Stormfleet Deckhand'),
(@PATH3,11,2248.437,5255.79,11.86939, 'Stormfleet Deckhand'),
(@PATH3,12,2248.403,5261.318,11.747, 'Stormfleet Deckhand'),
(@PATH3,13,2228.012,5267.475,7.16457, 'Stormfleet Deckhand'),
(@PATH3,14,2215.574,5274.178,11.13563, 'Stormfleet Deckhand'),
(@PATH3,15,2213.556,5283.097,10.82595, 'Stormfleet Deckhand'),
(@PATH3,16,2218.244,5291.424,10.70095, 'Stormfleet Deckhand'),
(@PATH3,17,2224.214,5293.65,10.82595, 'Stormfleet Deckhand'),
(@PATH3,18,2220.033,5292.01,10.70095, 'Stormfleet Deckhand'),
(@PATH4,1,2232.031,5289.312,11.11433, 'Stormfleet Deckhand'),
(@PATH4,2,2229.514,5285.923,11.22073, 'Stormfleet Deckhand'),
(@PATH4,3,2231.239,5285.13,11.22661, 'Stormfleet Deckhand'),
(@PATH4,4,2229.854,5285.705,11.22414, 'Stormfleet Deckhand'),
(@PATH4,5,2228.48,5291.178,11.13671, 'Stormfleet Deckhand'),
(@PATH4,6,2226.165,5291.41,10.95095, 'Stormfleet Deckhand'),
(@PATH4,7,2223.731,5291.465,10.82595, 'Stormfleet Deckhand'),
(@PATH4,8,2218.564,5293.642,10.70095, 'Stormfleet Deckhand'),
(@PATH4,9,2213.531,5285.789,10.70095, 'Stormfleet Deckhand'),
(@PATH4,10,2208.855,5275.448,10.82595, 'Stormfleet Deckhand'),
(@PATH4,11,2206.379,5260.244,10.58918, 'Stormfleet Deckhand'),
(@PATH4,12,2211.11,5256.537,10.71418, 'Stormfleet Deckhand'),
(@PATH4,13,2219.187,5252.958,11.33607, 'Stormfleet Deckhand'),
(@PATH4,14,2216.945,5251.284,11.26102, 'Stormfleet Deckhand'),
(@PATH4,15,2215.487,5248.678,11.44615, 'Stormfleet Deckhand'),
(@PATH4,16,2217.447,5248.063,11.4383, 'Stormfleet Deckhand'),
(@PATH4,17,2213.407,5251.713,10.96418, 'Stormfleet Deckhand'),
(@PATH4,18,2207.356,5257.069,10.71418, 'Stormfleet Deckhand'),
(@PATH4,19,2205.434,5262.277,10.58918, 'Stormfleet Deckhand'),
(@PATH4,20,2208.177,5274.885,10.82595, 'Stormfleet Deckhand'),
(@PATH4,21,2214.61,5286.973,10.82595, 'Stormfleet Deckhand'),
(@PATH4,22,2219.416,5292.909,10.70095, 'Stormfleet Deckhand'),
(@PATH4,23,2224.719,5291.44,10.82595, 'Stormfleet Deckhand'),
(@PATH4,24,2228.346,5291.136,10.95095, 'Stormfleet Deckhand'),
(@PATH4,25,2233.497,5291.667,11.21773, 'Stormfleet Deckhand');
DELETE FROM `conditions` WHERE `SourceEntry`=43151 AND `SourceTypeOrReferenceId`=13; -- Delete uneed/wrong conditions. Assigned SAI will take care of targeting the right creature

# Fix
UPDATE `gameobject` SET `spawnMask` = 1 WHERE `guid` = 103138;

# zhanhang02
UPDATE `gossip_menu_option` SET `option_text`='Skinning' WHERE (`menu_id`='3558') AND (`id`='11');
UPDATE `gossip_menu_option` SET `option_text`='The Inn' WHERE (`menu_id`='3580') AND (`id`='3');

# NeatElves
UPDATE  `quest_template` SET  `PrevQuestId` =  '1071' WHERE  `entry` =1075;
UPDATE  `quest_template` SET  `ExclusiveGroup` =  '-1074' WHERE  `entry` in (1074,1077);
UPDATE  `quest_template` SET  `PrevQuestId` =  '1074',`ExclusiveGroup` =  '-1079', `NextQuestId`=1091 WHERE  `entry` in (1079,1080);
UPDATE  `quest_template` SET  `PrevQuestId` =  '0' WHERE  `entry` =1091;
UPDATE  `quest_template` SET  `PrevQuestId` =  '1091',`ExclusiveGroup` =  '-1083', `NextQuestId`=1082 WHERE  `entry` in (1083,1084);
UPDATE  `quest_template` SET  `SpecialFlags` =  '0' WHERE  `entry` in (3602,9131,7651,8332,11072,7604,1016,7401,7402,3911,7846,8552,908,8312,4808,1657,708,24914);
UPDATE  `quest_template` SET  `RequiredSkillValue` =  '300' WHERE  `entry` =7650;
DELETE FROM `creature` WHERE `guid` = 47959;
DELETE FROM `creature` WHERE `guid` = 49175;
UPDATE  `quest_template` SET  `PrevQuestId` =  '8332' WHERE  `entry` =8333;
UPDATE  `quest_template` SET  `PrevQuestId` =  '8341' WHERE  `entry` =8342;
UPDATE  `creature_involvedrelation` SET  `id` =  '13448' WHERE  `quest` =7401;
REPLACE INTO `creature_questrelation` (`id`, `quest`) VALUES ('13448', '7401');
UPDATE  `quest_template` SET  `PrevQuestId` =  '3906' WHERE  `entry` =7201;
DELETE FROM `creature_questrelation` WHERE `quest` = 3911;
UPDATE  `gameobject` SET  `spawntimesecs` =  '300' WHERE  `id` in (180436,180501,180583);
REPLACE INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(5447, 180583, 1, 1, 1, -6607.99, 1895.48, 5.12254, 3.1734, 0, 0, 0.999874, -0.0159034, 300, 100, 1),
(5450, 180583, 1, 1, 1, -6571.65, 1901.99, 3.65492, 5.50603, 0, 0, 0.37887, -0.92545, 300, 100, 1),
(5451, 180583, 1, 1, 1, -6655.65, 1910.26, 5.05321, 2.00316, 0, 0, 0.842324, 0.538972, 300, 100, 1),
(5455, 180583, 1, 1, 1, -6615.05, 1937.68, 5.42439, 5.91248, 0, 0, 0.184293, -0.982871, 300, 100, 1),
(5460, 180583, 1, 1, 1, -6657.15, 1846.56, 6.12105, 1.19616, 0, 0, 0.563058, 0.826417, 300, 100, 1),
(5464, 180583, 1, 1, 1, -6536.63, 1762.71, 5.48812, 2.89262, 0, 0, 0.992262, 0.124164, 300, 100, 1),
(5468, 180583, 1, 1, 1, -6478.85, 1872.61, 4.59538, 3.44044, 0, 0, 0.988857, -0.148869, 300, 100, 1),
(5471, 180583, 1, 1, 1, -6507.86, 1826.27, 4.05689, 2.55098, 0, 0, 0.956712, 0.291035, 300, 100, 1);
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(23060, 11725, 1, 1, 1, 0, 0, -7192.33, 1462.5, 2.795, 5.50162, 600, 7, 0, 3732, 0, 0, 1);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`) VALUES ('31345', '38303', '100', '0', '1', '1');
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`) VALUES ('31339', '38303', '100', '0', '1', '1');
DELETE FROM `gameobject` WHERE `guid` = 73242;
DELETE FROM `gossip_menu_option` WHERE `menu_id` in (10597,35094);
DELETE FROM `gossip_menu` WHERE `entry` in (10597,35094);
UPDATE  `creature_template` SET  `gossip_menu_id` =  '0',`npcflag` =  '2' WHERE  `entry` in (10597,35094);
UPDATE `game_event` SET `start_time` = '2011-07-05 23:01:00' WHERE `eventEntry` = 5;
UPDATE creature_template SET npcflag = '2' WHERE entry = '620';
UPDATE `creature_template` SET `gossip_menu_id` = 0 WHERE `entry` = 34882;

# Lightunit
DELETE FROM `gameobject_loot_template` WHERE `entry` = 185169 AND `item` IN (35494,35495,35496,35497,35507,35508,35509,35511,35514,35723);
DELETE FROM `gameobject` WHERE `guid` = 37465;

# NeatElves
DELETE FROM `spell_scripts` WHERE `id` = 44323 AND `delay` = 4 AND `command` = 15 AND `datalong` = 44387;
UPDATE  `spell_scripts` SET  `datalong2` =  '1' WHERE  `id` =44323 AND  `delay` =3 AND  `command` =15 AND  `datalong` =44327;
REPLACE INTO `spell_scripts` (`id`, `delay`, `command`) VALUES ('44323', '4', '18');
UPDATE `gossip_scripts` SET `datalong2`=0 WHERE `id` IN (26206,50019) AND `command`=15;
UPDATE `gameobject_template` SET `faction`=114, `flags`=32 WHERE `entry` IN (175379,175380,175381,175405,175796);
UPDATE `quest_template` SET `rewchoiceitemid1`=20371, `rewchoiceitemid2`=22114, `rewchoiceitemid3`=33079, `rewchoiceitemid4`=0, `rewchoiceitemid5`=0, `rewchoiceitemid6`=0, `rewchoiceitemcount1`=1, `rewchoiceitemcount2`=1, `rewchoiceitemcount3`=1, `rewchoiceitemcount4`=0, `rewchoiceitemcount5`=0, `rewchoiceitemcount6`=0 WHERE `entry`=316;

# FIX
UPDATE `creature_template` SET `spell1` = 47966, `spell2` = 47921, `spell3` = 47938, `spell4` = 47939 WHERE `entry` = 27061;
UPDATE `creature_template` SET `unit_flags` = 0 WHERE `entry` = 31402;

# virusav
DELETE
`creature_addon`
FROM
`creature_addon`, `creature`
WHERE
`creature`.`id`=26620
AND `creature_addon`.`guid`=`creature`.`guid`;

# FIX
UPDATE `creature_template` SET `faction_A` = 14, `faction_H` = 14 WHERE `entry` = 30641;
UPDATE `creature_template` SET `faction_A` = 14, `faction_H` = 14 WHERE `entry` = 31521;
UPDATE `creature_template` SET `minlevel` = 80, `maxlevel` = 80, `mindmg` = 150, `maxdmg` = 250, `attackpower` = 10, `dmg_multiplier` = 10 WHERE `entry` = 30641;
UPDATE `creature_template` SET `minlevel` = 80, `maxlevel` = 80, `mindmg` = 150, `maxdmg` = 250, `attackpower` = 10, `dmg_multiplier` = 10 WHERE `entry` = 31521;

# virusav
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`) VALUES
(111450,17375,530,1,1,0,0,-4613,-11662.3,21.3381,0.521008,300,0,0,120,0,0,0),
(111451,17375,530,1,1,0,0,-4635.32,-11493.8,19.7154,4.61058,300,0,0,120,0,0,0),
(111452,17375,530,1,1,0,0,-4618.43,-11498.6,19.5999,4.19825,300,0,0,120,0,0,0);
UPDATE `gameobject_template` SET `faction`=114, `flags`=32 WHERE `entry`=104600;

# madalex
UPDATE `npc_trainer` SET `reqskillvalue`='330' WHERE (`entry`='28706') AND (`spell`='27033');
DELETE FROM `npc_trainer` WHERE (`entry`='28706') AND (`spell`='65292');

# NeatElves
UPDATE `creature_template` SET `unit_flags` = 0 WHERE `entry` = 31402;
UPDATE  `creature_template_addon` SET  `auras` = NULL WHERE  `entry` =31402;
UPDATE `npc_trainer` SET `reqskillvalue`='330', `spellcost`=40000 WHERE `spell`='27033';
DELETE FROM `npc_trainer` WHERE `spell` = 65292;
UPDATE  `game_event` SET  `holiday` =  '398' WHERE  `eventEntry` =32;
INSERT IGNORE INTO spell_area VALUES (54504,4428,12973,1,0,0,0,2,1);
INSERT IGNORE INTO spell_area VALUES (56057,4497,12949,1,12949,0,0,2,1);
REPLACE INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_start_active`, `quest_end`, `aura_spell`, `racemask`, `gender`, `autocast`) VALUES
(54504, 4422, 12921, 1, 0, 0, 0, 2, 1);
UPDATE  `creature_ai_scripts` SET  `action1_type` =  '0',`action1_param1` =  '0',`action1_param2` =  '0' WHERE  `id` =2717711;
UPDATE  `creature_ai_scripts` SET  `action1_type` =  '0',`action1_param1` =  '0',`action1_param2` =  '0' WHERE  `id` =2640804;
UPDATE  `creature_ai_scripts` SET  `action1_type` =  '0',`action1_param1` =  '0',`action1_param2` =  '0' WHERE  `id` =2641410;
REPLACE INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_start_active`, `quest_end`, `aura_spell`, `racemask`, `gender`, `autocast`) VALUES
(52217, 4287, 12703, 1, 12703, 0, 0, 2, 1),
(32407, 3674, 0, 0, 0, 0, 0, 2, 1),
(46999, 4169, 12224, 1, 0, 0, 690, 2, 1),
(46999, 4169, 12474, 1, 0, 0, 1101, 2, 1),
(58932, 4169, 12499, 0, 0, 0, 1101, 2, 1),
(58932, 4171, 12500, 0, 0, 0, 690, 2, 1),
(46999, 4172, 12224, 1, 0, 0, 690, 2, 1),
(58932, 4172, 12499, 0, 0, 0, 1101, 2, 1),
(52214, 4386, 12572, 1, 12572, 0, 0, 2, 1),
(52214, 4386, 12704, 1, 12704, 0, 0, 2, 1),
(55857, 4437, 0, 0, 12915, 0, 0, 2, 1),
(55858, 4437, 12915, 0, 0, 0, 0, 2, 1),
(57048, 4437, 0, 0, 12915, 0, 0, 2, 1),
(58932, 4172, 12500, 0, 0, 0, 690, 2, 1),
(46999, 4172, 12474, 1, 0, 0, 1101, 2, 1),
(48864, 4233, 12301, 1, 12301, 0, 0, 2, 1),
(52217, 4288, 12705, 1, 12705, 0, 0, 2, 1),
(52217, 4288, 12761, 1, 12761, 0, 0, 2, 1),
(50735, 4292, 12702, 1, 12702, 0, 0, 2, 1),
(50735, 4292, 12532, 1, 12532, 0, 0, 2, 1),
(52214, 4293, 12572, 1, 12572, 0, 0, 2, 1),
(52214, 4293, 12704, 1, 12704, 0, 0, 2, 1),
(54057, 4297, 12578, 1, 12578, 0, 0, 2, 1),
(58932, 4169, 12500, 0, 0, 0, 690, 2, 1),
(46999, 4170, 12224, 1, 0, 0, 690, 2, 1),
(46999, 4170, 12474, 1, 0, 0, 1101, 2, 1),
(58932, 4170, 12500, 0, 0, 0, 690, 2, 1),
(58932, 4170, 12499, 0, 0, 0, 1101, 2, 1),
(46999, 4171, 12474, 1, 0, 0, 1101, 2, 1),
(46999, 4171, 12224, 1, 0, 0, 690, 2, 1),
(58932, 4171, 12499, 0, 0, 0, 1101, 2, 1),
(52217, 4287, 12759, 1, 12759, 0, 0, 2, 1),
(52217, 4287, 12760, 1, 12760, 0, 0, 2, 1);
UPDATE  `creature_onkill_reputation` SET  `RewOnKillRepFaction1` =  '369' WHERE  `creature_id` in (7856,7855,7857,7858);
UPDATE  `creature_template` SET  `skinloot` =  '0' WHERE  `entry` =13602;
DELETE FROM `skinning_loot_template` WHERE `entry` = 13602;
DELETE FROM `gameobject_template` WHERE `entry` = 300148;
DELETE FROM `gameobject_template` WHERE `entry` = 3;
DELETE FROM `gameobject` WHERE `guid` = 49681;
DELETE FROM `gameobject` WHERE `guid` = 12883;
DELETE FROM `gameobject` WHERE `guid` = 1945;
UPDATE  `gameobject` SET  `id` =  '202275' WHERE `guid` =1943;
UPDATE `creature_template` SET `gossip_menu_id` = 7408 WHERE `entry` = 17355;
INSERT IGNORE INTO `gossip_menu` (`entry`, `text_id`) VALUES (7408, 8883);
UPDATE `creature_template` SET `gossip_menu_id` = 181 WHERE `entry` = 6586;
INSERT IGNORE INTO `gossip_menu` (`entry`, `text_id`) VALUES (181, 678);
UPDATE `creature_template` SET `gossip_menu_id` = 11241 WHERE `entry` = 3293;
INSERT IGNORE INTO `gossip_menu` (`entry`, `text_id`) VALUES (11241, 15664);
UPDATE `creature_template` SET `gossip_menu_id` = 11573 WHERE `entry` = 3411;
INSERT IGNORE INTO `gossip_menu` (`entry`, `text_id`) VALUES (11573, 16157);
UPDATE `creature_template` SET `gossip_menu_id` = 4763 WHERE `entry` = 4489;
INSERT IGNORE INTO `gossip_menu` (`entry`, `text_id`) VALUES (4763, 5819);
UPDATE `creature_template` SET `gossip_menu_id` = 10567 WHERE `entry` = 3467;
INSERT IGNORE INTO `gossip_menu` (`entry`, `text_id`) VALUES (10567, 14623);
UPDATE `creature_template` SET `gossip_menu_id` = 1882 WHERE `entry` = 3389;
INSERT IGNORE INTO `gossip_menu` (`entry`, `text_id`) VALUES (1882, 2533);
UPDATE `creature_template` SET `gossip_menu_id` = 2362 WHERE `entry` = 9990;
INSERT IGNORE INTO `gossip_menu` (`entry`, `text_id`) VALUES (2362, 3048);
UPDATE `creature_template` SET `gossip_menu_id` = 6524 WHERE `entry` = 14781;
INSERT IGNORE INTO `gossip_menu` (`entry`, `text_id`) VALUES (6524, 7726);
UPDATE `creature_template` SET `gossip_menu_id` = 10331 WHERE `entry` = 8582;
INSERT IGNORE INTO `gossip_menu` (`entry`, `text_id`) VALUES (10331, 14344);
UPDATE `creature_template` SET `gossip_menu_id` = 7237 WHERE `entry` = 16418;
INSERT IGNORE INTO `gossip_menu` (`entry`, `text_id`) VALUES (7237, 8537);
UPDATE `creature_template` SET `gossip_menu_id` = 12670 WHERE `entry` = 23535;
INSERT IGNORE INTO `gossip_menu` (`entry`, `text_id`) VALUES (12670, 12549);
UPDATE `creature_template` SET `gossip_menu_id` = 21 WHERE `entry` = 3442;
UPDATE gossip_menu SET entry = 21 WHERE entry = 50006;
UPDATE gossip_menu SET entry = 22 WHERE entry = 50007;
UPDATE `gossip_menu_option` SET `action_menu_id` = '22' WHERE `menu_id` =50006 AND `id` =1;
UPDATE gossip_menu_option SET menu_id = 21 WHERE menu_id = 50006;
UPDATE locales_gossip_menu_option SET menu_id = 21 WHERE menu_id =50006;
UPDATE `creature_template` SET `gossip_menu_id` = 344 WHERE `entry` = 3934;
DELETE FROM `gossip_menu_option` WHERE `menu_id` = 50241;
DELETE FROM `gossip_menu` WHERE `entry` = 50241;
DELETE FROM `locales_gossip_menu_option` WHERE `menu_id` = 50241;
INSERT IGNORE INTO `gossip_menu` (`entry`, `text_id`) VALUES (21, 518);
UPDATE `creature_template` SET `gossip_menu_id` = 201 WHERE `entry` = 3678;
INSERT IGNORE INTO `gossip_menu` (`entry`, `text_id`) VALUES (201, 698);
UPDATE `creature_template` SET `gossip_menu_id` = 11189 WHERE `entry` = 10676;
INSERT IGNORE INTO `gossip_menu` (`entry`, `text_id`) VALUES (11189, 15572);
UPDATE `creature_template` SET `gossip_menu_id` = 12670 WHERE `entry` = 6027;
UPDATE `creature_template` SET `gossip_menu_id` = 5665 WHERE `entry` = 5941;
UPDATE `creature_template` SET `gossip_menu_id` = 10181 WHERE `entry` = 3881;
UPDATE `creature_template` SET `gossip_menu_id` = 11790 WHERE `entry` = 3139;
INSERT IGNORE INTO `gossip_menu` (`entry`, `text_id`) VALUES (11790, 16535);
UPDATE `creature_template` SET `gossip_menu_id` = 523 WHERE `entry` = 3153;
DELETE FROM `gossip_menu_option` WHERE `menu_id` = 50215;
DELETE FROM `gossip_menu` WHERE `entry` = 50215;
DELETE FROM `locales_gossip_menu_option` WHERE `menu_id` = 50215;
UPDATE `creature_template` SET `gossip_menu_id` = 4652 WHERE `entry` = 3157;
UPDATE gossip_menu SET entry = 4652 WHERE entry = 50188;
UPDATE gossip_menu_option SET menu_id = 4652 WHERE menu_id = 50188;
UPDATE locales_gossip_menu_option SET menu_id = 4652 WHERE menu_id =50188;
UPDATE `creature_template` SET `gossip_menu_id` = 4652 WHERE `entry` = 986;

# FIX
UPDATE `gameobject` SET `spawntimesecs` = 60 WHERE `guid` = 19208;
UPDATE `gameobject_template` SET `name` = 'Wrathscale Fountain' WHERE `entry` = 202275;
DELETE FROM `npc_spellclick_spells` WHERE  `npc_entry` =26477;
INSERT INTO `npc_spellclick_spells` VALUES ('26477', '47096', '11999', '1', '11999', '2',0,0,0);
INSERT INTO `npc_spellclick_spells` VALUES ('26477', '47096', '12000', '1', '12000', '2',0,0,0);
INSERT INTO `npc_spellclick_spells` VALUES ('26477', '61286', '11999', '1', '11999', '2',0,0,0);
INSERT INTO `npc_spellclick_spells` VALUES ('26477', '61286', '12000', '1', '12000', '2',0,0,0);
INSERT INTO `npc_spellclick_spells` VALUES ('26477', '61832', '12000', '1', '12000', '0',0,0,0);
INSERT INTO `npc_spellclick_spells` VALUES ('26477', '61832', '11999', '1', '12000', '0',0,0,0);

# Lordronn
UPDATE `creature_model_info` SET `gender` = '0' WHERE modelid = 809;
UPDATE `creature_model_info` SET `combat_reach` = '2.125' WHERE modelid = 833;
UPDATE `creature_model_info` SET `gender` = '0' WHERE modelid = 842;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 913;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 1037;
UPDATE `creature_model_info` SET `gender` = '0' WHERE modelid = 2161;
UPDATE `creature_model_info` SET `combat_reach` = '0.5' WHERE modelid = 2954;
UPDATE `creature_model_info` SET `bounding_radius` = '0.15' WHERE modelid = 3233;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 3233;
UPDATE `creature_model_info` SET `combat_reach` = '0.5' WHERE modelid = 5448;
UPDATE `creature_model_info` SET `combat_reach` = '0.5' WHERE modelid = 5554;
UPDATE `creature_model_info` SET `combat_reach` = '0.5' WHERE modelid = 5585;
UPDATE `creature_model_info` SET `bounding_radius` = '0.25' WHERE modelid = 5966;
UPDATE `creature_model_info` SET `combat_reach` = '0.3125' WHERE modelid = 5966;
UPDATE `creature_model_info` SET `gender` = '0' WHERE modelid = 7803;
UPDATE `creature_model_info` SET `combat_reach` = '0.5' WHERE modelid = 9563;
UPDATE `creature_model_info` SET `gender` = '0' WHERE modelid = 10618;
UPDATE `creature_model_info` SET `gender` = '0' WHERE modelid = 11554;
UPDATE `creature_model_info` SET `gender` = '0' WHERE modelid = 11631;
UPDATE `creature_model_info` SET `gender` = '0' WHERE modelid = 12350;
UPDATE `creature_model_info` SET `gender` = '0' WHERE modelid = 13989;
UPDATE `creature_model_info` SET `combat_reach` = '2.025' WHERE modelid = 16024;
UPDATE `creature_model_info` SET `combat_reach` = '1' WHERE modelid = 17170;
UPDATE `creature_model_info` SET `gender` = '0' WHERE modelid = 17444;
UPDATE `creature_model_info` SET `gender` = '0' WHERE modelid = 17456;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 17476;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 19284;
UPDATE `creature_model_info` SET `gender` = '0' WHERE modelid = 19595;
UPDATE `creature_model_info` SET `combat_reach` = '1.65' WHERE modelid = 19744;
UPDATE `creature_model_info` SET `gender` = '0' WHERE modelid = 20017;
UPDATE `creature_model_info` SET `bounding_radius` = '0.383' WHERE modelid = 20707;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 20707;
UPDATE `creature_model_info` SET `combat_reach` = '5' WHERE modelid = 20763;
UPDATE `creature_model_info` SET `combat_reach` = '0.9' WHERE modelid = 20833;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 21114;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 21270;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 21271;
UPDATE `creature_model_info` SET `combat_reach` = '1.725' WHERE modelid = 21272;
UPDATE `creature_model_info` SET `bounding_radius` = '0.5' WHERE modelid = 21342;
UPDATE `creature_model_info` SET `combat_reach` = '1' WHERE modelid = 21342;
UPDATE `creature_model_info` SET `gender` = '0' WHERE modelid = 21342;
UPDATE `creature_model_info` SET `gender` = '0' WHERE modelid = 21718;
UPDATE `creature_model_info` SET `gender` = '0' WHERE modelid = 21961;
UPDATE `creature_model_info` SET `gender` = '0' WHERE modelid = 21983;
UPDATE `creature_model_info` SET `gender` = '0' WHERE modelid = 21984;
UPDATE `creature_model_info` SET `gender` = '0' WHERE modelid = 21985;
UPDATE `creature_model_info` SET `gender` = '0' WHERE modelid = 21986;
UPDATE `creature_model_info` SET `gender` = '0' WHERE modelid = 21987;
UPDATE `creature_model_info` SET `gender` = '0' WHERE modelid = 22005;
UPDATE `creature_model_info` SET `gender` = '0' WHERE modelid = 22015;
UPDATE `creature_model_info` SET `combat_reach` = '0' WHERE modelid = 22042;
UPDATE `creature_model_info` SET `gender` = '0' WHERE modelid = 22042;
UPDATE `creature_model_info` SET `gender` = '0' WHERE modelid = 22115;
UPDATE `creature_model_info` SET `gender` = '0' WHERE modelid = 22116;
UPDATE `creature_model_info` SET `gender` = '0' WHERE modelid = 22136;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 22152;
UPDATE `creature_model_info` SET `combat_reach` = '0' WHERE modelid = 22181;
UPDATE `creature_model_info` SET `gender` = '0' WHERE modelid = 22207;
UPDATE `creature_model_info` SET `gender` = '0' WHERE modelid = 22229;
UPDATE `creature_model_info` SET `combat_reach` = '0' WHERE modelid = 22243;
UPDATE `creature_model_info` SET `gender` = '0' WHERE modelid = 22243;
UPDATE `creature_model_info` SET `gender` = '0' WHERE modelid = 22342;
UPDATE `creature_model_info` SET `gender` = '0' WHERE modelid = 22392;
UPDATE `creature_model_info` SET `gender` = '0' WHERE modelid = 22447;
UPDATE `creature_model_info` SET `combat_reach` = '0' WHERE modelid = 22471;
UPDATE `creature_model_info` SET `combat_reach` = '0' WHERE modelid = 22475;
UPDATE `creature_model_info` SET `combat_reach` = '0' WHERE modelid = 22501;
UPDATE `creature_model_info` SET `gender` = '0' WHERE modelid = 22607;
UPDATE `creature_model_info` SET `gender` = '0' WHERE modelid = 22648;
UPDATE `creature_model_info` SET `gender` = '0' WHERE modelid = 22649;
UPDATE `creature_model_info` SET `combat_reach` = '1.8' WHERE modelid = 23167;
UPDATE `creature_model_info` SET `gender` = '0' WHERE modelid = 23277;
UPDATE `creature_model_info` SET `gender` = '0' WHERE modelid = 23317;
UPDATE `creature_model_info` SET `gender` = '0' WHERE modelid = 23319;
UPDATE `creature_model_info` SET `gender` = '0' WHERE modelid = 23356;
UPDATE `creature_model_info` SET `bounding_radius` = '0.2205' WHERE modelid = 23513;
UPDATE `creature_model_info` SET `combat_reach` = '0.945' WHERE modelid = 23513;
UPDATE `creature_model_info` SET `combat_reach` = '1.2' WHERE modelid = 23517;
UPDATE `creature_model_info` SET `combat_reach` = '0.6' WHERE modelid = 23521;
UPDATE `creature_model_info` SET `gender` = '0' WHERE modelid = 23724;
UPDATE `creature_model_info` SET `combat_reach` = '0' WHERE modelid = 23772;
UPDATE `creature_model_info` SET `gender` = '0' WHERE modelid = 23772;
UPDATE `creature_model_info` SET `combat_reach` = '0' WHERE modelid = 23774;
UPDATE `creature_model_info` SET `gender` = '0' WHERE modelid = 23774;
UPDATE `creature_model_info` SET `gender` = '0' WHERE modelid = 23819;
UPDATE `creature_model_info` SET `combat_reach` = '0' WHERE modelid = 23826;
UPDATE `creature_model_info` SET `gender` = '0' WHERE modelid = 23826;
UPDATE `creature_model_info` SET `gender` = '0' WHERE modelid = 23828;
UPDATE `creature_model_info` SET `gender` = '0' WHERE modelid = 23926;
UPDATE `creature_model_info` SET `gender` = '0' WHERE modelid = 23951;
UPDATE `creature_model_info` SET `combat_reach` = '0' WHERE modelid = 24235;
UPDATE `creature_model_info` SET `gender` = '0' WHERE modelid = 24235;
UPDATE `creature_model_info` SET `gender` = '0' WHERE modelid = 24416;
UPDATE `creature_model_info` SET `gender` = '0' WHERE modelid = 24418;
UPDATE `creature_model_info` SET `gender` = '0' WHERE modelid = 24443;
UPDATE `creature_model_info` SET `gender` = '0' WHERE modelid = 24448;
UPDATE `creature_model_info` SET `gender` = '0' WHERE modelid = 24454;
UPDATE `creature_model_info` SET `gender` = '0' WHERE modelid = 24491;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 24607;
UPDATE `creature_model_info` SET `gender` = '0' WHERE modelid = 24654;
UPDATE `creature_model_info` SET `gender` = '0' WHERE modelid = 24805;
UPDATE `creature_model_info` SET `bounding_radius` = '0.91' WHERE modelid = 24890;
UPDATE `creature_model_info` SET `combat_reach` = '0' WHERE modelid = 24890;
UPDATE `creature_model_info` SET `combat_reach` = '0' WHERE modelid = 24895;
UPDATE `creature_model_info` SET `bounding_radius` = '0.1' WHERE modelid = 24897;
UPDATE `creature_model_info` SET `combat_reach` = '0' WHERE modelid = 24897;
UPDATE `creature_model_info` SET `bounding_radius` = '0.1' WHERE modelid = 24898;
UPDATE `creature_model_info` SET `combat_reach` = '0' WHERE modelid = 24898;
UPDATE `creature_model_info` SET `combat_reach` = '1.65' WHERE modelid = 24916;
UPDATE `creature_model_info` SET `gender` = '0' WHERE modelid = 24938;
UPDATE `creature_model_info` SET `gender` = '0' WHERE modelid = 25016;
UPDATE `creature_model_info` SET `combat_reach` = '0' WHERE modelid = 25071;
UPDATE `creature_model_info` SET `gender` = '0' WHERE modelid = 25096;
UPDATE `creature_model_info` SET `gender` = '0' WHERE modelid = 25128;
UPDATE `creature_model_info` SET `gender` = '0' WHERE modelid = 25155;
UPDATE `creature_model_info` SET `gender` = '0' WHERE modelid = 25157;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 25166;
UPDATE `creature_model_info` SET `gender` = '0' WHERE modelid = 25192;
UPDATE `creature_model_info` SET `gender` = '0' WHERE modelid = 25218;
UPDATE `creature_model_info` SET `gender` = '0' WHERE modelid = 25254;
UPDATE `creature_model_info` SET `gender` = '0' WHERE modelid = 25269;
UPDATE `creature_model_info` SET `gender` = '0' WHERE modelid = 25300;
UPDATE `creature_model_info` SET `combat_reach` = '0' WHERE modelid = 25318;
UPDATE `creature_model_info` SET `combat_reach` = '0' WHERE modelid = 25334;
UPDATE `creature_model_info` SET `gender` = '0' WHERE modelid = 25395;
UPDATE `creature_model_info` SET `gender` = '0' WHERE modelid = 25400;
UPDATE `creature_model_info` SET `gender` = '0' WHERE modelid = 25442;
UPDATE `creature_model_info` SET `gender` = '0' WHERE modelid = 25454;
UPDATE `creature_model_info` SET `gender` = '0' WHERE modelid = 25455;
UPDATE `creature_model_info` SET `gender` = '0' WHERE modelid = 25484;
UPDATE `creature_model_info` SET `gender` = '0' WHERE modelid = 25485;
UPDATE `creature_model_info` SET `gender` = '0' WHERE modelid = 25491;
UPDATE `creature_model_info` SET `gender` = '0' WHERE modelid = 25515;
UPDATE `creature_model_info` SET `gender` = '0' WHERE modelid = 25588;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 25594;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 25595;
UPDATE `creature_model_info` SET `combat_reach` = '1.725' WHERE modelid = 25602;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 25603;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 25604;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 25605;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 25607;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 25608;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 25609;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 25610;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 25611;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 25612;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 25613;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 25614;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 25615;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 25616;
UPDATE `creature_model_info` SET `combat_reach` = '1.725' WHERE modelid = 25618;
UPDATE `creature_model_info` SET `combat_reach` = '1.725' WHERE modelid = 25619;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 25620;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 25621;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 25622;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 25623;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 25635;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 25636;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 25637;
UPDATE `creature_model_info` SET `gender` = '0' WHERE modelid = 25641;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 25644;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 25645;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 25646;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 25647;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 25648;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 25649;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 25650;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 25651;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 25655;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 25673;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 25674;
UPDATE `creature_model_info` SET `combat_reach` = '0' WHERE modelid = 25692;
UPDATE `creature_model_info` SET `gender` = '0' WHERE modelid = 25743;
UPDATE `creature_model_info` SET `combat_reach` = '0' WHERE modelid = 25748;
UPDATE `creature_model_info` SET `gender` = '0' WHERE modelid = 25748;
UPDATE `creature_model_info` SET `combat_reach` = '0' WHERE modelid = 25754;
UPDATE `creature_model_info` SET `gender` = '0' WHERE modelid = 25754;
UPDATE `creature_model_info` SET `combat_reach` = '0' WHERE modelid = 25755;
UPDATE `creature_model_info` SET `gender` = '0' WHERE modelid = 25755;
UPDATE `creature_model_info` SET `combat_reach` = '0' WHERE modelid = 25757;
UPDATE `creature_model_info` SET `gender` = '0' WHERE modelid = 25757;
UPDATE `creature_model_info` SET `combat_reach` = '0' WHERE modelid = 25758;
UPDATE `creature_model_info` SET `gender` = '0' WHERE modelid = 25758;
UPDATE `creature_model_info` SET `gender` = '0' WHERE modelid = 25770;
UPDATE `creature_model_info` SET `combat_reach` = '1.725' WHERE modelid = 25791;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 25806;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 25807;
UPDATE `creature_model_info` SET `combat_reach` = '1' WHERE modelid = 25871;
UPDATE `creature_model_info` SET `gender` = '2' WHERE modelid = 25871;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 25875;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 25876;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 25877;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 25878;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 25879;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 25880;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 25881;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 25882;
UPDATE `creature_model_info` SET `combat_reach` = '0' WHERE modelid = 25889;
UPDATE `creature_model_info` SET `gender` = '0' WHERE modelid = 25924;
UPDATE `creature_model_info` SET `gender` = '0' WHERE modelid = 25926;
UPDATE `creature_model_info` SET `gender` = '0' WHERE modelid = 25940;
UPDATE `creature_model_info` SET `combat_reach` = '1.65' WHERE modelid = 25947;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 25983;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 26067;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 26068;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 26069;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 26070;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 26071;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 26072;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 26074;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 26075;
UPDATE `creature_model_info` SET `combat_reach` = '1.725' WHERE modelid = 26078;
UPDATE `creature_model_info` SET `gender` = '0' WHERE modelid = 26122;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 26138;
UPDATE `creature_model_info` SET `gender` = '0' WHERE modelid = 26254;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 26299;
UPDATE `creature_model_info` SET `combat_reach` = '1.725' WHERE modelid = 26300;
UPDATE `creature_model_info` SET `combat_reach` = '0' WHERE modelid = 26303;
UPDATE `creature_model_info` SET `gender` = '0' WHERE modelid = 26303;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 26307;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 26309;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 26310;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 26311;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 26312;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 26313;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 26321;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 26330;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 26335;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 26336;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 26337;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 26338;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 26339;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 26347;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 26372;
UPDATE `creature_model_info` SET `gender` = '0' WHERE modelid = 26372;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 26373;
UPDATE `creature_model_info` SET `combat_reach` = '1.725' WHERE modelid = 26374;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 26375;
UPDATE `creature_model_info` SET `gender` = '1' WHERE modelid = 26375;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 26376;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 26377;
UPDATE `creature_model_info` SET `combat_reach` = '1.725' WHERE modelid = 26378;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 26390;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 26394;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 26395;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 26396;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 26397;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 26398;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 26413;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 26414;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 26417;
UPDATE `creature_model_info` SET `gender` = '0' WHERE modelid = 26417;
UPDATE `creature_model_info` SET `combat_reach` = '1.725' WHERE modelid = 26437;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 26438;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 26440;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 26441;
UPDATE `creature_model_info` SET `combat_reach` = '0.75' WHERE modelid = 26442;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 26443;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 26444;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 26445;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 26463;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 26464;
UPDATE `creature_model_info` SET `gender` = '1' WHERE modelid = 26464;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 26465;
UPDATE `creature_model_info` SET `combat_reach` = '0' WHERE modelid = 26484;
UPDATE `creature_model_info` SET `combat_reach` = '0' WHERE modelid = 26495;
UPDATE `creature_model_info` SET `combat_reach` = '0' WHERE modelid = 26496;
UPDATE `creature_model_info` SET `combat_reach` = '0' WHERE modelid = 26499;
UPDATE `creature_model_info` SET `combat_reach` = '0' WHERE modelid = 26501;
UPDATE `creature_model_info` SET `combat_reach` = '0' WHERE modelid = 26502;
UPDATE `creature_model_info` SET `combat_reach` = '0' WHERE modelid = 26503;
UPDATE `creature_model_info` SET `combat_reach` = '0' WHERE modelid = 26504;
UPDATE `creature_model_info` SET `combat_reach` = '0' WHERE modelid = 26505;
UPDATE `creature_model_info` SET `combat_reach` = '0.3125' WHERE modelid = 26524;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 26525;
UPDATE `creature_model_info` SET `combat_reach` = '0.15' WHERE modelid = 26530;
UPDATE `creature_model_info` SET `combat_reach` = '0.15' WHERE modelid = 26531;
UPDATE `creature_model_info` SET `combat_reach` = '1.65' WHERE modelid = 26532;
UPDATE `creature_model_info` SET `combat_reach` = '0.15' WHERE modelid = 26547;
UPDATE `creature_model_info` SET `combat_reach` = '0.1' WHERE modelid = 26557;
UPDATE `creature_model_info` SET `combat_reach` = '0' WHERE modelid = 26570;
UPDATE `creature_model_info` SET `gender` = '0' WHERE modelid = 26656;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 26766;
UPDATE `creature_model_info` SET `combat_reach` = '1.875' WHERE modelid = 26770;
UPDATE `creature_model_info` SET `combat_reach` = '1.875' WHERE modelid = 26771;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 26779;
UPDATE `creature_model_info` SET `gender` = '0' WHERE modelid = 26779;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 26998;
UPDATE `creature_model_info` SET `combat_reach` = '0' WHERE modelid = 27019;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 27068;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 27157;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 27158;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 27159;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 27160;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 27161;
UPDATE `creature_model_info` SET `combat_reach` = '0' WHERE modelid = 27174;
UPDATE `creature_model_info` SET `combat_reach` = '0' WHERE modelid = 27187;
UPDATE `creature_model_info` SET `combat_reach` = '3' WHERE modelid = 27211;
UPDATE `creature_model_info` SET `gender` = '2' WHERE modelid = 27211;
UPDATE `creature_model_info` SET `combat_reach` = '1.65' WHERE modelid = 27215;
UPDATE `creature_model_info` SET `combat_reach` = '1.65' WHERE modelid = 27216;
UPDATE `creature_model_info` SET `combat_reach` = '1.65' WHERE modelid = 27217;
UPDATE `creature_model_info` SET `combat_reach` = '4' WHERE modelid = 27244;
UPDATE `creature_model_info` SET `gender` = '2' WHERE modelid = 27244;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 27287;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 27332;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 27334;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 27398;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 27448;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 27449;
UPDATE `creature_model_info` SET `combat_reach` = '1.725' WHERE modelid = 27465;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 27509;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 27518;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 27524;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 27556;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 27557;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 27559;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 27560;
UPDATE `creature_model_info` SET `combat_reach` = '2.1' WHERE modelid = 27585;
UPDATE `creature_model_info` SET `combat_reach` = '1.8' WHERE modelid = 27587;
UPDATE `creature_model_info` SET `combat_reach` = '1.8' WHERE modelid = 27592;
UPDATE `creature_model_info` SET `combat_reach` = '1.95' WHERE modelid = 27616;
UPDATE `creature_model_info` SET `combat_reach` = '1.725' WHERE modelid = 27657;
UPDATE `creature_model_info` SET `combat_reach` = '1' WHERE modelid = 27667;
UPDATE `creature_model_info` SET `gender` = '2' WHERE modelid = 27667;
UPDATE `creature_model_info` SET `gender` = '2' WHERE modelid = 27682;
UPDATE `creature_model_info` SET `combat_reach` = '0.3' WHERE modelid = 27718;
UPDATE `creature_model_info` SET `gender` = '2' WHERE modelid = 27718;
UPDATE `creature_model_info` SET `combat_reach` = '0.375' WHERE modelid = 27719;
UPDATE `creature_model_info` SET `gender` = '2' WHERE modelid = 27719;
UPDATE `creature_model_info` SET `combat_reach` = '1.25' WHERE modelid = 27726;
UPDATE `creature_model_info` SET `gender` = '2' WHERE modelid = 27726;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 27756;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 27782;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 27799;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 27800;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 27801;
UPDATE `creature_model_info` SET `combat_reach` = '1.35' WHERE modelid = 27821;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 27822;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 27852;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 27853;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 27854;
UPDATE `creature_model_info` SET `gender` = '2' WHERE modelid = 27881;
UPDATE `creature_model_info` SET `gender` = '2' WHERE modelid = 27882;
UPDATE `creature_model_info` SET `combat_reach` = '1.8' WHERE modelid = 27886;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 27912;
UPDATE `creature_model_info` SET `gender` = '1' WHERE modelid = 27912;
UPDATE `creature_model_info` SET `combat_reach` = '1' WHERE modelid = 27914;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 27915;
UPDATE `creature_model_info` SET `combat_reach` = '2.9325' WHERE modelid = 27917;
UPDATE `creature_model_info` SET `combat_reach` = '2.55' WHERE modelid = 27918;
UPDATE `creature_model_info` SET `combat_reach` = '2.55' WHERE modelid = 27919;
UPDATE `creature_model_info` SET `combat_reach` = '6.885' WHERE modelid = 27920;
UPDATE `creature_model_info` SET `combat_reach` = '2.55' WHERE modelid = 27921;
UPDATE `creature_model_info` SET `combat_reach` = '2.55' WHERE modelid = 27925;
UPDATE `creature_model_info` SET `combat_reach` = '2.55' WHERE modelid = 27926;
UPDATE `creature_model_info` SET `combat_reach` = '2.9325' WHERE modelid = 27927;
UPDATE `creature_model_info` SET `combat_reach` = '2.55' WHERE modelid = 27928;
UPDATE `creature_model_info` SET `combat_reach` = '2.55' WHERE modelid = 27929;
UPDATE `creature_model_info` SET `combat_reach` = '2.55' WHERE modelid = 27930;
UPDATE `creature_model_info` SET `combat_reach` = '2.55' WHERE modelid = 27931;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 27944;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 27949;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 27952;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 27954;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 27955;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 27956;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 27958;
UPDATE `creature_model_info` SET `combat_reach` = '1.8' WHERE modelid = 27959;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 27960;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 27961;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 27962;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 27963;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 27965;
UPDATE `creature_model_info` SET `gender` = '2' WHERE modelid = 27972;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 27998;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 27999;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 28000;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 28006;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 28119;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 28123;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 28124;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 28125;
UPDATE `creature_model_info` SET `combat_reach` = '1.725' WHERE modelid = 28143;
UPDATE `creature_model_info` SET `combat_reach` = '1.725' WHERE modelid = 28144;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 28145;
UPDATE `creature_model_info` SET `combat_reach` = '1.725' WHERE modelid = 28146;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 28147;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 28148;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 28149;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 28150;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 28152;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 28153;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 28154;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 28155;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 28156;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 28157;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 28159;
UPDATE `creature_model_info` SET `combat_reach` = '1.725' WHERE modelid = 28160;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 28161;
UPDATE `creature_model_info` SET `combat_reach` = '1.725' WHERE modelid = 28162;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 28163;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 28164;
UPDATE `creature_model_info` SET `combat_reach` = '1.725' WHERE modelid = 28165;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 28166;
UPDATE `creature_model_info` SET `combat_reach` = '1.725' WHERE modelid = 28167;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 28168;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 28169;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 28170;
UPDATE `creature_model_info` SET `combat_reach` = '1.725' WHERE modelid = 28171;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 28172;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 28173;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 28174;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 28175;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 28178;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 28180;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 28181;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 28182;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 28184;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 28185;
UPDATE `creature_model_info` SET `combat_reach` = '1.725' WHERE modelid = 28186;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 28187;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 28188;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 28189;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 28191;
UPDATE `creature_model_info` SET `combat_reach` = '1.725' WHERE modelid = 28192;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 28193;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 28194;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 28195;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 28196;
UPDATE `creature_model_info` SET `combat_reach` = '1.725' WHERE modelid = 28199;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 28200;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 28201;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 28202;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 28203;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 28204;
UPDATE `creature_model_info` SET `combat_reach` = '1.725' WHERE modelid = 28205;
UPDATE `creature_model_info` SET `combat_reach` = '4.05' WHERE modelid = 28207;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 28208;
UPDATE `creature_model_info` SET `combat_reach` = '0.6' WHERE modelid = 28212;
UPDATE `creature_model_info` SET `gender` = '2' WHERE modelid = 28212;
UPDATE `creature_model_info` SET `combat_reach` = '1.875' WHERE modelid = 28222;
UPDATE `creature_model_info` SET `gender` = '2' WHERE modelid = 28282;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 28317;
UPDATE `creature_model_info` SET `combat_reach` = '0.825' WHERE modelid = 28318;
UPDATE `creature_model_info` SET `gender` = '2' WHERE modelid = 28318;
UPDATE `creature_model_info` SET `combat_reach` = '1.725' WHERE modelid = 28432;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 28433;
UPDATE `creature_model_info` SET `gender` = '0' WHERE modelid = 28618;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 28680;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 28755;
UPDATE `creature_model_info` SET `bounding_radius` = '1' WHERE modelid = 28918;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 28918;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 28986;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 28987;
UPDATE `creature_model_info` SET `combat_reach` = '1.65' WHERE modelid = 29076;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 29132;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 29145;
UPDATE `creature_model_info` SET `combat_reach` = '0' WHERE modelid = 29743;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 30310;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 30311;
UPDATE `creature_model_info` SET `combat_reach` = '1.725' WHERE modelid = 30358;
UPDATE `creature_model_info` SET `combat_reach` = '1' WHERE modelid = 30415;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 30439;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 30764;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 30841;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 30842;
UPDATE `creature_model_info` SET `combat_reach` = '0' WHERE modelid = 31548;
UPDATE `creature_template` SET `speed_walk` = '1' WHERE entry = 385;
UPDATE `creature_template` SET `speed_walk` = '1' WHERE entry = 721;
UPDATE `creature_template` SET `speed_walk` = '1' WHERE entry = 1412;
UPDATE `creature_template` SET `speed_walk` = '1' WHERE entry = 3835;
UPDATE `creature_template` SET `speed_walk` = '1' WHERE entry = 4075;
UPDATE `creature_template` SET `speed_walk` = '1' WHERE entry = 6653;
UPDATE `creature_template` SET `speed_run` = '1' WHERE entry = 10218;
UPDATE `creature_template` SET `speed_walk` = '1' WHERE entry = 10218;
UPDATE `creature_template` SET `speed_walk` = '1' WHERE entry = 14881;
UPDATE `creature_template` SET `speed_walk` = '1.6' WHERE entry = 16128;
UPDATE `creature_template` SET `speed_walk` = '1' WHERE entry = 17213;
UPDATE `creature_template` SET `speed_walk` = '1' WHERE entry = 19481;
UPDATE `creature_template` SET `faction_A` = '35', `faction_H` = '35' WHERE entry = 19481;
UPDATE `creature_template` SET `speed_walk` = '1' WHERE entry = 19871;
UPDATE `creature_template` SET `speed_walk` = '1' WHERE entry = 20735;
UPDATE `creature_template` SET `faction_A` = '1734', `faction_H` = '1734' WHERE entry = 22015;
UPDATE `creature_template` SET `speed_run` = '1' WHERE entry = 24026;
UPDATE `creature_template` SET `speed_walk` = '1' WHERE entry = 24196;
UPDATE `creature_template` SET `speed_run` = '1' WHERE entry = 24206;
UPDATE `creature_template` SET `scale` = '1' WHERE entry = 24212;
UPDATE `creature_template` SET `speed_run` = '1' WHERE entry = 24261;
UPDATE `creature_template` SET `speed_run` = '0.857143' WHERE entry = 25058;
UPDATE `creature_template` SET `speed_run` = '1' WHERE entry = 27852;
UPDATE `creature_template` SET `speed_run` = '0.857143' WHERE entry = 27870;
UPDATE `creature_template` SET `scale` = '1' WHERE entry = 27870;
UPDATE `creature_template` SET `baseattacktime` = '2000' WHERE entry = 28036;
UPDATE `creature_template` SET `speed_run` = '1' WHERE entry = 28053;
UPDATE `creature_template` SET `scale` = '1' WHERE entry = 28078;
UPDATE `creature_template` SET `speed_walk` = '1.11111' WHERE entry = 28113;
UPDATE `creature_template` SET `faction_A` = '14', `faction_H` = '14' WHERE entry = 28123;
UPDATE `creature_template` SET `faction_A` = '14', `faction_H` = '14' WHERE entry = 28124;
UPDATE `creature_template` SET `speed_run` = '1' WHERE entry = 28255;
UPDATE `creature_template` SET `speed_run` = '1' WHERE entry = 28274;
UPDATE `creature_template` SET `speed_walk` = '1' WHERE entry = 28401;
UPDATE `creature_template` SET `speed_walk` = '1' WHERE entry = 28561;
UPDATE `creature_template` SET `speed_walk` = '1' WHERE entry = 28672;
UPDATE `creature_template` SET `faction_A` = '2027', `faction_H` = '2027' WHERE entry = 28705;
UPDATE `creature_template` SET `speed_walk` = '1' WHERE entry = 28844;
UPDATE `creature_template` SET `baseattacktime` = '1500' WHERE entry = 28990;
UPDATE `creature_template` SET `faction_A` = '2007', `faction_H` = '2007' WHERE entry = 29156;
UPDATE `creature_template` SET `speed_run` = '2.14286' WHERE entry = 29264;
UPDATE `creature_template` SET `speed_walk` = '2' WHERE entry = 29264;
UPDATE `creature_template` SET `baseattacktime` = '1500' WHERE entry = 29264;
UPDATE `creature_template` SET `faction_A` = '2007', `faction_H` = '2007' WHERE entry = 29512;
UPDATE `creature_template` SET `speed_run` = '1' WHERE entry = 29667;
UPDATE `creature_template` SET `faction_A` = '534', `faction_H` = '534' WHERE entry = 29667;
UPDATE `creature_template` SET `speed_run` = '1' WHERE entry = 29668;
UPDATE `creature_template` SET `faction_A` = '534', `faction_H` = '534' WHERE entry = 29668;
UPDATE `creature_template` SET `speed_run` = '1' WHERE entry = 29669;
UPDATE `creature_template` SET `faction_A` = '534', `faction_H` = '534' WHERE entry = 29669;
UPDATE `creature_template` SET `speed_run` = '1' WHERE entry = 29670;
UPDATE `creature_template` SET `faction_A` = '534', `faction_H` = '534' WHERE entry = 29670;
UPDATE `creature_template` SET `speed_run` = '1' WHERE entry = 29671;
UPDATE `creature_template` SET `faction_A` = '534', `faction_H` = '534' WHERE entry = 29671;
UPDATE `creature_template` SET `speed_run` = '1' WHERE entry = 29672;
UPDATE `creature_template` SET `speed_run` = '1' WHERE entry = 29673;
UPDATE `creature_template` SET `faction_A` = '714', `faction_H` = '714' WHERE entry = 29673;
UPDATE `creature_template` SET `speed_run` = '1' WHERE entry = 29674;
UPDATE `creature_template` SET `speed_run` = '1' WHERE entry = 29675;
UPDATE `creature_template` SET `faction_A` = '714', `faction_H` = '714' WHERE entry = 29675;
UPDATE `creature_template` SET `speed_run` = '1' WHERE entry = 29676;
UPDATE `creature_template` SET `speed_run` = '1' WHERE entry = 29691;
UPDATE `creature_template` SET `scale` = '1' WHERE entry = 29692;
UPDATE `creature_template` SET `speed_run` = '1' WHERE entry = 29763;
UPDATE `creature_template` SET `faction_A` = '1375', `faction_H` = '1375' WHERE entry = 29763;
UPDATE `creature_template` SET `speed_run` = '1' WHERE entry = 29764;
UPDATE `creature_template` SET `faction_A` = '1375', `faction_H` = '1375' WHERE entry = 29764;
UPDATE `creature_template` SET `speed_run` = '1' WHERE entry = 29765;
UPDATE `creature_template` SET `faction_A` = '1375', `faction_H` = '1375' WHERE entry = 29765;
UPDATE `creature_template` SET `speed_run` = '1' WHERE entry = 29766;
UPDATE `creature_template` SET `faction_A` = '1375', `faction_H` = '1375' WHERE entry = 29766;
UPDATE `creature_template` SET `speed_run` = '1' WHERE entry = 29802;
UPDATE `creature_template` SET `speed_walk` = '1.2' WHERE entry = 29802;
UPDATE `creature_template` SET `speed_run` = '1' WHERE entry = 29807;
UPDATE `creature_template` SET `speed_walk` = '1.2' WHERE entry = 29929;
UPDATE `creature_template` SET `speed_run` = '0.857143' WHERE entry = 30094;
UPDATE `creature_template` SET `speed_run` = '0.857143' WHERE entry = 30095;
UPDATE `creature_template` SET `speed_walk` = '1' WHERE entry = 30115;
UPDATE `creature_template` SET `faction_A` = '2007', `faction_H` = '2007' WHERE entry = 30116;
UPDATE `creature_template` SET `faction_A` = '2007', `faction_H` = '2007' WHERE entry = 30117;
UPDATE `creature_template` SET `speed_run` = '1' WHERE entry = 30560;
UPDATE `creature_template` SET `scale` = '1' WHERE entry = 30856;
UPDATE `creature_template` SET `speed_run` = '1.14286' WHERE entry = 30864;
UPDATE `creature_template` SET `faction_A` = '35', `faction_H` = '35' WHERE entry = 31081;
UPDATE `creature_template` SET `faction_A` = '35', `faction_H` = '35' WHERE entry = 31085;
UPDATE `creature_template` SET `faction_A` = '634', `faction_H` = '634' WHERE entry = 31231;
UPDATE `creature_template` SET `speed_run` = '1.38571' WHERE entry = 31238;
UPDATE `creature_template` SET `faction_A` = '2007', `faction_H` = '2007' WHERE entry = 31238;
UPDATE `creature_template` SET `speed_run` = '0.857143' WHERE entry = 31709;
UPDATE `creature_template` SET `speed_run` = '0.857143' WHERE entry = 31710;
UPDATE `creature_template` SET `speed_run` = '0.857143' WHERE entry = 31711;
UPDATE `creature_template` SET `speed_run` = '0.857143' WHERE entry = 31714;
UPDATE `creature_template` SET `speed_walk` = '1.6' WHERE entry = 31719;
UPDATE `creature_template` SET `speed_run` = '0.857143' WHERE entry = 31728;
UPDATE `creature_template` SET `speed_run` = '0.857143' WHERE entry = 31729;
UPDATE `creature_template` SET `speed_run` = '0.857143' WHERE entry = 31730;
UPDATE `creature_template` SET `speed_run` = '0.857143' WHERE entry = 31732;
UPDATE `creature_template` SET `speed_run` = '0.857143' WHERE entry = 31733;
UPDATE `creature_template` SET `speed_walk` = '0.4' WHERE entry = 31733;
UPDATE `creature_template` SET `speed_run` = '0.857143' WHERE entry = 31735;
UPDATE `creature_template` SET `speed_run` = '0.857143' WHERE entry = 31740;
UPDATE `creature_template` SET `speed_run` = '0.857143' WHERE entry = 31741;
UPDATE `creature_template` SET `speed_run` = '0.857143' WHERE entry = 31742;
UPDATE `creature_template` SET `speed_walk` = '1' WHERE entry = 31755;
UPDATE `creature_template` SET `speed_run` = '0.857143' WHERE entry = 31795;
UPDATE `creature_template` SET `speed_run` = '0.857143' WHERE entry = 31796;
UPDATE `creature_template` SET `speed_run` = '0.952381' WHERE entry = 31852;
UPDATE `creature_template` SET `speed_walk` = '0.666668' WHERE entry = 31852;
UPDATE `creature_template` SET `speed_run` = '1' WHERE entry = 31885;
UPDATE `creature_template` SET `speed_walk` = '1.2' WHERE entry = 31885;
UPDATE `creature_template` SET `speed_run` = '1' WHERE entry = 31886;
UPDATE `creature_template` SET `speed_walk` = '1.2' WHERE entry = 31886;
UPDATE `creature_template` SET `speed_run` = '1.38571' WHERE entry = 32207;
UPDATE `creature_template` SET `speed_walk` = '0.4' WHERE entry = 32265;
UPDATE `creature_template` SET `speed_run` = '1.38571' WHERE entry = 32336;
UPDATE `creature_template` SET `speed_run` = '0.714286' WHERE entry = 32428;
UPDATE `creature_template` SET `speed_run` = '0.857143' WHERE entry = 32450;
UPDATE `creature_template` SET `speed_run` = '0.714286' WHERE entry = 32466;
UPDATE `creature_template` SET `speed_run` = '0.857143' WHERE entry = 32470;
UPDATE `creature_template` SET `speed_run` = '1.38571' WHERE entry = 32597;
UPDATE `creature_template` SET `speed_run` = '1.38571' WHERE entry = 32598;
UPDATE `creature_template` SET `speed_run` = '1.38571' WHERE entry = 32600;
UPDATE `creature_template` SET `speed_run` = '0.857143' WHERE entry = 32606;
UPDATE `creature_template` SET `speed_run` = '1.42857' WHERE entry = 32653;
UPDATE `creature_template` SET `baseattacktime` = '1000' WHERE entry = 32653;
UPDATE `creature_template` SET `faction_A` = '1732', `faction_H` = '1732' WHERE entry = 32695;
UPDATE `creature_template` SET `faction_A` = '1735', `faction_H` = '1735' WHERE entry = 32697;
UPDATE `creature_template` SET `faction_A` = '1732', `faction_H` = '1732' WHERE entry = 32700;
UPDATE `creature_template` SET `faction_A` = '1735', `faction_H` = '1735' WHERE entry = 32702;
UPDATE `creature_template` SET `faction_A` = '1732', `faction_H` = '1732' WHERE entry = 32704;
UPDATE `creature_template` SET `faction_A` = '1735', `faction_H` = '1735' WHERE entry = 32706;
UPDATE `creature_template` SET `faction_A` = '1732', `faction_H` = '1732' WHERE entry = 32708;
UPDATE `creature_template` SET `faction_A` = '1732', `faction_H` = '1732' WHERE entry = 32710;
UPDATE `creature_template` SET `faction_A` = '1735', `faction_H` = '1735' WHERE entry = 32711;
UPDATE `creature_template` SET `faction_A` = '2007', `faction_H` = '2007' WHERE entry = 32712;
UPDATE `creature_template` SET `faction_A` = '1735', `faction_H` = '1735' WHERE entry = 32713;
UPDATE `creature_template` SET `faction_A` = '1735', `faction_H` = '1735' WHERE entry = 32715;
UPDATE `creature_template` SET `faction_A` = '1732', `faction_H` = '1732' WHERE entry = 32716;
UPDATE `creature_template` SET `faction_A` = '1735', `faction_H` = '1735' WHERE entry = 32717;
UPDATE `creature_template` SET `faction_A` = '1732', `faction_H` = '1732' WHERE entry = 32718;
UPDATE `creature_template` SET `faction_A` = '1735', `faction_H` = '1735' WHERE entry = 32719;
UPDATE `creature_template` SET `faction_A` = '35', `faction_H` = '35' WHERE entry = 32746;
UPDATE `creature_template` SET `faction_A` = '1735', `faction_H` = '1735' WHERE entry = 32751;
UPDATE `creature_template` SET `faction_A` = '1732', `faction_H` = '1732' WHERE entry = 32752;
UPDATE `creature_template` SET `faction_A` = '2007', `faction_H` = '2007' WHERE entry = 32844;
UPDATE `creature_template` SET `speed_run` = '1' WHERE entry = 33224;
UPDATE `creature_template` SET `faction_A` = '2070', `faction_H` = '2070' WHERE entry = 34244;
UPDATE `creature_template` SET `faction_A` = '2007', `faction_H` = '2007' WHERE entry = 34252;
UPDATE `creature_template` SET `speed_run` = '0.857143' WHERE entry = 34330;
UPDATE `creature_template` SET `speed_run` = '1' WHERE entry = 34952;
UPDATE `creature_template` SET `faction_A` = '534', `faction_H` = '534' WHERE entry = 34952;
UPDATE `creature_template` SET `speed_run` = '1' WHERE entry = 34953;
UPDATE `creature_template` SET `faction_A` = '714', `faction_H` = '714' WHERE entry = 34953;
UPDATE `creature_template` SET `speed_run` = '0.992063' WHERE entry = 34984;
UPDATE `creature_template` SET `faction_A` = '2123', `faction_H` = '2123' WHERE entry = 35495;
UPDATE `creature_template` SET `faction_A` = '2123', `faction_H` = '2123' WHERE entry = 35508;
UPDATE `creature_template` SET `speed_run` = '0.992063' WHERE entry = 35594;
UPDATE `creature_template` SET `faction_A` = '534', `faction_H` = '534' WHERE entry = 35594;
UPDATE `creature_template` SET `speed_run` = '0.992063' WHERE entry = 35607;
UPDATE `creature_template` SET `faction_A` = '714', `faction_H` = '714' WHERE entry = 35607;
UPDATE `creature_template` SET `unit_class` = '4' WHERE entry = 36774;
UPDATE `creature_template` SET `faction_A` = '2027', `faction_H` = '2027' WHERE entry = 36774;
UPDATE `creature_template` SET `unit_class` = '4' WHERE entry = 36776;
UPDATE `creature_template` SET `faction_A` = '534', `faction_H` = '534' WHERE entry = 37776;
UPDATE `creature_template` SET `faction_A` = '714', `faction_H` = '714' WHERE entry = 37780;
UPDATE `creature_template` SET `speed_run` = '2.28571' WHERE entry = 40160;
SET @GUID := 101279;
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`)
VALUES (@GUID, '4075', '571', '1', '1', '1141', '0', '5744.057', '530.3785', '652.8215', '5.613226', '300', '0', '0', '8', '0', '0', '2');
REPLACE INTO `creature_addon` VALUES (@GUID, @GUID, 0, 0, 1, 0, '');
REPLACE INTO `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`) VALUES
(@GUID, '1', '5735.67300', '5735.67300', '652.83320'),
(@GUID, '2', '5736.59100', '5736.59100', '652.83320'),
(@GUID, '3', '5737.96800', '5737.96800', '652.81840'),
(@GUID, '4', '5739.18400', '5739.18400', '652.82040'),
(@GUID, '5', '5739.74400', '5739.74400', '652.82460'),
(@GUID, '6', '5746.11000', '5746.11000', '652.82000'),
(@GUID, '7', '5751.63800', '5751.63800', '652.79990'),
(@GUID, '8', '5752.31800', '5752.31800', '652.87450'),
(@GUID, '9', '5752.31800', '5752.31800', '652.87450');
SET @GUID := 112281;
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`)
VALUES(@GUID, '32265', '571', '1', '1', '17200', '0', '5702.116', '586.9582', '653.6385', '0.8802986', '300', '0', '0', '6986', '0', '0', '2');
REPLACE INTO `creature_addon` VALUES (@GUID, @GUID, 0, 50331648, 1, 0, '');
REPLACE INTO `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`) VALUES
(@GUID, '1', '5700.71900', '5700.71900', '653.64290'),
(@GUID, '2', '5701.35500', '5701.35500', '653.64290'),
(@GUID, '3', '5702.14300', '5702.14300', '653.63830'),
(@GUID, '4', '5704.13700', '5704.13700', '653.64000'),
(@GUID, '5', '5704.13700', '5704.13700', '653.64000');
SET @GUID := 98230;
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`)
VALUES (@GUID, '30137', '571', '1', '1', '26779', '0', '5817.645', '647.8217', '609.8859', '5.015419', '300', '0', '0', '10282', '0', '0', '2');
REPLACE INTO `creature_addon` VALUES (@GUID, @GUID, 0, 0, 1, 0, '');
REPLACE INTO `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`) VALUES
(@GUID, '1', '5819.04900', '5819.04900', '609.27090'),
(@GUID, '2', '5818.50900', '5818.50900', '609.27090'),
(@GUID, '3', '5817.78400', '5817.78400', '609.91120'),
(@GUID, '4', '5817.21900', '5817.21900', '609.88590'),
(@GUID, '5', '5818.43500', '5818.43500', '609.88590'),
(@GUID, '6', '5819.58800', '5819.58800', '609.88590'),
(@GUID, '7', '5819.83700', '5819.83700', '609.88590'),
(@GUID, '8', '5819.83700', '5819.83700', '609.88590');
SET @GUID := 108925;
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`)
VALUES (@GUID, '29802', '571', '1', '1', '26557', '0', '5813.73', '682.5225', '653.603', '0.1830185', '300', '0', '0', '42', '0', '0', '2');
REPLACE INTO `creature_addon` VALUES (@GUID, @GUID, 0, 0, 1, 0, '');
REPLACE INTO `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`) VALUES
(@GUID, '1', '5808.22500', '5808.22500', '653.63230'),
(@GUID, '2', '5809.84200', '5809.84200', '653.68620'),
(@GUID, '3', '5813.70900', '5813.70900', '653.60330'),
(@GUID, '4', '5816.81500', '5816.81500', '653.57550'),
(@GUID, '5', '5817.20000', '5817.20000', '653.63100'),
(@GUID, '6', '5814.23500', '5814.23500', '653.65870'),
(@GUID, '7', '5809.92900', '5809.92900', '653.76970'),
(@GUID, '8', '5808.22500', '5808.22500', '653.63230'),
(@GUID, '9', '5809.84200', '5809.84200', '653.68620'),
(@GUID, '10', '5813.70900', '5813.70900', '653.60330');

# NeatElves
UPDATE `creature_template` SET `gossip_menu_id` = 1582 WHERE `entry` = 12196;
UPDATE `creature_template` SET `gossip_menu_id` = 1582 WHERE `entry` = 7731;
UPDATE `creature_template` SET `gossip_menu_id` = 12460 WHERE `entry` = 16227;
INSERT IGNORE INTO `gossip_menu` (`entry`, `text_id`) VALUES (12460, 7778);
UPDATE `creature_template` SET `gossip_menu_id` = 8076 WHERE `entry` = 19910;
UPDATE gossip_menu SET entry = 8076 WHERE entry = 50318;
UPDATE gossip_menu_option SET menu_id = 8076 WHERE menu_id = 50318;
UPDATE locales_gossip_menu_option SET menu_id = 8076 WHERE menu_id =50318;
UPDATE `creature_template` SET `gossip_menu_id` = 10771 WHERE `entry` = 5395;
INSERT IGNORE INTO `gossip_menu` (`entry`, `text_id`) VALUES (10771, 14932);
UPDATE `creature_template` SET `gossip_menu_id` = 5481 WHERE `entry` = 10182;
INSERT IGNORE INTO `gossip_menu` (`entry`, `text_id`) VALUES (5481, 6533);
UPDATE `creature_template` SET `gossip_menu_id` = 4025 WHERE `entry` = 11317;
INSERT IGNORE INTO `gossip_menu` (`entry`, `text_id`) VALUES (4025, 4891);
UPDATE `creature_template` SET `gossip_menu_id` = 4066 WHERE `entry` = 12031;
INSERT IGNORE INTO `gossip_menu` (`entry`, `text_id`) VALUES (4066, 4959);
UPDATE `creature_template` SET `gossip_menu_id` = 5665 WHERE `entry` = 12032;
UPDATE `creature_template` SET `gossip_menu_id` = 4162 WHERE `entry` = 12340;
INSERT IGNORE INTO `gossip_menu` (`entry`, `text_id`) VALUES (4162, 5212);
UPDATE `creature_template` SET `gossip_menu_id` = 5521 WHERE `entry` = 13697;
INSERT IGNORE INTO `gossip_menu` (`entry`, `text_id`) VALUES (5521, 6574);
UPDATE `creature_template` SET `gossip_menu_id` = 5303 WHERE `entry` = 13699;
INSERT IGNORE INTO `gossip_menu` (`entry`, `text_id`) VALUES (5303, 6335);
UPDATE `creature_template` SET `gossip_menu_id` = 6944 WHERE `entry` = 6726;

# FIX
UPDATE `gameobject_template` SET `flags` = 0 WHERE `entry` = 193996;
SET @NPC := 97666;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=3859.662,`position_y`=3393.562,`position_z`=67.97741 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@NPC,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@NPC;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`) VALUES
(@NPC,1,3856.184,3393.872,68.60241),
(@NPC,2,3853.398,3388.785,70.60241),
(@NPC,3,3856.184,3393.872,68.60241),
(@NPC,4,3859.662,3393.562,67.97741),
(@NPC,5,3865.199,3400.655,64.67162),
(@NPC,6,3862.853,3407.01,64.17162),
(@NPC,7,3864.934,3414.912,64.17162),
(@NPC,8,3862.853,3407.01,64.17162),
(@NPC,9,3865.199,3400.655,64.67162),
(@NPC,10,3859.662,3393.562,67.97741);
SET @NPC := 97667;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=3896.402,`position_y`=3454.12,`position_z`=64.19093 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@NPC,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@NPC;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`) VALUES
(@NPC,1,3890.689,3458.416,65.06593),
(@NPC,2,3878.707,3463.25,64.06593),
(@NPC,3,3865.527,3468.116,64.16493),
(@NPC,4,3867.453,3467.697,64.16493),
(@NPC,5,3878.97,3463.877,64.06593),
(@NPC,6,3896.402,3454.12,64.19093);
SET @NPC := 97668;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=3849.937,`position_y`=3440.836,`position_z`=64.08922 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@NPC,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@NPC;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`) VALUES
(@NPC,1,3844.136,3430.625,64.17162),
(@NPC,2,3836.185,3415.533,67.29662),
(@NPC,3,3838.057,3414.41,67.17162),
(@NPC,4,3843.113,3427.501,64.29662),
(@NPC,5,3848.386,3439.262,64.08922),
(@NPC,6,3849.937,3440.836,64.08922);
SET @NPC := 97669;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=3944.872,`position_y`=3387.368,`position_z`=82.84169 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@NPC,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@NPC;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`) VALUES
(@NPC,1,3958.746,3388.819,83.46669),
(@NPC,2,3939.345,3406.614,80.91746),
(@NPC,3,3932.713,3412.609,80.93697),
(@NPC,4,3931.988,3409.037,80.93697),
(@NPC,5,3940.203,3397.782,80.96669),
(@NPC,6,3944.872,3387.368,82.84169);
SET @NPC := 97670;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=3988.71,`position_y`=3389.023,`position_z`=84.59169 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@NPC,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@NPC;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`) VALUES
(@NPC,1,3995.287,3398.66,83.21669),
(@NPC,2,3999.713,3411.761,84.47887),
(@NPC,3,3992.017,3414.793,83.10387),
(@NPC,4,3980.25,3399.608,80.96669),
(@NPC,5,3973.198,3392.127,81.21669),
(@NPC,6,3981.25,3389.583,83.71669),
(@NPC,7,3988.71,3389.023,84.59169);
SET @NPC := 97671;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=3961.064,`position_y`=3422.165,`position_z`=80.91746 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@NPC,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@NPC;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`) VALUES
(@NPC,1,3958.62,3407.545,80.91746),
(@NPC,2,3959.292,3391.561,82.09169),
(@NPC,3,3959.987,3394.481,81.09169),
(@NPC,4,3961.145,3408.606,80.91746),
(@NPC,5,3963.867,3424.426,80.91746),
(@NPC,6,3961.064,3422.165,80.91746);
SET @NPC := 103444;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=3657.896,`position_y`=3592.591,`position_z`=371.479 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@NPC,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@NPC;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`) VALUES
(@NPC,1,3665.972,3599.461,371.4846),
(@NPC,2,3682.637,3610.097,371.4544),
(@NPC,3,3696.372,3619.76,371.3447),
(@NPC,4,3682.637,3610.097,371.4544),
(@NPC,5,3665.972,3599.461,371.4846),
(@NPC,6,3657.896,3592.591,371.479),
(@NPC,7,3651.491,3585.525,371.674),
(@NPC,8,3651.062,3578.088,371.551),
(@NPC,9,3656.478,3568.307,371.4457),
(@NPC,10,3665.993,3555.432,371.3665),
(@NPC,11,3656.478,3568.307,371.4457),
(@NPC,12,3651.062,3578.088,371.551),
(@NPC,13,3651.473,3585.204,371.6653),
(@NPC,14,3657.896,3592.591,371.479);
SET @NPC := 103426;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=3742.794,`position_y`=3604.008,`position_z`=346.2505 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@NPC,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@NPC;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`) VALUES
(@NPC,1,3728.665,3600.99,345.8076),
(@NPC,2,3716.573,3595.571,346.0472),
(@NPC,3,3709.646,3587.291,345.7931),
(@NPC,4,3705.439,3578.289,345.9121),
(@NPC,5,3703.899,3570.889,345.8815),
(@NPC,6,3704.667,3561.633,345.6407),
(@NPC,7,3706.808,3553.582,345.8144),
(@NPC,8,3712.931,3543.78,345.7907),
(@NPC,9,3718.246,3537.947,345.8893),
(@NPC,10,3729.692,3532.638,345.8766),
(@NPC,11,3741.682,3531.879,345.7675),
(@NPC,12,3752.107,3533.592,345.952),
(@NPC,13,3762.405,3538.37,346.1658),
(@NPC,14,3772.811,3550.474,346.3304),
(@NPC,15,3776.353,3563.746,346.2406),
(@NPC,16,3774.419,3578.473,346.1627),
(@NPC,17,3768.748,3590.277,346.2671),
(@NPC,18,3755.322,3600.473,346.2415),
(@NPC,19,3742.794,3604.008,346.2505);
SET @NPC := 103388;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=3825.312,`position_y`=3561.968,`position_z`=371.449 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@NPC,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@NPC;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`) VALUES
(@NPC,1,3828.243,3550.227,371.6633),
(@NPC,2,3821.141,3538.786,371.4709),
(@NPC,3,3810.434,3533.297,371.4811),
(@NPC,4,3797.684,3527.717,371.4747),
(@NPC,5,3788.295,3523.66,371.5133),
(@NPC,6,3797.684,3527.717,371.4747),
(@NPC,7,3810.434,3533.297,371.4811),
(@NPC,8,3821.141,3538.786,371.4709),
(@NPC,9,3828.243,3550.227,371.6633),
(@NPC,10,3825.312,3561.968,371.449),
(@NPC,11,3818.058,3572.063,371.4479),
(@NPC,12,3825.312,3561.968,371.449);
SET @NPC := 103397;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=3719.171,`position_y`=3634.032,`position_z`=371.4312 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@NPC,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@NPC;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`) VALUES
(@NPC,1,3728.891,3640.265,371.399),
(@NPC,2,3744.495,3650.741,371.4715),
(@NPC,3,3754.314,3654.938,371.6409),
(@NPC,4,3762.468,3653.046,371.6256),
(@NPC,5,3769.032,3645.54,371.4821),
(@NPC,6,3779.281,3629.354,371.3682),
(@NPC,7,3769.032,3645.54,371.4821),
(@NPC,8,3762.468,3653.046,371.6256),
(@NPC,9,3754.314,3654.938,371.6409),
(@NPC,10,3744.495,3650.741,371.4715),
(@NPC,11,3728.891,3640.265,371.399),
(@NPC,12,3719.171,3634.032,371.4312),
(@NPC,13,3706.394,3625.895,371.3447),
(@NPC,14,3719.171,3634.032,371.4312);
SET @NPC := 103443;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=3757.834,`position_y`=3500.429,`position_z`=371.4323 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@NPC,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@NPC;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`) VALUES
(@NPC,1,3744.604,3489.214,371.4503),
(@NPC,2,3731.337,3479.792,371.4355),
(@NPC,3,3724.038,3478.357,371.6531),
(@NPC,4,3716.938,3479.223,371.649),
(@NPC,5,3709.829,3487.23,371.4689),
(@NPC,6,3699.577,3504.449,371.358),
(@NPC,7,3709.829,3487.23,371.4689),
(@NPC,8,3716.938,3479.223,371.649),
(@NPC,9,3724.038,3478.357,371.6531),
(@NPC,10,3731.337,3479.792,371.4355),
(@NPC,11,3744.604,3489.214,371.4503),
(@NPC,12,3757.834,3500.429,371.4323),
(@NPC,13,3769.854,3508.61,371.3447),
(@NPC,14,3757.834,3500.429,371.4323);
SET @NPC := 117067;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=4120.091,`position_y`=5343.777,`position_z`=29.24856 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@NPC,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@NPC;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`) VALUES
(@NPC,1,4111.694,5334.971,28.74856),
(@NPC,2,4102.274,5325.254,28.6343),
(@NPC,3,4091.229,5314.824,29.10337),
(@NPC,4,4083.519,5306.313,28.47837),
(@NPC,5,4072.305,5295.377,28.82582),
(@NPC,6,4083.519,5306.313,28.47837),
(@NPC,7,4091.229,5314.824,29.10337),
(@NPC,8,4102.274,5325.254,28.6343),
(@NPC,9,4111.694,5334.971,28.74856),
(@NPC,10,4120.091,5343.777,29.24856);
UPDATE `creature_template` SET `InhabitType` = 7 WHERE `entry` IN (20635,20666,20670,20771,20845,20851,20852,20853,20855,20856,21025);
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`) VALUES
(111453,16980,631,15,1,0,0,4203.70,2484.83,364.956,3.14159,604800,0,0,14000,0,0,0),
(111473,22515,631,15,1,0,0,4241.19,2557.49,364.952,4.72984,120,0,0,0,0,0,0),
(111474,22515,631,15,1,0,0,4241.34,2411.52,364.952,1.57080,120,0,0,0,0,0,0),
(111475,22515,631,10,1,0,0,4166.02,2557.49,364.952,4.72984,120,0,0,0,0,0,0),
(111476,22515,631,10,1,0,0,4241.34,2411.52,364.952,1.57080,120,0,0,0,0,0,0);
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`) VALUES
(9031,24021,571,1,1,0,0,2597.148,-3735.499,261.9468,0.2094395,120,0,0,1,0,0,0);
UPDATE `creature_template` SET `InhabitType`=7 WHERE entry=24021;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`) VALUES
(111477,23033,571,1,1,0,0,3799.331,3428.748,92.80447,3.804818,120,0,0,1,0,0,0),
(111478,23033,571,1,1,0,0,3789.681,3434.306,92.37619,4.764749,120,0,0,1,0,0,0);
UPDATE `creature_template` SET `InhabitType`=4 WHERE `entry`=33778;
UPDATE `creature_template` SET `unit_class`=4 WHERE `entry`=26125;
UPDATE `creature_template` SET `unit_class`=8 WHERE `entry`=416;
UPDATE `creature_model_info` SET `bounding_radius`=0,`combat_reach`=0,`gender`=2 WHERE `modelid`=22471; -- Tournament Hippogryph
UPDATE `creature_model_info` SET `bounding_radius`=0,`combat_reach`=0,`gender`=2 WHERE `modelid`=26484; -- Alterac Valley Portal
UPDATE `creature_model_info` SET `bounding_radius`=0,`combat_reach`=0,`gender`=2 WHERE `modelid`=26495; -- Arathi Basin Portal
UPDATE `creature_model_info` SET `bounding_radius`=0,`combat_reach`=0,`gender`=2 WHERE `modelid`=26496; -- Arathi Basin Portal
UPDATE `creature_model_info` SET `bounding_radius`=0,`combat_reach`=0,`gender`=2 WHERE `modelid`=26499; -- Eye of the Storm Portal
UPDATE `creature_model_info` SET `bounding_radius`=0,`combat_reach`=0,`gender`=2 WHERE `modelid`=26501; -- Eye of the Storm Portal
UPDATE `creature_model_info` SET `bounding_radius`=0,`combat_reach`=0,`gender`=2 WHERE `modelid`=26502; -- Warsong Gulch Portal
UPDATE `creature_model_info` SET `bounding_radius`=0,`combat_reach`=0,`gender`=2 WHERE `modelid`=26504; -- Strand of the Ancients Portal
UPDATE `creature_model_info` SET `bounding_radius`=0,`combat_reach`=0,`gender`=2 WHERE `modelid`=29743; -- Isle of Conquest Portal
UPDATE `creature_model_info` SET `bounding_radius`=0,`combat_reach`=0,`gender`=2 WHERE `modelid`=29744; -- Isle of Conquest Portal
UPDATE `creature_model_info` SET `bounding_radius`=0,`combat_reach`=1,`gender`=0 WHERE `modelid`=251; -- Colin
UPDATE `creature_model_info` SET `bounding_radius`=0,`combat_reach`=1,`gender`=1 WHERE `modelid`=21270; -- Dalaran Visitor
UPDATE `creature_model_info` SET `bounding_radius`=0,`combat_reach`=1,`gender`=1 WHERE `modelid`=80; -- Emi
UPDATE `creature_model_info` SET `bounding_radius`=0,`combat_reach`=1,`gender`=2 WHERE `modelid`=2176; -- Cosmetic Rat
UPDATE `creature_model_info` SET `bounding_radius`=0,`combat_reach`=1,`gender`=2 WHERE `modelid`=25870; -- Mekgineer's Chopper
UPDATE `creature_model_info` SET `bounding_radius`=0,`combat_reach`=2,`gender`=2 WHERE `modelid`=26759; -- Dalaran Sewer Rat
UPDATE `creature_model_info` SET `bounding_radius`=0,`combat_reach`=4,`gender`=2 WHERE `modelid`=27243; -- Wooly Mammoth
UPDATE `creature_model_info` SET `bounding_radius`=0,`combat_reach`=4,`gender`=2 WHERE `modelid`=27972; -- Monstrous Underbelly Rat
UPDATE `creature_model_info` SET `bounding_radius`=0.00235,`combat_reach`=0,`gender`=2 WHERE `modelid`=7804; -- [DND] Dalaran Argent Tournament Herald Bunny
UPDATE `creature_model_info` SET `bounding_radius`=0.03,`combat_reach`=0,`gender`=2 WHERE `modelid`=26557; -- Cosmetic Toy Plane
UPDATE `creature_model_info` SET `bounding_radius`=0.0937,`combat_reach`=0,`gender`=2 WHERE `modelid`=26530; -- Cosmetic Clockwork Robot (Blue)
UPDATE `creature_model_info` SET `bounding_radius`=0.0937,`combat_reach`=0,`gender`=2 WHERE `modelid`=26531; -- Cosmetic Clockwork Robot (Red)
UPDATE `creature_model_info` SET `bounding_radius`=0.0937,`combat_reach`=0,`gender`=2 WHERE `modelid`=26547; -- Cosmetic Clockwork Robot
UPDATE `creature_model_info` SET `bounding_radius`=0.1,`combat_reach`=0,`gender`=2 WHERE `modelid`=24897; -- Wild Flower
UPDATE `creature_model_info` SET `bounding_radius`=0.1,`combat_reach`=0,`gender`=2 WHERE `modelid`=24898; -- Wild Flower
UPDATE `creature_model_info` SET `bounding_radius`=0.12,`combat_reach`=0,`gender`=2 WHERE `modelid`=24895; -- Wild Flower
UPDATE `creature_model_info` SET `bounding_radius`=0.125,`combat_reach`=0,`gender`=2 WHERE `modelid`=17188; -- Invisible Stalker (Scale x0.5)
UPDATE `creature_model_info` SET `bounding_radius`=0.125,`combat_reach`=0,`gender`=2 WHERE `modelid`=17200; -- Northrend Daily Dungeon Image Bunny
UPDATE `creature_model_info` SET `bounding_radius`=0.15,`combat_reach`=0,`gender`=2 WHERE `modelid`=23574; -- Phoenix Hatchling
UPDATE `creature_model_info` SET `bounding_radius`=0.175,`combat_reach`=0,`gender`=2 WHERE `modelid`=23501; -- Steam Burst
UPDATE `creature_model_info` SET `bounding_radius`=0.18,`combat_reach`=1,`gender`=2 WHERE `modelid`=30799; -- Sartharion Image
UPDATE `creature_model_info` SET `bounding_radius`=0.186,`combat_reach`=0,`gender`=2 WHERE `modelid`=28212; -- Backbiter
UPDATE `creature_model_info` SET `bounding_radius`=0.187,`combat_reach`=0,`gender`=2 WHERE `modelid`=1160; -- Spider
UPDATE `creature_model_info` SET `bounding_radius`=0.187,`combat_reach`=0,`gender`=2 WHERE `modelid`=2536; -- Spider
UPDATE `creature_model_info` SET `bounding_radius`=0.2,`combat_reach`=0,`gender`=2 WHERE `modelid`=26517; -- Cosmetic Totem Alliance Air
UPDATE `creature_model_info` SET `bounding_radius`=0.2,`combat_reach`=0,`gender`=2 WHERE `modelid`=26518; -- Cosmetic Totem Alliance Earth
UPDATE `creature_model_info` SET `bounding_radius`=0.2,`combat_reach`=0,`gender`=2 WHERE `modelid`=26519; -- Cosmetic Totem Alliance Fire
UPDATE `creature_model_info` SET `bounding_radius`=0.2,`combat_reach`=0,`gender`=2 WHERE `modelid`=26521; -- Cosmetic Totem Alliance Water
UPDATE `creature_model_info` SET `bounding_radius`=0.208,`combat_reach`=1,`gender`=1 WHERE `modelid`=15253; -- League of Arathor Emissary
UPDATE `creature_model_info` SET `bounding_radius`=0.208,`combat_reach`=1,`gender`=1 WHERE `modelid`=25605; -- Amisi Azuregaze
UPDATE `creature_model_info` SET `bounding_radius`=0.208,`combat_reach`=1,`gender`=1 WHERE `modelid`=25608; -- Susana Averoy
UPDATE `creature_model_info` SET `bounding_radius`=0.208,`combat_reach`=1,`gender`=1 WHERE `modelid`=25620; -- Dorothy Egan
UPDATE `creature_model_info` SET `bounding_radius`=0.208,`combat_reach`=1,`gender`=1 WHERE `modelid`=25621; -- Katherine Lee
UPDATE `creature_model_info` SET `bounding_radius`=0.208,`combat_reach`=1,`gender`=1 WHERE `modelid`=25636; -- Endora Moorehead
UPDATE `creature_model_info` SET `bounding_radius`=0.208,`combat_reach`=1,`gender`=1 WHERE `modelid`=25637; -- Palja Amboss
UPDATE `creature_model_info` SET `bounding_radius`=0.208,`combat_reach`=1,`gender`=1 WHERE `modelid`=25645; -- Tiffany Cartier
UPDATE `creature_model_info` SET `bounding_radius`=0.208,`combat_reach`=1,`gender`=1 WHERE `modelid`=25647; -- Larana Drome
UPDATE `creature_model_info` SET `bounding_radius`=0.208,`combat_reach`=1,`gender`=1 WHERE `modelid`=25648; -- Patricia Egan
UPDATE `creature_model_info` SET `bounding_radius`=0.208,`combat_reach`=1,`gender`=1 WHERE `modelid`=25649; -- Dominique Stefano
UPDATE `creature_model_info` SET `bounding_radius`=0.208,`combat_reach`=1,`gender`=1 WHERE `modelid`=25655; -- Marcia Chase
UPDATE `creature_model_info` SET `bounding_radius`=0.208,`combat_reach`=1,`gender`=1 WHERE `modelid`=25674; -- Elizabeth Ross
UPDATE `creature_model_info` SET `bounding_radius`=0.208,`combat_reach`=1,`gender`=1 WHERE `modelid`=25807; -- Jessa Weaver
UPDATE `creature_model_info` SET `bounding_radius`=0.208,`combat_reach`=1,`gender`=1 WHERE `modelid`=25878; -- Valerie Langrom
UPDATE `creature_model_info` SET `bounding_radius`=0.208,`combat_reach`=1,`gender`=1 WHERE `modelid`=25880; -- Abra Cadabra
UPDATE `creature_model_info` SET `bounding_radius`=0.208,`combat_reach`=1,`gender`=1 WHERE `modelid`=25881; -- Griselda Hunderland
UPDATE `creature_model_info` SET `bounding_radius`=0.208,`combat_reach`=1,`gender`=1 WHERE `modelid`=25983; -- Aerith Primrose
UPDATE `creature_model_info` SET `bounding_radius`=0.208,`combat_reach`=1,`gender`=1 WHERE `modelid`=26311; -- Kerta the Bold
UPDATE `creature_model_info` SET `bounding_radius`=0.208,`combat_reach`=1,`gender`=1 WHERE `modelid`=26377; -- Linna Bruder
UPDATE `creature_model_info` SET `bounding_radius`=0.208,`combat_reach`=1,`gender`=1 WHERE `modelid`=26390; -- Angelique Butler
UPDATE `creature_model_info` SET `bounding_radius`=0.208,`combat_reach`=1,`gender`=1 WHERE `modelid`=26396; -- Debbi Moore
UPDATE `creature_model_info` SET `bounding_radius`=0.208,`combat_reach`=1,`gender`=1 WHERE `modelid`=26397; -- Hagatha Moorehead
UPDATE `creature_model_info` SET `bounding_radius`=0.208,`combat_reach`=1,`gender`=1 WHERE `modelid`=26398; -- Josie Birch
UPDATE `creature_model_info` SET `bounding_radius`=0.208,`combat_reach`=1,`gender`=1 WHERE `modelid`=26414; -- Grand Marauder Sai
UPDATE `creature_model_info` SET `bounding_radius`=0.208,`combat_reach`=1,`gender`=1 WHERE `modelid`=26438; -- Chameli Banaphash
UPDATE `creature_model_info` SET `bounding_radius`=0.208,`combat_reach`=1,`gender`=1 WHERE `modelid`=26440; -- Christi Stockton
UPDATE `creature_model_info` SET `bounding_radius`=0.208,`combat_reach`=1,`gender`=1 WHERE `modelid`=27287; -- Archivist Betha
UPDATE `creature_model_info` SET `bounding_radius`=0.208,`combat_reach`=1,`gender`=1 WHERE `modelid`=27782; -- Theresa Wolf
UPDATE `creature_model_info` SET `bounding_radius`=0.208,`combat_reach`=1,`gender`=1 WHERE `modelid`=27822; -- Mei Francis
UPDATE `creature_model_info` SET `bounding_radius`=0.208,`combat_reach`=1,`gender`=1 WHERE `modelid`=27944; -- Warmage Mumplina
UPDATE `creature_model_info` SET `bounding_radius`=0.208,`combat_reach`=1,`gender`=1 WHERE `modelid`=27952; -- Sandra Bartan
UPDATE `creature_model_info` SET `bounding_radius`=0.208,`combat_reach`=1,`gender`=1 WHERE `modelid`=27954; -- Afsaneh Asrar
UPDATE `creature_model_info` SET `bounding_radius`=0.208,`combat_reach`=1,`gender`=1 WHERE `modelid`=27962; -- Marcella Bloom
UPDATE `creature_model_info` SET `bounding_radius`=0.208,`combat_reach`=1,`gender`=1 WHERE `modelid`=27999; -- Vanessa Sellers
UPDATE `creature_model_info` SET `bounding_radius`=0.208,`combat_reach`=1,`gender`=1 WHERE `modelid`=28125; -- Wounded Dalaran Watcher
UPDATE `creature_model_info` SET `bounding_radius`=0.208,`combat_reach`=1,`gender`=1 WHERE `modelid`=28150; -- Grezla the Hag
UPDATE `creature_model_info` SET `bounding_radius`=0.208,`combat_reach`=1,`gender`=1 WHERE `modelid`=28155; -- Linda Ann Kastinglow
UPDATE `creature_model_info` SET `bounding_radius`=0.208,`combat_reach`=1,`gender`=1 WHERE `modelid`=28166; -- Illusionist Karina
UPDATE `creature_model_info` SET `bounding_radius`=0.208,`combat_reach`=1,`gender`=1 WHERE `modelid`=28202; -- Amera Sky
UPDATE `creature_model_info` SET `bounding_radius`=0.208,`combat_reach`=1,`gender`=1 WHERE `modelid`=28317; -- Tabea
UPDATE `creature_model_info` SET `bounding_radius`=0.208,`combat_reach`=1,`gender`=1 WHERE `modelid`=28433; -- Jessica Sellers
UPDATE `creature_model_info` SET `bounding_radius`=0.208,`combat_reach`=1,`gender`=1 WHERE `modelid`=30764; -- Apprentice Nelphi
UPDATE `creature_model_info` SET `bounding_radius`=0.2288,`combat_reach`=1,`gender`=1 WHERE `modelid`=24916; -- Warmage Kath'leen
UPDATE `creature_model_info` SET `bounding_radius`=0.2288,`combat_reach`=1,`gender`=1 WHERE `modelid`=25947; -- Archmage Celindra
UPDATE `creature_model_info` SET `bounding_radius`=0.236,`combat_reach`=1,`gender`=1 WHERE `modelid`=27333; -- Kor'kron Reaver
UPDATE `creature_model_info` SET `bounding_radius`=0.236,`combat_reach`=1,`gender`=1 WHERE `modelid`=28185; -- Warp-Huntress Kula
UPDATE `creature_model_info` SET `bounding_radius`=0.236,`combat_reach`=1,`gender`=1 WHERE `modelid`=28208; -- Galkara the Assassin
UPDATE `creature_model_info` SET `bounding_radius`=0.2429,`combat_reach`=1,`gender`=2 WHERE `modelid`=850; -- Felhunter
UPDATE `creature_model_info` SET `bounding_radius`=0.25,`combat_reach`=0,`gender`=2 WHERE `modelid`=16259; -- Dalaran Sewer Turtle
UPDATE `creature_model_info` SET `bounding_radius`=0.25,`combat_reach`=0,`gender`=2 WHERE `modelid`=5448; -- Cosmetic Cat Set 2/2
UPDATE `creature_model_info` SET `bounding_radius`=0.25,`combat_reach`=0,`gender`=2 WHERE `modelid`=5554; -- Jones
UPDATE `creature_model_info` SET `bounding_radius`=0.25,`combat_reach`=0,`gender`=2 WHERE `modelid`=5556; -- Badluck
UPDATE `creature_model_info` SET `bounding_radius`=0.25,`combat_reach`=0,`gender`=2 WHERE `modelid`=5966; -- Wounded Dalaran Serpent
UPDATE `creature_model_info` SET `bounding_radius`=0.26,`combat_reach`=1,`gender`=1 WHERE `modelid`=26771; -- Archmage Modera
UPDATE `creature_model_info` SET `bounding_radius`=0.2625,`combat_reach`=0,`gender`=2 WHERE `modelid`=26524; -- Cosmetic Mechanical Gorilla
UPDATE `creature_model_info` SET `bounding_radius`=0.263347,`combat_reach`=0,`gender`=2 WHERE `modelid`=16885; -- Ravager Specimen
UPDATE `creature_model_info` SET `bounding_radius`=0.275,`combat_reach`=0,`gender`=2 WHERE `modelid`=28318; -- Apollo
UPDATE `creature_model_info` SET `bounding_radius`=0.2912,`combat_reach`=2,`gender`=1 WHERE `modelid`=30977; -- Phantom Hallucination
UPDATE `creature_model_info` SET `bounding_radius`=0.2912,`combat_reach`=2,`gender`=1 WHERE `modelid`=30977; -- Phantom Mage
UPDATE `creature_model_info` SET `bounding_radius`=0.3,`combat_reach`=0,`gender`=2 WHERE `modelid`=27720; -- Cosmetic Worg Pup
UPDATE `creature_model_info` SET `bounding_radius`=0.306,`combat_reach`=1,`gender`=0 WHERE `modelid`=23337; -- Warmage Silva
UPDATE `creature_model_info` SET `bounding_radius`=0.306,`combat_reach`=1,`gender`=0 WHERE `modelid`=24607; -- Sebastian Bower
UPDATE `creature_model_info` SET `bounding_radius`=0.306,`combat_reach`=1,`gender`=0 WHERE `modelid`=25166; -- Archmage Pentarus
UPDATE `creature_model_info` SET `bounding_radius`=0.306,`combat_reach`=1,`gender`=0 WHERE `modelid`=25609; -- "Red" Jack Findle
UPDATE `creature_model_info` SET `bounding_radius`=0.306,`combat_reach`=1,`gender`=0 WHERE `modelid`=25611; -- Alard Schmied
UPDATE `creature_model_info` SET `bounding_radius`=0.306,`combat_reach`=1,`gender`=0 WHERE `modelid`=25613; -- Timofey Oshenko
UPDATE `creature_model_info` SET `bounding_radius`=0.306,`combat_reach`=1,`gender`=0 WHERE `modelid`=25614; -- Jedidiah Handers
UPDATE `creature_model_info` SET `bounding_radius`=0.306,`combat_reach`=1,`gender`=0 WHERE `modelid`=25615; -- Charles Worth
UPDATE `creature_model_info` SET `bounding_radius`=0.306,`combat_reach`=1,`gender`=0 WHERE `modelid`=25623; -- Angelo Pescatore
UPDATE `creature_model_info` SET `bounding_radius`=0.306,`combat_reach`=1,`gender`=0 WHERE `modelid`=25646; -- Bryan Landers
UPDATE `creature_model_info` SET `bounding_radius`=0.306,`combat_reach`=1,`gender`=0 WHERE `modelid`=25650; -- Edward Egan
UPDATE `creature_model_info` SET `bounding_radius`=0.306,`combat_reach`=1,`gender`=0 WHERE `modelid`=25651; -- Dorian Fines
UPDATE `creature_model_info` SET `bounding_radius`=0.306,`combat_reach`=1,`gender`=0 WHERE `modelid`=25673; -- Andrew Matthews
UPDATE `creature_model_info` SET `bounding_radius`=0.306,`combat_reach`=1,`gender`=0 WHERE `modelid`=25876; -- Anthony Durain
UPDATE `creature_model_info` SET `bounding_radius`=0.306,`combat_reach`=1,`gender`=0 WHERE `modelid`=26075; -- Timothy Jones
UPDATE `creature_model_info` SET `bounding_radius`=0.306,`combat_reach`=1,`gender`=0 WHERE `modelid`=26138; -- Torgo the Younger
UPDATE `creature_model_info` SET `bounding_radius`=0.306,`combat_reach`=1,`gender`=0 WHERE `modelid`=26307; -- Jarold Puller
UPDATE `creature_model_info` SET `bounding_radius`=0.306,`combat_reach`=1,`gender`=0 WHERE `modelid`=26309; -- Shen Kang Cheng
UPDATE `creature_model_info` SET `bounding_radius`=0.306,`combat_reach`=1,`gender`=0 WHERE `modelid`=26310; -- Norvin Alderman
UPDATE `creature_model_info` SET `bounding_radius`=0.306,`combat_reach`=1,`gender`=0 WHERE `modelid`=26312; -- Walther Whiteford
UPDATE `creature_model_info` SET `bounding_radius`=0.306,`combat_reach`=1,`gender`=0 WHERE `modelid`=26313; -- Bartram Haller
UPDATE `creature_model_info` SET `bounding_radius`=0.306,`combat_reach`=1,`gender`=0 WHERE `modelid`=26338; -- Orland Schaeffer
UPDATE `creature_model_info` SET `bounding_radius`=0.306,`combat_reach`=1,`gender`=0 WHERE `modelid`=26362; -- Schembari "Uncle Sal" Shearbolt
UPDATE `creature_model_info` SET `bounding_radius`=0.306,`combat_reach`=1,`gender`=0 WHERE `modelid`=26372; -- Binzik Goldbook
UPDATE `creature_model_info` SET `bounding_radius`=0.306,`combat_reach`=1,`gender`=0 WHERE `modelid`=26373; -- Ajay Green
UPDATE `creature_model_info` SET `bounding_radius`=0.306,`combat_reach`=1,`gender`=0 WHERE `modelid`=26391; -- "Techs" Rickard Rustbolt
UPDATE `creature_model_info` SET `bounding_radius`=0.306,`combat_reach`=1,`gender`=0 WHERE `modelid`=26395; -- Orton Bennet
UPDATE `creature_model_info` SET `bounding_radius`=0.306,`combat_reach`=1,`gender`=0 WHERE `modelid`=26417; -- Pazik "The Pick" Prylock
UPDATE `creature_model_info` SET `bounding_radius`=0.306,`combat_reach`=1,`gender`=0 WHERE `modelid`=26444; -- Hexil Garrot
UPDATE `creature_model_info` SET `bounding_radius`=0.306,`combat_reach`=1,`gender`=0 WHERE `modelid`=26445; -- Alchemist Cinesra
UPDATE `creature_model_info` SET `bounding_radius`=0.306,`combat_reach`=1,`gender`=0 WHERE `modelid`=26463; -- Nargle Lashcord
UPDATE `creature_model_info` SET `bounding_radius`=0.306,`combat_reach`=1,`gender`=0 WHERE `modelid`=26465; -- Zom Bocom
UPDATE `creature_model_info` SET `bounding_radius`=0.306,`combat_reach`=1,`gender`=0 WHERE `modelid`=26766; -- Adamman the Trader
UPDATE `creature_model_info` SET `bounding_radius`=0.306,`combat_reach`=1,`gender`=0 WHERE `modelid`=26779; -- Shifty Vickers
UPDATE `creature_model_info` SET `bounding_radius`=0.306,`combat_reach`=1,`gender`=0 WHERE `modelid`=26997; -- Skybreaker Marine
UPDATE `creature_model_info` SET `bounding_radius`=0.306,`combat_reach`=1,`gender`=0 WHERE `modelid`=26998; -- Skybreaker Marine
UPDATE `creature_model_info` SET `bounding_radius`=0.306,`combat_reach`=1,`gender`=0 WHERE `modelid`=27068; -- Rin Duoctane
UPDATE `creature_model_info` SET `bounding_radius`=0.306,`combat_reach`=1,`gender`=0 WHERE `modelid`=27157; -- Teller Almeida
UPDATE `creature_model_info` SET `bounding_radius`=0.306,`combat_reach`=1,`gender`=0 WHERE `modelid`=27158; -- Teller Gee
UPDATE `creature_model_info` SET `bounding_radius`=0.306,`combat_reach`=1,`gender`=0 WHERE `modelid`=27160; -- Teller Plushner
UPDATE `creature_model_info` SET `bounding_radius`=0.306,`combat_reach`=1,`gender`=0 WHERE `modelid`=27334; -- Kor'kron Reaver
UPDATE `creature_model_info` SET `bounding_radius`=0.306,`combat_reach`=1,`gender`=0 WHERE `modelid`=27398; -- Blazik Fireclaw
UPDATE `creature_model_info` SET `bounding_radius`=0.306,`combat_reach`=1,`gender`=0 WHERE `modelid`=27449; -- Derek Odds
UPDATE `creature_model_info` SET `bounding_radius`=0.306,`combat_reach`=1,`gender`=0 WHERE `modelid`=27799; -- Harold Winston
UPDATE `creature_model_info` SET `bounding_radius`=0.306,`combat_reach`=1,`gender`=0 WHERE `modelid`=27910; -- Ramik Slamwrench
UPDATE `creature_model_info` SET `bounding_radius`=0.306,`combat_reach`=1,`gender`=0 WHERE `modelid`=27911; -- "Dapper" Danik Blackshaft
UPDATE `creature_model_info` SET `bounding_radius`=0.306,`combat_reach`=1,`gender`=0 WHERE `modelid`=27915; -- Lucian Trias
UPDATE `creature_model_info` SET `bounding_radius`=0.306,`combat_reach`=1,`gender`=0 WHERE `modelid`=27958; -- Stefen Cotter
UPDATE `creature_model_info` SET `bounding_radius`=0.306,`combat_reach`=1,`gender`=0 WHERE `modelid`=28006; -- Washed-Up Mage
UPDATE `creature_model_info` SET `bounding_radius`=0.306,`combat_reach`=1,`gender`=0 WHERE `modelid`=28120; -- Drix Blackwrench
UPDATE `creature_model_info` SET `bounding_radius`=0.306,`combat_reach`=1,`gender`=0 WHERE `modelid`=28123; -- Wounded Dalaran Protector
UPDATE `creature_model_info` SET `bounding_radius`=0.306,`combat_reach`=1,`gender`=0 WHERE `modelid`=28124; -- Wounded Dalaran Shield Guard
UPDATE `creature_model_info` SET `bounding_radius`=0.306,`combat_reach`=1,`gender`=0 WHERE `modelid`=28145; -- Whirt the All-Knowing
UPDATE `creature_model_info` SET `bounding_radius`=0.306,`combat_reach`=1,`gender`=0 WHERE `modelid`=28149; -- The Magnificent Merleaux
UPDATE `creature_model_info` SET `bounding_radius`=0.306,`combat_reach`=1,`gender`=0 WHERE `modelid`=28154; -- Crafticus Mindbender
UPDATE `creature_model_info` SET `bounding_radius`=0.306,`combat_reach`=1,`gender`=0 WHERE `modelid`=28159; -- Adorean Lew
UPDATE `creature_model_info` SET `bounding_radius`=0.306,`combat_reach`=1,`gender`=0 WHERE `modelid`=28161; -- Magus Fansy Goodbringer
UPDATE `creature_model_info` SET `bounding_radius`=0.306,`combat_reach`=1,`gender`=0 WHERE `modelid`=28164; -- The Chooch
UPDATE `creature_model_info` SET `bounding_radius`=0.306,`combat_reach`=1,`gender`=0 WHERE `modelid`=28203; -- Geffon the Unruly
UPDATE `creature_model_info` SET `bounding_radius`=0.306,`combat_reach`=1,`gender`=0 WHERE `modelid`=29833; -- Horace Hunderland
UPDATE `creature_model_info` SET `bounding_radius`=0.306,`combat_reach`=1,`gender`=0 WHERE `modelid`=29835; -- Rafael Langrom
UPDATE `creature_model_info` SET `bounding_radius`=0.306,`combat_reach`=1,`gender`=0 WHERE `modelid`=29836; -- Rueben Lauren
UPDATE `creature_model_info` SET `bounding_radius`=0.306,`combat_reach`=1,`gender`=0 WHERE `modelid`=30685; -- Archmage Koreln
UPDATE `creature_model_info` SET `bounding_radius`=0.306,`combat_reach`=1,`gender`=1 WHERE `modelid`=25955; -- Kizi Copperclip
UPDATE `creature_model_info` SET `bounding_radius`=0.306,`combat_reach`=1,`gender`=1 WHERE `modelid`=26335; -- Namha Moonwater
UPDATE `creature_model_info` SET `bounding_radius`=0.306,`combat_reach`=1,`gender`=1 WHERE `modelid`=26347; -- Ninsianna
UPDATE `creature_model_info` SET `bounding_radius`=0.306,`combat_reach`=1,`gender`=1 WHERE `modelid`=26375; -- Didi the Wrench
UPDATE `creature_model_info` SET `bounding_radius`=0.306,`combat_reach`=1,`gender`=1 WHERE `modelid`=26386; -- "Baroness" Llana
UPDATE `creature_model_info` SET `bounding_radius`=0.306,`combat_reach`=1,`gender`=1 WHERE `modelid`=26464; -- Xazi Smolderpipe
UPDATE `creature_model_info` SET `bounding_radius`=0.306,`combat_reach`=1,`gender`=1 WHERE `modelid`=27908; -- Kanika Goldwell
UPDATE `creature_model_info` SET `bounding_radius`=0.306,`combat_reach`=1,`gender`=1 WHERE `modelid`=27909; -- Minzi the Minx
UPDATE `creature_model_info` SET `bounding_radius`=0.306,`combat_reach`=1,`gender`=1 WHERE `modelid`=27912; -- Nixi Fireclaw
UPDATE `creature_model_info` SET `bounding_radius`=0.306,`combat_reach`=1,`gender`=1 WHERE `modelid`=29921; -- Usuri Brightcoin
UPDATE `creature_model_info` SET `bounding_radius`=0.3068,`combat_reach`=1,`gender`=1 WHERE `modelid`=27616; -- Uda the Beast
UPDATE `creature_model_info` SET `bounding_radius`=0.3366,`combat_reach`=1,`gender`=0 WHERE `modelid`=27215; -- Violet Hold Guard
UPDATE `creature_model_info` SET `bounding_radius`=0.3366,`combat_reach`=1,`gender`=0 WHERE `modelid`=27216; -- Violet Hold Guard
UPDATE `creature_model_info` SET `bounding_radius`=0.3366,`combat_reach`=1,`gender`=0 WHERE `modelid`=27217; -- Violet Hold Guard
UPDATE `creature_model_info` SET `bounding_radius`=0.3366,`combat_reach`=1,`gender`=0 WHERE `modelid`=29076; -- Trapjaw Rix
UPDATE `creature_model_info` SET `bounding_radius`=0.347,`combat_reach`=1,`gender`=0 WHERE `modelid`=21273; -- Dalaran Visitor
UPDATE `creature_model_info` SET `bounding_radius`=0.347,`combat_reach`=1,`gender`=0 WHERE `modelid`=25644; -- Ranid Glowergold
UPDATE `creature_model_info` SET `bounding_radius`=0.347,`combat_reach`=1,`gender`=0 WHERE `modelid`=26321; -- Bragund Brightlink
UPDATE `creature_model_info` SET `bounding_radius`=0.347,`combat_reach`=1,`gender`=0 WHERE `modelid`=27332; -- Skybreaker Marine
UPDATE `creature_model_info` SET `bounding_radius`=0.347,`combat_reach`=1,`gender`=0 WHERE `modelid`=27998; -- Brammold Deepmine
UPDATE `creature_model_info` SET `bounding_radius`=0.347,`combat_reach`=1,`gender`=0 WHERE `modelid`=28000; -- Braeg Stoutbeard
UPDATE `creature_model_info` SET `bounding_radius`=0.347,`combat_reach`=1,`gender`=0 WHERE `modelid`=28170; -- Dorfus Alphamage
UPDATE `creature_model_info` SET `bounding_radius`=0.347,`combat_reach`=1,`gender`=0 WHERE `modelid`=29145; -- Dubin Clay
UPDATE `creature_model_info` SET `bounding_radius`=0.347,`combat_reach`=1,`gender`=1 WHERE `modelid`=26299; -- Dagna Flintlock
UPDATE `creature_model_info` SET `bounding_radius`=0.347,`combat_reach`=1,`gender`=1 WHERE `modelid`=27963; -- Laire Brewgold
UPDATE `creature_model_info` SET `bounding_radius`=0.347,`combat_reach`=1,`gender`=1 WHERE `modelid`=27965; -- Coira Longrifle
UPDATE `creature_model_info` SET `bounding_radius`=0.347,`combat_reach`=1,`gender`=1 WHERE `modelid`=29834; -- Matilda Brightlink
UPDATE `creature_model_info` SET `bounding_radius`=0.3519,`combat_reach`=1,`gender`=0 WHERE `modelid`=25618; -- Professor Pallin
UPDATE `creature_model_info` SET `bounding_radius`=0.3519,`combat_reach`=1,`gender`=0 WHERE `modelid`=26078; -- Windle Sparkshine
UPDATE `creature_model_info` SET `bounding_radius`=0.3519,`combat_reach`=1,`gender`=0 WHERE `modelid`=26300; -- Jepetto Joybuzz
UPDATE `creature_model_info` SET `bounding_radius`=0.3519,`combat_reach`=1,`gender`=0 WHERE `modelid`=26374; -- Findle Whistlesteam
UPDATE `creature_model_info` SET `bounding_radius`=0.3519,`combat_reach`=1,`gender`=0 WHERE `modelid`=26437; -- Sheddle Glossgleam
UPDATE `creature_model_info` SET `bounding_radius`=0.3519,`combat_reach`=1,`gender`=0 WHERE `modelid`=27465; -- Warden Alturas
UPDATE `creature_model_info` SET `bounding_radius`=0.3519,`combat_reach`=1,`gender`=0 WHERE `modelid`=28143; -- Babagahnoosh the Grumpy
UPDATE `creature_model_info` SET `bounding_radius`=0.3519,`combat_reach`=1,`gender`=0 WHERE `modelid`=28144; -- Grindle Firespark
UPDATE `creature_model_info` SET `bounding_radius`=0.3519,`combat_reach`=1,`gender`=0 WHERE `modelid`=28162; -- Arcanist Alec
UPDATE `creature_model_info` SET `bounding_radius`=0.3519,`combat_reach`=1,`gender`=0 WHERE `modelid`=28167; -- Lofwyr Le'Fleur
UPDATE `creature_model_info` SET `bounding_radius`=0.3519,`combat_reach`=1,`gender`=0 WHERE `modelid`=28199; -- Bakor the Gangly
UPDATE `creature_model_info` SET `bounding_radius`=0.3519,`combat_reach`=1,`gender`=0 WHERE `modelid`=30358; -- Shandy Glossgleam
UPDATE `creature_model_info` SET `bounding_radius`=0.3519,`combat_reach`=1,`gender`=1 WHERE `modelid`=25602; -- Inzi Charmlight
UPDATE `creature_model_info` SET `bounding_radius`=0.3519,`combat_reach`=1,`gender`=1 WHERE `modelid`=25619; -- Linzy Blackbolt
UPDATE `creature_model_info` SET `bounding_radius`=0.3519,`combat_reach`=1,`gender`=1 WHERE `modelid`=26378; -- Lalla Brightweave
UPDATE `creature_model_info` SET `bounding_radius`=0.3519,`combat_reach`=1,`gender`=1 WHERE `modelid`=28146; -- Emeline Fizzlefry
UPDATE `creature_model_info` SET `bounding_radius`=0.3519,`combat_reach`=1,`gender`=1 WHERE `modelid`=28160; -- Bitty Frostflinger
UPDATE `creature_model_info` SET `bounding_radius`=0.3519,`combat_reach`=1,`gender`=1 WHERE `modelid`=28165; -- Natalie Tootiblare
UPDATE `creature_model_info` SET `bounding_radius`=0.3519,`combat_reach`=1,`gender`=1 WHERE `modelid`=28171; -- Joboba Mezbreaker
UPDATE `creature_model_info` SET `bounding_radius`=0.3519,`combat_reach`=1,`gender`=1 WHERE `modelid`=28432; -- Sarah Brady
UPDATE `creature_model_info` SET `bounding_radius`=0.3672,`combat_reach`=1,`gender`=0 WHERE `modelid`=27587; -- Officer Van Rossem
UPDATE `creature_model_info` SET `bounding_radius`=0.3672,`combat_reach`=1,`gender`=0 WHERE `modelid`=27592; -- Archmage Timear
UPDATE `creature_model_info` SET `bounding_radius`=0.3672,`combat_reach`=1,`gender`=1 WHERE `modelid`=28118; -- Mojodishu
UPDATE `creature_model_info` SET `bounding_radius`=0.372,`combat_reach`=1,`gender`=0 WHERE `modelid`=27328; -- Kor'kron Reaver
UPDATE `creature_model_info` SET `bounding_radius`=0.372,`combat_reach`=1,`gender`=0 WHERE `modelid`=28194; -- Willard Blauvelt
UPDATE `creature_model_info` SET `bounding_radius`=0.3817,`combat_reach`=1,`gender`=0 WHERE `modelid`=27154; -- Alliance Brigadier General
UPDATE `creature_model_info` SET `bounding_radius`=0.383,`combat_reach`=1,`gender`=0 WHERE `modelid`=25604; -- Caliel Brightwillow
UPDATE `creature_model_info` SET `bounding_radius`=0.383,`combat_reach`=1,`gender`=0 WHERE `modelid`=25610; -- Enchanter Nalthanis
UPDATE `creature_model_info` SET `bounding_radius`=0.383,`combat_reach`=1,`gender`=0 WHERE `modelid`=25806; -- Warcaster Fanoraithe
UPDATE `creature_model_info` SET `bounding_radius`=0.383,`combat_reach`=1,`gender`=0 WHERE `modelid`=25877; -- Valaden Silverblade
UPDATE `creature_model_info` SET `bounding_radius`=0.383,`combat_reach`=1,`gender`=0 WHERE `modelid`=25882; -- Arille Azuregaze
UPDATE `creature_model_info` SET `bounding_radius`=0.383,`combat_reach`=1,`gender`=0 WHERE `modelid`=26067; -- Silver Covenant Guardian Mage
UPDATE `creature_model_info` SET `bounding_radius`=0.383,`combat_reach`=1,`gender`=0 WHERE `modelid`=26068; -- Silver Covenant Guardian Mage
UPDATE `creature_model_info` SET `bounding_radius`=0.383,`combat_reach`=1,`gender`=0 WHERE `modelid`=26072; -- Sunreaver Guardian Mage
UPDATE `creature_model_info` SET `bounding_radius`=0.383,`combat_reach`=1,`gender`=0 WHERE `modelid`=26443; -- Darahir
UPDATE `creature_model_info` SET `bounding_radius`=0.383,`combat_reach`=1,`gender`=0 WHERE `modelid`=27509; -- High Warlord Uro
UPDATE `creature_model_info` SET `bounding_radius`=0.383,`combat_reach`=1,`gender`=0 WHERE `modelid`=27559; -- Arcanist Adurin
UPDATE `creature_model_info` SET `bounding_radius`=0.383,`combat_reach`=1,`gender`=0 WHERE `modelid`=27800; -- Arcanist Braedin
UPDATE `creature_model_info` SET `bounding_radius`=0.383,`combat_reach`=1,`gender`=0 WHERE `modelid`=27801; -- Magister Surdiel
UPDATE `creature_model_info` SET `bounding_radius`=0.383,`combat_reach`=1,`gender`=0 WHERE `modelid`=27949; -- Warmage Lukems
UPDATE `creature_model_info` SET `bounding_radius`=0.383,`combat_reach`=1,`gender`=0 WHERE `modelid`=28148; -- Fabioso the Fabulous
UPDATE `creature_model_info` SET `bounding_radius`=0.383,`combat_reach`=1,`gender`=0 WHERE `modelid`=28151; -- Dalaran Citizen
UPDATE `creature_model_info` SET `bounding_radius`=0.383,`combat_reach`=1,`gender`=0 WHERE `modelid`=28156; -- Archmage Tenaj
UPDATE `creature_model_info` SET `bounding_radius`=0.383,`combat_reach`=1,`gender`=0 WHERE `modelid`=28169; -- Metopious Loreseeker
UPDATE `creature_model_info` SET `bounding_radius`=0.383,`combat_reach`=1,`gender`=0 WHERE `modelid`=28198; -- Felcaster Virim
UPDATE `creature_model_info` SET `bounding_radius`=0.383,`combat_reach`=1,`gender`=0 WHERE `modelid`=28755; -- Arcanist Tybalin
UPDATE `creature_model_info` SET `bounding_radius`=0.383,`combat_reach`=1,`gender`=0 WHERE `modelid`=28987; -- Arcanist Firael
UPDATE `creature_model_info` SET `bounding_radius`=0.383,`combat_reach`=1,`gender`=0 WHERE `modelid`=29830; -- Enchanter Isian
UPDATE `creature_model_info` SET `bounding_radius`=0.383,`combat_reach`=1,`gender`=0 WHERE `modelid`=30310; -- Silver Covenant Agent
UPDATE `creature_model_info` SET `bounding_radius`=0.383,`combat_reach`=1,`gender`=0 WHERE `modelid`=30439; -- Sunreaver Agent
UPDATE `creature_model_info` SET `bounding_radius`=0.383,`combat_reach`=1,`gender`=0 WHERE `modelid`=30842; -- Arcanist Uovril
UPDATE `creature_model_info` SET `bounding_radius`=0.383,`combat_reach`=1,`gender`=1 WHERE `modelid`=15242; -- Defilers Emissary
UPDATE `creature_model_info` SET `bounding_radius`=0.383,`combat_reach`=1,`gender`=1 WHERE `modelid`=25594; -- Paldesse
UPDATE `creature_model_info` SET `bounding_radius`=0.383,`combat_reach`=1,`gender`=1 WHERE `modelid`=25603; -- Narisa Redgold
UPDATE `creature_model_info` SET `bounding_radius`=0.383,`combat_reach`=1,`gender`=1 WHERE `modelid`=25622; -- Olisarra the Kind
UPDATE `creature_model_info` SET `bounding_radius`=0.383,`combat_reach`=1,`gender`=1 WHERE `modelid`=25635; -- Ildine Sorrowspear
UPDATE `creature_model_info` SET `bounding_radius`=0.383,`combat_reach`=1,`gender`=1 WHERE `modelid`=25875; -- Aemara
UPDATE `creature_model_info` SET `bounding_radius`=0.383,`combat_reach`=1,`gender`=1 WHERE `modelid`=25879; -- Karandonna
UPDATE `creature_model_info` SET `bounding_radius`=0.383,`combat_reach`=1,`gender`=1 WHERE `modelid`=26069; -- Silver Covenant Guardian Mage
UPDATE `creature_model_info` SET `bounding_radius`=0.383,`combat_reach`=1,`gender`=1 WHERE `modelid`=26070; -- Silver Covenant Guardian Mage
UPDATE `creature_model_info` SET `bounding_radius`=0.383,`combat_reach`=1,`gender`=1 WHERE `modelid`=26073; -- Sunreaver Guardian Mage
UPDATE `creature_model_info` SET `bounding_radius`=0.383,`combat_reach`=1,`gender`=1 WHERE `modelid`=26074; -- Sunreaver Guardian Mage
UPDATE `creature_model_info` SET `bounding_radius`=0.383,`combat_reach`=1,`gender`=1 WHERE `modelid`=26330; -- Aimee
UPDATE `creature_model_info` SET `bounding_radius`=0.383,`combat_reach`=1,`gender`=1 WHERE `modelid`=26339; -- Imindril Spearsong
UPDATE `creature_model_info` SET `bounding_radius`=0.383,`combat_reach`=1,`gender`=1 WHERE `modelid`=26441; -- Fialla Sweetberry
UPDATE `creature_model_info` SET `bounding_radius`=0.383,`combat_reach`=1,`gender`=1 WHERE `modelid`=27556; -- Arcanist Ivrenne
UPDATE `creature_model_info` SET `bounding_radius`=0.383,`combat_reach`=1,`gender`=1 WHERE `modelid`=27956; -- Isirami Fairwind
UPDATE `creature_model_info` SET `bounding_radius`=0.383,`combat_reach`=1,`gender`=1 WHERE `modelid`=28147; -- Darthalia Ebonscorch
UPDATE `creature_model_info` SET `bounding_radius`=0.383,`combat_reach`=1,`gender`=1 WHERE `modelid`=28152; -- Mona Everspring
UPDATE `creature_model_info` SET `bounding_radius`=0.383,`combat_reach`=1,`gender`=1 WHERE `modelid`=28153; -- Kitz Proudbreeze
UPDATE `creature_model_info` SET `bounding_radius`=0.383,`combat_reach`=1,`gender`=1 WHERE `modelid`=28163; -- Sabriana Sorrowgaze
UPDATE `creature_model_info` SET `bounding_radius`=0.383,`combat_reach`=1,`gender`=1 WHERE `modelid`=28168; -- Goldlilly Gleamingfell
UPDATE `creature_model_info` SET `bounding_radius`=0.383,`combat_reach`=1,`gender`=1 WHERE `modelid`=29832; -- Arcanist Miluria
UPDATE `creature_model_info` SET `bounding_radius`=0.383,`combat_reach`=1,`gender`=1 WHERE `modelid`=30042; -- Kaye Toogie
UPDATE `creature_model_info` SET `bounding_radius`=0.383,`combat_reach`=1,`gender`=1 WHERE `modelid`=30311; -- Silver Covenant Agent
UPDATE `creature_model_info` SET `bounding_radius`=0.385,`combat_reach`=1,`gender`=1 WHERE `modelid`=25005; -- Dreadsaber
UPDATE `creature_model_info` SET `bounding_radius`=0.3875,`combat_reach`=1,`gender`=0 WHERE `modelid`=28618; -- Unbound Seer
UPDATE `creature_model_info` SET `bounding_radius`=0.389,`combat_reach`=1,`gender`=0 WHERE `modelid`=26376; -- Ainderu Summerleaf
UPDATE `creature_model_info` SET `bounding_radius`=0.389,`combat_reach`=1,`gender`=0 WHERE `modelid`=28204; -- Mendez Nightshadow
UPDATE `creature_model_info` SET `bounding_radius`=0.389,`combat_reach`=1,`gender`=0 WHERE `modelid`=30156; -- Daros Moonlance
UPDATE `creature_model_info` SET `bounding_radius`=0.3978,`combat_reach`=1,`gender`=0 WHERE `modelid`=26847; -- Dalaran Visitor
UPDATE `creature_model_info` SET `bounding_radius`=0.4,`combat_reach`=0,`gender`=2 WHERE `modelid`=26526; -- Cosmetic Mechanical Sheep
UPDATE `creature_model_info` SET `bounding_radius`=0.4,`combat_reach`=0,`gender`=2 WHERE `modelid`=9563; -- Worg Pup
UPDATE `creature_model_info` SET `bounding_radius`=0.4131,`combat_reach`=2,`gender`=0 WHERE `modelid`=16024; -- Rhonin
UPDATE `creature_model_info` SET `bounding_radius`=0.4185,`combat_reach`=1,`gender`=0 WHERE `modelid`=27820; -- Armored Brown Bear
UPDATE `creature_model_info` SET `bounding_radius`=0.4213,`combat_reach`=1,`gender`=0 WHERE `modelid`=19744; -- Archmage Lan'dalock
UPDATE `creature_model_info` SET `bounding_radius`=0.42228,`combat_reach`=2,`gender`=0 WHERE `modelid`=31713; -- Frozo the Renowned
UPDATE `creature_model_info` SET `bounding_radius`=0.4284,`combat_reach`=2,`gender`=0 WHERE `modelid`=30978; -- Spectral Footman
UPDATE `creature_model_info` SET `bounding_radius`=0.4284,`combat_reach`=2,`gender`=0 WHERE `modelid`=30981; -- Shadowy Mercenary
UPDATE `creature_model_info` SET `bounding_radius`=0.44045,`combat_reach`=1,`gender`=1 WHERE `modelid`=30686; -- Dark Ranger Vorel
UPDATE `creature_model_info` SET `bounding_radius`=0.465,`combat_reach`=0,`gender`=1 WHERE `modelid`=30867; -- Lady Jaina Proudmoore
UPDATE `creature_model_info` SET `bounding_radius`=0.465,`combat_reach`=1,`gender`=2 WHERE `modelid`=28282; -- Brassbolt Mechawrench
UPDATE `creature_model_info` SET `bounding_radius`=0.4685,`combat_reach`=0,`gender`=2 WHERE `modelid`=26442; -- Clockwork Assistant
UPDATE `creature_model_info` SET `bounding_radius`=0.47875,`combat_reach`=1,`gender`=0 WHERE `modelid`=26770; -- Archmage Aethas Sunreaver
UPDATE `creature_model_info` SET `bounding_radius`=0.47875,`combat_reach`=1,`gender`=1 WHERE `modelid`=28222; -- Vereesa Windrunner
UPDATE `creature_model_info` SET `bounding_radius`=0.4858,`combat_reach`=2,`gender`=0 WHERE `modelid`=30980; -- Tortured Rifleman
UPDATE `creature_model_info` SET `bounding_radius`=0.5,`combat_reach`=0,`gender`=0 WHERE `modelid`=4449; -- Imp
UPDATE `creature_model_info` SET `bounding_radius`=0.5,`combat_reach`=1,`gender`=2 WHERE `modelid`=11686; -- Dalaran Fountain Invis Stalker
UPDATE `creature_model_info` SET `bounding_radius`=0.5355,`combat_reach`=2,`gender`=0 WHERE `modelid`=30821; -- Uther the Lightbringer
UPDATE `creature_model_info` SET `bounding_radius`=0.5362,`combat_reach`=2,`gender`=0 WHERE `modelid`=30979; -- Ghostly Priest
UPDATE `creature_model_info` SET `bounding_radius`=0.5392,`combat_reach`=1,`gender`=2 WHERE `modelid`=1041; -- Stabled Hunter Pet
UPDATE `creature_model_info` SET `bounding_radius`=0.54,`combat_reach`=0,`gender`=2 WHERE `modelid`=20833; -- Stabled Hunter Pet
UPDATE `creature_model_info` SET `bounding_radius`=0.59823,`combat_reach`=2,`gender`=1 WHERE `modelid`=27917; -- Gold Warrior
UPDATE `creature_model_info` SET `bounding_radius`=0.6,`combat_reach`=0,`gender`=2 WHERE `modelid`=27681; -- Cosmetic Pig
UPDATE `creature_model_info` SET `bounding_radius`=0.6,`combat_reach`=1,`gender`=2 WHERE `modelid`=12200; -- Segacedi
UPDATE `creature_model_info` SET `bounding_radius`=0.60725,`combat_reach`=3,`gender`=2 WHERE `modelid`=1988; -- Grove Walker
UPDATE `creature_model_info` SET `bounding_radius`=0.6324,`combat_reach`=2,`gender`=0 WHERE `modelid`=27919; -- Green Warrior
UPDATE `creature_model_info` SET `bounding_radius`=0.6511,`combat_reach`=2,`gender`=0 WHERE `modelid`=27930; -- Green Paladin
UPDATE `creature_model_info` SET `bounding_radius`=0.6721,`combat_reach`=1,`gender`=2 WHERE `modelid`=31094; -- Arcturis
UPDATE `creature_model_info` SET `bounding_radius`=0.75,`combat_reach`=0,`gender`=2 WHERE `modelid`=26064; -- Scourge Haunt
UPDATE `creature_model_info` SET `bounding_radius`=0.75,`combat_reach`=1,`gender`=0 WHERE `modelid`=27766; -- [DND] Dalaran Sewer Arena - Controller
UPDATE `creature_model_info` SET `bounding_radius`=0.75,`combat_reach`=1,`gender`=2 WHERE `modelid`=17612; -- Frostmourne Altar Bunny (Quel'Delar)
UPDATE `creature_model_info` SET `bounding_radius`=0.765,`combat_reach`=3,`gender`=0 WHERE `modelid`=30972; -- Falric
UPDATE `creature_model_info` SET `bounding_radius`=0.765,`combat_reach`=3,`gender`=0 WHERE `modelid`=30973; -- Marwyn
UPDATE `creature_model_info` SET `bounding_radius`=0.8,`combat_reach`=0,`gender`=2 WHERE `modelid`=27700; -- Stabled Hunter Pet
UPDATE `creature_model_info` SET `bounding_radius`=0.8725,`combat_reach`=3,`gender`=0 WHERE `modelid`=28183; -- Hunaka Greenhoof
UPDATE `creature_model_info` SET `bounding_radius`=0.9,`combat_reach`=1,`gender`=2 WHERE `modelid`=14255; -- Felguard
UPDATE `creature_model_info` SET `bounding_radius`=0.9747,`combat_reach`=4,`gender`=0 WHERE `modelid`=28207; -- Tuff Gorehoof
UPDATE `creature_model_info` SET `bounding_radius`=0.9747,`combat_reach`=4,`gender`=0 WHERE `modelid`=29820; -- Sorn Proudmane
UPDATE `creature_model_info` SET `bounding_radius`=1.05,`combat_reach`=1,`gender`=0 WHERE `modelid`=10957; -- Dappled Stag
UPDATE `creature_model_info` SET `bounding_radius`=1.05,`combat_reach`=1,`gender`=2 WHERE `modelid`=27726; -- Stabled Hunter Pet
UPDATE `creature_model_info` SET `bounding_radius`=1.1,`combat_reach`=1,`gender`=2 WHERE `modelid`=26532; -- Cosmetic Mechanical Squirrel
UPDATE `creature_model_info` SET `bounding_radius`=1.122,`combat_reach`=0,`gender`=2 WHERE `modelid`=368; -- Black Widow Hatchling
UPDATE `creature_model_info` SET `bounding_radius`=1.18065,`combat_reach`=2,`gender`=2 WHERE `modelid`=833; -- Underbelly Croc
UPDATE `creature_model_info` SET `bounding_radius`=1.2,`combat_reach`=0,`gender`=0 WHERE `modelid`=24235; -- Sinewy Wolf
UPDATE `creature_model_info` SET `bounding_radius`=1.3,`combat_reach`=1,`gender`=2 WHERE `modelid`=134; -- Squirrel
UPDATE `creature_model_info` SET `bounding_radius`=1.5,`combat_reach`=0,`gender`=0 WHERE `modelid`=22003; -- Nargut
UPDATE `creature_model_info` SET `bounding_radius`=1.5,`combat_reach`=0,`gender`=0 WHERE `modelid`=27019; -- Rhukah
UPDATE `creature_model_info` SET `bounding_radius`=1.7,`combat_reach`=2,`gender`=1 WHERE `modelid`=27931; -- Gold Shaman
UPDATE `creature_model_info` SET `bounding_radius`=2.75,`combat_reach`=5,`gender`=0 WHERE `modelid`=30721; -- The Lich King

# Conditions
REPLACE INTO `conditions` VALUES ('15', '9615', '1', '0', '1', '50001', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '1582', '0', '0', '12', '12', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '1582', '0', '0', '11', '24755', '0', '0', '0', '', null);
REPLACE INTO `gossip_menu_option` VALUES ('9615', '1', '0', 'To shake given a hand Drakuru.', '1', '1', '1', '0', '26423', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('11573', '0', '1', 'I want to browse your goods.', '3', '128', '0', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('1582', '0', '0', 'Trick or Treat!', '1', '1', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('1582', '2', '5', 'Make this inn your home.', '8', '65536', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('1582', '3', '0', 'What can I do at an inn?', '1', '1', '1221', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('1582', '1', '1', 'I want to browse your goods.', '3', '128', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('12460', '0', '2', 'Show me where I can fly.', '4', '8192', '0', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('4066', '0', '1', 'I want to browse your goods.', '3', '128', '0', '0', '0', '0', '0', '');
DELETE FROM conditions WHERE SourceTypeOrReferenceId=15 AND SourceGroup=50241;
DELETE FROM conditions WHERE SourceTypeOrReferenceId=14 AND SourceGroup=50241;
UPDATE conditions SET SourceGroup=8076 WHERE SourceTypeOrReferenceId=15 AND SourceGroup=50318;
UPDATE conditions SET SourceGroup=8076 WHERE SourceTypeOrReferenceId=14 AND SourceGroup=50318;
UPDATE conditions SET SourceGroup=4652 WHERE SourceTypeOrReferenceId=15 AND SourceGroup=50188;
UPDATE conditions SET SourceGroup=4652 WHERE SourceTypeOrReferenceId=14 AND SourceGroup=50188;
DELETE FROM conditions WHERE SourceTypeOrReferenceId=15 AND SourceGroup=50215;
DELETE FROM conditions WHERE SourceTypeOrReferenceId=14 AND SourceGroup=50215;
UPDATE conditions SET SourceGroup=21 WHERE SourceTypeOrReferenceId=15 AND SourceGroup=50006;
UPDATE conditions SET SourceGroup=21 WHERE SourceTypeOrReferenceId=14 AND SourceGroup=50006;


# FIX
# DELETE FROM conditions WHERE SourceTypeOrReferenceId=15 AND SourceGroup=50314;
# DELETE FROM conditions WHERE SourceTypeOrReferenceId=14 AND SourceGroup=50314;
# UPDATE conditions SET SourceGroup=9732 WHERE SourceTypeOrReferenceId=15 AND SourceGroup=28666;
# UPDATE conditions SET SourceGroup=9732 WHERE SourceTypeOrReferenceId=14 AND SourceGroup=28666;

# WDB_Check
UPDATE `npc_text` SET `WDBVerified`=1 WHERE `ID` IN (9516,14330,15608,15609,9842,9704,9708,6520,14451,14452,10955);

# Temp_FIX
update gossip_scripts set datalong2=3 where datalong2=2 AND command=15;
update quest_start_scripts set datalong2=3 where datalong2=2 AND command=15;
update quest_end_scripts set datalong2=3 where datalong2=2 AND command=15;
DELETE FROM conditions WHERE ConditionTypeOrReference=14 AND ConditionValue1=0;
UPDATE conditions SET ConditionValue2=0 WHERE ConditionTypeOrReference=25 AND ConditionValue2=1;
UPDATE conditions SET ConditionValue2=0 WHERE ConditionTypeOrReference=17 AND ConditionValue2=1;
UPDATE `creature_template` SET `gossip_menu_id` = 0 WHERE `npcflag` = `npcflag`|32;
UPDATE `gossip_menu_option` SET `box_text`='Are you sure you wish to purchase a Dual Talent Specialization?' WHERE `option_id` =18;
UPDATE creature_template_addon SET path_id=0;

# NPC_FIX
UPDATE
`creature_template`, `creature_template` AS `copy`
SET
`copy`.`RegenHealth`=`creature_template`.`RegenHealth`,
`copy`.`unit_class`=`creature_template`.`unit_class`,
`copy`.`unit_flags`=`creature_template`.`unit_flags`,
`copy`.`npcflag`=`creature_template`.`npcflag`,
`copy`.`dynamicflags`=`creature_template`.`dynamicflags`,
`copy`.`equipment_id`=`creature_template`.`equipment_id`,
`copy`.`faction_A`=`creature_template`.`faction_A`,
`copy`.`faction_H`=`creature_template`.`faction_H`,
`copy`.`speed_run`=`creature_template`.`speed_run`,
`copy`.`speed_walk`=`creature_template`.`speed_walk`,
`copy`.`scale`=`creature_template`.`scale`,
`copy`.`dmgschool`=`creature_template`.`dmgschool`,
`copy`.`mingold`=`creature_template`.`mingold`,
`copy`.`maxgold`=`creature_template`.`maxgold`,
`copy`.`VehicleId`=`creature_template`.`VehicleId`,
`copy`.`mechanic_immune_mask`=`creature_template`.`mechanic_immune_mask`
WHERE
`copy`.`entry`=`creature_template`.`difficulty_entry_1`;
UPDATE
`creature_template`, `creature_template` AS `copy`
SET
`copy`.`RegenHealth`=`creature_template`.`RegenHealth`,
`copy`.`unit_class`=`creature_template`.`unit_class`,
`copy`.`unit_flags`=`creature_template`.`unit_flags`,
`copy`.`npcflag`=`creature_template`.`npcflag`,
`copy`.`dynamicflags`=`creature_template`.`dynamicflags`,
`copy`.`equipment_id`=`creature_template`.`equipment_id`,
`copy`.`faction_A`=`creature_template`.`faction_A`,
`copy`.`faction_H`=`creature_template`.`faction_H`,
`copy`.`speed_run`=`creature_template`.`speed_run`,
`copy`.`speed_walk`=`creature_template`.`speed_walk`,
`copy`.`scale`=`creature_template`.`scale`,
`copy`.`dmgschool`=`creature_template`.`dmgschool`,
`copy`.`mingold`=`creature_template`.`mingold`,
`copy`.`maxgold`=`creature_template`.`maxgold`,
`copy`.`VehicleId`=`creature_template`.`VehicleId`,
`copy`.`mechanic_immune_mask`=`creature_template`.`mechanic_immune_mask`
WHERE
`copy`.`entry`=`creature_template`.`difficulty_entry_2`;
UPDATE
`creature_template`, `creature_template` AS `copy`
SET
`copy`.`RegenHealth`=`creature_template`.`RegenHealth`,
`copy`.`unit_class`=`creature_template`.`unit_class`,
`copy`.`unit_flags`=`creature_template`.`unit_flags`,
`copy`.`npcflag`=`creature_template`.`npcflag`,
`copy`.`dynamicflags`=`creature_template`.`dynamicflags`,
`copy`.`equipment_id`=`creature_template`.`equipment_id`,
`copy`.`faction_A`=`creature_template`.`faction_A`,
`copy`.`faction_H`=`creature_template`.`faction_H`,
`copy`.`speed_run`=`creature_template`.`speed_run`,
`copy`.`speed_walk`=`creature_template`.`speed_walk`,
`copy`.`scale`=`creature_template`.`scale`,
`copy`.`dmgschool`=`creature_template`.`dmgschool`,
`copy`.`mingold`=`creature_template`.`mingold`,
`copy`.`maxgold`=`creature_template`.`maxgold`,
`copy`.`VehicleId`=`creature_template`.`VehicleId`,
`copy`.`mechanic_immune_mask`=`creature_template`.`mechanic_immune_mask`
WHERE
`copy`.`entry`=`creature_template`.`difficulty_entry_3`;

# Final_FIX
UPDATE quest_template SET SpecialFlags=SpecialFlags|1 WHERE QuestFlags=QuestFlags|4096;
UPDATE quest_template SET SpecialFlags=SpecialFlags|1 WHERE QuestFlags=QuestFlags|32768;
DELETE FROM `creature_addon` WHERE `guid` NOT IN (SELECT `guid` FROM `creature`);
DELETE FROM `linked_respawn` WHERE `guid` NOT IN (SELECT `guid` FROM `creature`);
DELETE FROM `linked_respawn` WHERE `linkedGuid` NOT IN (SELECT `guid` FROM `creature`);
DELETE FROM `game_event_gameobject` WHERE `guid` NOT IN (SELECT `guid` FROM `gameobject`);
DELETE FROM `game_event_creature` WHERE `guid` NOT IN (SELECT `guid` FROM `creature`);
UPDATE creature_template SET unit_flags=unit_flags&~2048 WHERE unit_flags&2048=2048;
UPDATE creature_template SET unit_flags=unit_flags&~524288 WHERE unit_flags&524288=524288;
UPDATE creature_template SET unit_flags=unit_flags&~67108864 WHERE unit_flags&67108864=67108864;
UPDATE creature_template SET unit_flags=unit_flags&~8388608 WHERE unit_flags&8388608=8388608;
UPDATE `creature` SET `MovementType` = 0 WHERE `spawndist` = 0 AND `MovementType`=1;
UPDATE `creature` SET `spawndist`=0 WHERE `MovementType`=0;
UPDATE `creature` SET `spawntimesecs` = 300 WHERE `spawntimesecs` = 25;
UPDATE `gameobject` SET `spawntimesecs` = 300 WHERE `spawntimesecs` = 25;
UPDATE `creature_template` SET `scale` = 1 WHERE `scale` = 0;
update gameobject_template, gameobject set gameobject.animprogress = 100 where gameobject_template.entry = gameobject.id and gameobject_template.type = 0;
update gameobject_template, gameobject set gameobject.animprogress = 100 where gameobject_template.entry = gameobject.id and gameobject_template.type = 3;
update gameobject_template, gameobject set gameobject.animprogress = 100 where gameobject_template.entry = gameobject.id and gameobject_template.type = 10;
update gameobject_template, gameobject set gameobject.animprogress = 100 where gameobject_template.entry = gameobject.id and gameobject_template.type = 25;
UPDATE `gameobject` SET `state`=1 WHERE `state`=0 AND `id` IN (SELECT entry FROM `gameobject_template` WHERE `type`=3);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` IN (SELECT `id` FROM `creature_questrelation`);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` IN (SELECT `id` FROM `creature_involvedrelation`);
UPDATE `gameobject` SET `state` = 0 WHERE `id` IN (SELECT `entry` FROM `gameobject_template` WHERE `type` = 0 AND `data0` = 1);
UPDATE `gameobject_template` SET `flags`=`flags`&~4 WHERE `type` IN (2,19,17);
DELETE FROM `gameobject_scripts` WHERE `id` NOT IN (SELECT `guid` FROM `gameobject`);
DELETE FROM `gameobject_scripts` WHERE `command` in (11, 12) and `datalong` NOT IN (SELECT `guid` FROM `gameobject`);
DELETE FROM `creature_onkill_reputation` WHERE `creature_id` NOT IN (SELECT `entry` FROM `creature_template`);
UPDATE `item_template` SET `spelltrigger_2` = 0 WHERE `spellid_2` = 0 AND `spelltrigger_2` = 6;
UPDATE `creature_template` SET npcflag = npcflag|1 WHERE `gossip_menu_id` > 0;
UPDATE `creature_template` SET `ScriptName` = '' WHERE `AIName` = 'EventAI' AND `ScriptName` = 'generic_creature';
UPDATE `creature_template` SET `ScriptName` = '' WHERE `AIName` = 'SmartAI' AND `ScriptName` = 'generic_creature';

UPDATE
`creature`, `waypoint_data`
SET
`creature`.`spawndist`=0,
`creature`.`MovementType`=2
WHERE
`creature`.`guid`=`waypoint_data`.`id`;

DELETE
`waypoint_data`
FROM
`waypoint_data`
LEFT JOIN
(`creature`)
ON
(`creature`.`guid`=`waypoint_data`.`id`)
WHERE
`creature`.`guid` IS NULL;

ALTER TABLE `waypoint_data` ADD INDEX `temp_action` (`action`);
ALTER TABLE `waypoint_scripts` ADD INDEX `temp_id` (`id`);
DELETE
`waypoint_scripts`
FROM
`waypoint_scripts`
LEFT JOIN
(`waypoint_data`)
ON
(`waypoint_data`.`action`=`waypoint_scripts`.`id`)
WHERE
`waypoint_data`.`action` IS NULL;
ALTER TABLE `waypoint_data` DROP INDEX `temp_action`;
ALTER TABLE `waypoint_scripts` DROP INDEX `temp_id`;

update creature_addon set path_id=0;
UPDATE
`creature_addon`, `waypoint_data`
SET
`creature_addon`.`path_id`=`creature_addon`.`guid`
WHERE
`creature_addon`.`guid`=`waypoint_data`.`id`;

UPDATE version SET `cache_id`= '590';
UPDATE version SET `core_revision`= '11554';
UPDATE version SET `db_version`= 'YTDB_0.14.2_R590_TC_R11554_TDBAI_335.0.3_RuDB_R38.8';
