create database ecommerce;
use ecommerce;
create table customers(
id int primary key,
name varchar(100),
age int,
city varchar(100));
create table orders(
order_id int primary key,
customer_id int ,
product varchar(100),
amount int,
order_date date);
insert into customers values
(1,"siddhardh",21,"rambilli"),
(2,"varma",45,"vizag"),
(3,"karthik",26,"chennai"),
(4,"radhika",44,"hyd");
insert into orders values
(101,1,"laptop",50000,"2024-02-10"),
(102,2,"phone",40000,"2025-05-11"),
(103,3,"mouse",500,"2025-04-04"),
(104,4,"keyboard",200,"2024-12-02");
select * from orders;
select * from orders where customer_id = 4;
select * from orders order by amount desc;
select customer_id,sum(amount) from orders group by customer_id;
CREATE VIEW sales_report AS
SELECT customers.name, orders.product, orders.amount
FROM customers
JOIN orders
ON customers.id = orders.customer_id;
SELECT * FROM sales_report;
CREATE INDEX idx_customer
ON orders(customer_id);
show index from orders;