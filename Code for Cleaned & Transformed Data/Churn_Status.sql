-- This query retrieves customer churn details from the status_analysis table
-- The extracted data is partitioned based on churn status, category, and reason using the ROW_NUMBER() window function 
-- The entries in each partition will have its own partition_row_number and the row numbers reset every partitition

SELECT
	ROW_NUMBER() OVER(PARTITION BY customer_status, churn_category, churn_reason) AS partition_row_number,
	customer_id, 
	customer_status,
   	churn_category,
	churn_reason
FROM status_analysis;