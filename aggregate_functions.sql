--find the total customers--
select count(*) from customers;

-- find the total products--
select count(*) from products;

-- find the average product price --
select avg(price) from products;

-- find highest priced product--
select max(price) from products;

--find lowest priced product--
select min(price) from products;

-- total revenue generated--
select sum(amount) from payments;
-- find total orders placed--
select count(*) from orders;

-- find total stock available--
select sum(stock_quantity) from products;

-- find average order value--
select avg(total_amount) from orders;

-- find total payment recieved --
select sum(amount) from payments;
