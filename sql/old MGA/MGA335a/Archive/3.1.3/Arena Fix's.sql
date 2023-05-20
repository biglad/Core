-- Remove dupe spawns in nagrand arena
UPDATE `gameobject` SET `spawnMask`='0' WHERE (`guid`='150103');
UPDATE `gameobject` SET `spawnMask`='0' WHERE (`guid`='150104');

-- Remove dupe spawns in blades edge arena
UPDATE `gameobject` SET `spawnMask`='0' WHERE (`guid`='150110');
UPDATE `gameobject` SET `spawnMask`='0' WHERE (`guid`='150109');

-- Remove dupe spawns in Lordaeron arena
UPDATE `gameobject` SET `spawnMask`='0' WHERE (`guid`='150115');
UPDATE `gameobject` SET `spawnMask`='0' WHERE (`guid`='150116');