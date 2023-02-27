
SELECT concat(co.country,', ', c.city) as "Country, city", 
sum(amount) as "revenue"
FROM (									
	SELECT a.address_id, city_id, amount
    FROM payment p, customer c, address a
    WHERE p.customer_id = c.customer_id
    AND c.address_id = a.address_id
) a, city c, country co
WHERE a.city_id = c.city_id AND
c.country_id = co.country_id
GROUP BY co.country, c.city
ORDER BY revenue DESC
