

SELECT p.payment_id,p.customer_id, p.staff_id, p.amount,
    LAG(p.amount) OVER (ORDER BY p.payment_id) AS prev_payment_amount, 		-- gives prev paymjent id amount
    LEAD(p.amount) OVER ( ORDER BY p.payment_id) AS next_payment_amount,		-- gives next payment id amount
    LAG(p.amount) OVER(PARTITION BY customer_id, staff_id order by payment_id) 
			as py_sales, -- Prev payment done by same customer to staff
    LEAD(p.amount) OVER(PARTITION BY customer_id, staff_id order by payment_id) 
			as ny_sales  -- Next payment done by same customer to staff
FROM payment p
WHERE p.customer_id = '269' AND p.staff_id = '1';

