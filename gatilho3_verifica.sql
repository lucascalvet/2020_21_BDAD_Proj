UPDATE User SET balance=100 WHERE username='lucascs';
DELETE FROM Purchase WHERE user='lucascs' AND game=4;
INSERT INTO Purchase VALUES('lucascs', 4, NULL, strftime('%s', '2021-01-05'), 1);
SELECT * FROM Purchase WHERE user='lucascs' AND game=4;