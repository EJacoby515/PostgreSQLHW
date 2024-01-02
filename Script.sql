-- First  query, we will select all  the  records from the  actor table
select * from actor 

--Query for first_name and last_name in the actor table
select first_name,last_name
from actor;

-- QUery for a first name that equals Nicks using the WHERE clause
select first_name,last_name
from actor
where first_name like 'Nick';

-- Query for all  first name data that starts with a J using LIKE and WHERE clauses and a wildcard
select first_name,actor_id
from actor
where  first_name like 'J%';

--Query for all first name data that starts with K and has 2 letters after the K again using like and where clauses and the underscore
select first_name,actor_id
from actor
where first_name like 'K__';

-- QUery for all fiorst name data thats starts with 'K' and ends with 'TH' 
--WE will use LIKE and WHERE clauses using both wildcard and ethe underscore
select first_name, last_name, actor_id
from actor
where first_name like'K__%th';

--Comparing operators 
-->, <, >= ,  <=, <>

-- explore data with select all query so we  can  change into new  table
select * from payment


-- QUEry for data that shows custoemrs who paid an aount greater  than $2
select customer_id, amount
from  payment
where amount > 2.00;

--Query  for  data that shows  customers who paid an amount less than 7.99
select customer_id, amount
from payment
where amount < 7.99;

--QUery for less than  of equal  to  7.99
select customer_id, amount
from payment
where amount <= 7.99;

--greater  than or  equal  2
select customer_id,amount
from payment
where amount>=2.00

--customer not equal to 0 ordered in decending order
select customer_id, amount
from payment
where amount <> 0.00 
order by amount desc;


-- SQL aggregate functions! SUM, AVG, Count, min, max
-- Query to display the sum of amounts  that paid that are greater than 5.99
select sum(amount)
from payment
where amount > 5.99;


-- QUery to display the average amount paid greater than5.99
select avg(amount)
from payment
where amount > 5.99;



-- Query to display count of amount greater than 5.99
select  count(amount)
from payment
where amount  >  5.99;

--query to display   the count of DISTINCT amounts paid greater than 5.99
select count(distinct amount)
from payment
where amount > 5.99;


--  QUery to  display min amount  greater than 7.99
select  min(amount) as min_num_payments
from payment
where amount > 7.99;

-- Query to displauy max amount greater than 7.99
select max(amount) as max_num_payments
from payment
where amount > 7.99


--Demo of groupby
select amount
from payment
where amount = 7.99;


-- Query to display different amounts grouped together
-- and count the amounts

select amount, count(amount)
from payment
group by amount 
order by amount;


--Query to display customer ids with summed amount for each customer

select customer_id, sum(amount)
from payment
group by customer_id 
order by customer_id desc;




























