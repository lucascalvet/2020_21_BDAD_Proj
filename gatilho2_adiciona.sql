DROP TRIGGER IF EXISTS updateBalance;
CREATE TRIGGER updateBalance
AFTER INSERT ON Purchase
FOR EACH ROW
BEGIN
    /* CASE
        WHEN NEW.price IS NULL
        THEN
        UPDATE Purchase SET price=(
            SELECT price FROM Game WHERE id=NEW.game
        )
    END */
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
END; --TODO: adicionar verificação de balance suficiente

/*
DROP TRIGGER IF EXISTS updateBalance;
CREATE TRIGGER updateBalance
AFTER INSERT ON Purchase
BEGIN
UPDATE User
        SET balance = balance - NEW.price
        WHERE username=NEW.user
    END;