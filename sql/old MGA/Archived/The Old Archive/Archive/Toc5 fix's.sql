-- factions of the mounts used in phase 1
UPDATE `creature_template` SET `faction_A`='1735', `faction_H`='1735' WHERE (`entry`='36559');
UPDATE `creature_template` SET `faction_A`='1735', `faction_H`='1735' WHERE (`entry`='36558');
UPDATE `creature_template` SET `faction_A`='1732', `faction_H`='1732' WHERE (`entry`='36557');

-- factions of mounts used in phase 1 by NPCs
UPDATE `creature_template` SET `faction_A`='14', `faction_H`='14' WHERE (`entry`='33316');
UPDATE `creature_template` SET `faction_A`='14', `faction_H`='14' WHERE (`entry`='33317');
UPDATE `creature_template` SET `faction_A`='14', `faction_H`='14' WHERE (`entry`='33318');
UPDATE `creature_template` SET `faction_A`='14', `faction_H`='14' WHERE (`entry`='33319');
UPDATE `creature_template` SET `faction_A`='14', `faction_H`='14' WHERE (`entry`='33320');
UPDATE `creature_template` SET `faction_A`='14', `faction_H`='14' WHERE (`entry`='33321');
UPDATE `creature_template` SET `faction_A`='14', `faction_H`='14' WHERE (`entry`='33322');
UPDATE `creature_template` SET `faction_A`='14', `faction_H`='14' WHERE (`entry`='33323');
UPDATE `creature_template` SET `faction_A`='14', `faction_H`='14' WHERE (`entry`='33324');

-- temp hack to prevent HP regen on mounts
-- UPDATE `creature_template` SET `RegenHealth`='0' WHERE (`entry`='33316');
-- UPDATE `creature_template` SET `RegenHealth`='0' WHERE (`entry`='33317');
-- UPDATE `creature_template` SET `RegenHealth`='0' WHERE (`entry`='33318');
-- UPDATE `creature_template` SET `RegenHealth`='0' WHERE (`entry`='33319');
-- UPDATE `creature_template` SET `RegenHealth`='0' WHERE (`entry`='33320');
-- UPDATE `creature_template` SET `RegenHealth`='0' WHERE (`entry`='33321');
-- UPDATE `creature_template` SET `RegenHealth`='0' WHERE (`entry`='33322');
-- UPDATE `creature_template` SET `RegenHealth`='0' WHERE (`entry`='33323');
-- UPDATE `creature_template` SET `RegenHealth`='0' WHERE (`entry`='33324');

-- allow mounts to move and set them at attackable
UPDATE `creature_template` SET `dynamicflags`='0' WHERE `entry` = '33316' OR `entry` = '33317' OR `entry` = '33318' OR `entry` = '33319' OR `entry` = '33320' OR `entry` = '33321' OR `entry` = '33322' OR `entry` = '33323';
UPDATE `creature_template` SET `type_flags`='8' WHERE `entry` = '33316' OR `entry` = '33317' OR `entry` = '33318' OR `entry` = '33319' OR `entry` = '33320' OR `entry` = '33321' OR `entry` = '33322' OR `entry` = '33323';
UPDATE creature_template SET `dynamicflags`='0' WHERE `entry` in (33416, 33298, 33297, 33301, 33408, 35637, 35633, 35768, 34658, 35636);
UPDATE creature_template SET `dynamicflags`='0' WHERE `entry` in (35638, 35635, 35640, 35641, 35634, 33414, 33300, 33409, 33418, 33299);
UPDATE creature_template SET `type_flags`='8' WHERE `entry` in (33416, 33298, 33297, 33301, 33408, 35637, 35633, 35768, 34658, 35636);
UPDATE creature_template SET `type_flags`='8' WHERE `entry` in (35638, 35635, 35640, 35641, 35634, 33414, 33300, 33409, 33418, 33299);
UPDATE creature_template SET `AIName`='' WHERE `entry` in (33416, 33298, 33297, 33301, 33408, 35637, 35633, 35768, 34658, 35636);
UPDATE creature_template SET `AIName`='' WHERE `entry` in (35638, 35635, 35640, 35641, 35634, 33414, 33300, 33409, 33418, 33299);

