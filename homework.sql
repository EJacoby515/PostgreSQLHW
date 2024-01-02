--Q1
select * from actor
where actor.last_name = 'Wahlberg'

--Q2
select amount
from payment
	where amount is not null 
	and amount > 3.99
	and amount < 5.99
	
	
--Q3
select film_id
from inventory
group by film_id
order by film_id desc 


--Q4
select last_name
from customer
where last_name = 'William'


--Q5
select staff_id, rental_id
from rental
group by staff_id, rental_id  
order by rental_id desc


--Q6
select count(district)
from address

--Q7
select film_id, count(actor_id) as actor_count
from film_actor
group by film_id 
order by actor_count desc


--Q8
select last_name
from customer
inner join store
on customer.store_id = store.store_id
where last_name like '%es';


--Q9
select rental_id, customer_id
from payment
where customer_id between 380 and 430
group by rental_id, customer_id
having count(amount) > 250


--Q10
select count(rating), rating
from film
group by rating 
order by  rating desc














