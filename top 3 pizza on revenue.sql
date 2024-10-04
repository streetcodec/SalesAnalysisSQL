-- top 3 most ordered pizza types based on revenue.

select name, sum(quantity*price)
from pizza_types join pizzas 
on pizza_types.pizza_type_id = pizzas.pizza_type_id 
join
orders_details
on orders_details.pizza_id = pizzas.pizza_id
group by name order by sum(quantity*price) desc limit 3;