--  highest-priced pizza.

SELECT 
    name, MAX(price)
FROM
    pizzas
        JOIN
    pizza_types ON pizzas.pizza_type_id = pizza_types.pizza_type_id
GROUP BY name
ORDER BY MAX(price) DESC
LIMIT 1;