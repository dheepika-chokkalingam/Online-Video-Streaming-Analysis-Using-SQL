/* Countries of Customers with High Lifetime Value */

SELECT A.country AS "Country", ROUND(SUM(E.amount)) AS "Total Sales"
FROM country A
LEFT JOIN city B ON A.country_id = B.country_id
LEFT JOIN address C ON B.city_id = B.city_id
LEFT JOIN staff D ON C.address_id = D.address_id
LEFT JOIN payment E ON D.staff_id = E.staff_id
GROUP BY A.country
ORDER BY SUM(E.amount) DESC
