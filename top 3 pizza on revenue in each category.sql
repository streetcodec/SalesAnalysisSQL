-- top 3 most ordered pizza types based on revenue for each pizza category.


select category, name, revenue, rank_
from
(select category, name, revenue, rank() over( partition by category order by revenue desc) as rank_
from
(select category,  name, sum(quantity * price) as revenue
from orders_details join pizzas
on orders_details.pizza_id = pizzas.pizza_id
join pizza_types
on pizza_types.pizza_type_id = pizzas.pizza_type_id
group by category, name) as a)as b
where rank_ <  4
;

