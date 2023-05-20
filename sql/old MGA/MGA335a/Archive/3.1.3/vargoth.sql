
-- vargoth's text and script
INSERT IGNORE `script_texts` (`entry`,`content_default`,`sound`,`type`,`language`,`emote`,`comment`) VALUES
(-1700035, 'Plenty of room at the cursed Violet Tower',0,0,0,1,'MGA text'),
(-1700036, 'Any time of year, you can find me here',0,0,0,1,'MGA text'),
(-1700037, 'Some scried to remember, some scried to forget',0,0,0,1,'MGA text'),
(-1700038, 'And still their voices are calling from far away, waking me up in the middle of the night',0,0,0,1,'MGA text');

UPDATE `creature_template` SET `ScriptName`='archmage_vargoth' WHERE (`entry`='19481');

-- kirin tor familiar's spells
UPDATE creature_template SET spell1 = 61478 WHERE entry = 32643;
UPDATE creature_template SET spell2 = 61479 WHERE entry = 32643;
UPDATE creature_template SET spell3 = 61486 WHERE entry = 32643;
