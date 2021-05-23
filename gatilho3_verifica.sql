PRAGMA foreign_keys=ON;

UPDATE User SET balance=140 WHERE username='lucascs';
DELETE FROM Purchase WHERE user='lucascs' AND (game = 4 or game = 5 or game = 6);
INSERT INTO Purchase VALUES('lucascs', 4, NULL, strftime('%s', '2021-01-05'), 1); -- will get the price automatically and is on sale (50%)
INSERT INTO Purchase VALUES('lucascs', 5, 90.0, strftime('%s', '2021-01-05'), 1); -- user will pay 90
INSERT INTO Purchase VALUES('lucascs', 6, NULL, strftime('%s', '2021-01-05'), 1); -- will not have enough balance
SELECT * FROM Purchase WHERE user='lucascs' AND (game = 4 or game = 5 or game = 6);
SELECT balance from User where username = 'lucascs';
