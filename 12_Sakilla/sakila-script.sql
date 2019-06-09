-- ======================================================================================
-- PART-1
-- SELECT city_id FROM address
SELECT city_id, first_name, last_name, email, address.address FROM customer
JOIN address ON address.address_id = customer.address_id
WHERE city_id = 312;