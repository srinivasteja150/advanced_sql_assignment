
CREATE MATERIALIZED VIEW payment_amount_view AS		-- Creating the materilised view named payment_amount_view
SELECT *
FROM payment
WHERE amount BETWEEN 5 AND 8;						

REFRESH MATERIALIZED VIEW payment_amount_view;		-- Code to refresh the materialised view
