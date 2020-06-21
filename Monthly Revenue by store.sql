# Monthly revenue by store 

SELECT 
    s.store_id,
    YEAR(p.payment_date) AS payment_year,
    MONTHNAME(p.payment_date) AS payment_month,
    SUM(p.amount) AS rev
FROM
    payment p
        INNER JOIN
    staff r ON p.staff_id = r.staff_id
        INNER JOIN
    store s ON r.store_id = s.store_id
GROUP BY s.store_id , payment_year , payment_month
ORDER BY s.store_id , payment_year , payment_month;