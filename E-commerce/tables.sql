-- CUSTOMERS
CREATE TABLE customers( cust_id SERIAL PRIMARY KEY, cust_name VARCHAR(20), email VARCHAR(50), phone VARCHAR(20), reg_date DATE );
-- ADDRESSES
CREATE TABLE addresses( add_id INT PRIMARY KEY, cust_id INT, city VARCHAR(50), FOREIGN KEY (cust_id) REFERENCES customers(cust_id) );
-- CATEGORIES
CREATE TABLE categories( category_id INT PRIMARY KEY, category_name VARCHAR(100) NOT NULL, parent_category_id INT, FOREIGN KEY(parent_category_id) REFERENCES categories(category_id) );
-- SUPPLIERS
CREATE TABLE suppliers( supp_id INT PRIMARY KEY, supp_name VARCHAR(20), email VARCHAR(50), phone VARCHAR(20) );
-- PRODUCTS 
CREATE TABLE products( pd_id INT PRIMARY KEY, pd_name VARCHAR(30), des_price INT, stock_q INT, category_id INT, supp_id INT, FOREIGN KEY(category_id) REFERENCES categories(category_id), FOREIGN KEY(supp_id) REFERENCES suppliers(supp_id) );
-- ORDERS
CREATE TABLE orders( od_id INT PRIMARY KEY, cust_id INT, od_date DATE, od_status VARCHAR(20), t_amount INT, FOREIGN KEY(cust_id) REFERENCES customers(cust_id) );
-- ORDER ITEMS
CREATE TABLE order_items( od_item_id INT PRIMARY KEY, od_id INT, pd_id INT, q_unit_price INT, FOREIGN KEY(od_id) REFERENCES orders(od_id), FOREIGN KEY(pd_id) REFERENCES products(pd_id) );
-- PAYMENTS 
CREATE TABLE payments( p_id INT PRIMARY KEY, od_id INT, p_date DATE, p_method VARCHAR(20), p_status VARCHAR(20), amount INT, FOREIGN KEY(od_id) REFERENCES orders(od_id) );
-- SHIPMENTS
CREATE TABLE shipments( s_id INT PRIMARY KEY, od_id INT, s_date DATE, d_date DATE, shipment_status VARCHAR(20), FOREIGN KEY(od_id) REFERENCES orders(od_id) );
-- REVIEWS 
CREATE TABLE reviews( r_id INT PRIMARY KEY, cust_id INT, pd_id INT, rating_review VARCHAR(20), FOREIGN KEY(cust_id) REFERENCES customers(cust_id), FOREIGN KEY(pd_id) REFERENCES products(pd_id) );
-- WISHLIST
CREATE TABLE wishlist( w_id INT PRIMARY KEY, cust_id INT, pd_id INT, FOREIGN KEY(cust_id) REFERENCES customers(cust_id), FOREIGN KEY(pd_id) REFERENCES products(pd_id) );
-- CART 
CREATE TABLE cart( cart_id INT PRIMARY KEY, cust_id INT, FOREIGN KEY(cust_id) REFERENCES customers(cust_id) );
-- CART ITEMS
CREATE TABLE cart_items( c_item_id INT PRIMARY KEY, cart_id INT, pd_id INT, quantity VARCHAR(20), FOREIGN KEY(cart_id) REFERENCES cart(cart_id), FOREIGN KEY(pd_id) REFERENCES products(pd_id) );
-- EMPLOYEES 
CREATE TABLE employees( employee_id INT PRIMARY KEY, employee_name VARCHAR(100), manager_id INT, salary NUMERIC(10,2), designation VARCHAR(50), FOREIGN KEY(manager_id) REFERENCES employees(employee_id) );
