-- fix quest http://www.wowhead.com/?quest=12922
UPDATE `quest_template` SET `PrevQuestId`='12915' WHERE (`entry`='12922');
