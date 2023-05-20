-- Fix DK flight masters
UPDATE `creature_template` SET `npcflag`='1' WHERE (`entry`='29488');
UPDATE `creature_template` SET `npcflag`='1' WHERE (`entry`='29501');
UPDATE `creature_template` SET `ScriptName`='npc_acherus_taxi' WHERE (`entry`='29488');
UPDATE `creature_template` SET `ScriptName`='npc_acherus_taxi' WHERE (`entry`='29501');
  