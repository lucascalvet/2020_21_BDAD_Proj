PRAGMA foreign_keys=ON;

INSERT INTO Game values(NULL, 'Untitled Goose Game', 'It is a lovely morning in the village and you are a horrible goose.', 16.79, 0, 3, strftime('%s', '2020-09-23'));
INSERT INTO Game values(NULL, 'Cuphead', 'Cuphead is a classic run and gun action game heavily focused on boss battles. Inspired by cartoons of the 1930s, the visuals and audio are painstakingly created with the same techniques of the era, i.e. traditional hand drawn cel animation, watercolor backgrounds, and original jazz recordings.', 19.99, 0, 0, strftime('%s', '2017-09-29'));
INSERT INTO Game values(NULL, 'Tankinix', 'An awesome, truly revolutionary game. A top-down battle of tanks.', 109.99, 0, 1, strftime('%s', '2020-01-03'));
INSERT INTO Game values(NULL, 'FireMi&WaterNix', 'An awesome, truly revolutionary multiplayer game. Fire and Water collides.', 100, 0, 1, strftime('%s', '2020-01-03'));
INSERT INTO Game values(NULL, 'Hollow Knight', 'Forge your own path in Hollow Knight! An epic action adventure through a vast ruined kingdom of insects and heroes. Explore twisting caverns, battle tainted creatures and befriend bizarre bugs, all in a classic, hand-drawn 2D style.', 14.99, 0, 0, strftime('%s', '2020-02-24'));
INSERT INTO Game values(NULL, 'Stardew Valley', "You have inherited your grandfather's old farm plot in Stardew Valley. Armed with hand-me-down tools and a few coins, you set out to begin your new life. Can you learn to live off the land and turn these overgrown fields into a thriving home?", 13.99, 0, 12, strftime('%s', '2016-02-26'));
INSERT INTO Game values(NULL, "No Man's Sky", "No Man's Sky is a game about exploration and survival in an infinite procedurally generated universe.", 54.99, 0, 0, strftime('%s', '2016-08-12'));
INSERT INTO Game values(NULL, "Subnautica", "Descend into the depths of an alien underwater world filled with wonder and peril. Craft equipment, pilot submarines and out-smart wildlife to explore lush coral reefs, volcanoes, cave systems, and more - all while trying to survive.", 29.99, 0, 0, strftime('%s', '2018-01-23'));
INSERT INTO Game values(NULL, "Raft", "Raft throws you and your friends into an epic oceanic adventure! Alone or together, players battle to survive a perilous voyage across a vast sea! Gather debris, scavenge reefs and build your own floating home, but be wary of the man-eating sharks!", 19.99, 0, 0, strftime('%s', '2018-05-23'));
INSERT INTO Game values(NULL, "Dishonored", "Dishonored is an immersive first-person action game that casts you as a supernatural assassin driven by revenge. With Dishonored’s flexible combat system, creatively eliminate your targets as you combine the supernatural abilities, weapons and unusual gadgets at your disposal.", 9.99, 0, 18, strftime('%s', '2012-10-12'));
INSERT INTO Game values(NULL, "Dishonored 2", "Reprise your role as a supernatural assassin in Dishonored 2. Declared a “masterpiece” by Eurogamer and hailed “a must-play revenge tale” by Game Informer, Dishonored 2 is the follow up to Arkane’s 1st-person action blockbuster & winner of 100+ 'Game of the Year' awards, Dishonored.", 39.99, 0, 18, strftime('%s', '2016-11-11'));
INSERT INTO Game values(NULL, "Bioshock", "BioShock is a shooter unlike any you've ever played, loaded with weapons and tactics never seen. You'll have a complete arsenal at your disposal from simple revolvers to grenade launchers and chemical throwers, but you'll also be forced to genetically modify your DNA to create an even more deadly...", 19.99, 0, 18, strftime('%s', '2007-08-21'));
INSERT INTO Game values(NULL, "Borderlands 2", "A new era of shoot and loot is about to begin. Play as one of four new vault hunters facing off against a massive new world of creatures, psychos and the evil mastermind, Handsome Jack. Make new friends, arm them with a bazillion weapons and fight alongside them in 4 player co-op on a relentless quest for revenge and redemption across the undiscovered and unpredictable living planet.", 29.99, 0, 18, strftime('%s', '2012-09-20'));
INSERT INTO Game values(NULL, "Dark Souls: REMASTERED", "Then, there was fire. Re-experience the critically acclaimed, genre-defining game that started it all. Beautifully remastered, return to Lordran in stunning high-definition detail running at 60fps.", 39.99, 0, 16, strftime('%s', '2018-05-23'));
INSERT INTO Game values(NULL, 'Undertale', "UNDERTALE! The RPG game where you don't have to destroy anyone.", 9.99, 0, 0, strftime('%s', '2015-09-15'));
INSERT INTO Game values(NULL, 'Grand Theft Auto V', "Grand Theft Auto V for PC offers players the option to explore the award-winning world of Los Santos and Blaine County in resolutions of up to 4k and beyond, as well as the chance to experience the game running at 60 frames per second.", 29.98, 0, 18, strftime('%s', '2015-04-14'));
INSERT INTO Game values(NULL, 'Assassin’s Creed IV Black Flag', 'The year is 1715. Pirates rule the Caribbean and have established their own lawless Republic where corruption, greediness and cruelty are commonplace.Among these outlaws is a brash young captain named Edward Kenway.', 19.99, 0, 18, strftime('%s', '2013-11-19'));


