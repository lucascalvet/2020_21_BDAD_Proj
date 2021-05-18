PRAGMA foreign_keys=ON;

.mode columns
.headers on

DROP TABLE IF EXISTS GamePublisher;
DROP TABLE IF EXISTS GameDeveloper;
DROP TABLE IF EXISTS Purchase;
DROP TABLE IF EXISTS Review;
DROP TABLE IF EXISTS UserAchievements;
DROP TABLE IF EXISTS Friends;
DROP TABLE IF EXISTS GameTag;
DROP TABLE IF EXISTS ReleaseOS;
DROP TABLE IF EXISTS GamePromotion;
DROP TABLE IF EXISTS MessageReceiver;
DROP TABLE IF EXISTS Message;
DROP TABLE IF EXISTS User;
DROP TABLE IF EXISTS Publisher;
DROP TABLE IF EXISTS Developer;
DROP TABLE IF EXISTS Achievements;
DROP TABLE IF EXISTS Release;
DROP TABLE IF EXISTS Promotion;
DROP TABLE IF EXISTS Game;
DROP TABLE IF EXISTS Tag;
DROP TABLE IF EXISTS OS;
DROP TABLE IF EXISTS Account;
DROP TABLE IF EXISTS Address;

CREATE TABLE Account(
    username TEXT PRIMARY KEY NOT NULL,
    email TEXT UNIQUE NOT NULL,
    password TEXT NOT NULL
);

CREATE TABLE User(
    username TEXT PRIMARY KEY REFERENCES Account,  
    display_name TEXT,
    balance REAL NOT NULL CHECK(balance >= 0),
    phone_number INTEGER UNIQUE NOT NULL,
    birthday DATE NOT NULL,
    age INTEGER --keep here?
);

CREATE TABLE Publisher(
    username TEXT PRIMARY KEY REFERENCES Account,
    name TEXT UNIQUE NOT NULL,
    website TEXT NOT NULL,
    phone_number INTEGER UNIQUE NOT NULL,
    fiscal_address INTEGER UNIQUE NOT NULL REFERENCES Address
);

CREATE TABLE Developer(
    username TEXT PRIMARY KEY REFERENCES Account,
    name TEXT UNIQUE NOT NULL,
    website TEXT NOT NULL,
    fiscal_address INTEGER UNIQUE NOT NULL REFERENCES Address
);

CREATE TABLE Address(
    id INTEGER PRIMARY KEY,
    country TEXT NOT NULL,
    city TEXT NOT NULL,
    street TEXT NOT NULL,
    number INTEGER NOT NULL CHECK(number > 0),
    postal_code TEXT NOT NULL
);

CREATE TABLE Message(
    id INTEGER PRIMARY KEY,
    text TEXT NOT NULL,
    date DATE NOT NULL CHECK(date > 0),
    sender TEXT NOT NULL REFERENCES User
);

CREATE TABLE Achievements(
    id INTEGER PRIMARY KEY,
    title TEXT NOT NULL,
    description TEXT NOT NULL,
    game INTEGER NOT NULL REFERENCES Game,
    UNIQUE(title, game)
);

CREATE TABLE Game(
    id INTEGER PRIMARY KEY,
    title TEXT NOT NULL,
    description TEXT NOT NULL,
    price REAL NOT NULL CHECK(price >= 0),
    vr_ready INTEGER NOT NULL CHECK(vr_ready==0 OR vr_ready==1),
    age_rating INTEGER NOT NULL CHECK(age_rating>=0),
    publishing_date DATE NOT NULL CHECK(publishing_date > 0)
);

CREATE TABLE Tag(
    name TEXT NOT NULL PRIMARY KEY
);

CREATE TABLE OS(
    name TEXT NOT NULL PRIMARY KEY
);

CREATE TABLE Release(
    id INTEGER PRIMARY KEY,
    version TEXT NOT NULL,
    date DATE NOT NULL CHECK(date > 0),
    size REAL NOT NULL,
    news TEXT,
    game INTEGER NOT NULL REFERENCES Game,
    UNIQUE(version, game)
);

CREATE TABLE ReleaseOS(
    release INTEGER NOT NULL REFERENCES Release, 
    os TEXT NOT NULL REFERENCES OS,
    PRIMARY KEY (release, os)
);

CREATE TABLE Purchase(
    user TEXT NOT NULL REFERENCES User,
    game INTEGER NOT NULL REFERENCES Game,
    price REAL,
    date DATE NOT NULL CHECK (date > 0),
    billing_address INTEGER NOT NULL REFERENCES Address,
    PRIMARY KEY(user, game)
);

CREATE TABLE Review(
    user TEXT NOT NULL REFERENCES User,
    game INTEGER NOT NULL REFERENCES Game,
    score INTEGER NOT NULL CHECK (score >= 1 AND score <= 5),
    opinion TEXT,
    PRIMARY KEY(user, game)
);

CREATE TABLE Promotion(
    id INTEGER PRIMARY KEY,
    percentage REAL NOT NULL CHECK (percentage > 0 AND percentage <= 100),
    starting_date DATE NOT NULL CHECK (starting_date > 0),
    finishing_date DATE NOT NULL CHECK (finishing_date > 0),
    CHECK (finishing_date > starting_date)
);

CREATE TABLE GamePublisher(
    game INTEGER NOT NULL REFERENCES Game,
    publisher TEXT NOT NULL REFERENCES Publisher,
    PRIMARY KEY(game, publisher)
);

CREATE TABLE GameDeveloper(
    game INTEGER NOT NULL REFERENCES Game,
    developer TEXT NOT NULL REFERENCES Developer,
    PRIMARY KEY(game, developer)
);

CREATE TABLE UserAchievements(
    user TEXT NOT NULL REFERENCES User,
    achievement INTEGER NOT NULL REFERENCES Achievements,
    PRIMARY KEY(user, achievement)
);

CREATE TABLE Friends(
    user1 TEXT NOT NULL REFERENCES User,
    user2 TEXT NOT NULL REFERENCES User,
    PRIMARY KEY(user1, user2)
);

CREATE TABLE GameTag(
    game INTEGER NOT NULL REFERENCES Game,
    tag TEXT NOT NULL REFERENCES Tag,
    PRIMARY KEY(game, tag)
);

CREATE TABLE MessageReceiver(
    message INTEGER NOT NULL REFERENCES Message,
    receiver TEXT NOT NULL REFERENCES User,
    PRIMARY KEY(message, receiver)
);

CREATE TABLE GamePromotion (
    game INTEGER NOT NULL REFERENCES Game,
    promotion INTEGER NOT NULL REFERENCES Promotion,
    PRIMARY KEY(game, promotion)
);
