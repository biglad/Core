						/*************** Boss AI�s *****************/
-- Lord Marrowgar
UPDATE `creature_template` SET `minlevel`='80',`maxlevel`='80',`faction_A`='16',`faction_H`='16',`ScriptName`='Cold_Flame' WHERE (`entry`='36672');
UPDATE `creature_template` SET `minlevel`='83',`maxlevel`='83',`faction_A`='16',`faction_H`='16',`ScriptName`='Boss_Lord_Marrowgar' WHERE (`entry`='36612');
UPDATE `creature_template` SET `minlevel`='80',`maxlevel`='80',`faction_A`='16',`faction_H`='16',`flags_extra`='2',`ScriptName`='BoneSpike' WHERE (`entry`='38711');

-- Lady Deathwisper
UPDATE `creature_template` SET `ScriptName`='Boss_Lady_Deathwisper' WHERE (`entry`='36855');
UPDATE `creature_template` SET `ScriptName`='npc_DeathspeakerServant' WHERE (`entry`='36844');

UPDATE `creature_template` SET `ScriptName`='npc_CultAdherent' WHERE (`entry`='37949');
UPDATE `creature_template` SET `ScriptName`='npc_CultFanatic' WHERE (`entry`='38135');
UPDATE `creature_template` SET `ScriptName`='npc_elemental_lord' WHERE `entry` in (30025, 30019, 30024, 30026);
UPDATE `creature_template` SET `ScriptName`='npc_fiend_elemental' WHERE `entry` in (30042, 30043, 30044, 30045);

-- Saurfang
UPDATE `creature_template` SET `ScriptName`='boss_saurfang' WHERE (`entry`='37813');
UPDATE `creature_template` SET `ScriptName`='npc_bloodbeast' WHERE (`entry`='38508');

-- Festergut
UPDATE `creature_template` SET `ScriptName`='Boss_Fauldarm' WHERE (`entry`='36626');

-- Professor Putricide
UPDATE `creature_template` SET `ScriptName`='Boss_ProfessorPutricide' WHERE (`entry`='36678');  
UPDATE `creature_template` SET `ScriptName`='Mob_VolatileOoze' WHERE (`entry`='37697');  

-- BloodQueen Lanathel
UPDATE `creature_template` SET `ScriptName`='npc_Blood_Queen_Lanathel' WHERE (`entry`='37955');
UPDATE `creature_template` SET `ScriptName`='mob_swarming_shadows' WHERE (`entry`='38163');

-- Lich King
UPDATE `creature_template` SET `ScriptName`='boss_the_lich_king' WHERE (`entry`='36597');
UPDATE `creature_template` SET `ScriptName`='boss_tirion_icc' WHERE (`entry`='38995');
UPDATE `creature_template` SET `ScriptName`='mob_Ice_Puls' WHERE (`entry`='36633');
UPDATE `creature_template` SET `ScriptName`='mob_Valkyr' WHERE (`entry`='36609');
UPDATE `creature_template` SET `ScriptName`='mob_Ghoul' WHERE (`entry`='37695');
UPDATE `creature_template` SET `ScriptName`='mob_Defile' WHERE (`entry`='38757');
UPDATE `creature_template` SET `ScriptName`='mob_RagingSpirit' WHERE (`entry`='36701');
UPDATE `creature_template` SET `Health_mod`='50000' WHERE (`entry`='30494');
UPDATE `creature_template` SET `vehicleId` = 318 WHERE `entry` = 36609;
UPDATE `instance_template` SET `script`='instance_icecrown_citadel' WHERE (`map`='631');

