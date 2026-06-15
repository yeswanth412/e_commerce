-- find customers who never placed orders --
select c.customer_id,
       c.customer_name
from customers c
left join orders o
on c.customer_id = o.customer_id
where o.order_id is null;

-- find products never ordered --
select p.product_id,
       p.product_name,
       p.price,
       p.stock_quantity
from products p
left join order_items oi
on p.product_id = oi.product_id
where oi.product_id is null;

-- find products with no reviews--
select p.product_id,
       p.product_name,
       p.price
from products p
left join reviews r
on p.product_id = r.product_id
where r.product_id is null;

-- find customers without addresses--
select c.customer_id,
       c.customer_name,
       c.email
from customers c
left join address a
on c.customer_id = a.customer_id
where a.customer_id is null;

-- find orders without payments--
select o.order_id,
       o.order_date,
       o.total_amount
from orders o
left join payments p
on o.order_id = p.order_id
where p.order_id is null;
