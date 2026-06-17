--inserting customers
INSERT INTO customers (cust_id,cust_name,email,phone,reg_date) VALUES (1,'Abhiram','abhiram@gmail.com','9876543210','2025-01-10'), (2,'Raj','raj@gmail.com','9876543211','2025-02-15'), (3,'Krishna','krishna@gmail.com','9876543212','2025-03-20'), (4,'Rahul','rahul@gmail.com','9876543213','2025-04-10'), (5,'Anil','anil@gmail.com','9876543214','2025-05-15');
--inserting addresses
INSERT INTO addresses VALUES (1,1,'Hyderabad'), (2,2,'Mumbai'), (3,3,'Bangalore'), (4,4,'Chennai'), (5,5,'Delhi');
--inserting categories
INSERT INTO categories (category_id,category_name) VALUES (220,'Mobiles'), (2054,'Laptops'), (4152,'Accessories');
--inserting suppliers
INSERT INTO suppliers VALUES (61,'Dell','dell@gmail.com','9999991111'), (62,'Samsung','samsung@gmail.com','9999992222'), (63,'Apple','apple@gmail.com','9999993333'), (64,'HP','hp@gmail.com','9999994444'), (65,'Boat','boat@gmail.com','9999995555');
--inserting products
INSERT INTO products VALUES (101,'iPhone15',80000,20,220,63), (102,'GalaxyS24',70000,15,220,62), (103,'Dell Laptop',60000,10,2054,61), (104,'HP Laptop',65000,12,2054,64), (105,'Boat Headset',2000,50,4152,65);
--inserting order
INSERT INTO orders VALUES (1,1,'2025-06-01','Done',80000), (2,2,'2025-06-02','Done',70000), (3,3,'2025-06-03','Pending',60000), (4,4,'2025-06-04','Done',65000), (5,5,'2025-06-05','Pending',2000);
--inserting order_items
INSERT INTO order_items VALUES (1,1,101,80000), (2,2,102,70000), (3,3,103,60000), (4,4,104,65000), (5,5,105,2000);
--inserting payments
INSERT INTO payments
(p_id,od_id,p_date,p_method,p_status,amount)
VALUES
(1,1,'2025-06-01','UPI','Paid',80000),
(2,2,'2025-06-02','Card','Paid',70000),
(3,3,'2025-06-03','Cash','Pending',60000),
(4,4,'2025-06-04','UPI','Paid',65000),
(5,5,'2025-06-05','Card','Pending',2000);
--inserting shipments
INSERT INTO shipments VALUES (1,1,'2025-06-02','2025-06-05','Delivered'), (2,2,'2025-06-03','2025-06-06','Delivered'), (3,3,'2025-06-04',NULL,'Processing'), (4,4,'2025-06-05','2025-06-08','Delivered'), (5,5,'2025-06-06',NULL,'Pending');
--inserting reviews
INSERT INTO reviews VALUES (1,1,101,'5 Stars'), (2,2,102,'4 Stars'), (3,3,103,'5 Stars'), (4,4,104,'4 Stars'), (5,5,105,'3 Stars');
--inserting wishlist
INSERT INTO wishlist VALUES (1,1,102), (2,1,105), (3,2,101), (4,3,104), (5,5,105);
--inserting cart
INSERT INTO cart VALUES (1,1), (2,2), (3,3);
--inserting cart_items
INSERT INTO cart_items VALUES (1,1,105,'2'), (2,1,102,'1'), (3,2,101,'1'), (4,3,104,'1');
--inserting employeess
INSERT INTO employees VALUES (1,'Rohan',NULL,100000,'CEO'), (2,'Amit',1,80000,'Manager'), (3,'Priya',1,75000,'Manager'), (4,'Kiran',2,50000,'Developer'), (5,'Sneha',3,45000,'Tester');