INSERT INTO Release values(NULL, '1.1.4', strftime('%s', '2020-09-23'), 0.830, NULL, 1);
INSERT INTO Release values(NULL, '1.1.3', strftime('%s', '2017-09-29'), 4, NULL, 2);
INSERT INTO Release values(NULL, '1.0', strftime('%s', '2020-01-03'), 0.69, NULL, 3);
INSERT INTO Release values(NULL, '1.0', strftime('%s', '2020-01-03'), 0.5, NULL, 4);
INSERT INTO Release values(NULL, '1.0.1.4', strftime('%s', '2020-02-24'), 7.39, NULL, 5);
INSERT INTO Release values(NULL, '1.5.4', strftime('%s', '2016-02-26'), 0.5, NULL, 6); --stardew valley
INSERT INTO Release values(NULL, '1.2', strftime('%s', '2016-12-12'), 6, NULL, 10); --dishonered
INSERT INTO Release values(NULL, '1.0', strftime('%s', '2018-05-23'), 7, 'The remastered version has arrived!', 14); --dank souls
INSERT INTO Release values(NULL, '1.1', strftime('%s', '2018-05-24'), 7, 'The remastered version has arrived!', 14); --dank souls


INSERT INTO Tag values('FPS');
INSERT INTO Tag values('Action');
INSERT INTO Tag values('Adventure');
INSERT INTO Tag values('Puzzle');
INSERT INTO Tag values('RPG');
INSERT INTO Tag values('JRPG');
INSERT INTO Tag values('Sports');
INSERT INTO Tag values('Multiplayer');
INSERT INTO Tag values('Platform');
INSERT INTO Tag values('Singleplayer');
INSERT INTO Tag values('Story Driven');
INSERT INTO Tag values('Horror');
INSERT INTO Tag values('Adult');
INSERT INTO Tag values('Fighter');
INSERT INTO Tag values('Indie');
INSERT INTO Tag values('Open World');
INSERT INTO Tag values('Co-op');
INSERT INTO Tag values('Atmospheric');
INSERT INTO Tag values('Survival');
INSERT INTO Tag values('Top-down');


INSERT INTO OS values('Windows');
INSERT INTO OS values('MS-DOS');
INSERT INTO OS values('Linux');
INSERT INTO OS values('MacOS');


