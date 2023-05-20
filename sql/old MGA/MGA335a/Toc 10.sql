-- fix porting under floor
UPDATE `areatrigger_teleport` SET `target_position_y`='88.6815', `target_position_z`='396.2' WHERE (`id`='5503');
-- move NPC above floor
UPDATE `creature` SET `position_z`='396.273' WHERE (`guid`='202957');
