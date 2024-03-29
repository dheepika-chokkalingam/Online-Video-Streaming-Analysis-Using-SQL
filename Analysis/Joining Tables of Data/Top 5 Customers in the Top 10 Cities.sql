/* Joining Tables of Data */

/* Top 5 Customers in the Top 10 Cities */

SELECT A.customer_id AS "Customer ID",
        B.first_name AS "Customer First Name",
        B.last_name AS "Customer Last Name",
        E.country AS "Country", 
        D.city AS "City",
        SUM(amount) AS "Total Amount Paid"
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
LIMIT 5
