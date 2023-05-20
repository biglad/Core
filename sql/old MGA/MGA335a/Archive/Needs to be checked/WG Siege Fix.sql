-- set correct faction for WG siege weaps
UPDATE `creature_template` SET `faction_A`='84',`faction_H`='84' WHERE (`entry`='28312');
UPDATE `creature_template` SET `faction_A`='83',`faction_H`='83' WHERE (`entry`='32627');
UPDATE `creature_template` SET `faction_A`='84',`faction_H`='84' WHERE (`entry`='28319');
UPDATE `creature_template` SET `faction_A`='83',`faction_H`='83' WHERE (`entry`='32629');
UPDATE `creature_template` SET `VehicleId`='117' WHERE (`entry`='28319');
UPDATE `creature_template` SET `VehicleId`='117' WHERE (`entry`='32629');


