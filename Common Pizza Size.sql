--  most common pizza size ordered.

SELECT 
    size, COUNT(quantity)
FROM
    pizzas
        JOIN
    orders_details ON pizzas.pizza_id = orders_details.pizza_id
GROUP BY size
ORDER BY COUNT(quantity) DESC
limit 1;