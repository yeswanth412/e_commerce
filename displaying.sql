--displaying all customers--
select * from customers;

--- display products costing above 5000--
select *
from products
where price > 5000;

-- display products with stocks less than 10--
select * 
from products
where stock_quantity < 10;

-- display all suppliers--
select *  from suppliers

--display complete orders--
select * 
from orders
where order_status = 'completed';

--display orders placed this month--
select *
from orders
where extract(month from order_date)=extract(month from current_date)
and extract(year from order_date)=extract(year from current_date);

--display products sorted by price descending--
select *
from products
order by price desc;
