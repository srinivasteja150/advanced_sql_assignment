

SELECT address_id, address,district
FROM address
WHERE address_id NOT IN 				-- exclude the address_ids in customer table
(SELECT address_id 
	FROM customer)