select * from payment;

-- stored procedure example

create or replace procedure latefee(
	customer INTEGER,
	lateFEEAmount DECIMAL
)
language plpgsql
as $$
begin 
	--ADD a late fee to customer payment amount
	update payment
	set amount = amount + lateFEEAmount
	where customer_id = customer;

	-- Commit the above statment inside of a transation
	commit;
end;
$$

-- calling a stored procedure
call lateFee(341, 2.00)

--check that the late fee has been posted

select * from payment where customer_id = 341; 

--to delete the procedure:
drop procedure lateFee;


-- stored functions 
-- make a stored function to insert data into actor table

create or replace function add_actor(_actor_id INTEGER, _first_name VARCHAR, _last_name VARCHAR, _last_update TIMESTAMP without TIME zone)
returns void
as $MAIN$
begin 
	insert into actor(actor_id,first_name,last_name,last_update)
	values(_actor_id,_first_name,_last_name,_last_update);
end;
$MAIN$
language plpgsql;


--bad call of functions
-- call add_actor(500, 'kevin','hart', current_timestamp);

--good call of function
select add_actor(500,'Kevin','Hart', NOW()::timestamp);


--verify addition

select * from actor where actor_id = 500;

--delete/drop stored function

drop funtion add_actor;