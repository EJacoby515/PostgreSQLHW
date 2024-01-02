--Make actual data for customer table
insert into customer(
	customer_id,
	first_name,
	last_name,
	address,
	billing_info
)  values (
	1,
	'Joel',
	'Carter',
	'555 Circle Dr Chicago, IL 60614',
	'4242-2424-4242-2424 555 01/20'
);

--Insert data into brand
insert into brand ( 
	seller_id,
	brand_name,
	contact_number,
	address
) values (
	1,
	'Coding Temple LLC',
	'773-555-4490',
	'222 W Ontario St Chicago IL'
);

--Insert statment for inventory data
insert into inventory (
	upc,
	product_amount
) values (
	1,
	20.00
);

--Product data creation
insert into product(
	item_id,
	amount,
	prod_name,
	seller_id,
	upc
) values (
	1,
	20.00,
	'Python 101',
	1,
	1
);


--Order data
insert into order_(
	order_id,
	sub_total,
	total_cost,
	upc
) values (
	1,
	40.00,
	43.50,
	1
);

--Cart data

insert into cart(
	cart_id,
	customer_id,
	order_id
) values (
	1,
	1,
	1
)



select * from order_


































