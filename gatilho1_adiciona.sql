PRAGMA foreign_keys=ON;

DROP TRIGGER IF EXISTS validReview;
CREATE TRIGGER validReview
BEFORE INSERT ON Review
WHEN NOT EXISTS (
    SELECT * 
    FROM Purchase
    WHERE user=NEW.user
    AND game=NEW.game
)
BEGIN
    SELECT RAISE(ABORT, "A user's review must be of a game in its game library");
END;
