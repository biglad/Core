-- Stabled Quel'dorei Steed Fix for [80] [Mastery Of Melee](Part 2 of 2)
UPDATE `creature_template` SET `VehicleId`='349' WHERE (`entry`='33843');
UPDATE `creature_template` SET `spell1`='62544', `spell2`='62575', `spell3`='63010', `spell4`='62552', `spell5`='64077', `spell6`='62863' WHERE (`entry`='33843');
UPDATE `npc_spellclick_spells` SET `quest_start_active`='1', `quest_end`='13679', `aura_required`='0' WHERE (`npc_entry`='33843') AND (`spell_id`='63792') AND (`quest_start`='13667') AND (`quest_start_active`='0') AND (`quest_end`='13686') AND (`cast_flags`='1') AND (`aura_required`='62853') AND (`aura_forbidden`='0') AND (`user_type`='0') LIMIT 1;
-- Stabled Sunreaver Hawkstrider (HORDE ONE)
UPDATE `creature_template` SET `spell1`='62544', `spell2`='62575', `spell3`='63010', `spell4`='62552', `spell5`='64077', `spell6`='62863', `VehicleId`='349' WHERE (`entry`='33842');
UPDATE `npc_spellclick_spells` SET `quest_start_active`='1', `quest_end`='13680', `aura_required`='0' WHERE (`npc_entry`='33842') AND (`spell_id`='63791') AND (`quest_start`='13668') AND (`quest_start_active`='0') AND (`quest_end`='13687') AND (`cast_flags`='1') AND (`aura_required`='62853') AND (`aura_forbidden`='0') AND (`user_type`='0') LIMIT 1;


