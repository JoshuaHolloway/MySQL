-- -- Part 1
-- SELECT language, country_code, percentage FROM languages
-- WHERE languages.language = "Slovene"
-- ORDER BY percentage DESC;
-- =========================================================================================================
-- -- Part 2
-- https://stackoverflow.com/questions/1346345/mysql-count-the-occurrences-of-distinct-values
-- SELECT cities.country_id as Country_ID, countries.name AS Country_Name, COUNT(*) AS Number_of_Cities FROM cities
-- JOIN countries ON countries.id = cities.country_id
-- GROUP BY countries.name
-- ORDER BY Number_of_Cities DESC;

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
-- -- Part 6
-- SELECT name, government_form, capital, life_expectancy FROM countries
-- WHERE capital > 200 AND government_form = 'Constitutional Monarchy' AND life_expectancy > 75
-- order by life_expectancy DESC

-- =========================================================================================================
-- -- Part 7
-- SELECT countries.name AS Country_Name, cities.name AS City_Name, district as District, cities.population as Country_Population FROM cities
-- JOIN countries ON countries.id = cities.country_id
-- WHERE cities.population > 500e3 AND cities.district = 'Buenos Aires' AND countries.name = 'Argentina'

-- =========================================================================================================
-- -- Part 8
-- SELECT name AS Country_Name, region as Region_Name, COUNT(*) AS Number_of_Countries_in_Region FROM countries
-- GROUP BY region
-- ORDER BY Number_of_Countries_in_Region DESC;
