
SELECT AVG(amount) as avg_sunday_revenue
FROM payment
WHERE DAYOFWEEK(payment_date) = 1;