-- Council of blood
-- UPDATE `creature_template` SET `ScriptName`='' WHERE (`entry`='38004');                     
UPDATE `creature_template` SET `ScriptName`='npc_Bomb' WHERE (`entry`='38454');                     
UPDATE `creature_template` SET `ScriptName`='npc_Nucleus' WHERE (`entry`='38369');                       
UPDATE `creature_template` SET `ScriptName`='npc_Vortex_icc' WHERE (`entry`='38422');                       
UPDATE `creature_template` SET `ScriptName`='npc_Fireball' WHERE (`entry`='38332');                  
-- UPDATE `creature_template` SET `ScriptName`='' WHERE (`entry`='38458');                
UPDATE `creature_template` SET `ScriptName`='npc_EmpFireball' WHERE (`entry`='38451');  
UPDATE `creature_template` SET `ScriptName`='boss_Keleseth_Icc' WHERE (`entry`='37972');  
UPDATE `creature_template` SET `ScriptName`='boss_blood_council' WHERE (`entry`='37970');  
UPDATE `creature_template` SET `ScriptName`='boss_Taldaram_Icc' WHERE (`entry`='37973');               

-- Instance
UPDATE `instance_template` SET `script`='instance_icecrown_citadel' WHERE (`map`='631');


						/*************** Script Texte *****************/
-- Lord Marrowgar
INSERT INTO script_texts (entry,content_default,content_loc1,content_loc2,content_loc3,content_loc4,content_loc5,content_loc6,content_loc7,content_loc8,sound,type,language,emote,comment)VALUES
(-1665892, 'This is the beginning AND the end, mortals. None may enter the master\'s sanctum!',null,null,null,null,null,null,null,null,16950,1,0,0,''),
(-1665893, 'The Scourge will wash over this world as a swarm of death and destruction!',null,null,null,null,null,null,null,null,16941,1,0,0,''),
(-1665894, 'BONE STORM!',null,null,null,null,null,null,null,null,16946,1,0,0,''),
(-1665895, 'Bound by bone!',null,null,null,null,null,null,null,null,16947,1,0,0,''),
(-1665896, 'Stick Around!',null,null,null,null,null,null,null,null,16948,1,0,0,''),
(-1665897, 'The only escape is death!',null,null,null,null,null,null,null,null,16949,1,0,0,''),
(-1665898, 'More bones for the offering!',null,null,null,null,null,null,null,null,16942,1,0,0,''),
(-1665899, 'Languish in damnation!',null,null,null,null,null,null,null,null,16943,1,0,0,''),
(-1665900, 'I see... only darkness...',null,null,null,null,null,null,null,null,16944,1,0,0,''),
(-1665901, 'THE MASTER\'S RAGE COURSES THROUGH ME!',null,null,null,null,null,null,null,null,16945,1,0,0,'');

-- Lady Deathwisper
INSERT INTO script_texts (entry,content_default,content_loc1,content_loc2,content_loc3,content_loc4,content_loc5,content_loc6,content_loc7,content_loc8,sound,type,language,emote,comment)VALUES
(-1665902, 'Fix your eyes upon your crude hands! The sinew, the soft meat, the dark blood coursing within!',null,null,null,null,null,null,null,null,16878,1,0,0,''),
(-1665903, 'It is a weakness! A crippling flaw! A joke played by the creators upon their own creations!',null,null,null,null,null,null,null,null,17268,1,0,0,''),
(-1665904, 'The sooner you come to accept your condition as a defect, the sooner you will find yourselves in a position to transcend it!',null,null,null,null,null,null,null,null,17269,1,0,0,''),
(-1665905, 'Through our master all things are possible! His power is without limit, and his will unbending!',null,null,null,null,null,null,null,null,17270,1,0,0,''),
(-1665906, 'Those who oppose him will be destroyed utterly! And those who serve, who serve wholly, unquestioningly, with utter devotion of mind and soul? Elevated! To heights beyond your ken!',null,null,null,null,null,null,null,null,17271,1,0,0,''),
(-1665907, 'You have found your way here, because you are among the few gifted with true vision in a world cursed with blindness!',null,null,null,null,null,null,null,null,17272,1,0,0,''),
(-1665908, 'You can see through the fog that hangs over this world like a shroud and grasp where true power lies!',null,null,null,null,null,null,null,null,17273,1,0,0,''),
(-1665909, 'What is this disturbance?! You dare trespass upon this hallowed ground? This shall be your final resting place.',null,null,null,null,null,null,null,null,16868,1,0,0,''),
(-1665910, 'Enough! I see I must take matters into my own hands!',null,null,null,null,null,null,null,null,16877,1,0,0,''),
(-1665911, 'Take this blessing and show these intruders a taste of our master\'s power.',null,null,null,null,null,null,null,null,16873,1,0,0,''),
(-1665912, 'I release you from the curse of flesh!',null,null,null,null,null,null,null,null,16874,1,0,0,''),
(-1665913, 'Arise and exalt in your pure form!',null,null,null,null,null,null,null,null,16875,1,0,0,''),
(-1665914, 'You are weak, powerless to resist my will!',null,null,null,null,null,null,null,null,16876,1,0,0,''),
(-1665915, 'This charade has gone on long enough.',null,null,null,null,null,null,null,null,16872,1,0,0,''),
(-1665916, 'All part of the masters plan! Your end is... inevitable!',null,null,null,null,null,null,null,null,16871,1,0,0,''),
(-1665917, 'Do you yet grasp of the futility of your actions?',null,null,null,null,null,null,null,null,16869,1,0,0,''),
(-1665918, 'Embrace the darkness... Darkness eternal!',null,null,null,null,null,null,null,null,16870,1,0,0,'');

