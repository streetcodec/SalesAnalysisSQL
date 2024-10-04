-- total quantity of each pizza category ordered.

SELECT 
    category, SUM(quantity)
FROM
    orders_details
        JOIN
    pizzas ON orders_details.pizza_id = pizzas.pizza_id
        JOIN
    pizza_types ON pizza_types.pizza_type_id = pizzas.pizza_type_id
GROUP BY category
ORDER BY SUM(quantity) DESC;