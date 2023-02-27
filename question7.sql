

SELECT district, ROUND(AVG(amount),2) as "Average_amount_spent"
FROM customer c, payment p, address a
WHERE c.customer_id = p.customer_id AND
c.address_id = a.address_id
GROUP BY district

