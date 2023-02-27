
SELECT 
SUM(CASE 													-- case statement will execute the matched condition and gives 1 else 0
		WHEN replacement_cost BETWEEN 9.99 AND 19.99 		-- According to that SUM calculates the number of records gives one 
		THEN 1 
		ELSE 0 
	END) AS "low_replacement_cost",
SUM(CASE 
		WHEN replacement_cost BETWEEN 20.00 AND 24.99 
        THEN 1 
        ELSE 0 
	END) AS "Medium_replacement_cost",
SUM(CASE 
		WHEN replacement_cost BETWEEN 25.00 AND 29.99 
        THEN 1 
        ELSE 0 
	END) AS "Highreplacement_cost"
from film