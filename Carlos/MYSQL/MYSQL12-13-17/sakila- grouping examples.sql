SELECT * FROM inventory;
SELECT * FROM film;

SELECT *
FROM inventory i
INNER JOIN film f
ON i.film_id = f.film_id;

SELECT f.title, COUNT(f.title) as inventory
FROM inventory i
INNER JOIN film f
ON i.film_id = f.film_id
GROUP BY 1;

SELECT COUNT(f.title) as inventory
FROM inventory i
INNER JOIN film f
ON i.film_id = f.film_id;

SELECT f.title, SUM(f.replacement_cost) as total_replacement_cost
FROM inventory i
INNER JOIN film f
ON i.film_id = f.film_id
GROUP BY 1;