INSERT INTO Account values ('zeppf', 'zepepf@gmail.com', '5e884898da28047151d0e56f8dc6292773603d0d6aabbdd62a11ef721d1542d8');
INSERT INTO Account values ('jfred24', 'jfred24@gmail.com', '0b14d501a594442a01c6859541bcb3e8164d183d32937b851835442f69d5c94e');
INSERT INTO Account values ('lucascs', 'lucascalvet2000@hotmail.com', 'b3d17ebbe4f2b75d27b6309cfaae1487b667301a73951e7d523a039cd2dfe110');
INSERT INTO Account values ('johndoe', 'johndoe@protonmail.com', 'ef92b778bafe771e89245b89ecbc08a44a4e166c06659911881f383d4473e94f');
INSERT INTO Account values ('sholmes', 'watsonlover@outlook.com', 'b9c950640e1b3740e98acb93e669c65766f6670dd1609ba91ff41052ba48c6f3');
INSERT INTO Account values ('watson', 'sherlocklover@sapo.pt', 'b9c950640e1b3740e98acb93e669c65766f6670dd1609ba91ff41052ba48c6f3');
INSERT INTO Account values ('janedoe', 'janedoe@email.com', 'b9c950640e1b3740e98acb93e669c65766f6670dd1609ba91ff41052ba48c6f3');
INSERT INTO Account values ('mikeLitoris', 'gottcha.m8@outlook.com', 'b9c950640e1b3740e98acb93e669c65766f6670dd1609ba91ff41052ba48c6f3');
INSERT INTO Account values ('rockstar', 'therock@gmail.com', 'b9c950640e1b3740e98acb93e669c65766f6670dd1609ba91ff41052ba48c6f3');
INSERT INTO Account values ('osupermario', 'itsame@hotmail.com', 'b9c950640e1b3740e98acb93e669c65766f6670dd1609ba91ff41052ba48c6f3');
INSERT INTO Account values ('clubpenguin', 'pingping@penguin.com', 'b9c950640e1b3740e98acb93e669c65766f6670dd1609ba91ff41052ba48c6f3');
INSERT INTO Account values ('melmel', 'batgirl2001@gmail.com', 'b9c950640e1b3740e98acb93e669c65766f6670dd1609ba91ff41052ba48c6f3');
INSERT INTO Account values ('ubisoft', 'rayman123@yahoo.com', 'b9c950640e1b3740e98acb93e669c65766f6670dd1609ba91ff41052ba48c6f3');
INSERT INTO Account values ('nintendo', 'goat@nintendo.com', 'b9c950640e1b3740e98acb93e669c65766f6670dd1609ba91ff41052ba48c6f3');
INSERT INTO Account values ('tobyFox', 'greaterdog@outlook.com', 'b9c950640e1b3740e98acb93e669c65766f6670dd1609ba91ff41052ba48c6f3');
INSERT INTO Account values ('pythonickoala', 'greatnessawaits@gmail.com', 'b9c950640e1b3740e98acb93e669c65766f6670dd1609ba91ff41052ba48c6f3');
INSERT INTO Account values ('ea', 'ea@ae.com', 'b9c950640e1b3740e98acb93e669c65766f6670dd1609ba91ff41052ba48c6f3');
INSERT INTO Account values ('inesinhaowo', 'iiowo@gmail.com', '5e884898da28047151d0e56f8dc6292773603d0d6aabbdd62a11ef721d1542d8');
INSERT INTO Account values ('souto', 'copypaste@l.com', '5e884898da28047151d0e56f8dc6292773603d0d6aabbdd62a11ef721d1542d8');
INSERT INTO Account values ('fromsoftware', 'gitgudlol@gmail.com', '5e884898da28047151d0e56f8dc6292773603d0d6aabbdd62a11ef721d1542d8');
INSERT INTO Account values ('feupgames', 'uportoeng@fe.up.pt', '5e884898da28047151d0e56f8dc6292773603d0d6aabbdd62a11ef721d1542d8');


