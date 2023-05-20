-- Quest ID: 12734 Rejek: First Blood 
UPDATE `quest_template` SET 
`ReqCreatureOrGOId1` = '28086', 
`ReqCreatureOrGOId2` = '28096', 
`ReqCreatureOrGOId3` = '28109', 
`ReqSpellCast1` = '52992', 
`ReqSpellCast2` = '52992', 
`ReqSpellCast3` = '52992'
 WHERE `entry` = '12734';

-- faction Mistwhisper to make they atackable
UPDATE `creature_template` SET 
`faction_A` = '16', 
`faction_H` = '16'
 WHERE `entry` = '28109';
UPDATE `creature_template` SET 
`faction_A` = '16', 
`faction_H` = '16'
 WHERE `entry` = '28110';
-- Make quest item usable only when creature is dead
INSERT INTO `item_required_target` VALUES
('39577','2','28110'),
('39577','2','28109'),
('39577','2','28096'),
('39577','2','28086');

-- Mission: The Murketh and Shaadraz Gateways
-- Quest ID: 10146,10129
-- Fixes Dropping The Nether Modulator
DELETE FROM `spell_script_target` WHERE entry = 33655;
INSERT INTO `spell_script_target` (`entry`, `type`, `targetEntry`) VALUES
(33655, 1, 19291),
(33655, 1, 19292);
-- Fixes Quest Mission: The Murketh and Shaadraz Gateways
UPDATE `quest_template` SET `ReqSpellCast1` = 33655, `ReqSpellCast2` = 33655 WHERE `entry` = 10146;
-- Fixes Quest Mission: Gateways Murketh and Shaadraz
UPDATE `quest_template` SET `ReqSpellCast1` = 33655, `ReqSpellCast2` = 33655 WHERE `entry` = 10129;

-- Quest ID:
-- 12932 (The Amphitheater of Anguish: Yggdras!)
-- 12933 (The Amphitheater of Anguish: Magnataur!)
-- 12934 (The Amphitheater of Anguish: From Beyond!)
-- 12935 (The Amphitheater of Anguish: Tuskarrmageddon!)
-- 12936 (The Amphitheater of Anguish: Korrak the Bloodrager!)
-- 12954 (The Amphitheater of Anguish: Yggdras!)
--
-- NPC 30007 (Gurgthock)  [Quest Giver]
--

