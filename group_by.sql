-- find number of products category_wise--
select category_id,
       count(*)
from products
group by category_id;

-- find total sales category_wise--
select c.category_name,
       sum(oi.quantity * oi.unit_price) as total_sales
from order_items oi
join products p
on oi.product_id = p.product_id
join categories c
on p.category_id = c.category_id
group by c.category_name;

--find total revenue supplier_wise--
select p.supplier_id,
       sum(oi.quantity * oi.unit_price) as total_revenue
from products p
join order_items oi
on p.product_id = oi.product_id
group by p.supplier_id;

-- find customer count city_wise--
select city,
       count(customer_id) as customer_count
from address
group by city;

-- find order count status_wise--
select order_status,
       count(order_id) as order_count
from orders
group by order_status;

--find average rating product_wise--
select product_id,
       avg(rating) as average_rating
from reviews
group by product_id;

-- find total products supplier_wise--
select supplier_id,
       count(product_id) as total_products
from products
group by supplier_id;

-- find shipment count status_wise--
select shipment_status,
       count(shipment_id) as shipment_count
from shipments
group by shipment_status;

-- find total payments method_wise--
select payment_method,
       sum(amount) as total_payment
from payments
group by payment_method;

-- find montly sales report --
select extract(year from order_date) as year,
       extract(month from order_date) as month,
       sum(total_amount) as monthly_sales
from orders
group by extract(year from order_date),
         extract(month from order_date)
order by year, month;
