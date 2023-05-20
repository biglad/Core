-- fix for Frostbrood Vanquisher
UPDATE `creature_template` SET `unit_class`='2' WHERE (`entry`='28670');

-- add some lvl stats for MGA npc's
INSERT INTO creature_classlevelstats VALUES (2, 2, 100, 100000, 0);

-- fix some errors in lvl stats
-- careull before running
-- UPDATE creature_template SET exp = 0 WHERE `minlevel` BETWEEN '1' AND '60';
-- UPDATE creature_template SET exp = 1 WHERE `minlevel` BETWEEN '64' AND '67';
-- UPDATE creature_template SET exp = 2 WHERE `minlevel` BETWEEN '80' AND '150';



-- fix some npc stats
UPDATE creature_template SET exp = 1 WHERE entry = 25981;
UPDATE creature_template SET exp = 1 WHERE entry = 25470;
UPDATE creature_template SET exp = 1 WHERE entry = 25650;
UPDATE creature_template SET exp = 1 WHERE entry = 25522;
UPDATE creature_template SET exp = 1 WHERE entry = 25521;



