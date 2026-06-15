create table Customers(
    customer_id serial primary key,
    customer_name varchar(50) not null,
    email varchar(100) not null unique,
    phone varchar(100) not null UNIQUE,
    registration_date date not NULL);
create table Address(
    address_id serial primary key,
    customer_id int not null,
    adress_type varchar(100) not null,
    city varchar(50) not null,
    state varchar(50) not null,
    pincode int not null,
    foreign key(customer_id)
    references Customers(customer_id)
    );
create table Categories(
    category_id serial primary key,
    category_name varchar(100) not null,
    parent_category_id int
);
create table Suppliers(
    supplier_id serial primary key,
    supplier_name varchar(100) not null,
    email varchar(100) not null unique,
    phone int not null UNIQUE
);
create table products(
    product_id serial primary key,
    product_name varchar(100) not null,
    description text not null,
    price decimal(10, 2) not null,
    stock_quantity int not null,
    category_id int not null,
    supplier_id int not null,
    foreign key(category_id)
    references Categories(category_id),
    foreign key(supplier_id)
    references Suppliers(supplier_id)
);
create table Orders(
    order_id serial primary key,
    customer_id int not null,
    order_date date not null,
    order_status varchar(50) not null,
    total_amount decimal(10, 2) not null,
    foreign key(customer_id)
    references Customers(customer_id)
);
create table Order_items(
    order_item_id serial primary key,
    order_id int not null,
    product_id int not null,
    quantity int not null,
    unit_price decimal(10, 2) not null,
    foreign key(order_id)
    references Orders(order_id),
    foreign key(product_id)
    references products(product_id)
);
create table Payments(
    payment_id serial primary key,
    order_id int not null,
    payment_date date not null,
    payment_status varchar(100) not null,
    payment_method varchar(50) not null,
    amount decimal(10, 2) not null,
    foreign key(order_id)
    references Orders(order_id) 
);
create table Shipments(
    shipment_id serial primary key,
    order_id int not null,
    shipment_date date not null,
    delivery_date date not null,
    shipment_status varchar(50) not null,
    foreign key(order_id)
    references Orders(order_id)
);
create table Reviews(
    review_id serial primary key,
    customer_id int not null,
    product_id int not null,
    rating int not null,
    review_text text not null,
    review_date date not null,
    foreign key(customer_id)
    references Customers(customer_id),
    foreign key(product_id)
    references products(product_id)
);
create table Wishlist(
    wishlistId serial primary key,
    customer_id int not null,
    product_id int not null,
    foreign key(customer_id)
    references Customers(customer_id),
    foreign key(product_id)
    references products(product_id)
);
create table Cart(
    cart_id serial primary key,
    customer_id int not null,
    created_date date not null,
    foreign key(customer_id)
    references Customers(customer_id)
);
create table Cart_items(
    cart_item_id serial primary key,
    cart_id int not null,
    product_id int not null,
    quantity int not null,
    foreign key(cart_id)
    references Cart(cart_id),
    foreign key(product_id)
    references products(product_id)
);
create table Employees(
    employee_id serial primary key,
    employee_name varchar(100) not null,
    manager_id int not null,
    salary decimal(10, 2) not null,
    designation varchar(50) not null,
    foreign key(manager_id)
    references Employees(employee_id)
);