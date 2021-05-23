PRAGMA foreign_keys=ON;

DROP TRIGGER IF EXISTS generatePrice;
CREATE TRIGGER generatePrice
AFTER INSERT ON Purchase
BEGIN
    -- check if a price was given, else calculate the game price (taking active promotions into account)
    UPDATE Purchase
    SET price = 
    CASE
        WHEN NEW.price IS NULL -- inserted NULL price, calculate game price
        THEN
            CASE
                WHEN NEW.Game IN ( -- game is in promotion, calculate promotion price
                    SELECT game AS id
                    FROM GamePromotion NATURAL JOIN (
                        SELECT id AS promotion, percentage
                        FROM Promotion
                        WHERE starting_date <= strftime('%s','now') AND finishing_date >= strftime('%s','now')
                    )
                )
                THEN (
                    SELECT (1 - (percentage/100.0))*price
                    FROM Game NATURAL JOIN (
                        SELECT game AS id, MAX(percentage) AS percentage
                        FROM GamePromotion NATURAL JOIN (
                            SELECT id AS promotion, percentage
                            FROM Promotion
                            WHERE starting_date <= strftime('%s','now') AND finishing_date >= strftime('%s','now')
                        )
                        GROUP BY id
                    )
                ) -- game is not in promotion, use base price
                ELSE (
                    SELECT price FROM Game WHERE id=NEW.game
                )
            END
        ELSE -- price was set on insertion, use that price (real users would not be able to do this)
            NEW.price
    END
    WHERE user=NEW.user AND game=NEW.Game;

    -- check if the user has enough balance to buy the game and update the balance
    UPDATE User
    SET balance =
    CASE
        WHEN NOT EXISTS ( -- user doesn't have enough balance
        SELECT username, balance FROM User
        WHERE user.username = NEW.user AND user.balance >= (SELECT price FROM Purchase WHERE user=NEW.user AND game=NEW.Game)
        )
        THEN
        RAISE(ABORT, "Not enough balance to buy the game!")

        ELSE -- user has enough balance, update balance
        balance - (SELECT price FROM Purchase WHERE user=NEW.user AND game=NEW.Game)
    END
    WHERE username=NEW.user;
END;
