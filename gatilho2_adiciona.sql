DROP TRIGGER IF EXISTS updateBalance;
CREATE TRIGGER updateBalance
AFTER INSERT ON Purchase
FOR EACH ROW
BEGIN
    UPDATE Purchase
    SET price = 
    CASE
        WHEN NEW.price IS NULL
        THEN
            (SELECT price FROM Game WHERE id=NEW.game)
        ELSE
            NEW.price
    END
    WHERE user=NEW.user AND game=NEW.Game;
    
    UPDATE User
    SET balance =
    CASE
        WHEN NOT EXISTS (
        SELECT username, balance FROM User
        WHERE user.username = NEW.user AND user.balance >= NEW.price
        )
        THEN
        RAISE(ABORT, "Not enough balance to buy the game!")
        ELSE
        balance - NEW.price
    END
    WHERE username=NEW.user;
END;
