UPDATE `creature_template` SET `name`='MGA Announcer', `subname`='MGA WoW Info' WHERE (`entry`='500113');
UPDATE `creature_template` SET `ScriptName`='npc_mga_char_renamer' WHERE (`entry`='500112');


INSERT INTO `creature_template` VALUES (500920, 0, 0, 0, 0, 0, 22351, 0, 22351, 0, 'Zak Sedar', 'MGA Super VIP Servant', '', 0, 100, 100, 2, 35, 35, 129, 1.71, 1.14286, 1, 0, 0, 0, 0, 0, 1, 2000, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 'super_vip_npc', 0);
UPDATE `creature_template` SET `modelid1`='22351', `modelid3`='22351', `name`='Zak Sedar', `subname`='MGA Super VIP Servant', `ScriptName`='super_vip_npc' WHERE (`entry`='500920');


UPDATE `creature_template` SET `subname`='Instant Level 80 Master' WHERE (`entry`='500311');


INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES ('500918', '0', '0', '0', '0', '0', '21135', '0', '6967', '0', 'ICC PORTER (TEMP)', 'MGA HACK FIX (TEMP)', '', '0', '100', '100', '2', '35', '35', '5', '1.71', '1.14286', '1', '0', '0', '0', '0', '0', '1', '2000', '0', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '3', '1', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', 'npc_mga_icc_port', '0');
UPDATE `creature_template` SET `name`='Warden', `subname`='of Stormwind Jail' WHERE (`entry`='500918');
UPDATE `creature_template` SET `ScriptName`='npc_mga_swj_exit' WHERE (`entry`='500918');
UPDATE `creature_template` SET `ScriptName`='npc_mga_svip_pvp_vendor' WHERE (`entry`='500888');

UPDATE `creature_template` SET `name`='Judas' WHERE (`entry`='500912');
