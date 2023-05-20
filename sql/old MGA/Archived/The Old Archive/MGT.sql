-- fix Wretched Skulker OP dmg
UPDATE `creature_template` SET `dmg_multiplier`='2' WHERE (`entry`='24688');
UPDATE `creature_template` SET `dmg_multiplier`='3' WHERE (`entry`='25577');
UPDATE `creature_template` SET `mindmg`='45', `maxdmg`='46' WHERE (`entry`='24688');
UPDATE `creature_template` SET `mindmg`='45', `maxdmg`='46' WHERE (`entry`='25577');
UPDATE `creature_template` SET `mindmg`='44', `maxdmg`='46' WHERE (`entry`='25575');
UPDATE `creature_template` SET `mindmg`='45', `maxdmg`='46' WHERE (`entry`='24689');
UPDATE `creature_template` SET `mindmg`='24', `maxdmg`='16' WHERE (`entry`='25576');
UPDATE `creature_template` SET `mindmg`='24', `maxdmg`='36' WHERE (`entry`='24690');
UPDATE `creature_template` SET `maxdmg`='36' WHERE (`entry`='25576');
