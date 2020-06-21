# 3. Revenue by movie category, rental

SELECT 
    c.category_id, c.name, COUNT(p.rental_id) as rentals, SUM(p.amount) as tot_amt
FROM
    category c
        INNER JOIN
    film_category f ON c.category_id = f.category_id
        INNER JOIN
    inventory i ON f.film_id = i.film_id
        INNER JOIN
    rental r ON i.inventory_id = r.inventory_id
        INNER JOIN
    payment p ON r.rental_id = p.rental_id
GROUP BY c.category_id , c.name
ORDER BY c.category_id , c.name;
    
    

   














