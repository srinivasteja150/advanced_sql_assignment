

SELECT district, SUM(amount)/count(distinct c.customer_id) as "avg_per_district"
FROM customer c, payment p, address a
WHERE c.customer_id = p.customer_id AND
c.address_id = a.address_id
GROUP BY district


