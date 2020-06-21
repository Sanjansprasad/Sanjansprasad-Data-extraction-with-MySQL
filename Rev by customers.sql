#4. Revenue by cusotmers
SELECT 
    c.customer_id,
    c.first_name,
    c.last_name,
    SUM(p.amount) AS rev
FROM
    customer c
        INNER JOIN
    payment p ON c.customer_id = p.customer_id
GROUP BY c.customer_id
ORDER BY rev DESC;