INSERT INTO Address values(NULL, 'Portugal', 'Viana do Castelo', 'Rua da Bandeira', 47, '4900-788');
INSERT INTO Address values(NULL, 'Portugal', 'Porto', 'Avenida dos Aliados', 1, '4000-066');
INSERT INTO Address values(NULL, 'Portugal', 'Mira Porto', 'Avenida do Mar', 96, '4400-969');
INSERT INTO Address values(NULL, 'United Kingdom', 'London', 'B Baker Street', 221, '1000-100');
INSERT INTO Address values(NULL, 'United Kingdom', 'London', 'Downing Street', 10, '1000-200');
INSERT INTO Address values(NULL, 'USA', 'New York', 'Wall Street', 25, '1221-115');
INSERT INTO Address values(NULL, 'Spain', 'Madrid', 'Praça Cibelles', 47, '0000-000');
INSERT INTO Address values(NULL, 'Netherlands', 'Amsterdam', 'Kreupelsteeg', 88, '2356-775');
INSERT INTO Address values(NULL, 'Portugal', 'Maia', 'Travessa Vítor das Nemésias', 85, '4365-885');
INSERT INTO Address values(NULL, 'USA', 'New York', 'Broadway', 622, '10012');
INSERT INTO Address values(NULL, 'Japan', 'Kyoto', 'Mario Street', 1, '65945');
INSERT INTO Address values(NULL, 'France', 'Paris', 'Baguette Alley', 99, '101101');
INSERT INTO Address values(NULL, 'USA', 'Redmond', '150th Ave', 4600, '98052');
INSERT INTO Address values(NULL, 'Japan', 'Kyoto', 'Bonfire street', 334, '65946');


INSERT INTO User values('zeppf', 'Koala', 100, 00351918372817, strftime('%s', '2001-09-28'), 19);
INSERT INTO User values('jfred24', 'Fred', 100000, 00351918472642, strftime('%s', '2001-05-24'), 20);
INSERT INTO User values('lucascs', 'Lucas', 800, 00351918472635, strftime('%s', '2000-10-14'), 19);
INSERT INTO User values('johndoe', 'John', 0, 00351918475748, strftime('%s', '2005-01-01'), 16);
INSERT INTO User values('janedoe', 'Jane', 2, 00351918273645, strftime('%s', '2004-02-07'), 17);
INSERT INTO User values('melmel', 'BatGirl', 0, 00351918726323, strftime('%s', '2001-01-11'), 20);
INSERT INTO User values('osupermario', 'Ze', 23, 00351918274653, strftime('%s', '2000-03-12'), 21);
INSERT INTO User values('watson', 'Watson', 143, 003519186735938, strftime('%s', '1997-09-16'), 23);
INSERT INTO User values('sholmes', 'Sherlock', 143, 003519284795938, strftime('%s', '1997-09-16'), 23);
INSERT INTO User values('inesinhaowo', 'Ines', 259, 003519182737778, strftime('%s', '1999-05-16'), 20);
INSERT INTO User values('souto', 'SpanishInquisition', 259, 003519182735938, strftime('%s', '1885-05-28'), 126);


INSERT INTO Publisher values('rockstar', 'RockStar Games', 'https://www.rockstargames.com/', 8669228694, 10);
INSERT INTO Publisher values('nintendo', 'Nintendo','https://www.nintendo.com/', 8669228695, 11);
INSERT INTO Publisher values('ubisoft', 'Ubisoft','https://www.ubisoft.fr/', 10528669218695, 12);
INSERT INTO Publisher values('ea', 'Eletronic Arts','http://theworstthingsforsale.com/', 10528669339695, 13);
INSERT INTO Publisher values('feupgames', 'FEUP Games','https://sigarra.up.pt/', 10528669228695, 2);


