create database sql_project_pp2;


 DROP TABLE IF EXISTS Bookss;
CREATE TABLE Bookss (
    Book_ID int PRIMARY KEY,
    Title VARCHAR(100),
    Author VARCHAR(100),
    Genre VARCHAR(50),
    Published_Year INT,
    Price NUMERIC(10, 2),
    Stock INT
);
select * from Bookss;

SELECT COUNT(*) from Bookss;

SELECT * from Bookss
WHERE title is null
	or 
	author is null
	or
	price is null
	or 
	stock is null

--data Exploration

--how many total books we have
SELECT count(*) as total_books from Bookss;

select count (distinct genre) as new_g from Bookss;

select distinct genre from Bookss
order by genre asc
limit 5;


--data analysis & bussiness key problem and answer

select * from Bookss
where published_year between 1950 and 2000

select * from Bookss
where genre ='Fantasy' and price>3;

select
	genre, sum(price) as po 
from Bookss
group by 1;

select avg(published_year) as avg_year from Bookss
where genre = 'Fiction'


select * from Bookss
WHERE price>15

SELECT 
	 genre, sum(price) as pyq
FROM Bookss
group by 1
order by 2 desc

SELECT genre, count(book_id) from Bookss
group by genre
