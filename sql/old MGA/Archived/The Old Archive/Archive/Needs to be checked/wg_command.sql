INSERT INTO command
   (`name`, `security`, `help`)
VALUES
   ('wg', 0, 'Syntax: .wg $subcommand.');

INSERT INTO command
   (`name`, `security`, `help`)
VALUES
   ('wg enable', 3, 'Syntax: .wg enable [on/off] Enable/Disable Wintergrasp outdoorPvP.');

INSERT INTO command
   (`name`, `security`, `help`)
VALUES
   ('wg start', 3, 'Syntax: .wg start\r\nForce Wintergrasp battle start.');

INSERT INTO command
   (`name`, `security`, `help`)
VALUES
   ('wg status', 0, 'Syntax: .wg status\r\nWintergrasp info, defender, timer, wartime.');

INSERT INTO command
   (`name`, `security`, `help`)
VALUES
   ('wg stop', 3, 'Syntax: .wg stop\r\nForce Wintergrasp battle stop (No rewards).');

INSERT INTO command
   (`name`, `security`, `help`)
VALUES
   ('wg switch', 3, 'Syntax: .wg switch\r\nSwitchs Wintergrasp defender team.');

INSERT INTO command
   (`name`, `security`, `help`)
VALUES
   ('wg timer', 3, 'Syntax: .wg timer $minutes\r\nChange the current timer. Min value = 1, Max value 60 (Wartime), 1440 (Not Wartime)');

