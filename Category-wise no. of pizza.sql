-- category-wise distribution of pizzas

select category, count(name)
from pizza_types group by category;

