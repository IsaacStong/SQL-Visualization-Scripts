/* Nintendo Visualization */
SELECT *
FROM GameSales
WHERE Publisher = 'Nintendo';

/* Different Sales in Regions */
SELECT Year, SUM(NA_Sales) * 1000000 AS Sales
FROM GameSales
WHERE Publisher = 'Nintendo'
	AND Year IS NOT NULL
	AND Year BETWEEN 1980 AND 2014
GROUP BY Year
ORDER BY Year ASC;

SELECT Year, SUM(EU_Sales) * 1000000 AS Sales
FROM GameSales
WHERE Publisher = 'Nintendo'
	AND Year IS NOT NULL
	AND Year BETWEEN 1980 AND 2014
GROUP BY Year
ORDER BY Year ASC; 

SELECT Year, SUM(JP_Sales) * 1000000 AS Sales
FROM GameSales
WHERE Publisher = 'Nintendo'
	AND Year IS NOT NULL
	AND Year BETWEEN 1980 AND 2014
GROUP BY Year
ORDER BY Year ASC;

/* Top Genres for Each Region */
SELECT Genre, SUM(JP_Sales) * 1000000 AS JP_Sales, SUM(EU_Sales) * 1000000 AS EU_Sales, SUM(NA_Sales) * 1000000 AS NA_Sales
FROM GameSales
WHERE Year = 2014
	AND Publisher = 'Nintendo'
GROUP BY Genre;