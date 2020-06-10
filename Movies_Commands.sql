-- Select all movies
Select * from movies;

-- Select boxoffice
Select * from boxoffice;


-- Select Triology
Select * from Trilogy;

-- Select Title and director
Select Title , Director from movies;

-- Show movies after the year 2010
Select Title, Year_ from movies
where Year_ > 2010;

-- Show movies before the year 2007
Select Title, Year_ from movies
where Year_ < 2007;

-- Show Movies where the duration of movie is greater than 2 hr 20 min
Select Title,duration from movies
where duration > 140;

-- Show Movies where the duration of movie is less than 2 hr
Select Title , duration from movies
where duration < 120;

-- List down the movies for whcich the ratings are greater than 8
Select Title , Rating from Boxoffice
Join Movies
On ID= movie_id
where Rating > 8
group by Rating DESC;

-- Show movies that grossed over 1 billion dollars

Select Title, ((International_Earning)/1000000000) AS TOTAL_EARNINGS from movies
Join BoxOffice
On ID = movie_id
Where International_Earning > 1000000000
Group by International_Earning DESC;

-- Show Movies that grossed less than 800 million dollars

Select Title, ((International_Earning)/1000000) AS TOTAL_EARNINGS from movies
Join BoxOffice
On ID = movie_id
Where International_Earning < 800000000
Group by International_Earning DESC;

-- Show title , Ratings , Earnings of all movies

Select Title, Rating, International_Earning from Movies
LEFT join Boxoffice
On ID = movie_id;

-- List down the movies that have Ratings greater than 8 and grossed less than 800 million dollars

Select Title, ((International_Earning)/1000000) AS TOTAL_EARNINGS from movies
Join BoxOffice
On ID = movie_id
Where International_Earning < 800000000 and Rating > 8;

-- Show those movies that have Rating less than or equal to 9 and earning greater than 1 billion dollars

SELECT Title, ((International_Earning)/1000000000) AS EARNINGS from movies
Join BoxOffice
On ID = movie_id
Where International_Earning > 1000000000 and Rating < 9;

-- Show the movies , their Trilogy and Production Houses

Select  Trilogy_ID, movies.Title, Media_Company from movies
Join BoxOffice
On ID = Movie_id
Join Trilogy
On ID = Trilogy_ID;


-- Show the standalone movies
Select movies.Title , Trilogy.Title AS Trilogy from movies
Join Trilogy
On ID = Trilogy_ID
Where Trilogy.Title is NUll;

-- Count the number of Marvel Movies

Select Media_company ,COUNT(Media_company) from Trilogy
where Media_company like "%Marvel Studios%";

-- Count the number of DC Movies 

Select Media_company ,COUNT(Media_company) from Trilogy
where Media_company like "%DC%";

-- SUM UP THE Grossing of all marvel movies

Select Trilogy.Media_company , (SUM(International_Earning))/1000000000 AS Total_Earning_in_Billion_dollars from Boxoffice
Join Trilogy
ON Movie_id = Trilogy_ID
where Media_company like "%Marvel Studios%";

-- SUM UP THE Grossing of all DC Movies
Select Trilogy.Media_company , (SUM(International_Earning))/1000000000 AS Total_Earning_in_Billion_dollars from Boxoffice
Join Trilogy
ON Movie_id = Trilogy_ID
where Media_company like "%DC%";

-- Show top two Marvel Movies that have an earning of more than 1 billion dollar
Select Title, (International_Earning)/1000000000 AS TOTAL_EARNING_IN_BILLION_DOLLARS from Movies
Join BoxOffice
On ID = Movie_ID
Where International_Earning  > 1000000000
LIMIT 2;

-- SHOW 3rd and 4th Marvel Movies that have an earning of more than 1 billion dollar

Select Title, (International_Earning)/1000000000 AS TOTAL_EARNING_IN_BILLION_DOLLARS from Movies
Join BoxOffice
On ID = Movie_ID
Where International_Earning  > 1000000000
LIMIT 2 OFFSET 2;


-- Show Movies directed by Christopher Nolan

Select Title , Director from Movies
where Director = 'Christopher Nolan';

-- Show Movies Directed by Christoper Nolan that have an earning of more than 1 billion dollars

Select Title , Director, (International_Earning)/1000000000 AS EARNING_IN_BILLION from Movies
Join BoxOffice
ON ID = Movie_id
Where director = 'Christopher Nolan' and International_Earning >= 1000000000;

-- ADD MOVIE JUSTICE LEAGUE

Insert into Movies Values (22,'Justice League','Joss Whedon', 2017, 120);

-- See that whether movie is added 

Select * From Movies;

-- Change the Director of Movie to Zack Snyder and change the year to 2021

Select * From Movies;
SET SQL_SAFE_UPDATES =0;
Update Movies
SET Year_ = 2021, Director = 'Zack Snyder', Duration = NULL
Where id = 22;

--  See the change

Select * From Movies;

-- Show the movie with least Earning

Select  min(International_Earning)/1000000 AS EARNING from  BoxOffice;

-- Show the highest grossing movie

SELECT MAX(International_Earning)/1000000000 AS EARNING_In_Billion
FROM  BoxOffice;

-- SUM UP ALL THE EARNING of All trilogies

SELECT Trilogy.Title, SUM(International_Earning)/1000000000 as Total_Earning_IN_BILLION
FROM BoxOffice
INNER JOIN Trilogy
On Movie_id = Trilogy_ID
GROUP BY Title ;
