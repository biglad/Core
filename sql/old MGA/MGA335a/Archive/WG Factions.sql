-- FIX WG invis wall
UPDATE `gameobject` SET `phaseMask`='0' WHERE (`guid`='73042');

-- FIX workshop NPC factions


-- faction_a=1732, faction_h=1735  < seems best one now
-- faction_a=1802, faction_h=1801
-- not sure of best factions

-- VERT IMPORTANT
-- IF HORDE ONLY NPC SET
-- `faction_A`='1735', `faction_H`='1735'

-- IF ALLY ONLY SET
-- `faction_A`='1732', `faction_H`='1732' 

-- IF SHARED (U GESSED RIGHT)
-- `faction_A`='1732', `faction_H`='1735'


-- WG SHARED ONLY NPCs
UPDATE `creature_template` SET `faction_A`='1732', `faction_H`='1735' WHERE (`entry`='39172');
UPDATE `creature_template` SET `faction_A`='1732', `faction_H`='1735' WHERE (`entry`='32294');
UPDATE `creature_template` SET `faction_A`='1732', `faction_H`='1735' WHERE (`entry`='28366');
UPDATE `creature_template` SET `faction_A`='1732', `faction_H`='1735' WHERE (`entry`='27881');
UPDATE `creature_template` SET `faction_A`='1732', `faction_H`='1735' WHERE (`entry`='28094');
UPDATE `creature_template` SET `faction_A`='1732', `faction_H`='1735' WHERE (`entry`='28366');
-- Wall cannons DO NOT MOVE...
UPDATE `creature_template` SET `unit_flags`='4' WHERE (`entry`='28366');
UPDATE `creature_template` SET `speed_walk`='0', `speed_run`='0' WHERE (`entry`='28366');

-- WG ALLY ONLY NPCs
UPDATE `creature_template` SET `faction_A`='1732', `faction_H`='1732' WHERE (`entry`='31036');
UPDATE `creature_template` SET `faction_A`='1732', `faction_H`='1732' WHERE (`entry`='31153');
UPDATE `creature_template` SET `faction_A`='1732', `faction_H`='1732' WHERE (`entry`='31109');
UPDATE `creature_template` SET `faction_A`='1732', `faction_H`='1732' WHERE (`entry`='30740');
UPDATE `creature_template` SET `faction_A`='1732', `faction_H`='1732' WHERE (`entry`='31052');
UPDATE `creature_template` SET `faction_A`='1732' WHERE (`entry`='28366');
UPDATE `creature_template` SET `faction_A`='1732', `faction_H`='1732' WHERE (`entry`='30499');
UPDATE `creature_template` SET `faction_A`='1732', `faction_H`='1732' WHERE (`entry`='31842');
UPDATE `creature_template` SET `faction_A`='1732', `faction_H`='1732' WHERE (`entry`='31052');
UPDATE `creature_template` SET `faction_A`='1732', `faction_H`='1732' WHERE (`entry`='31109');
UPDATE `creature_template` SET `faction_A`='1732', `faction_H`='1732' WHERE (`entry`='31054');
UPDATE `creature_template` SET `faction_A`='1732', `faction_H`='1732' WHERE (`entry`='31051');
UPDATE `creature_template` SET `faction_A`='1732', `faction_H`='1732' WHERE (`entry`='32627');
UPDATE `creature_template` SET `faction_A`='1732', `faction_H`='1732', `InhabitType`='3' WHERE (`entry`='32629');


-- WG HORDE ONLY NPCs
UPDATE `creature_template` SET `faction_A`='1735', `faction_H`='1735' WHERE (`entry`='31102');
UPDATE `creature_template` SET `faction_H`='1735' WHERE (`entry`='28312');
UPDATE `creature_template` SET `faction_A`='1735', `faction_H`='1735' WHERE (`entry`='30400');
UPDATE `creature_template` SET `faction_A`='1735', `faction_H`='1735' WHERE (`entry`='31053');
UPDATE `creature_template` SET `faction_A`='1735', `faction_H`='1735' WHERE (`entry`='31841');
UPDATE `creature_template` SET `faction_A`='1735', `faction_H`='1735' WHERE (`entry`='30739');
UPDATE `creature_template` SET `faction_A`='1735', `faction_H`='1735' WHERE (`entry`='31102');
UPDATE `creature_template` SET `faction_A`='1735', `faction_H`='1735' WHERE (`entry`='28312');
UPDATE `creature_template` SET `faction_A`='1735', `faction_H`='1735', `InhabitType`='3' WHERE (`entry`='28319');



-- Seiges and there cannons have own factions???
UPDATE `creature_template` SET `faction_A`='83', `faction_H`='83' WHERE (`entry`='32627');
UPDATE `creature_template` SET `faction_A`='83', `faction_H`='83' WHERE (`entry`='32629');
UPDATE `creature_template` SET `faction_A`='84', `faction_H`='84' WHERE (`entry`='28312');
UPDATE `creature_template` SET `faction_A`='1732', `faction_H`='1732' WHERE (`entry`='28319');
UPDATE `creature_template` SET `speed_walk`='0.7', `speed_run`='0.7' WHERE (`entry`='28312');
UPDATE `creature_template` SET `speed_walk`='0.7', `speed_run`='0.7' WHERE (`entry`='32627');

-- WG Towers!!!
-- old flags 1056
UPDATE `gameobject_template` SET `flags`='6553632' WHERE (`entry`='190358');
UPDATE `gameobject_template` SET `flags`='6553632' WHERE (`entry`='190357');
UPDATE `gameobject_template` SET `flags`='6553632' WHERE (`entry`='190356');
-- these factiosn "SHUD" update setting to horde as they have control right now
UPDATE `gameobject_template` SET `faction`='1735' WHERE (`entry`='190358');
UPDATE `gameobject_template` SET `faction`='1735' WHERE (`entry`='190357');
UPDATE `gameobject_template` SET `faction`='1735' WHERE (`entry`='190356');

-- fix spawn mask of towers in WG orig was 385???????
--UPDATE `gameobject` SET `phaseMask`='1' WHERE (`guid`='49837');
--UPDATE `gameobject` SET `phaseMask`='1' WHERE (`guid`='49851');
--UPDATE `gameobject` SET `phaseMask`='1' WHERE (`guid`='49899');

-- testing a better vID for cannons on seiges
-- orig vcalue = 117
UPDATE `creature_template` SET `VehicleId`='79' WHERE (`entry`='28319');
UPDATE `creature_template` SET `VehicleId`='79' WHERE (`entry`='32629');
