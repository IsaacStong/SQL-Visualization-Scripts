/* The goal of this SQL file is to explore global sales column and see how video games were recieved over time on a global scale. */
/* Scripts to get data needed in other scripts */
SELECT MIN(Year), MAX(Year)
FROM GameSales;

SELECT DISTINCT Genre
FROM GameSales;

/* Total Game Sales over time */
SELECT Year, SUM(Global_Sales) 
FROM GameSales
WHERE Year IS NOT NULL
	AND Year < 2015
GROUP BY Year
ORDER BY Year;

/* Split into five year groups to see how genre sales change over time. Keep Out Past 2014*/
SELECT Genre, SUM(Global_Sales) AS Sales_in_Millions
FROM GameSales
WHERE Year BETWEEN 1980 AND 1984
GROUP BY Genre
ORDER BY Sales_in_Millions DESC;

SELECT Genre, SUM(Global_Sales) AS Sales_in_Millions
FROM GameSales
WHERE Year BETWEEN 1985 AND 1989
GROUP BY Genre
ORDER BY Sales_in_Millions DESC;

SELECT Genre, SUM(Global_Sales) AS Sales_in_Millions
FROM GameSales
WHERE Year BETWEEN 1990 AND 1994
GROUP BY Genre
ORDER BY Sales_in_Millions DESC;

SELECT Genre, SUM(Global_Sales) AS Sales_in_Millions
FROM GameSales
WHERE Year BETWEEN 1995 AND 1999
GROUP BY Genre
ORDER BY Sales_in_Millions DESC;

SELECT Genre, SUM(Global_Sales) AS Sales_in_Millions
FROM GameSales
WHERE Year BETWEEN 2000 AND 2004
GROUP BY Genre
ORDER BY Sales_in_Millions DESC;

SELECT Genre, SUM(Global_Sales) AS Sales_in_Millions
FROM GameSales
WHERE Year BETWEEN 2005 AND 2009
GROUP BY Genre
ORDER BY Sales_in_Millions DESC;

SELECT Genre, SUM(Global_Sales) AS Sales_in_Millions
FROM GameSales
WHERE Year BETWEEN 2010 AND 2014
GROUP BY Genre
ORDER BY Sales_in_Millions DESC;

/* Genre Trends */
SELECT Genre, Year, SUM(Global_Sales) AS Sales_in_Millions
FROM GameSales
WHERE Year IS NOT NULL
	AND Year < 2015
GROUP BY Year, Genre
ORDER BY Year, Genre;

SELECT Genre, Year, SUM(Global_Sales) AS Sales_in_Millions
FROM GameSales
WHERE Year IS NOT NULL
	AND Year < 2015
	AND Genre = 'Shooter' 
GROUP BY Year, Genre
ORDER BY Year, Genre;

SELECT Name
FROM GameSales
WHERE Year = 1984
	AND Genre = 'Shooter';