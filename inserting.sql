--- inserting the values into the customers---
INSERT INTO Customers(customer_name,email,phone,registration_date) VALUES
('Rahul Sharma','rahul@gmail.com','9876543210','2026-05-01'),
('Priya Reddy','priya@gmail.com','9876543211','2026-05-03'),
('Amit Kumar','amit@gmail.com','9876543212','2026-05-05'),
('Sneha Patel','sneha@gmail.com','9876543213','2026-05-08'),
('Arjun Rao','arjun@gmail.com','9876543214','2026-05-10'),
('Kiran Das','kiran@gmail.com','9876543215','2026-05-12');

 --- inserting the values into the address---
 INSERT INTO Address(customer_id,adress_type,city,state,pincode) VALUES
(1,'Home','Hyderabad','Telangana',500001),
(2,'Home','Visakhapatnam','Andhra Pradesh',530001),
(3,'Office','Bengaluru','Karnataka',560001),
(4,'Home','Chennai','Tamil Nadu',600001),
(5,'Office','Mumbai','Maharashtra',400001);

--- inserting the values into the categories---
INSERT INTO Categories(category_name,parent_category_id) VALUES
('Electronics',NULL),
('Mobiles',1),
('Laptops',1),
('Fashion',NULL),
('Men Clothing',4),
('Women Clothing',4),
('Home Appliances',NULL),
('Books',NULL);

--- inserting the values into the suppliers ---
INSERT INTO Suppliers(supplier_name,email,phone) VALUES
('TechWorld','techworld@gmail.com',1111111111),
('MobileHub','mobilehub@gmail.com',2222222222),
('FashionMart','fashion@gmail.com',3333333333),
('HomeStore','home@gmail.com',4444444444);

--- inserting the values into the products---
INSERT INTO Products(product_name,description,price,stock_quantity,category_id,supplier_id) VALUES
('iPhone 15','Apple Smartphone',80000,20,2,2),
('Samsung S24','Samsung Smartphone',75000,15,2,2),
('OnePlus 13','OnePlus Smartphone',65000,8,2,2),
('Dell Inspiron','Dell Laptop',60000,12,3,1),
('HP Pavilion','HP Laptop',70000,10,3,1),
('MacBook Air','Apple Laptop',95000,5,3,1),
('Formal Shirt','Men Shirt',1500,50,5,3),
('Blue Jeans','Men Jeans',2000,40,5,3),
('Kurti','Women Wear',1200,30,6,3),
('Washing Machine','LG Washer',30000,7,7,4),
('Refrigerator','Samsung Fridge',50000,6,7,4),
('SQL Basics','Database Book',500,100,8,1),
('Python Guide','Programming Book',700,90,8,1);
--- inserting the values into the orders---
INSERT INTO Orders(customer_id,order_date,order_status,total_amount) VALUES
(1,'2026-05-01','Completed',80000),
(2,'2026-05-03','Completed',75000),
(3,'2026-05-05','Completed',65000),
(4,'2026-05-08','Completed',1500),
(5,'2026-05-10','Completed',95000),
(1,'2026-06-02','Pending',2000);

--- inserting the values into the order_items---
INSERT INTO Order_Items(order_id,product_id,quantity,unit_price) VALUES
(1,1,1,80000),
(2,2,1,75000),
(3,3,1,65000),
(4,7,1,1500),
(5,6,1,95000),
(6,8,1,2000);

---inserting the values into the payments---
INSERT INTO Payments(order_id,payment_date,payment_status,payment_method,amount) VALUES
(1,'2026-05-01','Success','UPI',80000),
(2,'2026-05-03','Success','Credit Card',75000),
(3,'2026-05-05','Success','Net Banking',65000),
(4,'2026-05-08','Success','UPI',1500),
(5,'2026-05-10','Success','Debit Card',95000);

--- inserting the values into the shipments---
INSERT INTO Shipments(order_id,shipment_date,delivery_date,shipment_status) VALUES
(1,'2026-05-02','2026-05-05','Delivered'),
(2,'2026-05-04','2026-05-07','Delivered'),
(3,'2026-05-06','2026-05-09','Delivered'),
(4,'2026-05-09','2026-05-12','Delivered'),
(5,'2026-05-11','2026-05-15','Delivered');

--- inserting the values into the reviews ---
INSERT INTO Reviews(customer_id,product_id,rating,review_text,review_date) VALUES
(1,1,5,'Excellent phone','2026-05-06'),
(2,2,4,'Very good phone','2026-05-08'),
(3,3,4,'Nice performance','2026-05-10'),
(4,7,5,'Good quality shirt','2026-05-12'),
(5,6,5,'Fantastic laptop','2026-05-15');

---inserting the values into the wishlist---

INSERT INTO Wishlist(customer_id,product_id) VALUES
(1,6),
(2,1),
(3,2),
(4,5),
(5,10);

--- inserting the values into the cart ---
INSERT INTO Cart(customer_id,created_date) VALUES
(1,'2026-06-01'),
(2,'2026-06-01'),
(3,'2026-06-02');

--- inserting the values into the cart_items---
INSERT INTO Cart_Items(cart_id,product_id,quantity) VALUES
(1,2,1),
(1,7,2),
(2,4,1),
(3,10,1);

--- inserting the values into the employees---
INSERT INTO Employees(employee_id,employee_name,manager_id,salary,designation) VALUES
(1,'CEO',1,200000,'CEO'),
(2,'Sales Manager',1,100000,'Manager'),
(3,'Inventory Manager',1,95000,'Manager'),
(4,'Sales Executive',2,50000,'Executive'),
(5,'Warehouse Executive',3,45000,'Executive');
