select * from customers;
select * from addresses;
select * from  categories;
select * from suppliers;
select * from products;
select * from orders;
select * from order_items;
select * from payments;
select * from shipments;
select * from reviews;
select * from wishlist;
select * from cart;
select * from cart_items;
select * from employees;
--BASIC QUEIRIES WRITNG
--writing the queiries
--display all customers
select * from customers;
--Display all products costing above ₹5000
select * from products
where des_price>5000;
-- Display products with stock less than 10. 
select * from products
where stock_q<10;
--Display all suppliers.
select * from suppliers;
--Display all completed orders.
select * from orders
where od_status='Done';
--Display orders placed this month. 
select * from orders
where od_date between '2025-06-01'and'2025-06-30';
--Display customers registered in the last 30 days. 
SELECT *FROM customers
WHERE reg_date BETWEEN '2025-05-01' AND '2025-05-30';
--Display products sorted by price descending. 
select * from products
order by des_price desc;
--Display all active shipments
SELECT * FROM shipments
WHERE shipment_status IN ('Processing', 'Pending');
--AGGREGATE FUNCTIONS
--Find total customers. 
select count(*) from customers;
--find total products
select count(*) from products; 
--avg product price
select avg(des_price) from products;
--highest price product
select max(des_price) as highest_price from products;
--lowest price product
select min(des_price) from products;
--total revenue generated
SELECT SUM(amount) AS total_revenue
FROM payments;
--total order placed
select count(*) from orders;
--total stock available
select sum(stock_q) from products; 
--avg order value
SELECT AVG(t_amount) AS average_order_value
FROM orders;
--total payment recieved
select sum(amount)from payments;
--GROUP BY FUNCTIONS
-- Find number of products category-wise.
select category_id,count(*) from products
group by category_id;
--Find total sales category-wise. 
SELECT category_id, SUM(des_price) AS total_sales
FROM products
GROUP BY category_id;
--total revenue supplier-wise
SELECT supp_id, SUM(des_price) AS total_revenue
FROM products
GROUP BY supp_id;
--Find customer count city-wise. 
SELECT city,
       COUNT(cust_id) AS total_customers
FROM addresses
GROUP BY city;
--find order count status-wise
SELECT od_status,
       COUNT(*) AS total_orders
FROM orders
GROUP BY od_status;
--find avg rating product-wise
SELECT pd_id,
       AVG(rating_review) AS avg_rating
FROM reviews
GROUP BY pd_id;
--find total products supplier-wise
SELECT supp_id,
       COUNT(*) AS total_products
FROM products
GROUP BY supp_id;
--find shipment count status-wise
SELECT shipment_status,
       COUNT(*) AS total_shipments
FROM shipments
GROUP BY shipment_status;
--find total payments method-wise
SELECT p_method,
       SUM(amount) AS total_amount
FROM payments
GROUP BY p_method;
--Having queries
--Display categories having more than 20 products
SELECT category_id,
       COUNT(*) AS total_products
FROM products
GROUP BY category_id
HAVING COUNT(*) > 20;
--Display suppliers supplying more than 10 products
SELECT supp_id,COUNT(*)
FROM products
GROUP BY supp_id
HAVING COUNT(*) > 10;
--Display customers having more than 5 orders
SELECT cust_id,
       COUNT(*) AS total_orders
FROM orders
GROUP BY cust_id
HAVING COUNT(*) > 5;
--Display products having average rating above 4
SELECT pd_id,
       AVG(rating_review) AS avg_rating
FROM reviews
GROUP BY pd_id
HAVING AVG(rating) > 4;
--Display cities with more than 50 customers
Select city,COUNT(cust_id) AS total_customers
FROM addresses
GROUP BY city
HAVING COUNT(cust_id) > 50;
--joins
--Inner joins
--Display customer names with order details.
select c.cust_id,c.cust_name,o.od_id,o.od_date,o.od_status,o.t_amount from customers c
inner join orders o
on c.cust_id=o.cust_id;
--Display order details with products. 
select o.od_id,o.od_date,p.pd_id,p.pd_name,oi.quantity,oi.unit_price
from orders o 
inner join order_items oi
on o.od_id=oi.od_id
inner join products p
on oi.pd_id =p.pd_id;
