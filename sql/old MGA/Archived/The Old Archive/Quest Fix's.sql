-- FIX A Suitable Disguise reward buff at end of this quest
-- updated dal guards script to ignore platyers with buff
UPDATE `quest_template` SET `RewSpellCast`='70974' WHERE (`entry`='24556');
UPDATE `quest_template` SET `RewSpellCast`='70973' WHERE (`entry`='20438');

-- FoS / PoS Quests for both sides
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES ('38160', '24682');
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES ('38161', '24683');
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES ('36990', '24683');
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES ('36993', '24682');
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES ('36993', '24682');
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES ('36990', '24498');
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES ('37591', '24712');
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES ('37592', '24498');
UPDATE `creature_questrelation` SET `quest`='24507' WHERE (`id`='37591') AND (`quest`='24712');
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES ('37591', '24712');
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES ('37592', '24710');
UPDATE `creature_template` SET `faction_A`='35', `faction_H`='35' WHERE (`entry`='37592');
UPDATE `creature_template` SET `faction_A`='35', `faction_H`='35' WHERE (`entry`='38189');


-- Stop the Ascension!
UPDATE `creature_template` SET `faction_A`='14', `faction_H`='14' WHERE (`entry`='23671');


-- LIGHT OF Dawn temp fix
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES ('500119', '12801');
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES ('500119', '12801');
UPDATE `quest_template` SET `Method`='0' WHERE (`entry`='12801');
