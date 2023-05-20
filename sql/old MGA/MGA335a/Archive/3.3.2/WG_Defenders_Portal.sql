-- make GO usebale by players and assign script
UPDATE `gameobject_template` SET `type`='10' WHERE (`entry`='190763');
UPDATE `gameobject_template` SET `data0`='0' WHERE (`entry`='190763');
UPDATE `gameobject_template` SET `ScriptName`='go_wg2voa_portal' WHERE (`entry`='190763');

UPDATE `gameobject_template` SET `type`='10' WHERE (`entry`='191575');
UPDATE `gameobject_template` SET `data0`='0' WHERE (`entry`='191575');
UPDATE `gameobject_template` SET `ScriptName`='go_wg2fort_portal' WHERE (`entry`='191575');


UPDATE `gameobject_template` SET `type`='10' WHERE (`entry`='192819');
UPDATE `gameobject_template` SET `data0`='0' WHERE (`entry`='192819');
UPDATE `gameobject_template` SET `ScriptName`='go_keep2wg_portal' WHERE (`entry`='192819');


-- DELETE FROM spell_target_position WHERE id IN (54643);
-- INSERT INTO spell_target_position VALUES (54643, 571, 5405.61, 2854.35, 418.90, 2.4636);


-- set data0 back to normal if needed later????
-- UPDATE `gameobject_template` SET `type`='10' WHERE (`entry`='190763');
-- UPDATE `gameobject_template` SET `data0`='54640' WHERE (`entry`='190763');
-- UPDATE `gameobject_template` SET `ScriptName`='' WHERE (`entry`='190763');


UPDATE `gameobject_template` SET `type`='10' WHERE (`entry`='193772');
UPDATE `gameobject_template` SET `data0`='0' WHERE (`entry`='193772');
UPDATE `gameobject_template` SET `ScriptName`='go_dal2wg_portal' WHERE (`entry`='193772');