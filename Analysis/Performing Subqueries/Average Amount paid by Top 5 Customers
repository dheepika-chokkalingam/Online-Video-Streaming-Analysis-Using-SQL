/* Performing Subqueries */

/* Average Amount Paid by Top 5 Customers */

SELECT AVG(total_amount_paid.total) AS "Average Amount Paid by Top 5 Customers"
FROM (SELECT SUM(amount) AS "total"
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
      LIMIT 5) AS total_amount_paid
