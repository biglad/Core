-- fix blood worm spawn spamms
DELETE FROM `spell_proc_event` WHERE `entry` IN (49027, 49542, 49543); 
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`, `SpellFamilyName`, `SpellFamilyMask0`, `SpellFamilyMask1`, `SpellFamilyMask2`, `procFlags`, `procEx`, `ppmRate`, `CustomChance`, `Cooldown`) VALUES 
(49027, 0, 0, 0, 0, 0, 0, 0, 0, 3, 20),  -- Bloodworms rank 1 
(49542, 0, 0, 0, 0, 0, 0, 0, 0, 6, 20),  -- Bloodworms rank 2 
(49543, 0, 0, 0, 0, 0, 0, 0, 0, 9, 20);  -- Bloodworms rank 3



-- fix bloodworm dmage
UPDATE `creature_template` SET `mindmg`='335',`maxdmg`='855' WHERE (`entry`='28017');
UPDATE `creature_template` SET `attackpower`='2400' WHERE (`entry`='28017');
UPDATE `creature_template` SET `mindmg`='900', `maxdmg`='8234', `attackpower`='2400' WHERE (`entry`='27893');



