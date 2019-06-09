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