REPLACE INTO `creature_template` (`entry`, `heroic_entry`, `KillCredit1`, `KillCredit2`, `modelid_A`, `modelid_A2`, `modelid_H`, `modelid_H2`, `name`, `subname`, `IconName`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `unk16`, `unk17`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES (30007, 0, 0, 0, 17836, 0, 17836, 0, 'Gurgthock', 'Fight Promoter', '', 75, 75, 10635, 10635, 0, 0, 0, 35, 35, 2, 1, 1, 0, 200, 200, 0, 400, 1, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '');

REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (167617, 30007, 571, 1, 1, 0, 0, 5793.73, -3014.32, 273.062, 2.35017, 25, 0, 0, 10635, 0, 0, 0);


--
-- Template of Quest n.12932 (The Amphitheater of Anguish: Yggdras!)
--

DELETE FROM `creature_questrelation` WHERE `quest` = 12932;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 12932;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 12932;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (30007, 12932);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 30007;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 12932;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 12932;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (30009, 12932);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=30009;
REPLACE INTO `quest_template` (`entry`, `Method`, `ZoneOrSort`, `SkillOrClass`, `MinLevel`, `QuestLevel`, `Type`, `RequiredRaces`, `RequiredSkillValue`, `RepObjectiveFaction`, `RepObjectiveValue`, `RequiredMinRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepFaction`, `RequiredMaxRepValue`, `SuggestedPlayers`, `LimitTime`, `QuestFlags`, `SpecialFlags`, `CharTitleId`, `PlayersSlain`, `BonusTalents`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `NextQuestInChain`, `SrcItemId`, `SrcItemCount`, `SrcSpell`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemId2`, `ReqItemId3`, `ReqItemId4`, `ReqItemCount1`, `ReqItemCount2`, `ReqItemCount3`, `ReqItemCount4`, `ReqSourceId1`, `ReqSourceId2`, `ReqSourceId3`, `ReqSourceId4`, `ReqSourceCount1`, `ReqSourceCount2`, `ReqSourceCount3`, `ReqSourceCount4`, `ReqCreatureOrGOId1`, `ReqCreatureOrGOId2`, `ReqCreatureOrGOId3`, `ReqCreatureOrGOId4`, `ReqCreatureOrGOCount1`, `ReqCreatureOrGOCount2`, `ReqCreatureOrGOCount3`, `ReqCreatureOrGOCount4`, `ReqSpellCast1`, `ReqSpellCast2`, `ReqSpellCast3`, `ReqSpellCast4`, `RewChoiceItemId1`, `RewChoiceItemId2`, `RewChoiceItemId3`, `RewChoiceItemId4`, `RewChoiceItemId5`, `RewChoiceItemId6`, `RewChoiceItemCount1`, `RewChoiceItemCount2`, `RewChoiceItemCount3`, `RewChoiceItemCount4`, `RewChoiceItemCount5`, `RewChoiceItemCount6`, `RewItemId1`, `RewItemId2`, `RewItemId3`, `RewItemId4`, `RewItemCount1`, `RewItemCount2`, `RewItemCount3`, `RewItemCount4`, `RewRepFaction1`, `RewRepFaction2`, `RewRepFaction3`, `RewRepFaction4`, `RewRepFaction5`, `RewRepValue1`, `RewRepValue2`, `RewRepValue3`, `RewRepValue4`, `RewRepValue5`, `RewHonorableKills`, `RewOrReqMoney`, `RewMoneyMaxLevel`, `RewSpell`, `RewSpellCast`, `RewMailTemplateId`, `RewMailDelaySecs`, `PointMapId`, `PointX`, `PointY`, `PointOpt`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `IncompleteEmote`, `CompleteEmote`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `StartScript`, `CompleteScript`) VALUES (12932, 2, 66, 0, 75, 77, 1, 0, 0, 0, 0, 0, 0, 0, 0, 5, 0, 130, 0, 0, 0, 0, 12974, 0, 0, 0, 0, 0, 0, 'The Amphitheater of Anguish: Yggdras!', 'I\'ll tell you what, buddy, this place is a far cry from the rolling plains of Nagrand. These trolls are dirtier than ogres; but hey, I go where the gold\'s at! So welcome to Zul\'Drak, pal.$B$BYou\'re new to this racket, so let me set you straight. I\'m the fight promoter and this feisty troll next to me is Wodin, my bodyguard. You\'re the entertainment. When you wanna fight, let me know and I\'ll set up the match.$B$BIf you\'re ready and got a group of friends with you, we can start! What do you say?$B', 'Get in the arena at the Amphitheater of Anguish and defeat Yggdras! Return to Wodin the Troll-Servant to redeem your reward.', 'Not bad, friend. You might make some gold out here - if you manage to stay alive.', '', 'Yggdras Defeated', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 30014, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 195000, 192600, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);


--
-- NPC for Quest n.12932 (The Amphitheater of Anguish: Yggdras!)
--

REPLACE INTO `creature_template` (`entry`, `heroic_entry`, `KillCredit1`, `KillCredit2`, `modelid_A`, `modelid_A2`, `modelid_H`, `modelid_H2`, `name`, `subname`, `IconName`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `unk16`, `unk17`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES (30014, 0, 0, 0, 24892, 0, 24892, 0, 'Yggdras', '', '', 75, 75, 106350, 106350, 0, 0, 0, 7, 7, 0, 1, 1, 1, 300, 300, 0, 300, 3, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 30014, 0, 0, 0, 0, 0, 0, 0, 0, 40504, 57076, 55859, 0, 0, 1, 2, '', 0, 3, 10, 1, 0, 0, 0, 0, 0, 199, 1, 0, 0, 0, '');

REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (167619, 30014, 571, 1, 1, 0, 0, 5765.97, -3015.85, 273.105, 0.574379, 25, 0, 0, 106350, 0, 0, 0);


--
-- Template of Quest n.12933 (The Amphitheater of Anguish: Magnataur!)
--

DELETE FROM `creature_questrelation` WHERE `quest` = 12933;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 12933;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 12933;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (30007, 12933);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 30007;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 12933;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 12933;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (30009, 12933);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=30009;
REPLACE INTO `quest_template` (`entry`, `Method`, `ZoneOrSort`, `SkillOrClass`, `MinLevel`, `QuestLevel`, `Type`, `RequiredRaces`, `RequiredSkillValue`, `RepObjectiveFaction`, `RepObjectiveValue`, `RequiredMinRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepFaction`, `RequiredMaxRepValue`, `SuggestedPlayers`, `LimitTime`, `QuestFlags`, `SpecialFlags`, `CharTitleId`, `PlayersSlain`, `BonusTalents`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `NextQuestInChain`, `SrcItemId`, `SrcItemCount`, `SrcSpell`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemId2`, `ReqItemId3`, `ReqItemId4`, `ReqItemCount1`, `ReqItemCount2`, `ReqItemCount3`, `ReqItemCount4`, `ReqSourceId1`, `ReqSourceId2`, `ReqSourceId3`, `ReqSourceId4`, `ReqSourceCount1`, `ReqSourceCount2`, `ReqSourceCount3`, `ReqSourceCount4`, `ReqCreatureOrGOId1`, `ReqCreatureOrGOId2`, `ReqCreatureOrGOId3`, `ReqCreatureOrGOId4`, `ReqCreatureOrGOCount1`, `ReqCreatureOrGOCount2`, `ReqCreatureOrGOCount3`, `ReqCreatureOrGOCount4`, `ReqSpellCast1`, `ReqSpellCast2`, `ReqSpellCast3`, `ReqSpellCast4`, `RewChoiceItemId1`, `RewChoiceItemId2`, `RewChoiceItemId3`, `RewChoiceItemId4`, `RewChoiceItemId5`, `RewChoiceItemId6`, `RewChoiceItemCount1`, `RewChoiceItemCount2`, `RewChoiceItemCount3`, `RewChoiceItemCount4`, `RewChoiceItemCount5`, `RewChoiceItemCount6`, `RewItemId1`, `RewItemId2`, `RewItemId3`, `RewItemId4`, `RewItemCount1`, `RewItemCount2`, `RewItemCount3`, `RewItemCount4`, `RewRepFaction1`, `RewRepFaction2`, `RewRepFaction3`, `RewRepFaction4`, `RewRepFaction5`, `RewRepValue1`, `RewRepValue2`, `RewRepValue3`, `RewRepValue4`, `RewRepValue5`, `RewHonorableKills`, `RewOrReqMoney`, `RewMoneyMaxLevel`, `RewSpell`, `RewSpellCast`, `RewMailTemplateId`, `RewMailDelaySecs`, `PointMapId`, `PointX`, `PointY`, `PointOpt`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `IncompleteEmote`, `CompleteEmote`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `StartScript`, `CompleteScript`) VALUES (12933, 2, 66, 0, 75, 77, 1, 0, 0, 0, 0, 0, 0, 0, 0, 5, 0, 130, 0, 0, 0, 0, 12932, 0, 0, 0, 0, 0, 0, 'The Amphitheater of Anguish: Magnataur!', 'This next match is a doozy, buddy! Apparently some magnataur from the Dragonblight wants a piece of the action. You ever fought one of those before? All I can tell you is to aim high!$B$BWe\'ll get this party started when you give me the word.', 'Get in the arena at the Amphitheater of Anguish and defeat Stinkbeard! Return to Wodin the Troll-Servant to redeem your reward.', 'Wow! When I first saw Stinkbeard, I thought you were done for! Nice work!', '', 'Stinkbeard Defeated', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 30017, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 195000, 192600, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);


--
-- NPC for Quest n.12933 (The Amphitheater of Anguish: Magnataur!)
--

REPLACE INTO `creature_template` (`entry`, `heroic_entry`, `KillCredit1`, `KillCredit2`, `modelid_A`, `modelid_A2`, `modelid_H`, `modelid_H2`, `name`, `subname`, `IconName`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `unk16`, `unk17`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES (30017, 0, 0, 0, 24954, 0, 24954, 0, 'Stinkbeard', '', '', 75, 75, 138255, 138255, 0, 0, 0, 7, 7, 0, 1, 1, 1, 0, 0, 0, 0, 3, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 13, 1, 0, 0, 0, 0, 0, 169, 1, 0, 0, 0, '');

REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (167624, 30017, 571, 1, 1, 0, 0, 5748.58, -2990.73, 273.534, 0.509891, 25, 0, 0, 1, 0, 0, 0);

UPDATE `creature` SET `curhealth`='138255' WHERE `guid`=167624;


--
-- Template of Quest n.12934 (The Amphitheater of Anguish: From Beyond!)
--

DELETE FROM `creature_questrelation` WHERE `quest` = 12934;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 12934;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 12934;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (30007, 12934);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 30007;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 12934;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 12934;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (30009, 12934);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=30009;
REPLACE INTO `quest_template` (`entry`, `Method`, `ZoneOrSort`, `SkillOrClass`, `MinLevel`, `QuestLevel`, `Type`, `RequiredRaces`, `RequiredSkillValue`, `RepObjectiveFaction`, `RepObjectiveValue`, `RequiredMinRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepFaction`, `RequiredMaxRepValue`, `SuggestedPlayers`, `LimitTime`, `QuestFlags`, `SpecialFlags`, `CharTitleId`, `PlayersSlain`, `BonusTalents`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `NextQuestInChain`, `SrcItemId`, `SrcItemCount`, `SrcSpell`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemId2`, `ReqItemId3`, `ReqItemId4`, `ReqItemCount1`, `ReqItemCount2`, `ReqItemCount3`, `ReqItemCount4`, `ReqSourceId1`, `ReqSourceId2`, `ReqSourceId3`, `ReqSourceId4`, `ReqSourceCount1`, `ReqSourceCount2`, `ReqSourceCount3`, `ReqSourceCount4`, `ReqCreatureOrGOId1`, `ReqCreatureOrGOId2`, `ReqCreatureOrGOId3`, `ReqCreatureOrGOId4`, `ReqCreatureOrGOCount1`, `ReqCreatureOrGOCount2`, `ReqCreatureOrGOCount3`, `ReqCreatureOrGOCount4`, `ReqSpellCast1`, `ReqSpellCast2`, `ReqSpellCast3`, `ReqSpellCast4`, `RewChoiceItemId1`, `RewChoiceItemId2`, `RewChoiceItemId3`, `RewChoiceItemId4`, `RewChoiceItemId5`, `RewChoiceItemId6`, `RewChoiceItemCount1`, `RewChoiceItemCount2`, `RewChoiceItemCount3`, `RewChoiceItemCount4`, `RewChoiceItemCount5`, `RewChoiceItemCount6`, `RewItemId1`, `RewItemId2`, `RewItemId3`, `RewItemId4`, `RewItemCount1`, `RewItemCount2`, `RewItemCount3`, `RewItemCount4`, `RewRepFaction1`, `RewRepFaction2`, `RewRepFaction3`, `RewRepFaction4`, `RewRepFaction5`, `RewRepValue1`, `RewRepValue2`, `RewRepValue3`, `RewRepValue4`, `RewRepValue5`, `RewHonorableKills`, `RewOrReqMoney`, `RewMoneyMaxLevel`, `RewSpell`, `RewSpellCast`, `RewMailTemplateId`, `RewMailDelaySecs`, `PointMapId`, `PointX`, `PointY`, `PointOpt`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `IncompleteEmote`, `CompleteEmote`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `StartScript`, `CompleteScript`) VALUES (12934, 2, 66, 0, 75, 77, 1, 0, 0, 0, 0, 0, 0, 0, 0, 5, 0, 130, 0, 0, 0, 0, 12933, 0, 0, 0, 0, 0, 0, 'The Amphitheater of Anguish: From Beyond!', 'I\'m not gonna lie to you, pal. You might be overmatched here. This next one is a being from the elemental planes! I don\'t even know what\'s gonna show up in that arena!$B$BIf you think you\'re up to it, get in there and give \'em hell!', 'Get in the arena at the Amphitheater of Anguish and defeat one of the elemental lords! Return to Wodin the Troll-Servant to redeem your reward.', 'Unbelievable! I thought this whole place was going to explode when it first appeared! You really dominated that round!', '', 'Elemental Lord Defeated', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 30026, 30019, 30025, 30024, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 195000, 192600, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);


--
-- NPC for Quest n.12934 (The Amphitheater of Anguish: From Beyond!)
--

REPLACE INTO `creature_template` (`entry`, `heroic_entry`, `KillCredit1`, `KillCredit2`, `modelid_A`, `modelid_A2`, `modelid_H`, `modelid_H2`, `name`, `subname`, `IconName`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `unk16`, `unk17`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES (30026, 0, 0, 0, 26694, 0, 26694, 0, 'Az\'Barin, Prince of the Gust', '', '', 76, 76, 165015, 165015, 54645, 54645, 0, 7, 7, 0, 1, 1, 1, 450, 450, 0, 400, 3, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 15, 15, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '');

REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (167631, 30026, 571, 1, 1, 0, 0, 5809.86, -2996.66, 273.54, 3.36805, 25, 0, 0, 165015, 54645, 0, 0);




--
-- Template of Quest n.12935 (The Amphitheater of Anguish: Tuskarrmageddon!)
--

DELETE FROM `creature_questrelation` WHERE `quest` = 12935;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 12935;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 12935;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (30007, 12935);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 30007;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 12935;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 12935;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (30009, 12935);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=30009;
REPLACE INTO `quest_template` (`entry`, `Method`, `ZoneOrSort`, `SkillOrClass`, `MinLevel`, `QuestLevel`, `Type`, `RequiredRaces`, `RequiredSkillValue`, `RepObjectiveFaction`, `RepObjectiveValue`, `RequiredMinRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepFaction`, `RequiredMaxRepValue`, `SuggestedPlayers`, `LimitTime`, `QuestFlags`, `SpecialFlags`, `CharTitleId`, `PlayersSlain`, `BonusTalents`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `NextQuestInChain`, `SrcItemId`, `SrcItemCount`, `SrcSpell`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemId2`, `ReqItemId3`, `ReqItemId4`, `ReqItemCount1`, `ReqItemCount2`, `ReqItemCount3`, `ReqItemCount4`, `ReqSourceId1`, `ReqSourceId2`, `ReqSourceId3`, `ReqSourceId4`, `ReqSourceCount1`, `ReqSourceCount2`, `ReqSourceCount3`, `ReqSourceCount4`, `ReqCreatureOrGOId1`, `ReqCreatureOrGOId2`, `ReqCreatureOrGOId3`, `ReqCreatureOrGOId4`, `ReqCreatureOrGOCount1`, `ReqCreatureOrGOCount2`, `ReqCreatureOrGOCount3`, `ReqCreatureOrGOCount4`, `ReqSpellCast1`, `ReqSpellCast2`, `ReqSpellCast3`, `ReqSpellCast4`, `RewChoiceItemId1`, `RewChoiceItemId2`, `RewChoiceItemId3`, `RewChoiceItemId4`, `RewChoiceItemId5`, `RewChoiceItemId6`, `RewChoiceItemCount1`, `RewChoiceItemCount2`, `RewChoiceItemCount3`, `RewChoiceItemCount4`, `RewChoiceItemCount5`, `RewChoiceItemCount6`, `RewItemId1`, `RewItemId2`, `RewItemId3`, `RewItemId4`, `RewItemCount1`, `RewItemCount2`, `RewItemCount3`, `RewItemCount4`, `RewRepFaction1`, `RewRepFaction2`, `RewRepFaction3`, `RewRepFaction4`, `RewRepFaction5`, `RewRepValue1`, `RewRepValue2`, `RewRepValue3`, `RewRepValue4`, `RewRepValue5`, `RewHonorableKills`, `RewOrReqMoney`, `RewMoneyMaxLevel`, `RewSpell`, `RewSpellCast`, `RewMailTemplateId`, `RewMailDelaySecs`, `PointMapId`, `PointX`, `PointY`, `PointOpt`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `IncompleteEmote`, `CompleteEmote`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `StartScript`, `CompleteScript`) VALUES (12935, 2, 66, 0, 75, 77, 1, 0, 0, 0, 0, 0, 0, 0, 0, 5, 0, 130, 0, 0, 0, 0, 12934, 0, 0, 0, 0, 0, 0, 'The Amphitheater of Anguish: Tuskarrmageddon!', 'This next one\'s fightin\' from a dark place, kid. The kind of dark that can only happen when you\'ve been on the flip-side. He\'s hungry and willing to do whatever it takes to win. Watch yourself! I\'ve heard he wrestles yetis for exercise!$B$BWe\'ll start when you\'re ready.', 'Get in the arena at the Amphitheater of Anguish and defeat Orinoko Tuskbreaker! Return to Wodin the Troll-Servant to redeem your reward.', 'I was worried for a while there, $n. When he busted out the seals and penguins... Well, I didn\'t know what to think to be honest. It looked pretty damn ridiculous.', '', 'Orinoko Tuskbreaker Defeated', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 30020, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 33447, 33448, 34722, 0, 5, 5, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 195000, 192600, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);



--
-- NPC for Quest n.12935 (The Amphitheater of Anguish: Tuskarrmageddon!)
--

REPLACE INTO `creature_template` (`entry`, `heroic_entry`, `KillCredit1`, `KillCredit2`, `modelid_A`, `modelid_A2`, `modelid_H`, `modelid_H2`, `name`, `subname`, `IconName`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `unk16`, `unk17`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES (30020, 0, 0, 0, 26695, 0, 26695, 0, 'Orinoko Tuskbreaker', '', '', 76, 76, 198018, 198018, 0, 0, 0, 7, 7, 0, 1, 1, 1, 500, 500, 0, 500, 3, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0, 30020, 30020, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 18, 1, 0, 0, 0, 0, 0, 164, 1, 1646, 0, 0, '');

REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (167635, 30020, 571, 1, 1, 0, 1646, 5797.62, -2965.31, 273.627, 3.78262, 25, 0, 0, 198018, 0, 0, 0);



--
-- Template of Quest n.12936 (The Amphitheater of Anguish: Yggdras!)
--

DELETE FROM `creature_questrelation` WHERE `quest` = 12936;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 12936;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 12936;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (30007, 12936);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 30007;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 12936;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 12936;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (30009, 12936);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=30009;
REPLACE INTO `quest_template` (`entry`, `Method`, `ZoneOrSort`, `SkillOrClass`, `MinLevel`, `QuestLevel`, `Type`, `RequiredRaces`, `RequiredSkillValue`, `RepObjectiveFaction`, `RepObjectiveValue`, `RequiredMinRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepFaction`, `RequiredMaxRepValue`, `SuggestedPlayers`, `LimitTime`, `QuestFlags`, `SpecialFlags`, `CharTitleId`, `PlayersSlain`, `BonusTalents`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `NextQuestInChain`, `SrcItemId`, `SrcItemCount`, `SrcSpell`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemId2`, `ReqItemId3`, `ReqItemId4`, `ReqItemCount1`, `ReqItemCount2`, `ReqItemCount3`, `ReqItemCount4`, `ReqSourceId1`, `ReqSourceId2`, `ReqSourceId3`, `ReqSourceId4`, `ReqSourceCount1`, `ReqSourceCount2`, `ReqSourceCount3`, `ReqSourceCount4`, `ReqCreatureOrGOId1`, `ReqCreatureOrGOId2`, `ReqCreatureOrGOId3`, `ReqCreatureOrGOId4`, `ReqCreatureOrGOCount1`, `ReqCreatureOrGOCount2`, `ReqCreatureOrGOCount3`, `ReqCreatureOrGOCount4`, `ReqSpellCast1`, `ReqSpellCast2`, `ReqSpellCast3`, `ReqSpellCast4`, `RewChoiceItemId1`, `RewChoiceItemId2`, `RewChoiceItemId3`, `RewChoiceItemId4`, `RewChoiceItemId5`, `RewChoiceItemId6`, `RewChoiceItemCount1`, `RewChoiceItemCount2`, `RewChoiceItemCount3`, `RewChoiceItemCount4`, `RewChoiceItemCount5`, `RewChoiceItemCount6`, `RewItemId1`, `RewItemId2`, `RewItemId3`, `RewItemId4`, `RewItemCount1`, `RewItemCount2`, `RewItemCount3`, `RewItemCount4`, `RewRepFaction1`, `RewRepFaction2`, `RewRepFaction3`, `RewRepFaction4`, `RewRepFaction5`, `RewRepValue1`, `RewRepValue2`, `RewRepValue3`, `RewRepValue4`, `RewRepValue5`, `RewHonorableKills`, `RewOrReqMoney`, `RewMoneyMaxLevel`, `RewSpell`, `RewSpellCast`, `RewMailTemplateId`, `RewMailDelaySecs`, `PointMapId`, `PointX`, `PointY`, `PointOpt`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `IncompleteEmote`, `CompleteEmote`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `StartScript`, `CompleteScript`) VALUES (12936, 2, 66, 0, 75, 77, 1, 0, 0, 0, 0, 0, 0, 0, 0, 5, 0, 130, 0, 0, 0, 0, 12935, 0, 0, 0, 0, 0, 0, 'The Amphitheater of Anguish: Korrak the Bloodrager!', 'You\'re not gonna believe this, pal. Your next fight is against Korrak the Bloodrager! Looks like the Drakkari trolls are pulling a power play! And let me tell you, buddy, he\'s been sippin\' the animal god juice. He\'s good and ready to pound you into the ground.$B$BAre you ready?', 'Get in the arena at the Amphitheater of Anguish and defeat Korrak the Bloodrager! Return to Wodin the Troll-Servant to redeem your reward.', 'Damn, I remember Korrak from way back in my younger days when I used to work for the Frostwolf Clan. He would never shut up! I think you just did the world a great service, $n.', '', 'Korrak the Bloodrager Defeated', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 30023, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 195000, 192600, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);


--
-- NPC for Quest n.12936 (The Amphitheater of Anguish: Yggdras!)
--

REPLACE INTO `creature_template` (`entry`, `heroic_entry`, `KillCredit1`, `KillCredit2`, `modelid_A`, `modelid_A2`, `modelid_H`, `modelid_H2`, `name`, `subname`, `IconName`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `unk16`, `unk17`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES (30023, 22643, 0, 0, 7873, 0, 7873, 0, 'Korrak the Bloodrager', 'Champion of the Winterax', '', 77, 77, 227580, 227580, 0, 0, 0, 7, 7, 0, 1, 1, 1, 350, 350, 0, 350, 3, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0, 30023, 0, 0, 0, 0, 0, 0, 0, 0, 24193, 42745, 55948, 30471, 0, 0, 0, '', 0, 3, 20, 1, 0, 0, 0, 0, 0, 164, 1, 0, 0, 0, '');

REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (167623, 30023, 571, 1, 1, 0, 0, 5756.43, -3007.73, 273.158, 0.605711, 25, 0, 0, 227580, 0, 0, 0);


--
-- Template of Quest n.12954 (The Amphitheater of Anguish: Korrak the Bloodrager!)
--

DELETE FROM `creature_questrelation` WHERE `quest` = 12954;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 12954;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 12954;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (30007, 12954);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 30007;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 12954;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 12954;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (30009, 12954);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=30009;
REPLACE INTO `quest_template` (`entry`, `Method`, `ZoneOrSort`, `SkillOrClass`, `MinLevel`, `QuestLevel`, `Type`, `RequiredRaces`, `RequiredSkillValue`, `RepObjectiveFaction`, `RepObjectiveValue`, `RequiredMinRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepFaction`, `RequiredMaxRepValue`, `SuggestedPlayers`, `LimitTime`, `QuestFlags`, `SpecialFlags`, `CharTitleId`, `PlayersSlain`, `BonusTalents`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `NextQuestInChain`, `SrcItemId`, `SrcItemCount`, `SrcSpell`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemId2`, `ReqItemId3`, `ReqItemId4`, `ReqItemCount1`, `ReqItemCount2`, `ReqItemCount3`, `ReqItemCount4`, `ReqSourceId1`, `ReqSourceId2`, `ReqSourceId3`, `ReqSourceId4`, `ReqSourceCount1`, `ReqSourceCount2`, `ReqSourceCount3`, `ReqSourceCount4`, `ReqCreatureOrGOId1`, `ReqCreatureOrGOId2`, `ReqCreatureOrGOId3`, `ReqCreatureOrGOId4`, `ReqCreatureOrGOCount1`, `ReqCreatureOrGOCount2`, `ReqCreatureOrGOCount3`, `ReqCreatureOrGOCount4`, `ReqSpellCast1`, `ReqSpellCast2`, `ReqSpellCast3`, `ReqSpellCast4`, `RewChoiceItemId1`, `RewChoiceItemId2`, `RewChoiceItemId3`, `RewChoiceItemId4`, `RewChoiceItemId5`, `RewChoiceItemId6`, `RewChoiceItemCount1`, `RewChoiceItemCount2`, `RewChoiceItemCount3`, `RewChoiceItemCount4`, `RewChoiceItemCount5`, `RewChoiceItemCount6`, `RewItemId1`, `RewItemId2`, `RewItemId3`, `RewItemId4`, `RewItemCount1`, `RewItemCount2`, `RewItemCount3`, `RewItemCount4`, `RewRepFaction1`, `RewRepFaction2`, `RewRepFaction3`, `RewRepFaction4`, `RewRepFaction5`, `RewRepValue1`, `RewRepValue2`, `RewRepValue3`, `RewRepValue4`, `RewRepValue5`, `RewHonorableKills`, `RewOrReqMoney`, `RewMoneyMaxLevel`, `RewSpell`, `RewSpellCast`, `RewMailTemplateId`, `RewMailDelaySecs`, `PointMapId`, `PointX`, `PointY`, `PointOpt`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `IncompleteEmote`, `CompleteEmote`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `StartScript`, `CompleteScript`) VALUES (12954, 2, 66, 0, 74, 77, 1, 0, 0, 0, 0, 0, 0, 0, 0, 5, 0, 130, 0, 0, 0, 0, 12974, 0, 0, 0, 0, 0, 0, 'The Amphitheater of Anguish: Yggdras!', 'I was wondering when you\'d show up, $N! Having a past champion of the Ring of Blood here will be a huge draw! We\'re gonna be rich, buddy! RICH!$B$BAnyway, this dump is Zul\'Drak. All the ice trolls seem to use it as a toilet. I dunno, the whole place is off its rocker if you ask me! Who cares, though, right? We\'re here to make some gold!$B$BYou know the drill, $N. When you\'re ready let me know and we\'ll get this show on the road!$B', 'Get in the arena at the Amphitheater of Anguish and defeat Yggdras! Return to Wodin the Troll-Servant to redeem your reward.', 'Hey! I know you. Your victory at the Ring of Blood was talked about for months! Too bad you forfeited the championship when you failed to show up to defend your title! Easy come, easy go, eh? At least you\'re still alive.', 'No payout until the fight\'s over, $gman:woman;.', 'Yggdras Defeated', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 30014, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 195000, 192600, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);


--
-- NPC for Quest n.12954 (The Amphitheater of Anguish: Korrak the Bloodrager!)
--

REPLACE INTO `creature_template` (`entry`, `heroic_entry`, `KillCredit1`, `KillCredit2`, `modelid_A`, `modelid_A2`, `modelid_H`, `modelid_H2`, `name`, `subname`, `IconName`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `unk16`, `unk17`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES (30014, 0, 0, 0, 24892, 0, 24892, 0, 'Yggdras', '', '', 75, 75, 106350, 106350, 0, 0, 0, 7, 7, 0, 1, 1, 1, 300, 300, 0, 300, 3, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 30014, 0, 0, 0, 0, 0, 0, 0, 0, 40504, 57076, 55859, 0, 0, 1, 2, '', 0, 3, 10, 1, 0, 0, 0, 0, 0, 199, 1, 0, 0, 0, '');

REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (167619, 30014, 571, 1, 1, 0, 0, 5765.97, -3015.85, 273.105, 0.574379, 25, 0, 0, 106350, 0, 0, 0);


-- Quest ID:
-- 12427 (The conquest pit: Bear Wrestling!)
-- 12428 (Mad Furbolg Fighting)
-- 12429 (The Conquest Pit: Blood and Metal)
-- 12430 (The Conquest Pit: Death Is Likely)
-- 12431 (The Conquest Pit: Final Showdown)
--
-- Template of Quest n.12427 (The Conquest Pit: Bear Wrestling!)
--

DELETE FROM `creature_questrelation` WHERE `quest` = 12427;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 12427;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 12427;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (27719, 12427);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 27719;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 12427;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 12427;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (27720, 12427);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=27720;
REPLACE INTO `quest_template` (`entry`, `Method`, `ZoneOrSort`, `SkillOrClass`, `MinLevel`, `QuestLevel`, `Type`, `RequiredRaces`, `RequiredSkillValue`, `RepObjectiveFaction`, `RepObjectiveValue`, `RequiredMinRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepFaction`, `RequiredMaxRepValue`, `SuggestedPlayers`, `LimitTime`, `QuestFlags`, `SpecialFlags`, `CharTitleId`, `PlayersSlain`, `BonusTalents`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `NextQuestInChain`, `SrcItemId`, `SrcItemCount`, `SrcSpell`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemId2`, `ReqItemId3`, `ReqItemId4`, `ReqItemCount1`, `ReqItemCount2`, `ReqItemCount3`, `ReqItemCount4`, `ReqSourceId1`, `ReqSourceId2`, `ReqSourceId3`, `ReqSourceId4`, `ReqSourceCount1`, `ReqSourceCount2`, `ReqSourceCount3`, `ReqSourceCount4`, `ReqCreatureOrGOId1`, `ReqCreatureOrGOId2`, `ReqCreatureOrGOId3`, `ReqCreatureOrGOId4`, `ReqCreatureOrGOCount1`, `ReqCreatureOrGOCount2`, `ReqCreatureOrGOCount3`, `ReqCreatureOrGOCount4`, `ReqSpellCast1`, `ReqSpellCast2`, `ReqSpellCast3`, `ReqSpellCast4`, `RewChoiceItemId1`, `RewChoiceItemId2`, `RewChoiceItemId3`, `RewChoiceItemId4`, `RewChoiceItemId5`, `RewChoiceItemId6`, `RewChoiceItemCount1`, `RewChoiceItemCount2`, `RewChoiceItemCount3`, `RewChoiceItemCount4`, `RewChoiceItemCount5`, `RewChoiceItemCount6`, `RewItemId1`, `RewItemId2`, `RewItemId3`, `RewItemId4`, `RewItemCount1`, `RewItemCount2`, `RewItemCount3`, `RewItemCount4`, `RewRepFaction1`, `RewRepFaction2`, `RewRepFaction3`, `RewRepFaction4`, `RewRepFaction5`, `RewRepValue1`, `RewRepValue2`, `RewRepValue3`, `RewRepValue4`, `RewRepValue5`, `RewHonorableKills`, `RewOrReqMoney`, `RewMoneyMaxLevel`, `RewSpell`, `RewSpellCast`, `RewMailTemplateId`, `RewMailDelaySecs`, `PointMapId`, `PointX`, `PointY`, `PointOpt`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `IncompleteEmote`, `CompleteEmote`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `StartScript`, `CompleteScript`) VALUES (12427, 2, 394, 0, 73, 74, 1, 690, 0, 0, 0, 0, 0, 0, 0, 3, 0, 130, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'The Conquest Pit: Bear Wrestling!', 'So you\'re interested in the fights, eh?  Well, Krenna has outlawed pit-fighting for all enlisted combatants.  But you, my friend, are technically a free agent and are not included in this prohibition.$B$BNice loophole, eh?$B$BAnyway, if you\'re interested I can start you off with something easy, a measly bear.  I\'ll even let you bring friends along!', 'Defeat Ironhide inside the Conquest Pit and speak to Bookie Vel\'jen for a reward.', 'Nice work, mon! Here\'s your cut.', 'It\'s not over until you or the bear tips over, friend!', 'Ironhide defeated', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 27715, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 112000, 155700, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 12427, 0);

--
-- NPC for Quest n.12427 (The Conquest Pit: Bear Wrestling!)
--

REPLACE INTO `creature_template` (`entry`, `heroic_entry`, `KillCredit1`, `KillCredit2`, `modelid_A`, `modelid_A2`, `modelid_H`, `modelid_H2`, `name`, `subname`, `IconName`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `unk16`, `unk17`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES (27715, 0, 0, 0, 23992, 0, 23992, 0, 'Ironhide', '', '', 74, 74, 102820, 102820, 0, 0, 0, 14, 14, 0, 1, 1, 1, 100, 300, 0, 150, 3, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 27715, 27715, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 10, 1, 0, 0, 0, 0, 0, 199, 1, 0, 0, 0, '');

REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (170036, 27715, 571, 1, 1, 0, 0, 3225.01, -2334.43, 94.3314, 0.445441, 25, 0, 0, 102820, 0, 0, 0);


--
-- Template of Quest n.12428 (The Conquest Pit: Mad Furbolg Fighting)
--

DELETE FROM `creature_questrelation` WHERE `quest` = 12428;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 12428;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 12428;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (27719, 12428);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 27719;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 12428;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 12428;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (27720, 12428);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=27720;
REPLACE INTO `quest_template` (`entry`, `Method`, `ZoneOrSort`, `SkillOrClass`, `MinLevel`, `QuestLevel`, `Type`, `RequiredRaces`, `RequiredSkillValue`, `RepObjectiveFaction`, `RepObjectiveValue`, `RequiredMinRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepFaction`, `RequiredMaxRepValue`, `SuggestedPlayers`, `LimitTime`, `QuestFlags`, `SpecialFlags`, `CharTitleId`, `PlayersSlain`, `BonusTalents`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `NextQuestInChain`, `SrcItemId`, `SrcItemCount`, `SrcSpell`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemId2`, `ReqItemId3`, `ReqItemId4`, `ReqItemCount1`, `ReqItemCount2`, `ReqItemCount3`, `ReqItemCount4`, `ReqSourceId1`, `ReqSourceId2`, `ReqSourceId3`, `ReqSourceId4`, `ReqSourceCount1`, `ReqSourceCount2`, `ReqSourceCount3`, `ReqSourceCount4`, `ReqCreatureOrGOId1`, `ReqCreatureOrGOId2`, `ReqCreatureOrGOId3`, `ReqCreatureOrGOId4`, `ReqCreatureOrGOCount1`, `ReqCreatureOrGOCount2`, `ReqCreatureOrGOCount3`, `ReqCreatureOrGOCount4`, `ReqSpellCast1`, `ReqSpellCast2`, `ReqSpellCast3`, `ReqSpellCast4`, `RewChoiceItemId1`, `RewChoiceItemId2`, `RewChoiceItemId3`, `RewChoiceItemId4`, `RewChoiceItemId5`, `RewChoiceItemId6`, `RewChoiceItemCount1`, `RewChoiceItemCount2`, `RewChoiceItemCount3`, `RewChoiceItemCount4`, `RewChoiceItemCount5`, `RewChoiceItemCount6`, `RewItemId1`, `RewItemId2`, `RewItemId3`, `RewItemId4`, `RewItemCount1`, `RewItemCount2`, `RewItemCount3`, `RewItemCount4`, `RewRepFaction1`, `RewRepFaction2`, `RewRepFaction3`, `RewRepFaction4`, `RewRepFaction5`, `RewRepValue1`, `RewRepValue2`, `RewRepValue3`, `RewRepValue4`, `RewRepValue5`, `RewHonorableKills`, `RewOrReqMoney`, `RewMoneyMaxLevel`, `RewSpell`, `RewSpellCast`, `RewMailTemplateId`, `RewMailDelaySecs`, `PointMapId`, `PointX`, `PointY`, `PointOpt`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `IncompleteEmote`, `CompleteEmote`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `StartScript`, `CompleteScript`) VALUES (12428, 2, 394, 0, 73, 74, 1, 690, 0, 0, 0, 0, 0, 0, 0, 3, 0, 130, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'The Conquest Pit: Mad Furbolg Fighting', 'You\'re not bad.  Not bad at all.$B$BThink you can take a furbolg?  What about one of those extra-large crazed Northrend furbolgs?$B$BGood, good.  Get your crew together, and head to the ring.  Let\'s give these folks a show... maybe we can earn some more coin while we\'re at it.', 'Defeat Torgg Thundertotem inside the Conquest Pit and speak to Bookie Vel\'jen for a reward.$B', 'Those were some sharp moves, friend! Lots of bets against you, which is good news cash-wise!', '', 'Torgg Thundertotem defeated', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 27716, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 168000, 155700, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

--
-- NPC for Quest n.124228 (The Conquest Pit: Mad Furbolg Fighting)
--

REPLACE INTO `creature_template` (`entry`, `heroic_entry`, `KillCredit1`, `KillCredit2`, `modelid_A`, `modelid_A2`, `modelid_H`, `modelid_H2`, `name`, `subname`, `IconName`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `unk16`, `unk17`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES (27716, 0, 0, 0, 23773, 0, 23773, 0, 'Torgg Thundertotem', '', '', 74, 74, 102820, 102820, 0, 0, 7903, 14, 14, 0, 1, 1, 1, 46.4286, 66.2857, 0, 334, 3, 2000, 0, 2, 0, 0, 0, 0, 0, 0, 0, 285, 423, 48, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 10, 1, 0, 0, 0, 0, 0, 199, 1, 413, 0, 0, '');

REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (102317, 27716, 571, 1, 1, 23773, 0, 3245.29, -2343.93, 92.068, 1.309, 300, 0, 0, 102820, 0, 0, 0);


--
-- Template of Quest n.12429 (The Conquest Pit: Blood and Metal)
--

DELETE FROM `creature_questrelation` WHERE `quest` = 12429;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 12429;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 12429;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (27719, 12429);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 27719;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 12429;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 12429;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (27720, 12429);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=27720;
REPLACE INTO `quest_template` (`entry`, `Method`, `ZoneOrSort`, `SkillOrClass`, `MinLevel`, `QuestLevel`, `Type`, `RequiredRaces`, `RequiredSkillValue`, `RepObjectiveFaction`, `RepObjectiveValue`, `RequiredMinRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepFaction`, `RequiredMaxRepValue`, `SuggestedPlayers`, `LimitTime`, `QuestFlags`, `SpecialFlags`, `CharTitleId`, `PlayersSlain`, `BonusTalents`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `NextQuestInChain`, `SrcItemId`, `SrcItemCount`, `SrcSpell`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemId2`, `ReqItemId3`, `ReqItemId4`, `ReqItemCount1`, `ReqItemCount2`, `ReqItemCount3`, `ReqItemCount4`, `ReqSourceId1`, `ReqSourceId2`, `ReqSourceId3`, `ReqSourceId4`, `ReqSourceCount1`, `ReqSourceCount2`, `ReqSourceCount3`, `ReqSourceCount4`, `ReqCreatureOrGOId1`, `ReqCreatureOrGOId2`, `ReqCreatureOrGOId3`, `ReqCreatureOrGOId4`, `ReqCreatureOrGOCount1`, `ReqCreatureOrGOCount2`, `ReqCreatureOrGOCount3`, `ReqCreatureOrGOCount4`, `ReqSpellCast1`, `ReqSpellCast2`, `ReqSpellCast3`, `ReqSpellCast4`, `RewChoiceItemId1`, `RewChoiceItemId2`, `RewChoiceItemId3`, `RewChoiceItemId4`, `RewChoiceItemId5`, `RewChoiceItemId6`, `RewChoiceItemCount1`, `RewChoiceItemCount2`, `RewChoiceItemCount3`, `RewChoiceItemCount4`, `RewChoiceItemCount5`, `RewChoiceItemCount6`, `RewItemId1`, `RewItemId2`, `RewItemId3`, `RewItemId4`, `RewItemCount1`, `RewItemCount2`, `RewItemCount3`, `RewItemCount4`, `RewRepFaction1`, `RewRepFaction2`, `RewRepFaction3`, `RewRepFaction4`, `RewRepFaction5`, `RewRepValue1`, `RewRepValue2`, `RewRepValue3`, `RewRepValue4`, `RewRepValue5`, `RewHonorableKills`, `RewOrReqMoney`, `RewMoneyMaxLevel`, `RewSpell`, `RewSpellCast`, `RewMailTemplateId`, `RewMailDelaySecs`, `PointMapId`, `PointX`, `PointY`, `PointOpt`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `IncompleteEmote`, `CompleteEmote`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `StartScript`, `CompleteScript`) VALUES (12429, 2, 394, 0, 73, 74, 1, 690, 0, 0, 0, 0, 0, 0, 0, 3, 0, 130, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'The Conquest Pit: Blood and Metal', 'It\'s nice to have a real fighter around these parts... we\'d only had prisoners and caged beasts for the past few weeks.  The people get bored, ya know?$B$BAnyhow, your next challenge is a genuine iron golem stolen from the depths of Thor Modan... think you can swing it?', 'Defeat Rustblood inside the Conquest Pit and speak to Bookie Vel\'jen for a reward.$B', 'My heart nearly skipped a beat there! Thought that mound of metal was gonna get ya, mon!', '', 'Rustblood defeated', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 27717, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 168000, 155700, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

--
-- NPC for Quest n.12429 (The Conquest Pit: Blood and Metal)
--

REPLACE INTO `creature_template` (`entry`, `heroic_entry`, `KillCredit1`, `KillCredit2`, `modelid_A`, `modelid_A2`, `modelid_H`, `modelid_H2`, `name`, `subname`, `IconName`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `unk16`, `unk17`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES (27717, 0, 0, 0, 26157, 0, 26157, 0, 'Rustblood', '', '', 75, 75, 127620, 127620, 3561, 3561, 0, 14, 14, 0, 1, 1, 1, 150, 300, 0, 300, 3, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9, 0, 27717, 27717, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 2, '', 0, 3, 12, 1, 0, 0, 0, 0, 0, 199, 1, 0, 0, 0, '');

REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (170037, 27717, 571, 1, 1, 0, 0, 3257.05, -2352.39, 93.3439, 1.67747, 25, 0, 0, 127620, 3561, 0, 0);



--
-- Template of Quest n.12430 (The Conquest Pit: Death Is Likely)
--

DELETE FROM `creature_questrelation` WHERE `quest` = 12430;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 12430;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 12430;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (27719, 12430);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 27719;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 12430;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 12430;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (27720, 12430);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=27720;
REPLACE INTO `quest_template` (`entry`, `Method`, `ZoneOrSort`, `SkillOrClass`, `MinLevel`, `QuestLevel`, `Type`, `RequiredRaces`, `RequiredSkillValue`, `RepObjectiveFaction`, `RepObjectiveValue`, `RequiredMinRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepFaction`, `RequiredMaxRepValue`, `SuggestedPlayers`, `LimitTime`, `QuestFlags`, `SpecialFlags`, `CharTitleId`, `PlayersSlain`, `BonusTalents`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `NextQuestInChain`, `SrcItemId`, `SrcItemCount`, `SrcSpell`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemId2`, `ReqItemId3`, `ReqItemId4`, `ReqItemCount1`, `ReqItemCount2`, `ReqItemCount3`, `ReqItemCount4`, `ReqSourceId1`, `ReqSourceId2`, `ReqSourceId3`, `ReqSourceId4`, `ReqSourceCount1`, `ReqSourceCount2`, `ReqSourceCount3`, `ReqSourceCount4`, `ReqCreatureOrGOId1`, `ReqCreatureOrGOId2`, `ReqCreatureOrGOId3`, `ReqCreatureOrGOId4`, `ReqCreatureOrGOCount1`, `ReqCreatureOrGOCount2`, `ReqCreatureOrGOCount3`, `ReqCreatureOrGOCount4`, `ReqSpellCast1`, `ReqSpellCast2`, `ReqSpellCast3`, `ReqSpellCast4`, `RewChoiceItemId1`, `RewChoiceItemId2`, `RewChoiceItemId3`, `RewChoiceItemId4`, `RewChoiceItemId5`, `RewChoiceItemId6`, `RewChoiceItemCount1`, `RewChoiceItemCount2`, `RewChoiceItemCount3`, `RewChoiceItemCount4`, `RewChoiceItemCount5`, `RewChoiceItemCount6`, `RewItemId1`, `RewItemId2`, `RewItemId3`, `RewItemId4`, `RewItemCount1`, `RewItemCount2`, `RewItemCount3`, `RewItemCount4`, `RewRepFaction1`, `RewRepFaction2`, `RewRepFaction3`, `RewRepFaction4`, `RewRepFaction5`, `RewRepValue1`, `RewRepValue2`, `RewRepValue3`, `RewRepValue4`, `RewRepValue5`, `RewHonorableKills`, `RewOrReqMoney`, `RewMoneyMaxLevel`, `RewSpell`, `RewSpellCast`, `RewMailTemplateId`, `RewMailDelaySecs`, `PointMapId`, `PointX`, `PointY`, `PointOpt`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `IncompleteEmote`, `CompleteEmote`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `StartScript`, `CompleteScript`) VALUES (12430, 2, 394, 0, 73, 75, 1, 690, 0, 0, 0, 0, 0, 0, 0, 3, 0, 130, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'The Conquest Pit: Death Is Likely', 'I\'m gonna shoot straight with ya, kid.  This next contender\'s a murderer.$B$BLiterally.$B$BHe was to be executed last week, but he strangled the hangman with his left hand, so Krenna\'s guards sort of let me have him.$B$BFeel free to pass on this one.  I wouldn\'t blame ya.', 'Defeat Horgrenn Hellcleave inside the Conquest Pit and speak to Bookie Vel\'jen for a reward.$B', 'Fancy footwork, fancy footwork. You really made quick work of that crazy orc, friend.$B$BOdds were against you seven-to-one; made some nice coin on that one!', '', 'Horgrenn Hellcleave defeated', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 27718, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 177000, 188700, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);


--
-- NPC for Quest n.12430 (The Conquest Pit: Death Is Likely)
--

REPLACE INTO `creature_template` (`entry`, `heroic_entry`, `KillCredit1`, `KillCredit2`, `modelid_A`, `modelid_A2`, `modelid_H`, `modelid_H2`, `name`, `subname`, `IconName`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `unk16`, `unk17`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES (27718, 0, 0, 0, 24763, 0, 24763, 0, 'Horgrenn Hellcleave', '', '', 75, 75, 159525, 159525, 0, 0, 0, 14, 14, 0, 1, 1, 1, 300, 300, 0, 300, 3, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0, 27718, 27718, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 15, 1, 0, 0, 0, 0, 0, 199, 1, 0, 0, 0, '');

REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (170065, 27718, 571, 1, 1, 0, 0, 3226.43, -2325.7, 96.0911, 6.19456, 25, 0, 0, 159525, 0, 0, 0);

--
-- Template of Quest n.12431 (The Conquest Pit: Final Showdown)
--

DELETE FROM `creature_questrelation` WHERE `quest` = 12431;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 12431;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 12431;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (27719, 12431);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 27719;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 12431;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 12431;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (27102, 12431);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=27102;
REPLACE INTO `quest_template` (`entry`, `Method`, `ZoneOrSort`, `SkillOrClass`, `MinLevel`, `QuestLevel`, `Type`, `RequiredRaces`, `RequiredSkillValue`, `RepObjectiveFaction`, `RepObjectiveValue`, `RequiredMinRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepFaction`, `RequiredMaxRepValue`, `SuggestedPlayers`, `LimitTime`, `QuestFlags`, `SpecialFlags`, `CharTitleId`, `PlayersSlain`, `BonusTalents`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `NextQuestInChain`, `SrcItemId`, `SrcItemCount`, `SrcSpell`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemId2`, `ReqItemId3`, `ReqItemId4`, `ReqItemCount1`, `ReqItemCount2`, `ReqItemCount3`, `ReqItemCount4`, `ReqSourceId1`, `ReqSourceId2`, `ReqSourceId3`, `ReqSourceId4`, `ReqSourceCount1`, `ReqSourceCount2`, `ReqSourceCount3`, `ReqSourceCount4`, `ReqCreatureOrGOId1`, `ReqCreatureOrGOId2`, `ReqCreatureOrGOId3`, `ReqCreatureOrGOId4`, `ReqCreatureOrGOCount1`, `ReqCreatureOrGOCount2`, `ReqCreatureOrGOCount3`, `ReqCreatureOrGOCount4`, `ReqSpellCast1`, `ReqSpellCast2`, `ReqSpellCast3`, `ReqSpellCast4`, `RewChoiceItemId1`, `RewChoiceItemId2`, `RewChoiceItemId3`, `RewChoiceItemId4`, `RewChoiceItemId5`, `RewChoiceItemId6`, `RewChoiceItemCount1`, `RewChoiceItemCount2`, `RewChoiceItemCount3`, `RewChoiceItemCount4`, `RewChoiceItemCount5`, `RewChoiceItemCount6`, `RewItemId1`, `RewItemId2`, `RewItemId3`, `RewItemId4`, `RewItemCount1`, `RewItemCount2`, `RewItemCount3`, `RewItemCount4`, `RewRepFaction1`, `RewRepFaction2`, `RewRepFaction3`, `RewRepFaction4`, `RewRepFaction5`, `RewRepValue1`, `RewRepValue2`, `RewRepValue3`, `RewRepValue4`, `RewRepValue5`, `RewHonorableKills`, `RewOrReqMoney`, `RewMoneyMaxLevel`, `RewSpell`, `RewSpellCast`, `RewMailTemplateId`, `RewMailDelaySecs`, `PointMapId`, `PointX`, `PointY`, `PointOpt`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `IncompleteEmote`, `CompleteEmote`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `StartScript`, `CompleteScript`) VALUES (12431, 2, 394, 0, 73, 75, 1, 690, 0, 0, 0, 0, 0, 0, 0, 3, 0, 130, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'The Conquest Pit: Final Showdown', 'You must\'ve really upset Krenna.  She and Gorgonna have had a spat and you\'re wanted in the pit immediately.$B$BThere are some wild rumors that it\'s a fight to the death!  That would be bad news for you, but great news for our business venture!$B$BAt any rate, you can\'t run away from fate... best get in there on the quick and get it over with.', 'Defeat Krenna in the Conquest Pit and speak to Gorgonna for a reward.', 'What happened today... had to happen. It doesn\'t mean I have to be happy about it.$B$BI\'ve freed my people from a tyrant, but I\'ve also lost a sister. I thank you for your help, $N. I wish to be alone now.', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 27727, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 39181, 39183, 39182, 39179, 39180, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1085, 0, 0, 0, 0, 500, 0, 0, 0, 0, 0, 177000, 188700, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);


--
-- NPC for Quest n.12431 (The Conquest Pit: Final Showdown)
--

REPLACE INTO `creature_template` (`entry`, `heroic_entry`, `KillCredit1`, `KillCredit2`, `modelid_A`, `modelid_A2`, `modelid_H`, `modelid_H2`, `name`, `subname`, `IconName`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `unk16`, `unk17`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES (27727, 0, 0, 0, 24770, 0, 24770, 0, 'Conqueror Krenna', '', '', 76, 76, 95620, 95620, 0, 0, 0, 14, 14, 0, 1, 1, 1, 0, 0, 0, 0, 3, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0, 27727, 27727, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 20, 1, 0, 0, 0, 0, 0, 0, 1, 764, 0, 0, '');

REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (170066, 27727, 571, 1, 1, 0, 764, 3239.25, -2309.25, 95.329, 4.72037, 25, 0, 0, 95620, 0, 0, 0);


-- Rep gain fixes:
UPDATE `quest_template` SET `RewRepValue1` = '625' WHERE `quest_template`.`entry` =7737 LIMIT 1 ;
UPDATE `quest_template` SET `RewRepFaction1` = 933, `RewRepFaction2` = 0, `RewRepValue1` = 350, `RewRepValue2` = 0 WHERE `entry` = 11354; # Wanted: Nazan's Riding Crop
UPDATE `quest_template` SET `RewRepFaction1` = 933, `RewRepFaction2` = 0, `RewRepValue1` = 350, `RewRepValue2` = 0 WHERE `entry` = 11362; # Wanted: Keli'dan's Feathered Stave
UPDATE `quest_template` SET `RewRepFaction1` = 933, `RewRepFaction2` = 0, `RewRepValue1` = 350, `RewRepValue2` = 0 WHERE `entry` = 11363; # Wanted: Bladefist's Seal
UPDATE `quest_template` SET `RewRepFaction1` = 933, `RewRepFaction2` = 942, `RewRepValue1` = 350, `RewRepValue2` = 350 WHERE `entry` = 11368; # Wanted: The Heart of Quagmirran
UPDATE `quest_template` SET `RewRepFaction1` = 933, `RewRepFaction2` = 942, `RewRepValue1` = 350, `RewRepValue2` = 350 WHERE `entry` = 11369; # Wanted: A Black Stalker Egg
UPDATE `quest_template` SET `RewRepFaction1` = 933, `RewRepFaction2` = 942, `RewRepValue1` = 350, `RewRepValue2` = 350 WHERE `entry` = 11370; # Wanted: The Warlord's Treatise
UPDATE `quest_template` SET `RewRepFaction1` = 933, `RewRepFaction2` = 1011, `RewRepValue1` = 350, `RewRepValue2` = 350 WHERE `entry` = 11372; # Wanted: The Headfeathers of Ikiss
UPDATE `quest_template` SET `RewRepFaction1` = 933, `RewRepFaction2` = 0, `RewRepValue1` = 500, `RewRepValue2` = 0 WHERE `entry` = 11373; # Wanted: Shaffar's Wondrous Pendant
UPDATE `quest_template` SET `RewRepFaction1` = 933, `RewRepFaction2` = 1011, `RewRepValue1` = 350, `RewRepValue2` = 350 WHERE `entry` = 11374; # Wanted: The Exarch's Soul Gem
UPDATE `quest_template` SET `RewRepFaction1` = 933, `RewRepFaction2` = 1011, `RewRepValue1` = 350, `RewRepValue2` = 350 WHERE `entry` = 11375; # Wanted: Murmur's Whisper
UPDATE `quest_template` SET `RewRepFaction1` = 933, `RewRepFaction2` = 989, `RewRepValue1` = 350, `RewRepValue2` = 350 WHERE `entry` = 11378; # Wanted: The Epoch Hunter's Head
UPDATE `quest_template` SET `RewRepFaction1` = 933, `RewRepFaction2` = 989, `RewRepValue1` = 350, `RewRepValue2` = 350 WHERE `entry` = 11382; # Wanted: Aeonus's Hourglass
UPDATE `quest_template` SET `RewRepFaction1` = 933, `RewRepFaction2` = 935, `RewRepValue1` = 350, `RewRepValue2` = 350 WHERE `entry` = 11384; # Wanted: A Warp Splinter Clipping
UPDATE `quest_template` SET `RewRepFaction1` = 933, `RewRepFaction2` = 935, `RewRepValue1` = 350, `RewRepValue2` = 350 WHERE `entry` = 11386; # Wanted: Pathaleon's Projector
UPDATE `quest_template` SET `RewRepFaction1` = 933, `RewRepFaction2` = 935, `RewRepValue1` = 350, `RewRepValue2` = 350 WHERE `entry` = 11388; # Wanted: The Scroll of Skyriss
UPDATE `quest_template` SET `RewRepFaction1` = 933, `RewRepFaction2` = 1077, `RewRepValue1` = 350, `RewRepValue2` = 350 WHERE `entry` = 11499; # Wanted: The Signet Ring of Prince Kael'thas
UPDATE `quest_template` SET `RewRepFaction1`=890, `RewRepValue1`=350, `RewRepFaction2`=730, `RewRepValue2`=500, `RewRepFaction3`=509, `RewRepValue3`=150 WHERE `entry` IN (8371,8385);
UPDATE `quest_template` SET `RewRepFaction1`=889, `RewRepValue1`=350, `RewRepFaction2`=729, `RewRepValue2`=500, `RewRepFaction3`=510, `RewRepValue3`=150 WHERE `entry` IN (8367,8388);


-- The Path of the Adept
-- Quest ID:  9692
DELETE FROM `gameobject_scripts` WHERE `id`=35589;
INSERT INTO `gameobject_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `dataint`, `x`, `y`, `z`, `o`) VALUES 
(35589, 2, 10, 17830, 120000, '0', -370.06, 162.62, -21.13, 0.97);

-- Forging a Head
-- Quest ID: 12985
-- fixes incorrect target metters
DELETE FROM `spell_script_target` WHERE `entry`=56227;
INSERT INTO `spell_script_target` VALUES
(56227, 2, 29914),
(56227, 2, 30208),
(56227, 2, 30163);

-- Zandalar class quests
UPDATE `quest_template` SET `SkillOrClass` = -1 WHERE `entry` IN (8041,8042,8043,8044,8058,8078,8079,8184);
UPDATE `quest_template` SET `SkillOrClass` = -2 WHERE `entry` IN (8045,8046,8047,8048,8053,8054,8055,8185);
UPDATE `quest_template` SET `SkillOrClass` = -3 WHERE `entry` IN (8145,8146,8147,8148,8066,8062,8067,8187);
UPDATE `quest_template` SET `SkillOrClass` = -4 WHERE `entry` IN (8141,8142,8143,8144,8063,8072,8073,8186);
UPDATE `quest_template` SET `SkillOrClass` = -5 WHERE `entry` IN (8049,8050,8051,8052,8070,8071,8061,8191);
UPDATE `quest_template` SET `SkillOrClass` = -7 WHERE `entry` IN (8116,8117,8118,8119,8074,8056,8075,8188);
UPDATE `quest_template` SET `SkillOrClass` = -8 WHERE `entry` IN (8101,8102,8103,8104,8068,8069,8060,8189);
UPDATE `quest_template` SET `SkillOrClass` = -9 WHERE `entry` IN (8106,8107,8108,8109,8076,8077,8059,8190);
UPDATE `quest_template` SET `SkillOrClass` = -11 WHERE `entry` IN (8110,8111,8112,8113,8064,8057,8065,8192);

-- Know The Enemy GO
-- Quest ID: 9567
-- moves gameobject 182532  to the surface so it can be looted.
DELETE FROM `gameobject` WHERE `guid` = '44724';

-- Large Satchel of Spoils
DELETE FROM item_loot_template WHERE entry=43346;
INSERT INTO item_loot_template VALUES
(43346, 40753, 100, 0, 5, 5, 0, 0, 0);
UPDATE `item_template` SET `minMoneyLoot` = '500000', `maxMoneyLoot` = '750000' WHERE `entry` = '43346';

INSERT INTO `gameobject` VALUES ( 44724, 182532, 530, 1,1,-2305.98, -11266, 38.6036, 3.2, 0, 0, 0.99905, 0.0435773, 180, 100, 1);

-- game_tele record for Azjol-Nerub. Both dungeons are very close from each other, so we don't need 2 records.
replace into `game_tele` (`id`, `position_x`, `position_y`, `position_z`, `orientation`, `map`, `name`) values
('455', '3707.86', '2150.23', '36.76', '3.22', '571', 'AzjolNerub');

-- Sets the req lvl for all skinning ranks
UPDATE `npc_trainer` SET `reqlevel`=10 WHERE `spell`=8620;
UPDATE `npc_trainer` SET `reqlevel`=25 WHERE `spell`=10769;
UPDATE `npc_trainer` SET `reqlevel`=40 WHERE `spell`=32679;
UPDATE `npc_trainer` SET `reqlevel`=55 WHERE `spell`=50307;

-- Adds new items to vendor 32172
DELETE FROM `npc_vendor` WHERE `entry`=32172 AND (`item` BETWEEN 45688 AND 45691) OR (`item` IN (44934, 44935));
INSERT INTO `npc_vendor` (`entry`, `item`, `ExtendedCost`) VALUES
(32172, 45688, 2592),
(32172, 45689, 2593),
(32172, 45690, 2594),
(32172, 45691, 2595),
-- Fallowing was commited by ScriptingNewbie
(32172, 44934, 0),
(32172, 44935, 0); 

-- Workaround for damned annoying toys that attacks players
UPDATE `creature_template` SET `faction_A`='35',`faction_H`='35' WHERE (`entry`='29784'); 
UPDATE `creature_template` SET `faction_A`='35',`faction_H`='35' WHERE (`entry`='29783');
UPDATE `creature_template` SET `faction_A`='35',`faction_H`='35' WHERE (`entry`='29785');
UPDATE `creature_template` SET `faction_A`='35',`faction_H`='35' WHERE (`entry`='29802');
UPDATE `creature_template` SET `faction_A`='35',`faction_H`='35' WHERE (`entry`='29781');
UPDATE `creature_template` SET `faction_A`='35',`faction_H`='35' WHERE (`entry`='29777');
UPDATE `creature_template` SET `faction_A`='35',`faction_H`='35' WHERE (`entry`='29780');
UPDATE `creature_template` SET `faction_A`='35',`faction_H`='35' WHERE (`entry`='29782');


-- All taken from UDB: Credit to all the originators