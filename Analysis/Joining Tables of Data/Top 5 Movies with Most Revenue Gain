/* Top 5 Movies with Most Revenue Gain */

SELECT A.title AS "Top 5 Movies", SUM(D.amount) AS "Revenue Gain"
FROM film A
LEFT JOIN inventory B ON A.film_id = B.film_id
LEFT JOIN rental C ON B.inventory_id = C.inventory_id
LEFT JOIN payment D ON C.rental_id = D.rental_id
WHERE D.amount IS NOT NULL
GROUP BY A.title
ORDER BY SUM(D.amount) DESC
LIMIT 5

/* For Top 5 Movies with Least Revenue Gain use ORDER BY SUM(D.amount) ASC */
