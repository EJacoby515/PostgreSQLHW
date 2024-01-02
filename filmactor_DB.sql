-- Inner Join on the Actor and  Film table
select actor.actor_id, first_name, last_name, film_id
from film_actor
inner join actor 
on actor.actor_id = film_actor.actor_id

-- left join on actor and film_actor  table

select actor.actor_id, first_name, last_name, film_id
from film_actor
left join actor
on actor.actor_id = film_actor.actor_id
where first_name is null and last_name is null;

-- Join that will produce info about a customer from  the country  of Angola
select customer.first_name,  customer.last_name, customer.email, country
from customer
full join address
on customer.address_id = address.address_id 
full join city 
on address.city_id = city.city_id
full join country
on city.country_id = country.country_id 
where country = 'Angola';


--Subqueries

--Two queries split apart

-- find a customer ID that has an amount greater than  175 in total payments
select customer_id
from payment
group by customer_id 
having sum(amount) > 175
order by sum(amount)  desc;

select store_id, first_name, last_name
from customer
where customer_id in (
	select customer_id 
	from payment
	group by customer_id 
	having sum(amount) > 175
	order by sum(amount) desc
)

-- Basic Subquery

select *
from customer
where customer_id in (
	select customer_id 
	from payment
	group by customer_id 
	having sum(amount) > 175
	order by sum(amount) desc 
	);


-- Another basic subquery where all films are in ENglish

select *
from film
where language_id in(
	select language_id 
	from language
	where name = 'English'
)




















