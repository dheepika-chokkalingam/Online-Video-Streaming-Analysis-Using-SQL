/* Joining Tables of Data */

/* Top 10 Cities within the Top 10 countries based on customer count */

SELECT D.country AS "Top 10 Countries", 
        C.city AS "Top 10 Cities",
        COUNT(A.customer_id) AS "Customer Count"
FROM customer A
LEFT JOIN address B ON A.address_id = B.address_id
LEFT JOIN city C ON B.city_id = C.city_id
LEFT JOIN country D ON C.country_id = D.country_id
WHERE country IN ('India', 
                'China', 
                'United States', 
                'Japan', 
                'Mexico', 
                'Brazil', 
                'Russian Federation', 
                'Philippines', 
                'Turkey', 
                'Indonesia')
GROUP BY D.country, C.city
ORDER BY COUNT(A.customer_id) DESC
LIMIT 10
