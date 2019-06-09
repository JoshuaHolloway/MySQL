-- -- Part 1
-- SELECT language, country_code, percentage FROM languages
-- WHERE languages.language = "Slovene"
-- ORDER BY percentage DESC;
-- =========================================================================================================
-- -- Part 2
-- SELECT name, country_id FROM cities
-- SELECT count( DISTINCT(country_id) ) FROM cities

-- https://stackoverflow.com/questions/1346345/mysql-count-the-occurrences-of-distinct-values
-- SELECT country_id,COUNT(*) as count FROM cities GROUP BY name ORDER BY count DESC;

-- =========================================================================================================
-- -- Part 3
-- SELECT * FROM cities
-- SELECT name, population, country_id FROM cities
-- WHERE cities.population > 500e3 AND cities.country_id = 136

--  SELECT * FROM countries
--  WHERE countries.name = "Mexico"

-- TODO: Attempt to join on country_id

-- =========================================================================================================
-- -- Part 4
-- SELECT language, country_code, percentage FROM languages
-- WHERE languages.percentage > 89
-- ORDER BY percentage DESC;

-- =========================================================================================================
-- -- Part 5
-- SELECT name, surface_area, population FROM countries
-- WHERE surface_area < 501 AND population > 100e3

-- =========================================================================================================
-- Part 6
