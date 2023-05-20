-- fix portal in dal
UPDATE `gameobject_template` SET `type`='10' WHERE (`entry`='193772');
UPDATE `gameobject_template` SET `data0`='0' WHERE (`entry`='193772');
UPDATE `gameobject_template` SET `ScriptName`='go_dal2wg_portal' WHERE (`entry`='193772');


-- fix seige cannons
UPDATE `creature_template` SET `faction_A`='35',`faction_H`='35' WHERE (`entry`='32627');
UPDATE `creature_template` SET `faction_A`='35',`faction_H`='35' WHERE (`entry`='32629');


-- add info to new worldstate table for WG
UPDATE `worldstates` SET `entry`=99999, `comment`='WG Controlling Faction';
