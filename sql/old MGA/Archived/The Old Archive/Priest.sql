-- Move Shadowfiend's Mana Leech Aura from spellscript to creature addon.
DELETE FROM `spell_script_names` WHERE `ScriptName`= 'spell_pri_shadowfiend';
UPDATE `creature_template_addon` SET `auras`= '28305' WHERE `entry`=19668;

UPDATE `spell_proc_event` SET `SpellFamilyMask2`=64 WHERE `entry`=33193;
