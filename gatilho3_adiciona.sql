DROP TRIGGER IF EXISTS generatePrice;
CREATE TRIGGER generatePrice
BEFORE INSERT ON Purchase
WHEN (NEW.price IS NULL)
BEGIN
  UPDATE Purchase SET price=(
    SELECT price FROM Game WHERE id=NEW.game
  );
END;