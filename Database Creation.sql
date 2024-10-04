create database dominos;

SELECT 
    *
FROM
    pizzas;

CREATE TABLE orders (
    order_id INT NOT NULL,
    order_date DATE NOT NULL,
    order_time TIME NOT NULL,
    PRIMARY KEY (order_id)
);

SELECT 
    *
FROM
    orders;

CREATE TABLE orders_details (
    details_id INT NOT NULL,
    order_id INT NOT NULL,
    pizza_id TEXT NOT NULL,
    quantity INT NOT NULL,
    PRIMARY KEY (details_id)
);