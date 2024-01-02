create table customer (
	customer_id SERIAL primary key,
	first_name VARCHAR(100),
	last_name VARCHAR(100),
	email VARCHAR(200),
	address VARCHAR(200),
	city VARCHAR(150),
	customer_state VARCHAR(100),
	zipcode VARCHAR(50)
);
 
--Orders tabke for the presidents
create table order_(
	order_id SERIAL primary key,
	order_date DATE default current_date,
	amount NUMERIC(5,2),
	customer_id INTEGER,
	foreign key(customer_id) references customer(customer_id)
);

insert into customer(
	customer_id,
	first_name,
	last_name,
	email,
	address,
	city,
	customer_state,
	zipcode
) values (
	1,
	'George',
	'Washington',
	'gwash@usa.gov',
	'3200 Mt Vernon Hwy',
	'Mt Vernon',
	'VA',
	'22121'
);

insert into customer(
 	customer_id,
	first_name,
	last_name,
	email,
	address,
	city,
	customer_state,
	zipcode
) values (
		2,
		'John',
		'Adams',
		'jadams@usa.gov',
		'1200 Hancock',
		'Quincy',
		'MA',
		'02169'
	
);
insert into customer(
	customer_id,
	first_name,
	last_name,
	email,
	address,
	city,
	customer_state,
	zipcode
) values (
	3,
	'Thomas',
	'Jefferson',
	'tjeff@usa.gov',
	'931 THomas Jefferson PKWay',
	'Charlottesville',
	'VA',
	'02169'
);


insert into customer(
	customer_id,
	first_name,
	last_name,
	email,
	address,
	city,
	customer_state,
	zipcode
) values (
	4,
	'James',
	'Madison',
	'jmad@usa.gov',
	'11350 Conway',
	'Orange',
	'VA',
	'02169'
);

insert into customer(
	customer_id,
	first_name,
	last_name,
	email,
	address,
	city,
	customer_state,
	zipcode
) values (
	5,
	'James',
	'Monroe',
	'jmonroe@usa.gov',
	'2050 James Monroe PKWay',
	'Chartlottesville',
	'VA',
	'02169'
);


-- INSERT ifo into oders table

insert  into order_(
	order_id,
	amount,
	customer_id
) values (
	1,
	234.56,
	1
);

insert into order_(
	order_id,
	amount,
	customer_id
) values (
	2,
	78.50,
	3
);

insert into order_(
	order_id,
	amount,
	customer_id
) values (
	3,
	124.00,
	2
);

insert into order_(
	order_id,
	amount,
	customer_id
) values (
	4,
	65.50,
	3
);

insert into order_(
	order_id,
	amount,
	customer_id
) values (
	5,
	55.50,
	null
);

-- Inner Join
select first_name, last_name, order_date, amount
from customer
inner join order_
on customer.customer_id = order_.customer_id


--Left Join
select first_name, last_name, order_date, amount
from customer
left join order_
on customer.customer_id = order_.customer_id
where order_date is not null

--Right Join
select first_name, last_name, order_date, amount
from customer
right join order_
on customer.customer_id = order_.customer_id

--Full Join
select first_name, last_name, order_date, amount
from customer
full join order_
on customer.customer_id = order_.customer_id





