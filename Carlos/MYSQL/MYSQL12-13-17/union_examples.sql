USE sakila;

SELECT actor_id AS id, first_name 
FROM actor 
WHERE actor_id between 1 and 5
UNION
SELECT customer_id AS id, first_name 
FROM customer
WHERE customer_id between 6 and 10;

SELECT title
FROM film
WHERE title LIKE 'AC%'
UNION 
SELECT title
FROM film_text;

SELECT title
FROM film
WHERE title LIKE 'AC%'
UNION ALL
SELECT title
FROM film_text;