-- INSERT INTO artist (name, birthday, deathday) 
-- VALUES('Pablo Picasso', '1881-10-25', '1973-04-08');
-- VALUES('Vincent Van Gogh', '1853-03-30', '1890-07-29');
-- VALUES('Jackson Pollock', '1912-01-28', '1956-08-11');
-- VALUES('Frida Kahlo', '1907-07-06', '1954-07-13');
-- SELECT * FROM artist
-- ======================================================================
-- INSERT INTO painting (title, year, artist_id) 
-- VALUES('The Two Fridas', '1939', 4);
-- VALUES('The Starry Night', '1989', 2);
-- VALUES('Guernica', '1937', 1);
-- VALUES('The Old Guitarist', '1904', 1);
-- VALUES('Autumn Rhythm', '1950', 3);
-- VALUES('One', '1950', 3);
-- VALUES('The Potato Eaters', '1985', 2);
-- SELECT * FROM painting
-- ======================================================================
-- Q3.1: Get all the artists:
-- SELECT name FROM artist

-- ======================================================================
-- Q3.2: Get all the works, ordered by their creation year:
-- SELECT * FROM painting
-- ORDER BY year;

-- ======================================================================
-- Q3.3: Get all the artists who were born during the 19th century
-- SELECT * FROM artist
-- WHERE '1801-01-01' < birthday AND birthday < '1900-12-31';

-- ======================================================================
-- Q3.4: Get all the works that start with "The "
-- SELECT * FROM painting
-- WHERE title LIKE 'The'

-- ======================================================================
-- Q3.5: Add the artist Leonardo DiCaprio
-- INSERT INTO artist (name, birthday, deathday) 
-- VALUES('Leonardo DaVinci', '1452-04-15', '1519-05-02');
-- SELECT * FROM artist

-- ======================================================================
-- Q3.6: Add Moaning Lisa
-- INSERT INTO painting (title, year, artist_id) 
-- VALUES('Moaning Lisa', '1903', 5);
-- SELECT * FROM painting

-- ======================================================================
-- Q3.7: Update the title Autumn Rhythm to Autumn Rhythm (Number 30)
-- UPDATE `mydb`.`painting` SET `title` = 'Autumn Rhythm (Number 30)' WHERE (`id` = '5');
-- SELECT * FROM painting

-- ======================================================================
-- Q3.8: Remove Jackson Pollock from the database

-- ======================================================================
-- Q3.9: List all the works of art, with their associated artist
SELECT * FROM painting
JOIN artist ON artist.id = painting.artist_id;