-- Jeeves Workaround for TC rev10149 and TDB 335.11.34.
UPDATE creature_template SET gossip_menu_id=35642,faction_A=35,faction_H=35,npcflag=135297,unit_flags=130,flags_extra=2 WHERE entry=35642;
DELETE FROM conditions WHERE SourceTypeOrReferenceId=15 AND SourceGroup=35642;
INSERT INTO conditions (SourceTypeOrReferenceId,SourceGroup,ConditionTypeOrReference,ConditionValue1,ConditionValue2) VALUES
(15,35642,7,202,350);
DELETE FROM gossip_menu_option WHERE menu_id=35642;
INSERT INTO gossip_menu_option (menu_id,id,option_icon,option_text,option_id,npc_option_npcflag) VALUES
(35642,0,6,'Show me my bank',9,131072),
(35642,1,1,'I want to browse your goods',3,128),
(35642,2,1,'I want to browse your goods',15,4096);
DELETE FROM creature_ai_scripts WHERE creature_id=35642;
INSERT INTO creature_ai_scripts (id,creature_id,event_type,event_inverse_phase_mask,event_chance,event_flags,event_param1,event_param2,event_param3,event_param4,action1_type,action1_param1,action1_param2,action1_param3,action2_type,action2_param1,action2_param2,action2_param3,action3_type,action3_param1,action3_param2,action3_param3,COMMENT) VALUES
(3564201,35642,11,0,100,6,0,0,0,0,11,68054,0,1,0,0,0,0,0,0,0,0,'Jeeves - Cast Pressing Engagement on Spawn'),
(3564202,35642,1,0,100,6,600000,600000,0,0,41,0,0,0,0,0,0,0,0,0,0,0,'Jeeves - Despawn after 10 minutes');
DELETE FROM npc_vendor WHERE entry=35642;
INSERT INTO npc_vendor (entry,slot,item,maxcount,incrtime,ExtendedCost) VALUES
(35642,0,3775,0,0,0),  -- Crippling Poison
(35642,0,5237,0,0,0),  -- Mind-numbing Poison
(35642,0,5565,0,0,0),  -- Infernal Stone
(35642,0,16583,0,0,0), -- Demonic Figurine
(35642,0,17020,0,0,0), -- Arcane powder
(35642,0,17030,0,0,0), -- Ankh
(35642,0,17031,0,0,0), -- Rune of Teleportation
(35642,0,17032,0,0,0), -- Rune of Portals
(35642,0,17033,0,0,0), -- Symbol of Divinity
(35642,0,21177,0,0,0), -- Symbol of Kings
(35642,0,37201,0,0,0), -- Corpse Dust
(35642,0,41584,0,0,0), -- Frostbite Bullets
(35642,0,41586,0,0,0), -- Terrorshaft Arrow
(35642,0,43231,0,0,0), -- Instant Poison IX
(35642,0,43233,0,0,0), -- Deadly Poison IX
(35642,0,43235,0,0,0), -- Wound Poison VII
(35642,0,43237,0,0,0), -- Anesthetic Poison II
(35642,0,44605,0,0,0), -- Wild Spineleaf
(35642,0,44614,0,0,0), -- Starleaf Seed
(35642,0,44615,0,0,0); -- Devout Candle