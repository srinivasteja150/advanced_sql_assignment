
SELECT p.payment_id,p.customer_id, p.staff_id, p.amount,
    LAG(p.amount) OVER (PARTITION BY p.customer_id ORDER BY p.payment_id) AS prev_amount, 		-- gives prev_amount
    LEAD(p.amount) OVER (PARTITION BY p.customer_id ORDER BY p.payment_id) AS next_amount,		-- gives next_amoount
    (p.amount - (
        SELECT AVG(amount) 
        FROM payment 
        WHERE staff_id = p.staff_id
        AND customer_id = p.customer_id
    )) AS ny_sales										-- calculates the net yield sales by that staff_id from the customer_id
FROM payment p
WHERE p.customer_id = '269' AND p.staff_id = '1';