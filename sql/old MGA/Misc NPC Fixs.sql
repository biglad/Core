-- Fix broken Gilneas spirit healers
UPDATE `creature_template` SET `gossip_menu_id`='83' WHERE (`entry`='39660');
UPDATE `creature_template` SET `flags_extra`='2' WHERE (`entry`='39660');
