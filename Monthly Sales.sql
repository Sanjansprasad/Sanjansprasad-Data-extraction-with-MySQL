
# 1. Monthly rentals by Stores 

SELECT 
    s.store_id,
    YEAR(r.rental_date) AS rental_year,
    monthname(r.rental_date) AS rental_month,
    COUNT(r.rental_id) AS no_of_rentals
FROM
    rental r
        INNER JOIN
    staff p ON r.staff_id = p.staff_id
        INNER JOIN
    store s ON p.store_id = s.store_id
GROUP BY s.store_id , rental_year , rental_month
ORDER BY  s.store_id, rental_year , rental_month ;

