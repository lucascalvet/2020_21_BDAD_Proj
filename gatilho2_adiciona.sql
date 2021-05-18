DROP TRIGGER IF EXISTS updateBalance;
CREATE TRIGGER updateBalance
AFTER INSERT ON Purchase
BEGIN
    SELECT CASE 
        WHEN (NOT EXISTS (
        SELECT username, balance FROM User
        WHERE user.username = NEW.user AND user.balance >= NEW.price
        ))
        THEN
        RAISE(ABORT, "Not enough balance to buy the game!")
        
        ELSE (
        UPDATE User
        SET balance = balance - NEW.price
        WHERE username=NEW.user)
    END;
END; --TODO: adicionar verificação de balance suficiente
