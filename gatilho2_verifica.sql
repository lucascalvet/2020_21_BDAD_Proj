UPDATE User SET balance=100 WHERE username='lucascs';
SELECT username, balance FROM User WHERE username='lucascs';
DELETE FROM Purchase WHERE user='lucascs' AND game=4;
INSERT INTO Purchase VALUES('lucascs', 4, 120.0, strftime('%s', '2021-01-05'), 1);
SELECT username, balance FROM User WHERE username='lucascs';
INSERT INTO Purchase VALUES('lucascs', 4, NULL, strftime('%s', '2021-01-05'), 1);
SELECT username, balance FROM User WHERE username='lucascs';
