INSERT INTO `script_texts` (`npc_entry`,`entry`,`content_default`) VALUES ('31111','-1700039','I PITY DA FOOL!');
INSERT INTO `script_texts` (`npc_entry`,`entry`,`content_default`) VALUES ('31111','-1700040','You\'ve already been pitied FOOL!');
INSERT INTO `script_texts` (`npc_entry`,`entry`,`content_default`) VALUES ('31111','-1700041','FOOL! I\'ve come to MGA to Pity you!');

UPDATE creature_template SET unit_flags = 1 WHERE entry = 31111;
UPDATE `creature_template` SET `ScriptName`='npc_mga_night_elf_mohawk' WHERE (`entry`='31111');
UPDATE `creature_template` SET `ScriptName`='mob_spiteful_apparition ' WHERE (`entry`='36551');
UPDATE `creature_template` SET `ScriptName`='mob_spectral_warden' WHERE (`entry`='36666');
UPDATE `creature_template` SET `ScriptName`='mob_soulguard_watchman' WHERE (`entry`='36478');
UPDATE `creature_template` SET `ScriptName`='mob_soulguard_reaper' WHERE (`entry`='36499');
UPDATE `creature_template` SET `ScriptName`='mob_soulguard_bonecaster' WHERE (`entry`='36564');
UPDATE `creature_template` SET `ScriptName`='mob_soulguard_animator' WHERE (`entry`='36516');
UPDATE `creature_template` SET `ScriptName`='mob_soulguard_adept' WHERE (`entry`='36620');
UPDATE `creature_template` SET `ScriptName`='mob_soul_horror' WHERE (`entry`='36522');
UPDATE `creature_template` SET `ScriptName`='npc_YmirjarWrathbringer' WHERE (`entry`='36840');
UPDATE `creature_template` SET `ScriptName`='npc_YmirjarSkycaller' WHERE (`entry`='31260');
UPDATE `creature_template` SET `ScriptName`='npc_YmirjarFlamebearer' WHERE (`entry`='36893');
UPDATE `creature_template` SET `ScriptName`='npc_YmirjarDeathbringer' WHERE (`entry`='36892');
UPDATE `creature_template` SET `ScriptName`='npc_WrathboneLaborer' WHERE (`entry`='36830');
UPDATE `creature_template` SET `ScriptName`='npc_WrathboneColdwraith' WHERE (`entry`='36842');
UPDATE `creature_template` SET `ScriptName`='npc_StonespineGargoyle' WHERE (`entry`='36896');
UPDATE `creature_template` SET `ScriptName`='npc_PlaguebornHorror' WHERE (`entry`='36879');
UPDATE `creature_template` SET `ScriptName`='npc_IcebornProtoDrake' WHERE (`entry`='36891');
UPDATE `creature_template` SET `ScriptName`='npc_HungeringGhoul' WHERE (`entry`='37711');
UPDATE `creature_template` SET `ScriptName`='npc_FallenWarrior' WHERE (`entry`='36841');
UPDATE `creature_template` SET `ScriptName`='npc_FallenWarrior' WHERE (`entry`='38487');
UPDATE `creature_template` SET `ScriptName`='npc_DeathwhisperTorturer' WHERE (`entry`='37713');
UPDATE `creature_template` SET `ScriptName`='npc_DeathwhisperShadowcaster' WHERE (`entry`='37712');
UPDATE `creature_template` SET `ScriptName`='npc_DeathwhisperNecrolyte' WHERE (`entry`='36788');
UPDATE `creature_template` SET `ScriptName`='npc_WrathboneSorcerer' WHERE (`entry`='37728');
UPDATE `creature_template` SET `ScriptName`='npc_GeistAmbusher' WHERE (`entry`='36886');
UPDATE `creature_template` SET `ScriptName`='Boss_Sindragosa' WHERE (`entry`='36853');
UPDATE `creature_template` SET `ScriptName`='boss_Rotface' WHERE (`entry`='36627');
UPDATE `creature_template` SET `ScriptName`='npc_NerubarBroodkeeper' WHERE (`entry`='36725');
UPDATE `creature_template` SET `ScriptName`='npc_TheDamned' WHERE (`entry`='37011');
UPDATE `creature_template` SET `ScriptName`='npc_ServantoftheThrone' WHERE (`entry`='36724');
UPDATE `creature_template` SET `ScriptName`='npc_AncientSkeletalSoldier' WHERE (`entry`='37012');
UPDATE `creature_template` SET `ScriptName`='npc_DeathboundWard' WHERE (`entry`='37007');
UPDATE `creature_template` SET `ScriptName`='npc_DeathspeakerAttedant' WHERE (`entry`='36811');
UPDATE `creature_template` SET `ScriptName`='npc_DeathspeakerDisciple' WHERE (`entry`='36807');
UPDATE `creature_template` SET `ScriptName`='npc_DeathspeakerHighPriest' WHERE (`entry`='36829');
UPDATE `creature_template` SET `ScriptName`='npc_DeathspeakerServant' WHERE (`entry`='36805');
UPDATE `creature_template` SET `ScriptName`='npc_DeathspeakerZealot' WHERE (`entry`='36808');
UPDATE `creature_template` SET `ScriptName`='npc_CultAdherent' WHERE (`entry`='37949');
UPDATE `creature_template` SET `ScriptName`='npc_CultFanatic' WHERE (`entry`='37890');

UPDATE `creature_template` SET `ScriptName`='' WHERE (`entry`='37119'); 
UPDATE `creature_template` SET `ScriptName`='mob_tirion_icc' WHERE (`entry`='38995'); 
-- mob_tirion_icc might be 38995 need to test this
UPDATE `creature_template` SET `ScriptName`='mob_ghoul_icc' WHERE (`entry`='37695');
UPDATE `creature_template` SET `ScriptName`='npc_OozeBig' WHERE (`entry`='36899');
UPDATE `creature_template` SET `ScriptName`='npc_OozeLittle' WHERE (`entry`='36897');






