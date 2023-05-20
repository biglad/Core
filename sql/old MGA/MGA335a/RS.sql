UPDATE `creature_template` SET `mechanic_immune_mask`='8388624' WHERE (`entry`='39823');
UPDATE `creature_template` SET `unit_flags`='0' WHERE (`entry`='39747');
UPDATE `creature_template` SET `unit_flags`='0' WHERE (`entry`='39823');

UPDATE `creature_template` SET `mechanic_immune_mask`='617299803' WHERE (`entry`='39920');
UPDATE `creature_template` SET `unit_flags`='0' WHERE (`entry`='39751');
UPDATE `creature_template` SET `unit_flags`='0' WHERE (`entry`='39920');

UPDATE `creature_template` SET `unit_flags`='33554432' WHERE (`entry`='39746');
UPDATE `creature_template` SET `unit_flags`='33554432' WHERE (`entry`='39805');

UPDATE `creature_template` SET `mechanic_immune_mask`='617299803' WHERE (`entry`='39805');


UPDATE `creature_template` SET `ScriptName`='boss_halion_real' WHERE (`entry`='39863');
UPDATE `creature_template` SET `ScriptName`='boss_halion_twilight' WHERE (`entry`='40142');
UPDATE `creature_template` SET `ScriptName`='mob_halion_control' WHERE (`entry`='40146');
UPDATE `creature_template` SET `mechanic_immune_mask`='617299803' WHERE (`entry`='39863');
UPDATE `creature_template` SET `mechanic_immune_mask`='617299803' WHERE (`entry`='40142');


UPDATE `creature_template` SET `mindmg`='300', `maxdmg`='2000', `attackpower`='2000' WHERE (`entry`='40419')
UPDATE `creature_template` SET `mindmg`='200', `maxdmg`='2000', `attackpower`='2000' WHERE (`entry`='40417');
UPDATE `creature_template` SET `mindmg`='250', `maxdmg`='1800', `attackpower`='2100' WHERE (`entry`='40421');

UPDATE `creature` SET `spawntimesecs`='8450000' WHERE (`id`='40421');
UPDATE `creature` SET `spawntimesecs`='8450000' WHERE (`id`='40417');
UPDATE `creature` SET `spawntimesecs`='8450000' WHERE (`id`='40419');

UPDATE `creature` SET `spawntimesecs`='8450000' WHERE (`guid`='202795');
UPDATE `creature` SET `spawntimesecs`='8450000' WHERE (`guid`='202794');
UPDATE `creature` SET `spawntimesecs`='8450000' WHERE (`guid`='202796');

UPDATE `creature_template` SET `unit_flags`='0' WHERE (`entry`='40146');


/*
-- The Ruby Sanctum 10H,25N and 25H faction and equipment fix
-- Bosses
UPDATE `creature_template` SET `minlevel`=83,`maxlevel`=83,`faction_A`=103,`faction_H`=103,`equipment_id`=1568 WHERE `entry`=39920; -- Baltharus the Warborn (1)
UPDATE `creature_template` SET `minlevel`=83,`maxlevel`=83,`exp`=2,`faction_A`=103,`faction_H`=103,`speed_walk`=2.8,`speed_run`=1.71429,`scale`=1.28,`baseattacktime`=2400,`equipment_id`=1568 WHERE `entry`=39922; -- Baltharus the Warborn Clone (1)
UPDATE `creature_template` SET `minlevel`=83,`maxlevel`=83,`faction_A`=103,`faction_H`=103,`equipment_id`=0 WHERE `entry`=39823; -- Saviana Ragefire (1)
UPDATE `creature_template` SET `minlevel`=83,`maxlevel`=83,`faction_A`=16,`faction_H`=16,`equipment_id`=1764 WHERE `entry`=39805; -- General Zarithrian (1)
UPDATE `creature_template` SET `minlevel`=83,`maxlevel`=83,`faction_A`=14,`faction_H`=14,`equipment_id`=0 WHERE `entry` IN (39864,39944,39945); -- Halion
-- Mobs
UPDATE `creature_template` SET `minlevel`=82,`maxlevel`=82,`faction_A`=103,`faction_H`=103,`equipment_id`=2419 WHERE `entry`=40418; -- Charscale Invoker (1)
UPDATE `creature_template` SET `minlevel`=82,`maxlevel`=82,`faction_A`=103,`faction_H`=103,`equipment_id`=2031 WHERE `entry`=40420; -- Charscale Assaulter (1)
UPDATE `creature_template` SET `minlevel`=82,`maxlevel`=82,`faction_A`=103,`faction_H`=103,`equipment_id`=2031 WHERE `entry`=40419; -- Charscale Assaulter
UPDATE `creature_template` SET `minlevel`=82,`maxlevel`=82,`faction_A`=103,`faction_H`=103,`equipment_id`=10068 WHERE `entry`=40422; -- Charscale Elite (1)
UPDATE `creature_template` SET `minlevel`=82,`maxlevel`=82,`faction_A`=103,`faction_H`=103,`equipment_id`=2420 WHERE `entry`=40424; -- Charscale Commander (1)
-- Living Inferno and Living Ember level, faction and expansion fix
UPDATE `creature_template` SET `minlevel`=82,`maxlevel`=82,`exp`=2,`faction_A`=14,`faction_H`=14 WHERE `entry` IN (40681,40682,40683,40684);
-- Sylvanas' Lamenter level fix
UPDATE `creature_template` SET `minlevel`=70,`maxlevel`=70 WHERE `entry`=39048;
-- Update Attacktime,Unitflags and implement correct Modelinfo for Baltharus the Warborn (ID: 39751 and 39920)
UPDATE `creature_template` SET `baseattacktime`=2000,`unit_flags`=`unit_flags`|64 WHERE `entry`=39751;
UPDATE `creature_template` SET `baseattacktime`=2000,`unit_flags`=`unit_flags`|64 WHERE `entry`=39920;
UPDATE `creature_model_info` SET `bounding_radius`=3,`combat_reach`=9 WHERE `modelid`=31761;
-- Update Attacktime,Unitflags and implement correct Modelinfo for Saviana Ragefire (ID: 39747 and 39823)
UPDATE `creature_template` SET `baseattacktime`=2000,`unit_flags`=`unit_flags`|64 WHERE `entry`=39747;
UPDATE `creature_template` SET `baseattacktime`=2000,`unit_flags`=`unit_flags`|64 WHERE `entry`=39823;
UPDATE `creature_model_info` SET `bounding_radius`=2.625,`combat_reach`=5.25 WHERE `modelid`=31577;
-- Update Attacktime and Unitflags for General Zarithrian (ID: 39746 and 39805)
UPDATE `creature_template` SET `baseattacktime`=1500,`unit_flags`=`unit_flags`|33554752 WHERE `entry`=39746;
UPDATE `creature_template` SET `baseattacktime`=1500,`unit_flags`=`unit_flags`|33554752 WHERE `entry`=39805;
-- Lonely Turkey faction fix
UPDATE `creature_template` SET `faction_A`=189,`faction_H`=189 WHERE `entry`=32956;
-- Elwynn Forest Wolf faction fix
UPDATE `creature_template` SET `faction_A`=14,`faction_H`=14 WHERE `entry`=33286;
*/
