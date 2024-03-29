/* Summarizing Data */

/* Analysis in Film Table data */

SELECT MODE() WITHIN GROUP (ORDER BY title) AS "Most Used Film",
        MODE() WITHIN GROUP (ORDER BY description) AS "Most Used Description",
        MODE() WITHIN GROUP (ORDER BY release_year) AS "Most Used Release Year",
        MODE() WITHIN GROUP (ORDER BY rating) AS "Most Used Rating",
        MODE() WITHIN GROUP (ORDER BY last_update) AS "Most Recently Updated",
        MODE() WITHIN GROUP (ORDER BY special_features) AS "Most Used Special Features",
        MODE() WITHIN GROUP (ORDER BY fulltext) AS "Most Used Full Text",
        MIN(rental_duration) AS "Minimum Rental Duration",
        MAX(rental_duration) AS "Maximum Rental Duration",
        AVG(rental_duration) AS "Average Rental Duration",
        MIN(rental_rate) AS "Minimum Rental Rate",
        MAX(rental_rate) AS "Maximum Rental Rate",
        AVG(rental_rate) AS "Average Rental Rate",
        MIN(length) AS "Minimum Film Length",
        MAX(length) AS "Maximum Film Length",
        AVG(length) AS "Average Film Length",
        MIN(replacement_cost) AS "Minimum Replacement Cost",
        MAX(replacement_cost) AS "Maximum Replacement Cost",
        AVG(replacement_cost) AS "Average Replacement Cost"
FROM film;
