--  [7683] Tribunal of Ages achievements
-- update achievement criteria data for Tribunal of Ages (HoS) related achievements 
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` IN (6935,6936);
INSERT INTO `achievement_criteria_data` (`criteria_id`,`type`,`value1`,`value2`) VALUES
(6935,12,0,0),
(6936,12,1,0);


--   [7681] Four-Hoursemen achievements
-- update achievement criteria data for 4-Horsemen related achievements 
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` IN (7192,7805,8746,7193,7806,8747,7600,7601,13233,13237);
INSERT INTO `achievement_criteria_data` (`criteria_id`,`type`,`value1`,`value2`) VALUES
(7192,12,0,0),
(7805,12,0,0),
(8746,12,0,0),
(7193,12,1,0),
(7806,12,1,0),
(8747,12,1,0),
(7600,18,0,0),
(7601,18,0,0),
(13233,18,0,0),
(13237,18,0,0);


-- update achievement criteria data for Prophet Tharon'ja (Drak'Tharon Keep) related achievements 
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` IN (5880,9098,9099,9259,9261);
INSERT INTO `achievement_criteria_data` (`criteria_id`,`type`,`value1`,`value2`) VALUES
(5880,12,1,0),
(9098,12,0,0),
(9099,12,1,0),
(9259,12,0,0),
(9261,12,1,0);
