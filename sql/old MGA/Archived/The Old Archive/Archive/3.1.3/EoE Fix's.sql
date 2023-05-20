-- Fix for heroic version of Malygos
UPDATE `creature_template` SET `AIName`='EventAI',`ScriptName`='boss_malygos' WHERE (`entry`='31734');

