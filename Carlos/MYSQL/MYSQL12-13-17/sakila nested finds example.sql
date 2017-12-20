use sakila;

select city, city_id
from city
where city IN ('Qalyub', 'Qinhuangdao', 'Qomshesh', 'Quilmes');

select * from address;

select district
from address
where city_id in
(
select city, city_id
from city
where city IN ('Qalyub', 'Qinhuangdao', 'Qomshesh', 'Quilmes')
);

select count(customer_id)
from rental
where inventory_id in
(
select inventory_id
from inventory
where film_id IN
(
select film_id
from film
where title = "Blanket Beverly"
)
);