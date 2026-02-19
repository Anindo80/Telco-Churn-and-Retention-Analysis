-- This query retrieves the necessary cleaned data to train and test a 
-- logistic regressoin model that will predict the customer churn vs stay behavior

SELECT 
	c.city,
    phone_service,
    multiple_lines,
    internet_service,
    internet_type,
    contract_type,
    ct.`tenure (months)`,
    customer_status
FROM
cities AS c
JOIN services AS s ON c.customer_id = s.customer_id
JOIN contract_tenure AS ct ON c.customer_id = ct.customer_id
JOIN churn_status AS cs ON c.customer_id = cs.customer_id
WHERE customer_status IN ('churned', 'stayed');


