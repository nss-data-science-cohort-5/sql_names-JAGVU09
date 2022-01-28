--this is a comment
/*
This is a multi line comment
*/
SELECT *
FROM names;
--1. How many rows are in the names table? 
--1957046 rows

SELECT SUM(num_registered) AS total_registered
FROM names;
--2. How many total registered people appear in the dataset? 
--351653025

SELECT name, COUNT(name) AS most_common
FROM names
GROUP BY name
ORDER BY most_common DESC
LIMIT 1;
--3. Which name had the most appearances in a single year in the dataset? 
--Sidney

SELECT MAX(year)-MAX(year)
FROM names;
--4. What range of years are included?
--138 years

SELECT max(num_registered) AS max_registered, year
FROM names
GROUP BY year
ORDER BY max_registered DESC;
--5. What year has the largest number of registrations? 1947 BOOMERS!
--1947 BOOMERS!

SELECT COUNT(DISTINCT name)
FROM names;
--6. How many different (distinct) names are contained in the dataset? 98400 distinct names
--98400 distinct names

SELECT gender, COUNT(gender)
FROM names
GROUP BY gender;
--7. Are there more males or more females registered? 
--1156527 Females 800519 males.
SELECT name, sum(num_registered) AS sum_num_registered
FROM names
WHERE gender = 'F'
GROUP BY name
ORDER BY sum_num_registered DESC;

SELECT name, sum(num_registered) AS sum_num_registered
FROM names
WHERE gender = 'M'
GROUP BY name
ORDER BY sum_num_registered DESC;
--8. What are the most popular male and female names overall (i.e., the most total registrations)? 
--Mary & James

SELECT name, sum(num_registered) AS sum_num_registered
FROM names
WHERE gender = 'F'AND year BETWEEN 2000 AND 2009
GROUP BY name
ORDER BY sum_num_registered DESC;

SELECT name, sum(num_registered) AS sum_num_registered
FROM names
WHERE gender = 'M' AND year BETWEEN 2000 AND 2009
GROUP BY name
ORDER BY sum_num_registered DESC;
--9. What are the most popular boy and girl names of the first decade of the 2000s (2000 - 2009)? 
--Emily & Jacob


SELECT year, COUNT(DISTINCT name) AS most_unique_names
FROM names
GROUP BY year
ORDER BY most_unique_names DESC;
--10. Which year had the most variety in names (i.e. had the most distinct names)?
-- 2008

SELECT name, sum(num_registered) AS sum_num_registered
FROM names
WHERE gender = 'F' AND name LIKE 'X%'
GROUP BY name
ORDER BY sum_num_registered DESC;
--11. What is the most popular name for a girl that starts with the letter X?
--Ximena

SELECT name
FROM names
WHERE name LIKE 'Qa%';

--12. How many distinct names appear that start with a 'Q', but whose second letter is not 'u'?

--13. Which is the more popular spelling between "Stephen" and "Steven"? Use a single query to answer this question.

--14. What percentage of names are "unisex" - that is what percentage of names have been used both for boys and for girls?

--15. How many names have made an appearance in every single year since 1880?

--16. How many names have only appeared in one year?

--17. How many names only appeared in the 1950s?

--18. How many names made their first appearance in the 2010s?

--19. Find the names that have not be used in the longest.

--20. Come up with a question that you would like to answer using this dataset. Then write a query to answer this question.