
SELECT COUNT(*) AS "NumPostalCodes"
FROM address
WHERE postal_code REGEXP '^9[0-9][1-5][0-9]{2}$';		-- regex pattern that matches the postal codes