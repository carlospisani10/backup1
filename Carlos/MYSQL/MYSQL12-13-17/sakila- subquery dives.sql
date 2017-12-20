select first_name, last_name
from actor 
where actor_id in
(
select actor_id
from film_actor
where film_id in
(
select film_id
from film
where title = "Alter Victory"
)
);


select title
from film
where film_id in
(
select film_id
from inventory
where inventory_id IN
(
select inventory_id
from rental
where staff_id IN
(
select staff_id
from staff
where first_name = "Jon" and last_name = "Stephens"
)
)
);

