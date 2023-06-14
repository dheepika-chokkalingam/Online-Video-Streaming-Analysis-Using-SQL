/* Summarizing Data */

/* Analysis in Customer Table data */

SELECT MODE() WITHIN GROUP (ORDER BY first_name) AS "Most Used First Name",
        MODE() WITHIN GROUP (ORDER BY last_name) AS "Most Used Last Name",
        MODE() WITHIN GROUP (ORDER BY email) AS "Most Used Email Address",
        MODE() WITHIN GROUP (ORDER BY create_date) AS "Most Created Date",
        MODE() WITHIN GROUP (ORDER BY last_update) AS "Most Recently Updated"
FROM customer;
