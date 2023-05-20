DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = 47585;
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES
(47585, 60069, 2, 'Dispersion (transform/regen)'),
(47585, 63230, 2, 'Dispersion (immunity)'),
(47585, -13810, 2, 'Dispersion immune at Frost Trap'),
(47585, -116, 2, 'Dispersion immune at FrostBolt'),
(47585, -45524, 2, 'Dispersion immune at Chains of Ice'),
(47585, -68766, 2, 'Dispersion immune at Desecration'),
(47585, -58617, 2, 'Dispersion immune at Glyph of Heart Strike');
