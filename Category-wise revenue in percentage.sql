-- Calculate the percentage contribution of each pizza type to total revenue



SELECT 
    pizza_types.category,
    round(((SUM(quantity * price) / (SELECT SUM(orders_details.quantity * pizzas.price) AS sales
                                      FROM
                                           orders_details
                                       JOIN
										   pizzas ON pizzas.pizza_id = orders_details.pizza_id)) * 100),0) AS revenue_in_percentage
FROM
    orders_details
        JOIN
    pizzas ON orders_details.pizza_id = pizzas.pizza_id
        JOIN
    pizza_types ON pizza_types.pizza_type_id = pizzas.pizza_type_id
GROUP BY category;