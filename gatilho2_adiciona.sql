PRAGMA foreign_keys=ON;

DROP TRIGGER IF EXISTS validFriends;
CREATE TRIGGER validFriends
BEFORE INSERT ON Friends
WHEN NEW.user1=NEW.user2
OR EXISTS (
    SELECT * 
    FROM Friends
    WHERE user1=NEW.user2
    AND user2=NEW.user1
)
BEGIN
    SELECT RAISE(ABORT, "Invalid pair of Friends");
END;
