UPDATE `quest_template` SET `Method`='0' WHERE `Title` LIKE '%Candy Bucket%';
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='5' WHERE (`entry`='23682') AND (`item`='37012');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `maxcount`) VALUES ('23682', '33226', '35', '6');
INSERT INTO `item_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `maxcount`) VALUES ('37586', '33226', '35', '6');


DELETE FROM gameobject_questrelation WHERE quest IN (12345, 12377);
INSERT INTO gameobject_questrelation VALUES
(190035, 12345),
(190079, 12377);
DELETE FROM gameobject_involvedrelation WHERE quest IN (12345, 12377);
INSERT INTO gameobject_involvedrelation VALUES
(190035, 12345),
(190079, 12377);

UPDATE quest_template SET Method = 0, RequiredRaces = 0 WHERE entry = 12396;
UPDATE quest_template SET Method = 0, RequiredRaces = 0 WHERE entry = 12401;
UPDATE quest_template SET Method = 0, RequiredRaces = 0 WHERE entry = 12400;
UPDATE quest_template SET Method = 0, RequiredRaces = 690 WHERE entry = 12375;
UPDATE quest_template SET Method = 0, RequiredRaces = 690 WHERE entry = 12381;
UPDATE quest_template SET Method = 0, RequiredRaces = 690 WHERE entry = 12383;
UPDATE quest_template SET Method = 0, RequiredRaces = 690 WHERE entry = 12362;
UPDATE quest_template SET Method = 0, RequiredRaces = 690 WHERE entry = 12378;
UPDATE quest_template SET Method = 0, RequiredRaces = 690 WHERE entry = 12379;
UPDATE quest_template SET Method = 0, RequiredRaces = 0 WHERE entry = 12398;
UPDATE quest_template SET Method = 0, RequiredRaces = 0 WHERE entry = 12399;
UPDATE quest_template SET Method = 0, RequiredRaces = 690 WHERE entry = 12377;
UPDATE quest_template SET Method = 0, RequiredRaces = 690 WHERE entry = 12374;
UPDATE quest_template SET Method = 0, RequiredRaces = 690 WHERE entry = 12361;
UPDATE quest_template SET Method = 0, RequiredRaces = 690 WHERE entry = 12386;
UPDATE quest_template SET Method = 0, RequiredRaces = 690 WHERE entry = 12366;
UPDATE quest_template SET Method = 0, RequiredRaces = 690 WHERE entry = 12367;

-- ALIANCE
-- Tricks and Treats of Kalimdor
-- Visit the Candy Buckets in Kalimdor

UPDATE quest_template SET Method = 0, RequiredRaces = 1101 WHERE entry = 12345;
UPDATE quest_template SET Method = 0, RequiredRaces = 1101 WHERE entry = 12341;
UPDATE quest_template SET Method = 0, RequiredRaces = 1101 WHERE entry = 12334;
UPDATE quest_template SET Method = 0, RequiredRaces = 1101 WHERE entry = 12349;
UPDATE quest_template SET Method = 0, RequiredRaces = 1101 WHERE entry = 12350;
UPDATE quest_template SET Method = 0, RequiredRaces = 1101 WHERE entry = 12331;
UPDATE quest_template SET Method = 0, RequiredRaces = 1101 WHERE entry = 12333;
UPDATE quest_template SET Method = 0, RequiredRaces = 1101 WHERE entry = 12338;
UPDATE quest_template SET Method = 0, RequiredRaces = 1101 WHERE entry = 12348;
UPDATE quest_template SET Method = 0, RequiredRaces = 1101 WHERE entry = 12337;
UPDATE quest_template SET Method = 0, RequiredRaces = 1101 WHERE entry = 12347;

-- HORDE 
-- Tricks and Treats of Eastern Kingdoms
-- Visit the Candy Buckets in Eastern Kingdoms

UPDATE quest_template SET Method = 0, RequiredRaces = 0 WHERE entry = 12402;
UPDATE quest_template SET Method = 0, RequiredRaces = 690 WHERE entry = 12380;
UPDATE quest_template SET Method = 0, RequiredRaces = 690 WHERE entry = 12365;
UPDATE quest_template SET Method = 0, RequiredRaces = 690 WHERE entry = 12373;
UPDATE quest_template SET Method = 0, RequiredRaces = 690 WHERE entry = 12387;
UPDATE quest_template SET Method = 0, RequiredRaces = 690 WHERE entry = 12369;
UPDATE quest_template SET Method = 0, RequiredRaces = 690 WHERE entry = 12382;
UPDATE quest_template SET Method = 0, RequiredRaces = 690 WHERE entry = 12363;
UPDATE quest_template SET Method = 0, RequiredRaces = 0 WHERE entry = 12397;
UPDATE quest_template SET Method = 0, RequiredRaces = 690 WHERE entry = 12385;
UPDATE quest_template SET Method = 0, RequiredRaces = 690 WHERE entry = 12364;
UPDATE quest_template SET Method = 0, RequiredRaces = 690 WHERE entry = 12376;
UPDATE quest_template SET Method = 0, RequiredRaces = 690 WHERE entry = 12370;
UPDATE quest_template SET Method = 0, RequiredRaces = 690 WHERE entry = 12371;
UPDATE quest_template SET Method = 0, RequiredRaces = 690 WHERE entry = 12384;
UPDATE quest_template SET Method = 0, RequiredRaces = 690 WHERE entry = 12368;

-- ALIANCE
-- Tricks and Treats of Eastern Kingdoms
-- Visit the Candy Buckets in Eastern Kingdoms

UPDATE quest_template SET Method = 0, RequiredRaces = 1101 WHERE entry = 12332;
UPDATE quest_template SET Method = 0, RequiredRaces = 1101 WHERE entry = 12286;
UPDATE quest_template SET Method = 0, RequiredRaces = 1101 WHERE entry = 12351;
UPDATE quest_template SET Method = 0, RequiredRaces = 1101 WHERE entry = 12339;
UPDATE quest_template SET Method = 0, RequiredRaces = 1101 WHERE entry = 12336;
UPDATE quest_template SET Method = 0, RequiredRaces = 1101 WHERE entry = 12343;
UPDATE quest_template SET Method = 0, RequiredRaces = 1101 WHERE entry = 12344;
UPDATE quest_template SET Method = 0, RequiredRaces = 1101 WHERE entry = 12346;
UPDATE quest_template SET Method = 0, RequiredRaces = 1101 WHERE entry = 12335;
UPDATE quest_template SET Method = 0, RequiredRaces = 1101 WHERE entry = 12342;
UPDATE quest_template SET Method = 0, RequiredRaces = 1101 WHERE entry = 12340;

-- HORDE
-- Tricks and Treats of Outland
-- Visit the Candy Buckets in Outland.

UPDATE quest_template SET Method = 0, RequiredRaces = 690 WHERE entry = 12394;
UPDATE quest_template SET Method = 0, RequiredRaces = 690 WHERE entry = 12389;
UPDATE quest_template SET Method = 0, RequiredRaces = 690 WHERE entry = 12388;
UPDATE quest_template SET Method = 0, RequiredRaces = 690 WHERE entry = 12391;
UPDATE quest_template SET Method = 0, RequiredRaces = 0 WHERE entry = 12406;
UPDATE quest_template SET Method = 0, RequiredRaces = 0 WHERE entry = 12408;
UPDATE quest_template SET Method = 0, RequiredRaces = 0 WHERE entry = 12403;
UPDATE quest_template SET Method = 0, RequiredRaces = 690 WHERE entry = 12393;
UPDATE quest_template SET Method = 0, RequiredRaces = 690 WHERE entry = 12392;
UPDATE quest_template SET Method = 0, RequiredRaces = 690 WHERE entry = 12395;
UPDATE quest_template SET Method = 0, RequiredRaces = 690 WHERE entry = 12390;
UPDATE quest_template SET Method = 0, RequiredRaces = 0 WHERE entry = 12407;
UPDATE quest_template SET Method = 0, RequiredRaces = 0 WHERE entry = 12404;
UPDATE quest_template SET Method = 0, RequiredRaces = 0 WHERE entry = 12409;

-- ALIANCE 
-- Tricks and Treats of Outland
-- Visit the Candy Buckets in Outland.

UPDATE quest_template SET Method = 0, RequiredRaces = 1101 WHERE entry = 12358;
UPDATE quest_template SET Method = 0, RequiredRaces = 1101 WHERE entry = 12352;
UPDATE quest_template SET Method = 0, RequiredRaces = 1101 WHERE entry = 12357;
UPDATE quest_template SET Method = 0, RequiredRaces = 1101 WHERE entry = 12356;
UPDATE quest_template SET Method = 0, RequiredRaces = 1101 WHERE entry = 12354;
UPDATE quest_template SET Method = 0, RequiredRaces = 1101 WHERE entry = 12359;
UPDATE quest_template SET Method = 0, RequiredRaces = 1101 WHERE entry = 12353;
UPDATE quest_template SET Method = 0, RequiredRaces = 1101 WHERE entry = 12360;
UPDATE quest_template SET Method = 0, RequiredRaces = 1101 WHERE entry = 12355;
UPDATE quest_template SET Method = 0, RequiredRaces = 1101 WHERE entry = 12340;

DELETE FROM creature_questrelation WHERE quest = 12377;
DELETE FROM gameobject_questrelation WHERE quest = 12377;
UPDATE item_template SET StartQuest=0 WHERE StartQuest = 12377;
INSERT INTO gameobject_questrelation (id, quest) VALUES (190079, 12377);
DELETE FROM creature_involvedrelation WHERE quest = 12377;
DELETE FROM gameobject_involvedrelation WHERE quest = 12377;
INSERT INTO gameobject_involvedrelation (id, quest) VALUES (190079, 12377);

DELETE FROM creature_questrelation WHERE quest = 12345;
DELETE FROM gameobject_questrelation WHERE quest = 12345;
UPDATE item_template SET StartQuest=0 WHERE StartQuest = 12345;
INSERT INTO gameobject_questrelation (id, quest) VALUES (190035, 12345);
DELETE FROM creature_involvedrelation WHERE quest = 12345;
DELETE FROM gameobject_involvedrelation WHERE quest = 12345;
INSERT INTO gameobject_involvedrelation (id, quest) VALUES (190035, 12345);

UPDATE `quest_template` SET `Method`='0' WHERE (`entry`='12135');
UPDATE `quest_template` SET `Method`='0' WHERE (`entry`='11131');
UPDATE `quest_template` SET `Method`='0' WHERE (`entry`='12139');
UPDATE `quest_template` SET `Method`='0' WHERE (`entry`='11219');
 -- set back to method = 2 once fixed in core/db.....

UPDATE `quest_template` SET `Method`='0' WHERE (`entry`='29374');
UPDATE `quest_template` SET `Method`='0' WHERE (`entry`='29376');
UPDATE `quest_template` SET `Method`='0' WHERE (`entry`='29375');
UPDATE `quest_template` SET `Method`='0' WHERE (`entry`='29377');
UPDATE `quest_template` SET `Method`='0' WHERE (`entry`='29054');
UPDATE `quest_template` SET `Method`='0' WHERE (`entry`='29075');
UPDATE `quest_template` SET `Method`='0' WHERE (`entry`='29144');
UPDATE `quest_template` SET `Method`='0' WHERE (`entry`='29371');
 -- set back to method = 2 once fixed in core/db.....
 
 UPDATE `quest_template` SET `Method`='0' WHERE (`entry`='1658');
  -- set back to method = 2 once fixed in core/db.....