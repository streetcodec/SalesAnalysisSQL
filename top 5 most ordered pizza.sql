-- top 5 most ordered pizza types along with their quantities.

SELECT 
    name, COUNT(quantity)
FROM
    pizzas
        JOIN
    orders_details ON pizzas.pizza_id = orders_details.pizza_id
        JOIN
    pizza_types ON pizza_types.pizza_type_id = pizzas.pizza_type_id
GROUP BY name
ORDER BY COUNT(quantity) DESC
LIMIT 5;