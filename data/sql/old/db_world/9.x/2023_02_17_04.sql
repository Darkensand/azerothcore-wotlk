-- DB update 2023_02_17_03 -> 2023_02_17_04
--
SET @GUID := 24901;

DELETE FROM `creature` WHERE `id1`=18694;
INSERT INTO `creature` (`guid`, `id1`, `map`, `ZoneId`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `MovementType`) VALUES
(@GUID+0, 18694, 530, 3520, -4377.75, 372.744, 60.6136, 3.61061, 86400, 2),
(@GUID+1, 18694, 530, 3520, -3016.2, 343.358, 0.342977, 1.68274, 100800, 2),
(@GUID+2, 18694, 530, 3520, -3903.28, 1696.27, 94.722, 0.724555, 115200, 2);

DELETE FROM `creature_addon` WHERE (`guid` IN (@GUID+0, @GUID+1, @GUID+2));
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `visibilityDistanceType`, `auras`) VALUES
(@GUID+0, (@GUID+0)*10, 0, 0, 0, 0, 0, ''),
(@GUID+1, (@GUID+1)*10, 0, 0, 0, 0, 0, ''),
(@GUID+2, (@GUID+2)*10, 0, 0, 0, 0, 0, '');

DELETE FROM `waypoint_data` WHERE `id` IN ((@GUID+0)*10, (@GUID+1)*10, (@GUID+2)*10);
INSERT INTO `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`) VALUES
((@GUID+0)*10, 1, -4377.75, 372.744, 60.6136),
((@GUID+0)*10, 2, -4418.22, 440.817, 119.472),
((@GUID+0)*10, 3, -4495.65, 594.858, 131.67),
((@GUID+0)*10, 4, -4427.65, 681.4, 171.633),
((@GUID+0)*10, 5, -4418.22, 440.817, 119.472),
((@GUID+0)*10, 6, -4377.75, 372.744, 60.6136),
((@GUID+1)*10, 1, -3016.2, 343.358, 0.341521),
((@GUID+1)*10, 2, -3026.05, 381.531, 2.17483),
((@GUID+1)*10, 3, -3021.31, 445.784, -3.64737),
((@GUID+1)*10, 4, -3006.23, 496.327, -13.6708),
((@GUID+1)*10, 5, -3000.99, 536.875, -5.49321),
((@GUID+1)*10, 6, -2961.61, 548.074, -7.68805),
((@GUID+1)*10, 7, -2892.66, 551.682, -12.8461),
((@GUID+1)*10, 8, -2783.63, 556.649, -15.0085),
((@GUID+1)*10, 9, -2785.17, 590.285, -7.29702),
((@GUID+1)*10, 10, -2754.35, 725.18, 2.95703),
((@GUID+1)*10, 11, -2727.19, 825.413, 6.34833),
((@GUID+1)*10, 12, -2751.82, 982.062, 10.3009),
((@GUID+1)*10, 13, -2843.48, 1081.11, 17.7488),
((@GUID+2)*10, 1, -3868.01, 1718.18, 97.2667),
((@GUID+2)*10, 2, -3847.3, 1740.45, 100.095),
((@GUID+2)*10, 3, -3826.27, 1759.02, 95.8044),
((@GUID+2)*10, 4, -3810.99, 1773.17, 95.6668),
((@GUID+2)*10, 5, -3785.15, 1768.66, 91.3053),
((@GUID+2)*10, 6, -3764.4, 1801.48, 91.3504),
((@GUID+2)*10, 7, -3743.34, 1831.35, 87.6495),
((@GUID+2)*10, 8, -3710.64, 1857.14, 81.6541),
((@GUID+2)*10, 9, -3687.23, 1881.36, 77.9404),
((@GUID+2)*10, 10, -3671.54, 1921.43, 73.2722),
((@GUID+2)*10, 11, -3655.59, 1949.15, 70.6234),
((@GUID+2)*10, 12, -3633.9, 1982.12, 66.5573),
((@GUID+2)*10, 13, -3611.06, 2002.72, 69.0087),
((@GUID+2)*10, 14, -3575.58, 2006.98, 61.9064),
((@GUID+2)*10, 15, -3535.25, 2034.6, 66.588),
((@GUID+2)*10, 16, -3518.48, 2069.63, 74.289),
((@GUID+2)*10, 17, -3509.8, 2111.29, 87.4461),
((@GUID+2)*10, 18, -3533.42, 2146.65, 80.8404),
((@GUID+2)*10, 19, -3554.49, 2164.17, 78.9279),
((@GUID+2)*10, 20, -3576.53, 2186.4, 79.5987),
((@GUID+2)*10, 21, -3595.57, 2217.79, 79.4822),
((@GUID+2)*10, 22, -3617.37, 2233.47, 79.9167),
((@GUID+2)*10, 23, -3595.57, 2217.79, 79.4822),
((@GUID+2)*10, 24, -3576.53, 2186.4, 79.5987),
((@GUID+2)*10, 25, -3554.49, 2164.17, 78.9279),
((@GUID+2)*10, 26, -3533.42, 2146.65, 80.8404),
((@GUID+2)*10, 27, -3509.8, 2111.29, 87.4461),
((@GUID+2)*10, 28, -3518.48, 2069.63, 74.289),
((@GUID+2)*10, 29, -3535.25, 2034.6, 66.588),
((@GUID+2)*10, 30, -3575.58, 2006.98, 61.9064),
((@GUID+2)*10, 31, -3611.06, 2002.72, 69.0087),
((@GUID+2)*10, 32, -3633.9, 1982.12, 66.5573),
((@GUID+2)*10, 33, -3655.59, 1949.15, 70.6234),
((@GUID+2)*10, 34, -3671.54, 1921.43, 73.2722),
((@GUID+2)*10, 35, -3687.23, 1881.36, 77.9404),
((@GUID+2)*10, 36, -3710.64, 1857.14, 81.6541),
((@GUID+2)*10, 37, -3743.34, 1831.35, 87.6495),
((@GUID+2)*10, 38, -3764.4, 1801.48, 91.3504),
((@GUID+2)*10, 39, -3785.15, 1768.66, 91.3053),
((@GUID+2)*10, 40, -3810.99, 1773.17, 95.6668),
((@GUID+2)*10, 41, -3826.27, 1759.02, 95.8044),
((@GUID+2)*10, 42, -3847.27, 1740.48, 100.118),
((@GUID+2)*10, 43, -3868.01, 1718.18, 97.2667),
((@GUID+2)*10, 44, -3903.28, 1696.27, 94.722);

DELETE FROM `pool_template` WHERE `entry`=108 AND `description`='Collidus the Warp-Watcher (18694)';
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES
(108, 1, 'Collidus the Warp-Watcher (18694)');

DELETE FROM `pool_creature` WHERE `pool_entry`=108 AND `description`='Collidus the Warp-Watcher (18694)';
INSERT INTO `pool_creature` (`guid`, `pool_entry`, `chance`, `description`) VALUES
(@GUID+0, 108, 0, 'Collidus the Warp-Watcher (18694)'),
(@GUID+1, 108, 0, 'Collidus the Warp-Watcher (18694)'),
(@GUID+2, 108, 0, 'Collidus the Warp-Watcher (18694)');
