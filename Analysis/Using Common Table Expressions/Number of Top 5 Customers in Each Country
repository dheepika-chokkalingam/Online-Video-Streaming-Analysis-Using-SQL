/* Using Common Table Expressions (CTE) */

/* Number of Top 5 Customers in Each Country */

/* CTE for Top 10 Countries */

WITH top10countries_cte (country) AS
	(SELECT E.country
	FROM customer B
	LEFT JOIN address C ON B.address_id = C.address_id
	LEFT JOIN city D ON C.city_id = D.city_id
	LEFT JOIN country E ON D.country_id = E.country_id
	GROUP BY E.country
	ORDER BY COUNT(B.customer_id) DESC
	LIMIT 10),
	
	/* CTE for Top 10 Cities */

	top10cities_cte (city) AS
		(SELECT D.city
		FROM customer B
		LEFT JOIN address C ON B.address_id = C.address_id
		LEFT JOIN city D ON C.city_id = D.city_id
		LEFT JOIN country E ON D.country_id = E.country_id
		WHERE E.country IN (SELECT country FROM top10countries_cte)
		GROUP BY E.country, D.city
		ORDER BY COUNT(B.customer_id) DESC
		LIMIT 10),
		
		/* CTE for Top 5 Customers */
		
		top5customers_cte (customer_id, first_name, last_name, country, city, total) AS
			(SELECT A.customer_id, B.first_name, B.last_name, E.country, D.city, SUM(amount) AS total
			FROM payment A
			LEFT JOIN customer B ON A.customer_id = B.customer_id
			LEFT JOIN address C ON B.address_id = C.address_id
			LEFT JOIN city D ON C.city_id = D.city_id
			LEFT JOIN country E ON D.country_id = E.country_id
			WHERE D.city IN (SELECT city FROM top10cities_cte)
			GROUP BY A.customer_id, B.first_name, B.last_name, E.country, D.city
			ORDER BY SUM(amount) DESC
			LIMIT 5)
			
/* Number of Top 5 Customers in Each Country */

SELECT E.country, COUNT(DISTINCT B.customer_id) AS total_customer_count, COUNT(DISTINCT F.customer_id) AS "Top 5 Customer Count"
FROM customer B
LEFT JOIN address C ON B.address_id = C.address_id
LEFT JOIN city D ON C.city_id = D.city_id
LEFT JOIN country E ON D.country_id = E.country_id
LEFT JOIN top5customers_cte F ON E.country = F.country
GROUP BY E.country
ORDER BY total_customer_count DESC
LIMIT 5;