-- Gunship Battle
INSERT INTO `script_texts` (`npc_entry`,`entry`,`content_default`,`content_loc1`,`content_loc2`,`content_loc3`,`content_loc4`,`content_loc5`,`content_loc6`,`content_loc7`,`content_loc8`,`sound`,`type`,`language`,`emote`,`comment`) VALUES
(0,-1665919,'Thank the spirits for you, brothers and sisters. The Skybreaker has already left. Quickly now, to Orgrim\'s Hammer! If you leave soon, you may be able to catch them.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,''),
(0,-1665920,'This should be helpin\'ya!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,''),
(0,-1665921,'Aka\'Magosh, brave warriors. The alliance is in great number here.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,''),
(0,-1665922,'Captain Saurfang will be pleased to see you aboard Orgrim\'s Hammer. Make haste, we will secure the area until you are ready for take-off.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,''),
(0,-1665923,'A screeching cry pierces the air above!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,''),
(0,-1665924,'A Spire Frostwyrm lands just before Orgrim\'s Hammer.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,''),
(0,-1665925,'Rise up, sons and daughters of the Horde! Today we battle a hated enemy of the Horde! LOK\'TAR OGAR! Kor\'kron, take us out!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,''),
(0,-1665926,'What is that?! Something approaching in the distance!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,''),
(0,-1665927,'ALLIANCE GUNSHIP! ALL HANDS ON DECK!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,''),
(0,-1665928,'Move yer jalopy or we\'ll blow it out of the sky, orc! The Horde\'s got no business here!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,''),
(0,-1665929,'You will know our business soon! KOR\'KRON, ANNIHILATE THEM!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,''),
(0,-1665930,'Marines, Sergeants, attack!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,''),
(0,-1665931,'You DARE board my ship? Your death will come swiftly.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,''),
(0,-1665932,'Riflemen, shoot faster!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,''),
(0,-1665933,'Mortar team, reload!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,''),
(0,-1665934,'We\'re taking hull damage, get a sorcerer out here to shut down those cannons!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,''),
(0,-1665935,'The Alliance falter. Onward to the Lich King!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,''),
(0,-1665936,'Damage control! Put those fires out! You haven\'t seen the last of the Horde!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,''),
(0,-1665937,'Thank goodness you arrived when you did, heroes. Orgrim\'s Hammer has already left. Quickly now, to The Skybreaker! If you leave soon, you may be able to catch them.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,''),
(0,-1665938,'This ought to help!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,''),
(0,-1665939,'Skybreaker Sorcerer summons a Skybreaker Battle Standard.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,''),
(0,-1665940,'You have my thanks. We were outnumbered until you arrived.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,''),
(0,-1665941,'Captain Muradin is waiting aboard The Skybreaker. We\'ll secure the area until you are ready for take off.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,''),
(0,-1665942,'Skybreaker infantry, hold position!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,''),
(0,-1665943,'A screeching cry pierces the air above!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,''),
(0,-1665944,'A Spire Frostwyrm lands just before The Skybreaker. ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,''),
(0,-1665945,'Fire up the engines! We got a meetin with destiny, lads!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,''),
(0,-1665946,'Hold on to yer hats!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,''),
(0,-1665947,'What in the world is that? Grab me spyglass, crewman!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,''),
(0,-1665948,'By me own beard! HORDE SAILIN IN FAST N HOT!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,''),
(0,-1665949,'EVASIVE ACTION! MAN THE GUNS!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,''),
(0,-1665950,'Cowardly dogs! Ye blindsighted us!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,''),
(0,-1665951,'This is not your battle, dwarf. Back down or we will be forced to destroy your ship.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,''),
(0,-1665952,'Not me battle? I dunnae who ye? think ye are, mister, but I got a score to settle with Arthas and yer not gettin in me way! FIRE ALL GUNS! FIRE! FIRE!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,''),
(0,-1665953,'Reavers, Sergeants, attack!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,''),
(0,-1665954,'What\'s this then?! Ye won\'t be takin this son o Ironforge\'s vessel without a fight!.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,''),
(0,-1665955,'Axethrowers, hurl faster!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,''),
(0,-1665956,'Rocketeers, reload!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,''),
(0,-1665957,'We\'re taking hull damage, get a battle-mage out here to shut down those cannons!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,''),
(0,-1665958,'Don\'t say I didn\'t warn ya, scoundrels! Onward, brothers and sisters!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,''),
(0,-1665959,'Captain Bartlett, get us out of here! We\'re taken too much damage to stay afloat!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,'');

-- Saurfang
INSERT INTO `script_texts` (`npc_entry`,`entry`,`content_default`,`content_loc1`,`content_loc2`,`content_loc3`,`content_loc4`,`content_loc5`,`content_loc6`,`content_loc7`,`content_loc8`,`sound`,`type`,`language`,`emote`,`comment`) VALUES
(0,-1665960,'For every Horde soldier that you killed, for every Alliance dog that fell, the Lich King\'s armies grew. Even now the Val\'kyr work to raise your fallen... As Scourge.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,''),
(0,-1665961,'Things are about to get much worse. Come, taste the power that the Lich King has bestowed upon me!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,''),
(0,-1665962,'A lone orc, against the might of the Alliance? Charge!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,''),
(0,-1665963,'Hahahaha! Dwarves.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,''),
(0,-1665964,'Kor\'kron, move out! Champions, watch your backs! The Scourge have been...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,''),
(0,-1665965,'Join me, father. Join me and we will crush this world in the name of the Scourge. For the glory of the Lich King!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,''),
(0,-1665966,'My boy died at the Wrathgate. I am here only to collect his body!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,''),
(0,-1665967,'Stubborn and old. What chance do you have? I am stronger and more powerful than you ever were!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,''),
(0,-1665968,'We named him Dranosh. It means "Heart of Draenor" in Orcish. I would not let the warlocks take him. My boy would be safe, hidden away by the elders of Garadar.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,''),
(0,-1665969,'I made a promise to his mother before she died: that I would cross the Dark Portal alone - whether I lived or died, my son would be safe. Untainted...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,''),
(0,-1665970,'Today, I fulfill that promise.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,''),
(0,-1665971,'High Overlord Saurfang charges!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,''),
(0,-1665972,'Pathetic old orc. Come then heroes, come and face the might of the Scourge!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,''),
(0,-1665973,'BY THE MIGHT OF THE LICH KING!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16694,1,0,0,''),
(0,-1665974,'The ground runs red with your blood!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16699,1,0,0,''),
(0,-1665975,'Feast, my minions!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16700,1,0,0,''),
(0,-1665976,'You are nothing!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16695,1,0,0,''),
(0,-1665977,'Your soul will find no redemption here!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16696,1,0,0,''),
(0,-1665978,'I have become... death!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16698,1,0,0,''),
(0,-1665979,'I... Am... Released.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16697,1,0,0,''),
(0,-1665980,'Muradin Bronzebeard gasps for air.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,''),
(0,-1665981,'That was Saurfang\'s boy - the Horde commander at the Wrath Gate. Such a tragic end...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,''),
(0,-1665982,'What in the... There, in the distance!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,''),
(0,-1665983,'A Horde Zeppelin flies up to the rise',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,''),
(0,-1665984,'Soldiers, fall in! Looks like the Horde are comin in to take another shot!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,''),
(0,-1665985,'The Zeppelin docks, and High Overlord Saurfang hops out, confronting the Alliance soldiers and Muradin',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,''),
(0,-1665986,'Don\'t force my hand, orc. We can\'t let you pass.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,''),
(0,-1665987,'Behind you lies the body of my only son. Nothing will keep me from him.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,''),
(0,-1665988,'He... I can\'t do it. Get back on your ship and we\'ll spare your life.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,''),
(0,-1665989,'Stand down, Muradin. Let a grieving father pass.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,''),
(0,-1665990,'High Overlord Saurfang kneels over his son\'s body.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,''),
(0,-1665991,'[Orcish] No\'ku kil zil\'nok ha tar.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,''),
(0,-1665992,'Higher Overlord Saurfang picks up the body of his son and walks over towards Varian',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,''),
(0,-1665993,'I will not forget this kindess. I thank you, highness.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,''),
(0,-1665994,'I... I was not at the Wrathgate. But the soldiers who survived told me much of what happened. Your son fought with honor. He died a hero\'s death. He deserves a hero\'s burial.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,''),
(0,-1665995,'Lady Jaina Proudmoore cries.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,''),
(0,-1665996,'Jaina, why are you crying?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,''),
(0,-1665997,'It was nothing, your majesty. Just... I\'m proud of my king.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,''),
(0,-1665998,'Muradin, secure the deck and prepare our soldiers for an assault on the Upper Citadel. I\'ll send out another regiment from Stormwind.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,''),
(0,-1665999,'Let\'s get the move then. Move out!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,''),
(0,-1666000,'High Overlord Saurfang coughs.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,''),
(0,-1666001,'High Overlord Saurfang weeps over the corpse of his son.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,''),
(0,-1666002,'You will have a proper ceremony in Nagrand next to the pyres of your mother and ancestors.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,''),
(0,-1666003,'Honor, young heroes... no matter how dire the battle... Never forsake it!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,'');

-- Rotface
INSERT INTO `script_texts` (`npc_entry`,`entry`,`content_default`,`content_loc1`,`content_loc2`,`content_loc3`,`content_loc4`,`content_loc5`,`content_loc6`,`content_loc7`,`content_loc8`,`sound`,`type`,`language`,`emote`,`comment`) VALUES
(0,-1666015,'What? Precious? Noooooooooo!!!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,''),
(0,-1666016,'Icky sticky.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,''),
(0,-1666017,'I think I made an angry poo-poo. It gonna blow! ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,''),
(0,-1666018,'Great news, everyone! The slime is flowing again!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,''),
(0,-1666019,'Good news, everyone! I\'ve fixed the poison slime pipes!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,''),
(0,-1666020,'Daddy make toys out of you!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,''),
(0,-1666021,'I brokes-ded it...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,''),
(0,-1666022,'Sleepy Time!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,''),
(0,-1666023,'Bad news daddy.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,''),
(0,-1666024,' Terrible news, everyone, Rotface is dead! But great news everyone, he left behind plenty of ooze for me to use! Whaa...? I\'m a poet, and I didn\'t know it? Astounding!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,'');

-- Festergut
INSERT INTO `script_texts` (`npc_entry`,`entry`,`content_default`,`content_loc1`,`content_loc2`,`content_loc3`,`content_loc4`,`content_loc5`,`content_loc6`,`content_loc7`,`content_loc8`,`sound`,`type`,`language`,`emote`,`comment`) VALUES
(0,-1666004,'NOOOO! You kill Stinky! You pay!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16907,1,0,0,''),
(0,-1666005,'Fun time!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16901,1,0,0,''),
(0,-1666006,'Just an ordinary gas cloud. But watch out, because that\'s no ordinary gas cloud!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,''),
(0,-1666007,'Festergut farts.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16911,4,0,0,''),
(0,-1666008,'Gyah! Uhhh, I not feel so good...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16906,1,0,0,''),
(0,-1666009,'Festergut vomits.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,''),
(0,-1666010,'Daddy, I did it!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16902,1,0,0,''),
(0,-1666011,'Dead, dead, dead! ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16903,1,0,0,''),
(0,-1666012,'Fun time over!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16905,1,0,0,''),
(0,-1666013,'Da...Daddy...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16904,1,0,0,''),
(0,-1666014,'Oh, Festergut. You were always my favorite. Next to Rotface. The good news is you left behind so much gas, I can practically taste it!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,'');

-- Professor Putricide
INSERT INTO `script_texts`(`npc_entry`,`entry`,`content_default`,`content_loc1`,`content_loc2`,`content_loc3`,`content_loc4`,`content_loc5`,`content_loc6`,`content_loc7`,`content_loc8`,`sound`,`type`,`language`,`emote`,`comment`) VALUES
(0,-1666025,'Good news, everyone! I think I perfected a plague that will destroy all life on Azeroth!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,''),
(0,-1666026,'You can\'t come in here all dirty like that! You need that nasty flesh scrubbed off first!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,''),
(0,-1666027,'Two oozes, one room! So many delightful possibilities...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,''),
(0,-1666028,'Hmm. I don\'t feel a thing. Whaa...? Where\'d those come from?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,''),
(0,-1666029,'Tastes like... Cherry! Oh! Excuse me!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,''),
(0,-1666030,'Hmm... Interesting...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,''),
(0,-1666031,'That was unexpected!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,''),
(0,-1666032,'Great news, everyone!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,''),
(0,-1666033,'Bad news, everyone! I don\'t think I\'m going to make it.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,'');

-- Blood Prince Council
INSERT INTO `script_texts`(`npc_entry`,`entry`,`content_default`,`content_loc1`,`content_loc2`,`content_loc3`,`content_loc4`,`content_loc5`,`content_loc6`,`content_loc7`,`content_loc8`,`sound`,`type`,`language`,`emote`,`comment`) VALUES
(0,-1666034,'Foolish mortals. You thought us defeated so easily? The San\'layn are the Lich King\'s immortal soldiers! Now you shall face their might combined!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,''),
(0,-1666035,'Rise up, brothers, and destroy our enemies.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,''),
(0,-1666036,'Such wondrous power! The Darkfallen Orb has made me INVINCIBLE!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,''),
(0,-1666037,'Blood will flow!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,''),
(0,-1666038,'Were you ever a threat?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,''),
(0,-1666039,'Truth is found in death.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,''),
(0,-1666040,'Prince Keleseth cackles maniacally!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,0,''),
(0,-1666041,'My queen... they come...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,''),
(0,-1666042,'Tremble before Taldaram, mortals, for the power of the orb flows through me!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,''),
(0,-1666043,'Delight in the pain!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,''),
(0,-1666044,'Worm food.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,''),
(0,-1666045,'Beg for mercy!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,''),
(0,-1666046,'Prince Taldaram laughs.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,0,''),
(0,-1666047,'Prince Taldaram gurgles and dies.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,0,''),
(0,-1666048,'Naxxanar was merely a setback! With the power of the orb, Valanar will have his vengeance!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,''),
(0,-1666049,'Dinner... is served.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,''),
(0,-1666050,'Do you see NOW the power of the Darkfallen?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,''),
(0,-1666051,'BOW DOWN BEFORE THE SAN\'LAYN!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,''),
(0,-1666052,'...why...?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,'');

-- BloodQueen Lanathel
INSERT INTO `script_texts`(`npc_entry`,`entry`,`content_default`,`content_loc1`,`content_loc2`,`content_loc3`,`content_loc4`,`content_loc5`,`content_loc6`,`content_loc7`,`content_loc8`,`sound`,`type`,`language`,`emote`,`comment`) VALUES
(0,-1666053,'You have made an... unwise... decision.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16782,1,0,0,''),
(0,-1666054,'Just a taste...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16783,1,0,0,''),
(0,-1666055,'Know my hunger!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16784,1,0,0,''),
(0,-1666056,'SUFFER!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16787,1,0,0,''),
(0,-1666057,'Can you handle this?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16787,1,0,0,''),
(0,-1666058,'Yes... feed my precious one! You\'re mine now! ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16790,1,0,0,''),
(0,-1666059,'Here it comes.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,''),
(0,-1666060,'THIS ENDS NOW!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16793,1,0,0,''),
(0,-1666061,'But... we were getting along... so well...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16794,1,0,0,'');

-- Valithria Dreamwalker
INSERT INTO `script_texts`(`npc_entry`,`entry`,`content_default`,`content_loc1`,`content_loc2`,`content_loc3`,`content_loc4`,`content_loc5`,`content_loc6`,`content_loc7`,`content_loc8`,`sound`,`type`,`language`,`emote`,`comment`) VALUES
(0,-1666062,'Heroes, lend me your aid! I... I cannot hold them off much longer! You must heal my wounds!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,17064,1,0,0,''),
(0,-1666063,'I have opened a portal into the Emerald Dream. Your salvation lies within, heroes.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,''),
(0,-1666064,'My strength is returning! Press on, heroes!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,17070,1,0,0,''),
(0,-1666065,'I will not last much longer!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,17069,1,0,0,''),
(0,-1666066,'Forgive me for what I do! I... cannot... stop... ONLY NIGHTMARES REMAIN!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,17072,1,0,0,''),
(0,-1666067,'A tragic loss...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,17066,1,0,0,''),
(0,-1666068,'FAILURES!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,17067,1,0,0,''),
(0,-1666069,'I am renewed! Ysera grants me the favor to lay these foul creatures to rest!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,17071,1,0,0,'');

-- Sindragosa
INSERT INTO `script_texts`(`npc_entry`,`entry`,`content_default`,`content_loc1`,`content_loc2`,`content_loc3`,`content_loc4`,`content_loc5`,`content_loc6`,`content_loc7`,`content_loc8`,`sound`,`type`,`language`,`emote`,`comment`) VALUES
(0,-1666070,'You are fools who have come to this place! The icy winds of Northrend will consume your souls!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,17007,1,0,0,''),
(0,-1666071,'Suffer, mortals, as your pathetic magic betrays you!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,17014,1,0,0,''),
(0,-1666072,'Can you feel the cold hand of death upon your heart?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,17013,1,0,0,''),
(0,-1666073,'Aaah! It burns! What sorcery is this?!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,17015,1,0,0,''),
(0,-1666074,'Your incursion ends here! None shall survive!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,17012,1,0,0,''),
(0,-1666075,'Now feel my master\'s limitless power and despair!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,17016,1,0,0,''),
(0,-1666076,'Perish!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,17008,1,0,0,''),
(0,-1666077,'A flaw of mortality...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,17009,1,0,0,''),
(0,-1666078,'Enough! I tire of these games!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,17011,1,0,0,''),
(0,-1666079,'Free...at last...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,17010,1,0,0,'');

-- Lich King
INSERT INTO script_texts (entry,content_default,content_loc1,content_loc2,content_loc3,content_loc4,content_loc5,content_loc6,content_loc7,content_loc8,sound,type,language,emote,comment)VALUES
(-1810001, 'So...the Light\'s vaunted justice has finally arrived. Shall I lay down Frostmourne and throw myself at your mercy, Fordring?',null,null,null,null,null,null,null,null,17349,1,0,0,''),
(-1810002, 'We will grant you a swift death, Arthas. More than can be said for the thousands you\'ve tortured and slain.',null,null,null,null,null,null,null,null,17390,1,0,0,''),
(-1810003, 'You will learn of that first hand. When my work is complete, you will beg for mercy and I will deny you.Your anguished cries will be testament to my unbridled power.',null,null,null,null,null,null,null,null,17350,1,0,0,''),
(-1810004, 'So be it. Champions, attack!',null,null,null,null,null,null,null,null,17391,1,0,0,''),
(-1810005, 'I\'ll keep you alive to witness the end, Fordring. I would not want the Light\'s greatest champion to miss seeing this wretched world remade in my image.',null,null,null,null,null,null,null,null,17351,1,0,0,''),
(-1810006, 'Come then champions, feed me your rage!',null,null,null,null,null,null,null,null,17352,1,0,0,''),
(-1810007, 'I will freeze you from within until all that remains is an icy husk!',null,null,null,null,null,null,null,null,17369,1,0,0,''),
(-1810008, 'Apocalypse!',null,null,null,null,null,null,null,null,17371,1,0,0,''),
(-1810009, 'Bow down before your lord and master!',null,null,null,null,null,null,null,null,17372,1,0,0,''),
(-1810010, 'Hope wanes!',null,null,null,null,null,null,null,null,17363,1,0,0,''),
(-1810011, 'The end has come!',null,null,null,null,null,null,null,null,17364,1,0,0,''),
(-1810012, 'Face now your tragic end!',null,null,null,null,null,null,null,null,17365,1,0,0,''),
(-1810013, 'No question remains unanswered. No doubts linger. You are Azeroth\'s greatest champions! You overcame every challenge I laid before you. My mightiest servants have fallen before your relentless onslaught, your unbridled fury... Is it truly righteousness that drives you? I wonder.',null,null,null,null,null,null,null,null,17353,1,0,0,''),
(-1810014, 'You trained them well, Fordring. You delivered the greatest fighting force this world has ever known... right into my hands exactly as I intended. You shall be rewarded for your unwitting sacrifice.',null,null,null,null,null,null,null,null,17355,1,0,0,''),
(-1810015, 'Watch now as I raise them from the dead to become masters of the Scourge. They will shroud this world in chaos and destruction. Azeroth\'s fall will come at their hands and you will be the first to die.',null,null,null,null,null,null,null,null,17356,1,0,0,''),
(-1810016, 'I delight in the irony.',null,null,null,null,null,null,null,null,17357,1,0,0,''),
(-1810017, 'LIGHT, GRANT ME ONE FINAL BLESSING. GIVE ME THE STRENGTH... TO SHATTER THESE BONDS!',null,null,null,null,null,null,null,null,17392,1,0,0,''),
(-1810018, 'Impossible...',null,null,null,null,null,null,null,null,17358,1,0,0,''),
(-1810019, '',null,null,null,null,null,null,null,null,17360,1,0,0,''),
(-1810020, 'No more, Arthas! No more lives will be consumed by your hatred!',null,null,null,null,null,null,null,null,17393,1,0,0,''),
(-1810021, 'Free at last! It is over, my son. This is the moment of reckoning.',null,null,null,null,null,null,null,null,17397,1,0,0,''),
(-1810022, 'The Lich King must fall!',null,null,null,null,null,null,null,null,17389,1,0,0,''),
(-1810023, 'Rise up, champions of the Light!',null,null,null,null,null,null,null,null,17398,1,0,0,''),
(-1810024, 'Now I stand, the lion before the lambs... and they do not fear.',null,null,null,null,null,null,null,null,17361,1,0,0,''),
(-1810025, 'They cannot fear.',null,null,null,null,null,null,null,null,17362,1,0,0,''),
(-1810026, 'Argh... Frostmourne, obey me!',null,null,null,null,null,null,null,null,17367,1,0,0,''),
(-1810027, 'Frostmourne hungers...',null,null,null,null,null,null,null,null,17366,1,0,0,''),
(-1810028, 'Frostmourne feeds on the soul of your fallen ally!',null,null,null,null,null,null,null,null,17368,1,0,0,''),
(-1810029, 'Val\'kyr, your master calls!',null,null,null,null,null,null,null,null,17373,1,0,0,''),
(-1810030, 'Watch as the world around you collapses!',null,null,null,null,null,null,null,null,17370,1,0,0,''),
(-1810031, 'You gnats actually hurt me! Perhaps I\'ve toyed with you long enough, now taste the vengeance of the grave!',null,null,null,null,null,null,null,null,17359,1,0,0,'');

UPDATE `creature` SET `spawntimesecs`='86400' WHERE (`guid`='136133');
UPDATE `creature` SET `spawntimesecs`='86400' WHERE (`guid`='136207');
UPDATE `creature` SET `spawntimesecs`='86400' WHERE (`guid`='136116');
UPDATE `creature` SET `spawntimesecs`='86400' WHERE (`guid`='136115');



