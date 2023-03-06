

CREATE VIEW payment_between_5_8 AS      -- Creating a view which gives the details of payments between 5 and 8
SELECT *
FROM payment
WHERE amount BETWEEN 5 AND 8;

DELIMITER $$                                -- creating an event which will refresh this particular view after particular time..
CREATE EVENT refresh_payment_between_5_8
ON SCHEDULE EVERY 1 DAY
DO
BEGIN
  CREATE OR REPLACE VIEW payment_between_5_8 AS
  SELECT *
  FROM payment
  WHERE amount BETWEEN 5 AND 8;
END $$
DELIMITER ;


