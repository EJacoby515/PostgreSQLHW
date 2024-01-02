-- Primary keys can't be empty or duplicated

create table customer (
	customer_id SERIAL primary key,
	first_name VARCHAR(100),
	last_name VARCHAR(100),
	address VARCHAR(150),
	billing_info VARCHAR(150)
	);


create table brand (
	seller_id SERIAL primary key,
	brand_name VARCHAR(150),
	contact_name VARCHAR(15),
	address VARCHAR(150)
);

--Inventory table
create table inventory (
	upc SERIAL primary key,
	product_amount INTEGER
);

create table order_ (
	order_id SERIAL primary key, 
	order_date DATE default CURRENT_DATE,
	sub_total NUMERIC(8,2),
	total_cost NUMERIC(10,2),
	upc INTEGER not null,
	foreign key(upc) references inventory(upc)
);

create table product (
	item_id SERIAL primary key,
	amount NUMERIC(5,2),
	prod_name VARCHAR(100),
	seller_id INTEGER not  null,
	upc INTEGER not null,
	foreign key(seller_id) references brand(seller_id),
	foreign key(seller_id)  references inventory(upc)
);

create table cart (
	cart_id SERIAL primary key,
	customer_id INTEGER not null,
	order_id INTEGER not  null,
	foreign key (customer_id) references customer(customer_id),
	foreign key(order_id) references order_(order_id)
);















