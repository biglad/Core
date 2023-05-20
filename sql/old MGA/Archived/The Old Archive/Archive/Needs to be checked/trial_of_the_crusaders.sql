UPDATE `instance_template` SET `script`='instance_trial_of_the_crusader' WHERE `map`=649;

DELETE FROM `gameobject` WHERE guid=999999;
DELETE FROM `gameobject` WHERE guid=999998;

INSERT INTO gameobject
  (guid, id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecs, animprogress, state)
VALUES
  (999999, 202079, 649, 1, 65535, "787.932556", "133.28978", "142.612152", "4,67082", 0, 0, "0,72165", "-0,692258", 604800, 0, 1),
  (999998, 201797, 649, 2, 65535, "787.932556", "133.28978", "142.612152", "4,67082", 0, 0, "0,72165", "-0,692258", 604800, 0, 1);
  
-- announcers
UPDATE `creature_template` SET `npcflag`=1, `scriptname`='npc_tcrus_announcer' WHERE `entry`=34816;
UPDATE `creature_template` SET `scriptname`='npc_tcrus_fizzlebang' WHERE `entry`=35458;
UPDATE `creature_template` SET `scriptname`='npc_tcrus_tirion' WHERE `entry`=34996;

-- grand crusaders alliance
UPDATE `creature_template` SET `scriptname`='npc_druid_restor' WHERE `entry`=34469;
UPDATE `creature_template` SET `scriptname`='npc_paladin_holy' WHERE `entry`=34465;
UPDATE `creature_template` SET `scriptname`='npc_priest_shadow' WHERE `entry`=34473;
UPDATE `creature_template` SET `scriptname`='npc_shaman_restor' WHERE `entry`=34470;
UPDATE `creature_template` SET `scriptname`='npc_death_knight' WHERE `entry`=34461;
UPDATE `creature_template` SET `scriptname`='npc_hunter' WHERE `entry`=34467;
UPDATE `creature_template` SET `scriptname`='npc_paladin_retro' WHERE `entry`=34471;
UPDATE `creature_template` SET `scriptname`='npc_rogue' WHERE `entry`=34472;
UPDATE `creature_template` SET `scriptname`='npc_warlock' WHERE `entry`=34474;
UPDATE `creature_template` SET `scriptname`='npc_druid_balans' WHERE `entry`=34460;
UPDATE `creature_template` SET `scriptname`='npc_mage' WHERE `entry`=34468;
UPDATE `creature_template` SET `scriptname`='npc_priest_disc' WHERE `entry`=34466;
UPDATE `creature_template` SET `scriptname`='npc_shaman_ench' WHERE `entry`=34463;
UPDATE `creature_template` SET `scriptname`='npc_warrior' WHERE `entry`=34475;


-- grand crusaders horde
UPDATE `creature_template` SET `scriptname`='npc_death_knight' WHERE `entry`=34458;
UPDATE `creature_template` SET `scriptname`='npc_hunter' WHERE `entry`=34448;
UPDATE `creature_template` SET `scriptname`='npc_rogue' WHERE `entry`=34454;
UPDATE `creature_template` SET `scriptname`='npc_paladin_retro' WHERE `entry`=34456;
UPDATE `creature_template` SET `scriptname`='npc_warrior' WHERE `entry`=34453;
UPDATE `creature_template` SET `scriptname`='npc_druid_balans' WHERE `entry`=34451;
UPDATE `creature_template` SET `scriptname`='npc_mage' WHERE `entry`=34449;
UPDATE `creature_template` SET `scriptname`='npc_priest_disc' WHERE `entry`=34447;
UPDATE `creature_template` SET `scriptname`='npc_shaman_ench' WHERE `entry`=34455;
UPDATE `creature_template` SET `scriptname`='npc_paladin_holy' WHERE `entry`=34445;
UPDATE `creature_template` SET `scriptname`='npc_druid_restor' WHERE `entry`=34459;
UPDATE `creature_template` SET `scriptname`='npc_priest_shadow' WHERE `entry`=34441;
UPDATE `creature_template` SET `scriptname`='npc_shaman_restor' WHERE `entry`=34444;
UPDATE `creature_template` SET `scriptname`='npc_warlock' WHERE `entry`=34450;

