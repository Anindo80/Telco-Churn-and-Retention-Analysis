-- This query performs an INNER JOIN between the service_options and online_services tables
-- to retrieve customer service details including tenure, offer, phone service type, internet service type 

SELECT 
	s.customer_id,
	tenure AS 'tenure (months)',
	offer,
	o.phone_service,
	multiple_lines,
	o.internet_service, 
	internet_type
FROM service_options AS s
JOIN online_services AS o
ON s.customer_id = o.customer_id;

    
    