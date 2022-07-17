SELECT Genre, SUM(Global_Sales) AS Sales_in_Millions
FROM GameSales
WHERE Year BETWEEN 1990 AND 1995
GROUP BY Genre
ORDER BY Sales_in_Millions DESC;