-- ======================================================================================
-- -- PART-1
-- SELECT city_id, first_name, last_name, email, address.address FROM customer
-- JOIN address ON address.address_id = customer.address_id
-- WHERE city_id = 312;

-- ======================================================================================
-- -- PART-2 [Many-to-Many]
-- SELECT film.film_id, title AS Film_Title, description, release_year, rating, special_features, name AS Genre  FROM film_category
-- JOIN film ON film.film_id = film_category.film_id
-- JOIN category ON category.category_id = film_category.category_id

-- ======================================================================================
-- -- PART-3
-- SELECT film_actor.actor_id, first_name, last_name, film.film_id, title, film.description, film.release_year FROM film_actor
-- JOIN film ON film.film_id = film_actor.film_id
-- JOIN actor ON actor.actor_id = film_actor.actor_id
-- WHERE actor.actor_id = 5

-- ======================================================================================
-- -- PART-4
-- SELECT * FROM customer
-- JOIN address ON address.address_id = customer.address_id
-- JOIN city ON city.city_id = address.city_id
-- WHERE store_id = 1 and city.city_id = 1 or city.city_id = 42 or city.city_id = 312 or city.city_id = 459

-- ======================================================================================
-- -- PART-5
-- SELECT * FROM film_actor
-- JOIN film ON film.film_id = film_actor.film_id
-- WHERE film_actor.actor_id LIKE 15 AND film.rating LIKE 'G' AND film.special_features--  LIKE 'behind the scenes'

-- ======================================================================================
-- PART-6
-- -- SELECT * FROM film
-- SELECT film_actor.film_id, film.title, actor.actor_id, actor.first_name, actor.last_name FROM film
-- JOIN film_actor ON film_actor.film_id = film.film_id
-- JOIN actor ON film_actor.actor_id = actor.actor_id
-- WHERE film.film_id = 369

SELECT customer.first_name, customer.last_name, customer.email, address.address FROM address
-- JOIN customer ON address.id = customer.adress_id
-- WHERE city_id = 312;

-- ======================================================================================
-- -- PART-7
-- SELECT film.film_id, title AS Film_Title, description, release_year, rating, special_features, name AS Genre, rental_rate FROM film_category
-- JOIN film ON film.film_id = film_category.film_id
-- JOIN category ON category.category_id = film_category.category_id
-- WHERE rental_rate = 2.99 AND name LIKE 'Drama'

-- ======================================================================================
-- -- PART-8
-- SELECT actor.actor_id, first_name, last_name,
-- film.film_id, title AS Film_Title, description, release_year, 
-- rating, special_features, name AS Genre
-- FROM film_category
--
-- -- Join 'category'-Table into 'film'-Table
-- JOIN film ON film.film_id = film_category.film_id
-- JOIN category ON category.category_id = film_category.category_id
--
-- -- Join 'actor'-Table into 'film'-Table
-- JOIN film_actor ON film_actor.film_id = film.film_id
-- JOIN actor ON film_actor.actor_id = actor.actor_id
--
-- -- Condition
-- WHERE first_name LIKE 'Sandra' AND last_name LIKE 'KILMER' AND name LIKE 'Action'