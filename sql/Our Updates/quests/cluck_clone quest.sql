INSERT INTO `quest_template` (`ID`, `QuestType`, `QuestLevel`, `MinLevel`, `QuestSortID`, `QuestInfoID`, `SuggestedGroupNum`, `RequiredFactionId1`, `RequiredFactionId2`, `RequiredFactionValue1`, `RequiredFactionValue2`, `RewardNextQuest`, `RewardXPDifficulty`, `RewardMoney`, `RewardBonusMoney`, `RewardDisplaySpell`, `RewardSpell`, `RewardHonor`, `RewardKillHonor`, `StartItem`, `Flags`, `RequiredPlayerKills`, `RewardItem1`, `RewardAmount1`, `RewardItem2`, `RewardAmount2`, `RewardItem3`, `RewardAmount3`, `RewardItem4`, `RewardAmount4`, `ItemDrop1`, `ItemDropQuantity1`, `ItemDrop2`, `ItemDropQuantity2`, `ItemDrop3`, `ItemDropQuantity3`, `ItemDrop4`, `ItemDropQuantity4`, `RewardChoiceItemID1`, `RewardChoiceItemQuantity1`, `RewardChoiceItemID2`, `RewardChoiceItemQuantity2`, `RewardChoiceItemID3`, `RewardChoiceItemQuantity3`, `RewardChoiceItemID4`, `RewardChoiceItemQuantity4`, `RewardChoiceItemID5`, `RewardChoiceItemQuantity5`, `RewardChoiceItemID6`, `RewardChoiceItemQuantity6`, `POIContinent`, `POIx`, `POIy`, `POIPriority`, `RewardTitle`, `RewardTalents`, `RewardArenaPoints`, `RewardFactionID1`, `RewardFactionValue1`, `RewardFactionOverride1`, `RewardFactionID2`, `RewardFactionValue2`, `RewardFactionOverride2`, `RewardFactionID3`, `RewardFactionValue3`, `RewardFactionOverride3`, `RewardFactionID4`, `RewardFactionValue4`, `RewardFactionOverride4`, `RewardFactionID5`, `RewardFactionValue5`, `RewardFactionOverride5`, `TimeAllowed`, `AllowableRaces`, `LogTitle`, `LogDescription`, `QuestDescription`, `AreaDescription`, `QuestCompletionLog`, `RequiredNpcOrGo1`, `RequiredNpcOrGo2`, `RequiredNpcOrGo3`, `RequiredNpcOrGo4`, `RequiredNpcOrGoCount1`, `RequiredNpcOrGoCount2`, `RequiredNpcOrGoCount3`, `RequiredNpcOrGoCount4`, `RequiredItemId1`, `RequiredItemId2`, `RequiredItemId3`, `RequiredItemId4`, `RequiredItemId5`, `RequiredItemId6`, `RequiredItemCount1`, `RequiredItemCount2`, `RequiredItemCount3`, `RequiredItemCount4`, `RequiredItemCount5`, `RequiredItemCount6`, `Unknown0`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `VerifiedBuild`) VALUES (3861999, 2, 1, 1, -284, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 13563, 0, 0, 0, 264, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CLUCK!', 'Find some Special Chicken Feed and return to your befriended chicken. When you find it, /cheer at it before trying to give it the Special Chicken Feed.', '\"Cluck... cluck... cluck... BACAW!$B$BCluck... cluck... cluck.\"$B$BThe chicken looks up at you and then starts to scratch its claws into the ground. You think it is spelling out a word, but you are not sure what it is. Could it be... S-A-L-D-E-A-N? Before you can ask, the chicken turns away and goes about its business.', '', 'Return to Chicken.', 0, 0, 0, 0, 0, 0, 0, 0, 11109, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '', '', '', '', 12340);
INSERT INTO `quest_template_addon` (`ID`, `MaxLevel`, `AllowableClasses`, `SourceSpellID`, `PrevQuestID`, `NextQuestID`, `ExclusiveGroup`, `BreadcrumbForQuestId`, `RewardMailTemplateID`, `RewardMailDelay`, `RequiredSkillID`, `RequiredSkillPoints`, `RequiredMinRepFaction`, `RequiredMaxRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepValue`, `ProvidedItemCount`, `SpecialFlags`) VALUES (3861999, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1);
INSERT INTO `quest_request_items` (`ID`, `EmoteOnComplete`, `EmoteOnIncomplete`, `CompletionText`, `VerifiedBuild`) VALUES (3861999, 1, 0, 'The chicken stares at you with dark, cold eyes. It waits for you hungrily.$B$B\"BACAAAW!$B$BCluck...cluck...cluck.\"', 12340);


UPDATE `quest_template` SET `LogTitle` = 'High Captain Bob\'s Daily Quest' WHERE `ID` = 3861999;
UPDATE `quest_template` SET `Flags` = 4096 WHERE `ID` = 3861999;

UPDATE `quest_template` SET `LogTitle` = 'Mini Token', `QuestCompletionLog` = 'Return to Bob.' WHERE `ID` = 3861999;

UPDATE `quest_template` SET `RewardMoney` = 500000, `RewardSpell` = 0, `RewardItem1` = 18154, `RewardAmount1` = 1 WHERE `ID` = 3861999;
UPDATE `quest_template` SET `RewardMoney` = 50000 WHERE `ID` = 3861999;
UPDATE `quest_template` SET `LogDescription` = 'High Captain Bob is in need of XXXX. Get one and return to High Captain Bob.', `QuestDescription` = 'Gggrrrr I never have enough XXXX, maybe you can get one for me?', `QuestCompletionLog` = 'Return to High Captain Bob.' WHERE `ID` = 3861999;
UPDATE `quest_template` SET `LogDescription` = 'High Captain Bob is in need of XXXX. Get one and return to High Captain Bob and bow.' WHERE `ID` = 3861999;



INSERT INTO `broadcast_text` (`ID`, `LanguageID`, `Text`, `Text1`, `EmoteID1`, `EmoteID2`, `EmoteID3`, `EmoteDelay1`, `EmoteDelay2`, `EmoteDelay3`, `SoundEntriesID`, `EmotesID`, `Flags`, `VerifiedBuild`) VALUES (471499, 0, '%s looks up at you quizzically. Maybe you should inspect it?!!!!', '', 0, 0, 0, 0, 0, 0, 0, 0, 1, 18019);
INSERT INTO `broadcast_text` (`ID`, `LanguageID`, `Text`, `Text1`, `EmoteID1`, `EmoteID2`, `EmoteID3`, `EmoteDelay1`, `EmoteDelay2`, `EmoteDelay3`, `SoundEntriesID`, `EmotesID`, `Flags`, `VerifiedBuild`) VALUES (471500, 0, '%s looks up at you quizzically. Maybe you should inspect it?!!!!', '', 0, 0, 0, 0, 0, 0, 0, 0, 1, 18019);


INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `DamageModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES (996209, 0, 0, 0, 0, 0, 304, 0, 0, 0, 'Chicken', '', NULL, 0, 1, 1, 0, 31, 2, 1, 0.85714, 1, 0, 0, 2000, 2000, 1, 1, 1, 0, 2048, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, '', 1, 1, 0.01, 1, 1, 1, 1, 0, 100, 1, 0, 0, 66, 'npc_chicken_cluck', 12340);
UPDATE `creature_template` SET `name` = 'Bob' WHERE `entry` = 996209;
UPDATE `creature_template` SET `ScriptName` = 'npc_bob_cluck' WHERE `entry` = 996209;
UPDATE `creature_template` SET `name` = 'High Captain Bob' WHERE `entry` = 996209;
UPDATE `creature_template` SET `modelid1` = 26982 WHERE `entry` = 996209;
UPDATE `creature_template` SET `subname` = 'Busy XXXX' WHERE `entry` = 996209;
UPDATE `creature_template` SET `faction` = 35 WHERE `entry` = 996209;

INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES (996209, 3861999);
INSERT INTO `creature_questender` (`id`, `quest`) VALUES (996209, 3861999);

INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES (996209, 0, 0, '%s looks up at you quizzically. Maybe you should inspect it?', 16, 0, 100, 0, 0, 0, 4714, 0, 'cluck EMOTE_A_HELLO');
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES (996209, 1, 0, '%s looks at you expectantly.', 16, 0, 100, 0, 0, 0, 5140, 0, 'cluck EMOTE_H_HELLO');
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES (996209, 2, 0, '%s starts pecking at the feed.', 16, 0, 100, 0, 0, 0, 0, 0, 'cluck EMOTE_CLUCK_TEXT2');

UPDATE `creature_text` SET `BroadcastTextId` = 471499 WHERE `CreatureID` = 996209 AND `GroupID` = 0 AND `ID` = 0;
UPDATE `creature_text` SET `BroadcastTextId` = 471500 WHERE `CreatureID` = 996209 AND `GroupID` = 1 AND `ID` = 0;
UPDATE `broadcast_text` SET `Text` = '%s Has a Quest for you.' WHERE `ID` = 471499;
UPDATE `broadcast_text` SET `Text` = '%s Has a Quest for you.' WHERE `ID` = 471500;



-- portal ID to spawn at entracne / etx 184127
-- add invis wall


INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `size`, `Data0`, `Data1`, `Data2`, `Data3`, `Data4`, `Data5`, `Data6`, `Data7`, `Data8`, `Data9`, `Data10`, `Data11`, `Data12`, `Data13`, `Data14`, `Data15`, `Data16`, `Data17`, `Data18`, `Data19`, `Data20`, `Data21`, `Data22`, `Data23`, `AIName`, `ScriptName`, `VerifiedBuild`) VALUES (1421841, 3, 10, 'MGA Treasure Chest', '', '', '', 1, 460, 8387, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 12340);
UPDATE `gameobject_template` SET `Data1` = 0 WHERE `entry` = 1421841;
UPDATE `gameobject_template` SET `Data0` = 0, `Data3` = 0 WHERE `entry` = 1421841;


INSERT INTO `gameobject_loot_template` (`Entry`, `Item`, `QuestRequired`) VALUES (200000, 1, 0);
UPDATE `gameobject_loot_template` SET `Item` = 18154 WHERE `Entry` = 200000 AND `Item` = 1;
UPDATE `gameobject_template` SET `Data2` = 300 WHERE `entry` = 1421841;
UPDATE `gameobject_template` SET `Data8` = 3861999 WHERE `entry` = 1421841;
UPDATE `gameobject_template` SET `Data12` = 1 WHERE `entry` = 1421841;

UPDATE `gameobject_template` SET `Data0` = 57, `Data1` = 200000 WHERE `entry` = 1852201;
UPDATE `gameobject_template` SET `Data0` = 57, `Data1` = 200000 WHERE `entry` = 1421841;


INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `size`, `Data0`, `Data1`, `Data2`, `Data3`, `Data4`, `Data5`, `Data6`, `Data7`, `Data8`, `Data9`, `Data10`, `Data11`, `Data12`, `Data13`, `Data14`, `Data15`, `Data16`, `Data17`, `Data18`, `Data19`, `Data20`, `Data21`, `Data22`, `Data23`, `AIName`, `ScriptName`, `VerifiedBuild`) VALUES (284311, 3, 259, 'MGA Chest', '', '', '', 1, 57, 2265, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 12340);
UPDATE `gameobject_template` SET `Data1` = 200000 WHERE `entry` = 284311;