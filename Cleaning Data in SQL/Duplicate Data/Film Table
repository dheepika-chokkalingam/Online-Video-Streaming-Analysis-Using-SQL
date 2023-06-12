/* Checking for Duplicate Data in Film Table data */

SELECT title,
		release_year,
		language_id,
		rental_duration,
		rental_rate,
		length,
		replacement_cost,
		rating,
		COUNT(*)
FROM film
GROUP BY title,
		release_year,
		language_id,
		rental_duration,
		rental_rate,
		length,
		replacement_cost,
		rating
HAVING COUNT(*) >1;
