-- find all products and corresponding reviews--
select p.product_name,
       p.description,
       p.price,
       r.rating,
       r.review_text
from products p
full join reviews r
on p.product_id = r.product_id;

-- find all customers and their orders--
select c.customer_name,
       c.email,
       c.phone,
       o.order_id,
       o.order_date,
       o.order_status,
       o.total_amount
from customers c
full join orders o
on c.customer_id = o.customer_id;

-- find all suppliers and products--
select s.supplier_name,
       p.product_name,
       p.price
from suppliers s
full join products p
on s.supplier_id = p.supplier_id;

-- find all categories and products--
select c.category_name,
       p.product_name,
       p.price
from categories c
full join products p
on c.category_id = p.category_id;

-- find all orders and shipments --
select o.order_id,
       o.order_date,
       o.order_status,
       s.shipment_id,
       s.shipment_date,
       s.shipment_status
from orders o
full join shipments s
on o.order_id = s.order_id;
