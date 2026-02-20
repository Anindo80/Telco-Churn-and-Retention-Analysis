-- This query performs an INNER JOIN between the service_options and payment_info tables
-- to retrieve each customer's contract type and tenure
-- The extracted data is partitioned based on contract type and tenure using the ROW_NUMBER() window function 
-- The entries in each partition will have its own partition_row_number and the row numbers reset for every contract-tenure combination

SELECT
	ROW_NUMBER() OVER(PARTITION BY 	contract, tenure) AS partition_row_number,
	s.customer_id, 
	contract AS contract_type,
	tenure AS 'tenure (months)'
FROM service_options AS s
JOIN payment_info AS p
ON s.customer_id = p.customer_id;



