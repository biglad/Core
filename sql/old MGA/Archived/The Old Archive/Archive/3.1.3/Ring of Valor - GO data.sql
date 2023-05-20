-- Correct faction to make GO's not usable
UPDATE `gameobject_template` set `faction` = 114 where `entry` in (192387, 192388, 192389, 192390, 192391, 192392, 192393, 192394);
-- Orgrimmar Arena Pilars and elevators
DELETE FROM `gameobject_template` where `entry` in (194578, 194579, 194580, 194581, 194582, 194583, 194584, 194585, 194586, 194587);
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `faction`, `flags`, `size`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `ScriptName`) VALUES
(194578, 0, 8453, 'Doodad_org_arena_ivory_pillar_collision03', '', '', '', 114, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(194579, 0, 8454, 'Doodad_org_arena_pillar_collision03', '', '', '', 114, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(194580, 0, 8455, 'Doodad_org_arena_axe_pillar_collision03', '', '', '', 114, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(194581, 0, 8456, 'Doodad_org_arena_lightning_pillar_collision03', '', '', '', 114, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(194582, 11, 7973, 'Doodad_org_arena_elevator03', '', '', '', 0, 40, 1, 0, 0, 0, 0, 20133, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(194583, 11, 8259, 'Doodad_org_arena_axe_pillar01', '', '', '', 0, 40, 1, 0, 0, 0, 0, 1667, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(194584, 11, 7966, 'Doodad_org_arena_pillar01', '', '', '', 0, 40, 1, 0, 0, 0, 0, 1667, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(194585, 11, 8260, 'Doodad_org_arena_lightning_pillar01', '', '', '', 0, 40, 1, 0, 0, 0, 0, 1667, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(194586, 11, 8258, 'Doodad_org_arena_yellow_elevator01', '', '', '', 0, 40, 1, 0, 0, 0, 0, 20133, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(194587, 11, 8261, 'Doodad_org_arena_ivory_pillar01', '', '', '', 0, 40, 1, 0, 0, 0, 0, 1667, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');