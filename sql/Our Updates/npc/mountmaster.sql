-- ### SETUP ###
-- change these to whatever you want:

SET @creature_id := "600001"; 		-- unique entry
SET @creature_name := "Mount Master"; 	-- NPC's name
SET @creature_subname := "All Skills"; 	-- subname
SET @creature_displayid := 16625; 	-- display ID of NPC
SET @trainer_id := 998; 		-- should be unique to avoid conflicts
SET @trainer_type := 1; 		-- trainer type
		-- 0 is class trainer, 
		-- 1 is mount trainer, 
		-- 2 is profession trainer
		-- 3 is pet trainer
SET @trainer_requirement := 0; 		-- class required to access trainer
		-- use IDs from https://trinitycore.atlassian.net/wiki/spaces/tc/pages/2129967/ChrClasses
		-- scroll down, they are under "content", the first column is what you use
SET @trainer_greeting := 'Ready for some weapon training?'; -- NPC's gossip menu greeting
		-- This is the text in the actual spell training menu
		-- which appears at the very top of the window.
		-- here's how it look in-game: https://i.imgur.com/zRZilas.png

-- ### CREATURE ###
-- the goal of this section is to create an NPC as a base for the trainer

-- delete any existing npc at entry
DELETE FROM creature_template
WHERE entry=@creature_id;

-- create NPC
INSERT INTO `creature_template` 
VALUES (	
	@creature_id,
	0, 0, 0, 0, 0, 
	@creature_displayid,
	0, 0, 0,
	@creature_name,
	@creature_subname,
	NULL, 1017, 30, 30, 0, 12, 81, 1, 1.14286, 1, 0, 0, 1500, 2000, 1, 1, 1, 768, 2048, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, '', 1, 1, 1.05, 1, 1, 1, 1, 0, 0, 1, 0, 0, 66, '', 12340
);

-- ### TRAINER ###
-- this goal of this section is to create a new trainer ID which will be used to
-- link the trained spells and the creature together.

-- delete existing trainer id
DELETE FROM `trainer`
WHERE id = @trainer_id;
-- create new trainer entry
INSERT INTO `trainer` 
VALUES (
	@trainer_id, 
	@trainer_type, 
	@trainer_requirement, 
	@trainer_greeting, 
	0
);

-- link creature to it's trainer ID
DELETE FROM `creature_default_trainer`
WHERE creatureid = @creature_id;
INSERT INTO `creature_default_trainer`
VALUES (@creature_id, @trainer_id);

-- ### TRAINER SPELLS ###
-- the goal of this section is to add spells to the previously created trainer ID
-- thus essentially linking them to the creature, coming full circle.

-- delete existing trainer spell entries
DELETE FROM `trainer_spell`
WHERE TrainerId = @trainer_id;

-- these are the trainer's spell entries
-- the 2nd column is the SPELL ID of the spell you want the trainer to teach
-- feel free to copy + paste rows and change this however you like
-- for example you could add plate armor proficiency, dual wielding, titan's grip, etc
INSERT INTO `trainer_spell` VALUES
(@trainer_id, 196, 0, 0, 0, 0, 0, 0, 0, 0),
(@trainer_id, 197, 0, 0, 0, 0, 0, 0, 0, 0),
(@trainer_id, 198, 0, 0, 0, 0, 0, 0, 0, 0),
(@trainer_id, 199, 0, 0, 0, 0, 0, 0, 0, 0),
(@trainer_id, 200, 0, 0, 0, 0, 0, 0, 0, 0),
(@trainer_id, 201, 0, 0, 0, 0, 0, 0, 0, 0),
(@trainer_id, 202, 0, 0, 0, 0, 0, 0, 0, 0),
(@trainer_id, 227, 0, 0, 0, 0, 0, 0, 0, 0),
(@trainer_id, 264, 0, 0, 0, 0, 0, 0, 0, 0),
(@trainer_id, 266, 0, 0, 0, 0, 0, 0, 0, 0),
(@trainer_id, 1180, 0, 0, 0, 0, 0, 0, 0, 0),
(@trainer_id, 2567, 0, 0, 0, 0, 0, 0, 0, 0),
(@trainer_id, 5011, 0, 0, 0, 0, 0, 0, 0, 0),
(@trainer_id, 15590, 0, 0, 0, 0, 0, 0, 0, 0);