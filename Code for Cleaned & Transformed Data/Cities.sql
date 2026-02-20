-- This query performs an INNER JOIN between the customer_info and location_info tables 
-- to retrieve each customer's resident city 

SELECT 
	c.customer_id,
	city
FROM customer_info AS c
JOIN location_data AS l
ON c.customer_id = l.customer_id;