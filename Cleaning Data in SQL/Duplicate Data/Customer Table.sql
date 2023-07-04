/* Checking for Duplicate Data in Customer Table data */

SELECT customer_id,
		store_id,
		first_name,
		last_name,
		email,
		address_id,
		activebool,
		create_date,
		COUNT(*)
FROM customer
GROUP BY customer_id,
		store_id,
		first_name,
		last_name,
		email,
		address_id,
		activebool,
		create_date
HAVING COUNT(*) >1;
