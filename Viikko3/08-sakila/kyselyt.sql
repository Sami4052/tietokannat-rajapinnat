USE sakila;

-- a) Kielet aakkosjärjestyksessä
SELECT name FROM language
ORDER BY name;

-- b) Temple-sukunimisten näyttelijöiden elokuvat
SELECT a.first_name, a.last_name, f.title
FROM actor a
JOIN film_actor fa ON a.actor_id = fa.actor_id
JOIN film f ON fa.film_id = f.film_id
WHERE a.last_name = 'Temple'
ORDER BY a.last_name, a.first_name, f.title;

-- c) Ghost Groundhogin näyttelijät
SELECT a.first_name, a.last_name
FROM film f
JOIN film_actor fa ON f.film_id = fa.film_id
JOIN actor a ON fa.actor_id = a.actor_id
WHERE f.title = 'Ghost Groundhog';

-- d) Kauhuelokuvien määrä
SELECT COUNT(*) AS lkm
FROM film_category fc
JOIN category c ON fc.category_id = c.category_id
WHERE c.name = 'Horror';

-- e) Kaikki kauhuelokuvat
SELECT f.title
FROM film f
JOIN film_category fc ON f.film_id = fc.film_id
JOIN category c ON fc.category_id = c.category_id
WHERE c.name = 'Horror'
ORDER BY f.title;