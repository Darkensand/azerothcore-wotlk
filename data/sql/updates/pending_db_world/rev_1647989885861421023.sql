INSERT INTO `version_db_world` (`sql_rev`) VALUES ('1647989885861421023');

DELETE FROM `smart_scripts` WHERE `entryorguid`=12939100 AND `source_type`=9 AND `id`=11 AND `link`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(12939100, 9, 11, 0, 0, 0, 100, 0, 4000, 4000, 0, 0, 0, 1, 0, 5000, 0, 0, 0, 0, 19, 28391, 0, 0, 0, 0, 0, 0, 0, 'Acherus Necromancer - On Script - Say Line 0');
