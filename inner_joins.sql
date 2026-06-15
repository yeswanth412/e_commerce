-- display customers names with order details--
select c.customer_name,o.order_id,o.order_date,o.order_status,o.total_amount
from customers c
inner join orders o
on c.customer_id = o.customer_id;

-- display order details with products--
select o.order_id,
       p.product_name,
       oi.quantity,
       oi.unit_price
from orders o
inner join order_items oi
on o.order_id = oi.order_id
inner join products p
on oi.product_id = p.product_id;

-- display product names with category names --
select p.product_name,
       c.category_name
from products p
inner join categories c
on p.category_id = c.category_id;

-- display product names with supplier names --
select p.product_name,
       s.supplier_name
from products p
inner join suppliers s
on p.supplier_id = s.supplier_id;

-- display reviews with customer names --
select c.customer_name,
r.review_id,
r.rating,
r.review_text
from reviews r
inner join customers c
on r.customer_id = c.customer_id;

-- display paymnet details with customer names --
select p.payment_id,
       p.payment_date,
       p.payment_method,
       p.payment_status,
       p.amount,
       c.customer_name
from Payments p
inner join Orders o
on p.order_id = o.order_id
inner join Customers c
on o.customer_id = c.customer_id;

--display shipment details with order details--
select s.shipment_id,
       s.shipment_date,
       s.delivery_date,
       s.shipment_status,
       o.order_id,
       o.order_date,
       o.order_status,
       o.total_amount
from Shipments s
inner join Orders o
on s.order_id = o.order_id;

-- disply cart items with product names --
select ci.cart_item_id,
       p.product_name,
       ci.quantity
from Cart_Items ci
inner join Products p
on ci.product_id = p.product_id;

-- display wishlist items with product names --
select w.wishlistId,
       p.product_name
from Wishlist w
inner join Products p
on w.product_id = p.product_id;

--display customer address with customer names --
select c.customer_name,
       a.adress_type,
       a.city,
       a.state,
       a.pincode
from Address a
inner join Customers c
on a.customer_id = c.customer_id;
