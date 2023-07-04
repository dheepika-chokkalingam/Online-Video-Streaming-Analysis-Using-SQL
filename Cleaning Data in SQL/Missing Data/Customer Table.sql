/* Checking for missing data in Customer Table */

SELECT *
FROM customer
WHERE email IS NULL;
