-- Group the orders by date and calculate the average number of pizzas ordered per day.



select order_date as date, count(quantity) as quantity
from orders join orders_details
on orders.order_id = orders_details.order_id
group by order_date;

select round(avg( quantity),0) from 
(select order_date as date, count(quantity) as quantity
from orders join orders_details
on orders.order_id = orders_details.order_id
group by order_date) as ordered;