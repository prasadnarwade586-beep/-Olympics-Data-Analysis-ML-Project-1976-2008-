CREATE DATABASE olympics_db;

USE olympics_db;

DESCRIBE olympics_cleaned;
SELECT COUNT(*) FROM olympics_cleaned;
SELECT * FROM olympics_cleaned LIMIT 10;

SELECT
    SUM(CASE WHEN Athlete IS NULL THEN 1 ELSE 0 END) AS Null_Athlete,
    SUM(CASE WHEN Country IS NULL THEN 1 ELSE 0 END) AS Null_Country,
    SUM(CASE WHEN Medal IS NULL THEN 1 ELSE 0 END) AS Null_Medal
FROM olympics_cleaned;

#Top medal-winning countries
SELECT
    Country,
    COUNT(*) AS Total_Medals
FROM olympics_cleaned
GROUP BY Country
ORDER BY Total_Medals DESC
LIMIT 10;

#Performance weighted by medal quality
SELECT
    Country,
    SUM(Medal_Points) AS Weighted_Score
FROM olympics_cleaned
GROUP BY Country
ORDER BY Weighted_Score DESC
LIMIT 10;

#Medal trends over time
SELECT
    Year,
    COUNT(*) AS Medal_Count
FROM olympics_cleaned
GROUP BY Year
ORDER BY Year;

#Most medal-producing sports
SELECT
    Sport,
    COUNT(*) AS Total_Medals
FROM olympics_cleaned
GROUP BY Sport
ORDER BY Total_Medals DESC;

#Country specialization by sport
SELECT
    Sport,
    Country,
    COUNT(*) AS Medal_Count
FROM olympics_cleaned
GROUP BY Sport, Country
ORDER BY Sport, Medal_Count DESC;

#Elite athletes 
SELECT
    Athlete,
    Country,
    COUNT(*) AS Total_Medals
FROM olympics_cleaned
GROUP BY Athlete, Country
HAVING COUNT(*) >= 5
ORDER BY Total_Medals DESC;

#Gender-wise medal split
SELECT
    Gender,
    COUNT(*) AS Medal_Count
FROM olympics_cleaned
GROUP BY Gender;

#Medal efficiency by country
SELECT
    Country,
    COUNT(*) / COUNT(DISTINCT Athlete) AS Medals_Per_Athlete
FROM olympics_cleaned
GROUP BY Country
ORDER BY Medals_Per_Athlete DESC;

#Decade-wise dominance
SELECT
    (Year DIV 10) * 10 AS Decade,
    Country,
    COUNT(*) AS Total_Medals
FROM olympics_cleaned
GROUP BY Decade, Country
ORDER BY Decade, Total_Medals DESC;

#VIEW FOR TABLEAU / POWER BI 
CREATE VIEW country_year_medals AS
SELECT
    Year,
    Country,
    COUNT(*) AS Total_Medals,
    SUM(Medal_Points) AS Weighted_Score
FROM olympics_cleaned
GROUP BY Year, Country;
