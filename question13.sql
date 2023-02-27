
SELECT staff_id, customer_id, 
SUM(amount) AS sales_amount,
GROUPING(staff_id) AS "staff_id_is_null",				-- has value 1 if staff_id is null 
GROUPING(customer_id) AS "Customer_id_is_null"			-- has value 1 if cutomer_id is null
FROM payment											-- we used to grouping function to indicate the null values in result table 
GROUP BY staff_id, customer_id WITH ROLLUP				-- bacuase of rollup, so when grouping(staff_id) is 0 and  
														-- grouping(customer_id) is 1, then that null value is beacause of rollup