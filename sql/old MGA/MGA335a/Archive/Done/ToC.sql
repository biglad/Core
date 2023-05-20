-- Set vehicleid, it is not sniffed.
UPDATE `creature_template` SET `VehicleId`=486 WHERE `entry` IN (35637,35633,35768,34658,35636,35638,35635,35640,35641,35634,33298,33416,33297,33414,33301,33408,33300,33409,33418);
-- Add necessary spells for vehicles.
UPDATE `creature_template` SET `spell1`=68505,`spell2`=62575,`spell3`=68282,`spell4`=66482 WHERE `entry` IN (36558,35644);
