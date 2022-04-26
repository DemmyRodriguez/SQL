Exercise 1 | use SELECT to retrieve data | * = ALL
-- SELECT title FROM movies;
-- SELECT director FROM movies;
-- SELECT title, director FROM movies;
-- SELECT title, year FROM movies;
-- SELECT * FROM movies;

Exercise 2 | use WHERE to retrieve SPECIFIC data
-- SELECT title
-- FROM movies
-- WHERE Id=6;

-- SELECT title
-- FROM movies
-- WHERE year BETWEEN 2000 AND 2010;

-- SELECT title
-- FROM movies
-- WHERE year NOT BETWEEN 2000 AND 2010;

-- SELECT title, year
-- FROM movies
-- WHERE Id<=5;

Exercise 3 | More Operators for WHERE
-- SELECT title FROM movies
-- WHERE title LIKE 'Toy Story%';

-- SELECT title FROM movies
-- WHERE director = 'John Lasseter';

-- SELECT title, director FROM movies
-- WHERE director != 'John Lasseter';

-- SELECT title FROM movies
-- WHERE title LIKE 'WALL-%';

Exercise 4 | use DISTINCT to delete duplicates | use ORDER BY ASC (ascending order) / DESC (desc ending order)
use LIMIT to reduce # of rows | use OFFSET to specify where to begin counting the #
-- SELECT DISTINCT director FROM movies
-- ORDER BY director asc;

-- SELECT * FROM movies
-- ORDER BY year asc
-- LIMIT 4 OFFSET 10;

-- SELECT * FROM movies
-- ORDER BY year desc
-- LIMIT 4 OFFSET 0;

-- SELECT * FROM movies
-- ORDER BY title asc
-- LIMIT 5 OFFSET 0;

-- SELECT * FROM movies
-- ORDER BY title asc
-- LIMIT 5 OFFSET 5;

SIMPLE SELECT QUERIES REVIEW **********
-- SELECT city, population
-- FROM north_american_cities
-- WHERE country = 'Canada';

-- SELECT city, latitude FROM north_american_cities
-- WHERE country = "United States"
-- ORDER BY latitude DESC;

-- SELECT city, longitude FROM north_american_cities
-- WHERE longitude < -87.629798
-- ORDER BY longitude ASC;

-- SELECT city, population FROM north_american_cities
-- WHERE country LIKE "Mexico"
-- ORDER BY population DESC
-- LIMIT 2;

-- SELECT city, population FROM north_american_cities
-- WHERE country LIKE "United States"
-- ORDER BY population DESC
-- LIMIT 2 OFFSET 2;

Lesson 6: Multi-table queries with JOINs
-- SELECT title, domestic_sales, international_sales 
-- FROM movies
--   JOIN boxoffice
--     ON movies.id = boxoffice.movie_id;

-- SELECT title, domestic_sales, international_sales
-- FROM movies
--   JOIN boxoffice
--     ON movies.id = boxoffice.movie_id
-- WHERE international_sales > domestic_sales;

-- SELECT title, rating
-- FROM movies
--   JOIN boxoffice
--     ON movies.id = boxoffice.movie_id
-- ORDER BY rating DESC;

Lesson 7: Outer Joins
-- SELECT DISTINCT building FROM employees;

-- SELECT * FROM buildings;

-- SELECT DISTINCT building_name, role 
-- FROM buildings 
--   LEFT JOIN employees
--     ON building_name = building;

Lesson 8 - SHORT NOTE ON NULLS
-- SELECT name, role FROM employees
-- WHERE building IS NULL;

-- SELECT DISTINCT building_name
-- FROM buildings 
--   LEFT JOIN employees
--     ON building_name = building
-- WHERE role IS NULL;

Lesson 9: Queries with expressions
-- SELECT title, (domestic_sales + international_sales) / 1000000 AS gross_sales_millions
-- FROM movies
--   JOIN boxoffice
--     ON movies.id = boxoffice.movie_id;

-- SELECT title, rating * 10 AS rating_percent
-- FROM movies
--   JOIN boxoffice
--     ON movies.id = boxoffice.movie_id;

-- SELECT title, year
-- FROM movies
-- WHERE year % 2 = 0;

Lesson 10: Queries with aggregates (Pt. 1)
-- SELECT MAX(years_employed) as Max_years_employed
-- FROM employees;

-- SELECT role, AVG(years_employed) as Average_years_employed
-- FROM employees
-- GROUP BY role;

-- SELECT building, SUM(years_employed) as Total_years_employed
-- FROM employees
-- GROUP BY building;

Lesson 11: Queries with aggregates (Pt. 2)
-- SELECT role, COUNT(*) as Number_of_artists
-- FROM employees
-- WHERE role = "Artist";

-- SELECT role, COUNT(*) FROM employees
-- GROUP BY role;

-- SELECT role, SUM(years_employed) FROM employees
-- GROUP BY role
-- HAVING role = "Engineer";

Lesson 12: Order of execution of a Query
-- SELECT director, COUNT(id) as Num_movies_directed
-- FROM movies
-- GROUP BY director;

-- SELECT director, SUM(domestic_sales + international_sales) as Cumulative_sales_from_all_movies
-- FROM movies
--     INNER JOIN boxoffice
--         ON movies.id = boxoffice.movie_id
-- GROUP BY director;

Lesson 13: Inserting rows
-- INSERT INTO movies VALUES (4, "Toy Story 4", "El Directore", 2015, 90);

-- INSERT INTO boxoffice VALUES (4, 8.7, 340000000, 270000000);

Lesson 14: Updating rows
-- UPDATE movies
-- SET director = "John Lasseter"
-- WHERE id = 2;

-- UPDATE movies
-- SET year = 1999
-- WHERE id = 3;

-- UPDATE movies
-- SET title = "Toy Story 3", director = "Lee Unkrich"
-- WHERE id = 11;

Lesson 15: Deleting rows
-- DELETE FROM movies
-- where year < 2005;

-- DELETE FROM movies
-- where year < 2005;

Lesson 16: Creating tables
-- CREATE TABLE Database (
--     Name TEXT,
--     Version FLOAT,
--     Download_count INTEGER
-- );

Lesson 17: Altering tables
-- ALTER TABLE Movies
--   ADD COLUMN Aspect_ratio FLOAT DEFAULT 2.39;

-- ALTER TABLE Movies
--   ADD COLUMN Aspect_ratio FLOAT DEFAULT 2.39;

Lesson 18: Dropping tables
-- DROP TABLE Movies;

-- DROP TABLE Movies;