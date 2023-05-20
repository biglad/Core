-- fix Rip & Lacerate no more SP bonus
UPDATE `spell_bonus_data` SET `direct_bonus` = '0',`dot_bonus` = '0' WHERE `entry` =33745;



