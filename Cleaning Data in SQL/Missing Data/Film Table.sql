/* Checking for missing data in Film Table */

SELECT *
FROM film
WHERE rating IS NULL;
