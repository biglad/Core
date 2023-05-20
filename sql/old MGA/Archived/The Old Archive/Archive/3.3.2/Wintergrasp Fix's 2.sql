-- fix spirit healers in WG
UPDATE `creature_template` SET `npcflag`='32768' WHERE (`entry`='31841');
UPDATE `creature_template` SET `npcflag`='32768' WHERE (`entry`='31842');
UPDATE `creature_template` SET `unit_flags`='4928' WHERE (`entry`='31841');
UPDATE `creature_template` SET `unit_flags`='4928' WHERE (`entry`='31842');
UPDATE `creature_template` SET `spell1`='0' WHERE (`entry`='31841');
UPDATE `creature_template` SET `spell1`='0' WHERE (`entry`='31842');
