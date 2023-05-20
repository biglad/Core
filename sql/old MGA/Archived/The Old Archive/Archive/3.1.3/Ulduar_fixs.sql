-- Fix exploit with HP regen on vehicals
update creature_template set regenhealth=0 where name like 'salvaged seige%' and vehicleId > 0;
update creature_template set regenhealth=0 where name like 'salvaged chopper%' and vehicleId > 0;
update creature_template set regenhealth=0 where name like 'salvaged demo%' and vehicleId > 0;


-- temp fix for Iron Construct
UPDATE `creature_template` SET `unit_flags`='6' WHERE (`entry`='33121');
UPDATE `creature_template` SET `unit_flags`='6' WHERE (`entry`='33191');
-- revert back
-- UPDATE `creature_template` SET `unit_flags`='0' WHERE (`entry`='33121');
-- UPDATE `creature_template` SET `unit_flags`='0' WHERE (`entry`='33191');