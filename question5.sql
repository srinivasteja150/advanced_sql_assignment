
SELECT staff_id, ROUND(AVG(sum_amount), 2) as sales_amount
FROM (
SELECT DISTINCT staff_id, customer_id, 
SUM(amount) OVER(PARTITION BY staff_id,customer_id) AS sum_amount 
FROM payment 
)a
GROUP BY staff_id