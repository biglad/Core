-- assign scritps to mounts
UPDATE `creature_template` SET `ScriptName`='generic_vehicleAI_toc5' WHERE `entry` > '33315' AND `entry` < '33325';
UPDATE `creature_template` SET `ScriptName`='generic_vehicleAI_toc5' WHERE (`entry`='33217');


UPDATE `creature_template` SET `faction_A`='14', `faction_H`='14' WHERE (`entry`='33317');
UPDATE `creature_template` SET `faction_A`='14', `faction_H`='14' WHERE (`entry`='33318');
UPDATE `creature_template` SET `faction_A`='14', `faction_H`='14' WHERE (`entry`='33319');
UPDATE `creature_template` SET `dmg_multiplier`='1' WHERE (`entry`='33319');


UPDATE `creature_template` SET `npcflag`='16777216', `VehicleId`='486' WHERE (`entry`='36559');
UPDATE `creature` SET `phaseMask`='1' WHERE (`id`='36559');

UPDATE `creature_template` SET `faction_A`='14', `faction_H`='14' WHERE (`entry`='35589');
UPDATE `creature_template` SET `faction_A`='14', `faction_H`='14' WHERE (`entry`='35604');
