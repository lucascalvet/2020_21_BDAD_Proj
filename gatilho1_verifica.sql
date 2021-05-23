PRAGMA foreign_keys=ON;

SELECT * FROM Review WHERE user='zeppf';
INSERT INTO Review VALUES ('zeppf', 3, 3, "I didn't enjoy the game, its just a lousy copy from Nintendo");
SELECT * FROM Review WHERE user='zeppf';