-- Nortrend beasts
UPDATE creature_template SET ScriptName='boss_gormok' WHERE entry=34796;
UPDATE creature_template SET ScriptName='' WHERE entry=34800;
UPDATE creature_template SET ScriptName='npc_acidmaw' WHERE entry=35144;
UPDATE creature_template SET ScriptName='npc_dreadscale' WHERE entry=34799;
UPDATE creature_template SET ScriptName='boss_icehowl' WHERE entry=34797;

-- Jaraxxus
UPDATE `creature_template` SET `ScriptName`='Boss_Jaraxxus' WHERE (`entry`='34780');
UPDATE `creature_template` SET `ScriptName`='Mob_Vulcan' WHERE `entry`=34813;
UPDATE `creature_template` SET `ScriptName`='Mob_FireTrigger' WHERE `entry`=34784;
UPDATE `creature_template` SET `ScriptName`='Mob_Netherportal' WHERE `entry`=34825;
UPDATE `creature_template` SET `scale`='2' WHERE `entry`=34825;
UPDATE `creature_template` SET `ScriptName`='Mob_MistressOfPain' WHERE `entry`=34826;
 
-- Anub'arak
UPDATE creature_template SET scriptname='boss_anub_arak_crusader' WHERE entry=34564;
UPDATE creature_template SET scriptname='npc_borrower' WHERE entry=34607;


-- Twin
UPDATE creature_template SET ScriptName='boss_fjola' WHERE entry=34497;
UPDATE creature_template SET ScriptName='boss_eydis' WHERE entry=34496;
UPDATE creature_template SET scriptName='mob_power_of_twin' WHERE entry=34567;
UPDATE creature_template SET scriptName='mob_essence_of_twin' WHERE entry=34568; 
UPDATE creature_template SET npcflag=1 WHERE entry=34568; 
UPDATE creature_template SET npcflag=1 WHERE entry=34567; 


DELETE FROM `script_texts` WHERE entry BETWEEN -1999939 AND -1999926; 
DELETE FROM `script_texts` WHERE entry=-1713547;
DELETE FROM `script_texts` WHERE entry=-1713544;
DELETE FROM `script_texts` WHERE entry=-1713741;
DELETE FROM `script_texts` WHERE entry=-1713543;

INSERT INTO script_texts 
    (npc_entry, entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8, sound, type, language, emote, comment) 
VALUES
    (34996,-1900512,'Welcome Champions, you have heard the call of the argent crusade and you have boldly answered. It is here in the Crusaders Coliseum that you will face your greatest challenges. Those of you who survive the rigors of the Coliseum will join the Argent Crusade on its marsh to Icecrown Citadel.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16036,1,0,0,'translated'),
	(34996,-1900501,'Hailing from the deepest, darkest carverns of the storm peaks, Gormok the Impaler! Battle on, heroes!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16038,1,0,0,'<need translate>'),
	(34996,-1900503,'Steel yourselves heroes, for the twin terrors Acidmaw and Dreadscale enter the arena!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16039,1,0,0,'<need translate>'),
	(34996,-1900505,'The air freezes with the introduction of our next combatant, Icehowl! Kill or be killed, champions!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16040,1,0,0,'<need translate>'),
	(34996,-1999936,'Grand Warlock Wilfred Fizzlebang will summon forth your next challenge. Stand by for his entry!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16043,1,0,0,'<need translate>'),
	(35458,-1999937,'Thank you, Highlord! Now challengers, I will begin the ritual of summoning! When I am done, a fearsome Doomguard will appear!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16268,1,0,0,'<need translate>'),
	(35458,-1999938,'Prepare for oblivion!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16269,1,0,0,'<need translate>'),
	(35458,-1999939,'Ah ha! Behold the absolute power of Wilfred Fizzlebang, master summoner! You are bound to ME, demon!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16270,1,0,0,'<need translate>'),
	(34496,-1713547,'The Scourge cannot be stopped...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16275,1,0,0,''),
	(34497,-1713544,'You have been measured, and found wanting!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16276,1,0,0,''),
	(34496,-1713741,'In the name of our dark master. For the Lich King. You. Will. Die.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16272,1,0,0,''),
	(34496,-1713543,'UNWORTHY!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16277,1,0,0,'');