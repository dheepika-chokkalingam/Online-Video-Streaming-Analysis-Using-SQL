/* Performing Subqueries */

/* Number of Top 5 Customers in Each Country */

SELECT D.country, COUNT(DISTINCT A.customer_id) AS all_customer_count, COUNT(DISTINCT top5_customers.customer_id) AS top5_customer_count
FROM customer A
LEFT JOIN address B on A.address_id = B.address_id
LEFT JOIN city C on B.city_id = C.city_id
LEFT JOIN country D on C.country_id = D.country_id
LEFT JOIN (SELECT A.customer_id, E.country, SUM(amount) AS "total"
            FROM payment A
            LEFT JOIN customer B ON A.customer_id = B.customer_id
            LEFT JOIN address C ON B.address_id = C.address_id
            LEFT JOIN city D ON C.city_id = D.city_id
            LEFT JOIN country E ON D.country_id = E.country_id
            WHERE D.city IN ('Aurora',
                            'Acua',
                            'Citrus Heights',
                            'Iwaki',
                            'Ambattur',
                            'Shanwei',
                            'So Leopoldo',
                            'Teboksary',
                            'Tianjin',
                            'Cianjur')
            GROUP BY A.customer_id, B.first_name, B.last_name, E.country, D.city
            ORDER BY SUM(amount) DESC
            LIMIT 5) AS top5_customers ON D.country = top5_customers.country
            GROUP BY D.country
            ORDER BY top5_customer_count DESC
            LIMIT 5;
