
SELECT ROUND(AVG(sum_sunday_revenue),2) AS avg_sunday_revenue
FROM(
SELECT SUM(amount) AS sum_sunday_revenue
FROM payment
WHERE DAYOFWEEK(payment_date) = 1
GROUP BY DATE(payment_date)) a