INSERT INTO Developer values('rockstar', 'RockStar North', 'https://www.rockstargames.com/', 10);
INSERT INTO Developer values('nintendo', 'Nintendo Software Dep.','https://www.nintendo.com/', 11);
INSERT INTO Developer values('tobyFox', 'tobyfox','https://www.undertale.com/', 5);
INSERT INTO Developer values('pythonickoala', 'ZGames', 'http://hasthelargehadroncolliderdestroyedtheworldyet.com/', 1);
INSERT INTO Developer values('fromsoftware', 'From Software', 'https://www.fromsoftware.jp/ww/', 14);
INSERT INTO Developer values('ubisoft', 'Ubisoft Montreal', 'https://www.ubisoft.fr/', 12);


INSERT INTO Friends values('zeppf','jfred24');
INSERT INTO Friends values('zeppf','lucascs');
INSERT INTO Friends values('lucascs','jfred24');
INSERT INTO Friends values('lucascs','inesinhaowo');
INSERT INTO Friends values('zeppf','melmel');
INSERT INTO Friends values('zeppf','osupermario');
INSERT INTO Friends values('johndoe','janedoe');


INSERT INTO Message values(NULL, "Hello Freddy boy", strftime('%s', '2020-05-24 11:10:35'), 'lucascs');
INSERT INTO Message values(NULL, "O que é que queres?", strftime('%s', '2020-05-24 11:11:47'), 'jfred24');
INSERT INTO Message values(NULL, "Congrats", strftime('%s', '2020-05-24 11:11:59'), 'lucascs');
INSERT INTO Message values(NULL, "Brigadão mano", strftime('%s', '2020-05-24 11:12:38'), 'jfred24');
INSERT INTO Message values(NULL, "S2", strftime('%s', '2021-04-05 23:50:38'), 'melmel');
INSERT INTO Message values(NULL, "Ohhhh I always knew", strftime('%s', '2021-04-05 23:55:10'), 'zeppf');
INSERT INTO Message values(NULL, "Luke show me your lightsaber", strftime('%s', '2020-04-05 01:55:58'), 'inesinhaowo');
INSERT INTO Message values(NULL, "No can do darling. But you could experience what Python could do with me.", strftime('%s', '2020-04-05 01:59:02'), 'lucascs');
INSERT INTO Message values(NULL, "Elementar my dear Watson", strftime('%s', '2010-04-05 19:55:58'), 'sholmes');


INSERT INTO MessageReceiver values(1, 'jfred24');
INSERT INTO MessageReceiver values(2, 'lucascs');
INSERT INTO MessageReceiver values(3, 'jfred24');
INSERT INTO MessageReceiver values(4, 'lucascs');
INSERT INTO MessageReceiver values(5, 'zeppf');
INSERT INTO MessageReceiver values(6, 'melmel');
INSERT INTO MessageReceiver values(7, 'lucascs');
INSERT INTO MessageReceiver values(8, 'inesinhaowo');
INSERT INTO MessageReceiver values(9, 'watson');


INSERT INTO Achievements values(NULL, "Good Goose", "Honk if you are happy" , 1);
INSERT INTO Achievements values(NULL, "Bad Goose", "Honk if you don't like ducks" , 1);
INSERT INTO Achievements values(NULL, "Cuplead", "Take damage one thousand times" , 2);
INSERT INTO Achievements values(NULL, "I saw that LCOMing", "Predict the trajectory of a bullet and destroy it with a bullet of your own." , 3);
INSERT INTO Achievements values(NULL, "Richard MiNixon", "Cheat and lose" , 3);
INSERT INTO Achievements values(NULL, "Take out my fire baby!", "Get a girlfriend or boyfriend and play this game with her/him." , 4); 
INSERT INTO Achievements values(NULL, "The good type of bug", "Beat the game without taking damage" , 5);
INSERT INTO Achievements values(NULL, "The Dark Souls of Dark Souls", "Beat the final boss" , 14);


