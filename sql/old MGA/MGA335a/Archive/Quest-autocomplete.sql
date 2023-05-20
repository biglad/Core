-- 3 Starter quests for the argent tournament
UPDATE quest_template SET method = 0 WHERE entry in (13828, 13829, 13837, 13839, 13835, 13838);
-- REVERT
-- UPDATE quest_template SET method = 2 WHERE entry in (13828, 13829, 13837, 13839, 13835, 13838);

-- Black Knights Orders
UPDATE quest_template SET method = 0 WHERE entry = 13663;
UPDATE quest_template SET ReqItemID2 = 0, ReqItemID3 = 0, ReqItemCount2 = 0, ReqItemCount3 = 0 WHERE entry = 13663;
-- REVERT
-- UPDATE quest_template SET method = 2 WHERE entry = 13663;
-- UPDATE quest_template SET ReqItemID2 = 45121, ReqItemID3 = 45122, ReqItemCount2 = 1, ReqItemCount3 = 1 WHERE entry = 13663;


UPDATE `quest_template` SET method='0' WHERE entry='9685';
--UPDATE `quest_template` SET method='2' WHERE entry='9685';

