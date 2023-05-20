-- FIX A Suitable Disguise reward buff at end of this quest
-- updated dal guards script to ignore platyers with buff
UPDATE `quest_template` SET `RewSpellCast`='70974' WHERE (`entry`='24556');
UPDATE `quest_template` SET `RewSpellCast`='70973' WHERE (`entry`='20438');