INSERT INTO ReleaseOS values(1, 'Windows');
INSERT INTO ReleaseOS values(1, 'MacOS');
INSERT INTO ReleaseOS values(2, 'Linux');
INSERT INTO ReleaseOS values(2, 'MacOS');
INSERT INTO ReleaseOS values(3, 'MS-DOS');
INSERT INTO ReleaseOS values(4, 'Linux');
INSERT INTO ReleaseOS values(4, 'Windows');
INSERT INTO ReleaseOS values(5, 'Windows');


INSERT INTO Purchase values('lucascs', 3, 109.99, strftime('%s', '2021-01-04'), 1);
INSERT INTO Purchase values('lucascs', 6, 9.99, strftime('%s', '2021-01-04'), 1);
INSERT INTO Purchase values('zeppf', 4, 0.99, strftime('%s', '2021-01-05'), 2);
INSERT INTO Purchase values('melmel', 3, 109.99, strftime('%s', '2021-01-04'), 2);
INSERT INTO Purchase values('jfred24', 14, 39.99, strftime('%s', '2017-05-26'), 3);
INSERT INTO Purchase values('souto', 4, 99.99, strftime('%s', '2020-01-03'), 8);
INSERT INTO Purchase values('souto', 3, 109.99, strftime('%s', '2020-01-03'), 8);


INSERT INTO UserAchievements values('lucascs', 4);
INSERT INTO UserAchievements values('lucascs', 5);
INSERT INTO UserAchievements values('zeppf', 6);
INSERT INTO UserAchievements values('jfred24', 8);
INSERT INTO UserAchievements values('souto', 5);


INSERT INTO Review values('lucascs', 3, 5, "Best Game I ever seen. A piece of art I could never even dream to replicate");
INSERT INTO Review values('jfred24', 14, 3, "A good game but too ez pz for my taste");
INSERT INTO Review values('melmel', 3, 5, "Only a handsome genius would produce a masterpiece of this magnitude");
INSERT INTO Review values('souto', 4, 5, "Oh man this use of the RTC, where would this guy get such an idea...");
INSERT INTO Review values('zeppf', 4, 4, "It's just amazing, fire and water coming together as a team.");
INSERT INTO Review values('souto', 3, 3, "It's subpar, but playable nonetheless. I think I've seen this RTC somewhere else...");


INSERT INTO Promotion values(NULL, 50, strftime('%s', '2018-02-27'), strftime('%s', '2018-03-15'));
INSERT INTO Promotion values(NULL, 99, strftime('%s', '2021-01-04'), strftime('%s', '2021-01-31'));
INSERT INTO Promotion values(NULL, 80, strftime('%s', '2020-06-14'), strftime('%s', '2020-07-20'));
INSERT INTO Promotion values(NULL, 10, strftime('%s', '2019-12-04'), strftime('%s', '2020-01-05'));
INSERT INTO Promotion values(NULL, 50, strftime('%s', '2021-03-01'), strftime('%s', '2021-06-29'));
INSERT INTO Promotion values(NULL, 25, strftime('%s', '2020-09-20'), strftime('%s', '2020-09-28'));
INSERT INTO Promotion values(NULL, 50, strftime('%s', '2019-05-03'), strftime('%s', '2019-06-14'));
INSERT INTO Promotion values(NULL, 25, strftime('%s', '2021-05-01'), strftime('%s', '2021-07-15'));


