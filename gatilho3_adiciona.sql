DROP TRIGGER IF EXISTS generatePrice;
CREATE TRIGGER generatePrice
AFTER INSERT ON Purchase
BEGIN
    UPDATE Purchase
    SET price = 
    CASE
        WHEN NEW.price IS NULL
        THEN
            CASE
                WHEN NEW.Game IN (
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
                )
                ELSE (
                    SELECT price FROM Game WHERE id=NEW.game
                )
            END
        ELSE
            NEW.price
    END
    WHERE user=NEW.user AND game=NEW.Game;

    UPDATE User
    SET balance =
    CASE
        WHEN NOT EXISTS (
        SELECT username, balance FROM User
        WHERE user.username = NEW.user AND user.balance >= (SELECT price FROM Purchase WHERE user=NEW.user AND game=NEW.Game)
        )
        THEN
        RAISE(ABORT, "Not enough balance to buy the game!")

        ELSE
        balance - (SELECT price FROM Purchase WHERE user=NEW.user AND game=NEW.Game)
    END
    WHERE username=NEW.user;
END;