INSERT INTO GameDeveloper values(14, 'fromsoftware');
INSERT INTO GameDeveloper values(3, 'pythonickoala');
INSERT INTO GameDeveloper values(3, 'fromsoftware');
INSERT INTO GameDeveloper values(15, 'tobyFox');
INSERT INTO GameDeveloper values(16, 'rockstar');
INSERT INTO GameDeveloper values(17, 'ubisoft');
INSERT INTO GameDeveloper values(2, 'pythonickoala');
INSERT INTO GameDeveloper values(4, 'rockstar');
INSERT INTO GameDeveloper values(5, 'pythonickoala');
INSERT INTO GameDeveloper values(6, 'pythonickoala');
INSERT INTO GameDeveloper values(7, 'ubisoft');
INSERT INTO GameDeveloper values(8, 'pythonickoala');
INSERT INTO GameDeveloper values(9, 'nintendo');
INSERT INTO GameDeveloper values(10, 'pythonickoala');
INSERT INTO GameDeveloper values(11, 'pythonickoala');
INSERT INTO GameDeveloper values(12, 'pythonickoala');
INSERT INTO GameDeveloper values(13, 'fromsoftware');


INSERT INTO GamePublisher values(3, 'feupgames');
INSERT INTO GamePublisher values(4, 'feupgames');
INSERT INTO GamePublisher values (1, 'ubisoft');
INSERT INTO GamePublisher values (2, 'ea');
INSERT INTO GamePublisher values (8, 'ubisoft');
INSERT INTO GamePublisher values (9, 'nintendo');
INSERT INTO GamePublisher values (5, 'ubisoft');
INSERT INTO GamePublisher values (6, 'ubisoft');
INSERT INTO GamePublisher values (7, 'feupgames');
INSERT INTO GamePublisher values (10, 'ubisoft');
INSERT INTO GamePublisher values (11, 'ubisoft');
INSERT INTO GamePublisher values (12, 'ea');
INSERT INTO GamePublisher values (13, 'ubisoft');
INSERT INTO GamePublisher values (14, 'feupgames');
INSERT INTO GamePublisher values (15, 'ubisoft');
INSERT INTO GamePublisher values (16, 'rockstar');
INSERT INTO GamePublisher values (17, 'ubisoft');


INSERT INTO GameTag values(2, 'Action');
INSERT INTO GameTag values(2, 'Platform');
INSERT INTO GameTag values(2, 'Singleplayer');
INSERT INTO GameTag values(2, 'Co-op');
INSERT INTO GameTag values(14, 'RPG');
INSERT INTO GameTag values(14, 'Adventure');
INSERT INTO GameTag values(14, 'Singleplayer');
INSERT INTO GameTag values(14, 'Multiplayer');
INSERT INTO GameTag values(14, 'Co-op');
INSERT INTO GameTag values(15, 'Indie');
INSERT INTO GameTag values(15, 'Singleplayer');
INSERT INTO GameTag values(15, 'Adventure');
INSERT INTO GameTag values(15, 'RPG');
INSERT INTO GameTag values(16, 'Singleplayer');
INSERT INTO GameTag values(16, 'Multiplayer');
INSERT INTO GameTag values(16, 'Open World');
INSERT INTO GameTag values(12, 'Singleplayer');
INSERT INTO GameTag values(12, 'FPS');
INSERT INTO GameTag values(12, 'Atmospheric');
INSERT INTO GameTag values(5, 'Singleplayer');
INSERT INTO GameTag values(5, 'Platform');
INSERT INTO GameTag values(5, 'Atmospheric');
INSERT INTO GameTag values(5, 'Adventure');


INSERT INTO GamePromotion values(14, 1);
INSERT INTO GamePromotion values(12, 1); 
INSERT INTO GamePromotion values(4, 2);
INSERT INTO GamePromotion values(10, 3);
INSERT INTO GamePromotion values(12, 4);
INSERT INTO GamePromotion values(9, 5);
INSERT INTO GamePromotion values(10, 5);
INSERT INTO GamePromotion values(11, 5);
INSERT INTO GamePromotion values(4, 5);
INSERT INTO GamePromotion values(4, 8);
INSERT INTO GamePromotion values(5, 8);
INSERT INTO GamePromotion values(6, 8);
INSERT INTO GamePromotion values(8, 6);
INSERT INTO GamePromotion values(2, 7);
