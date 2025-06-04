
-- Top 5 highest-profit segments per year
SELECT TOP 5 
Year, 
Segment, 
ROUND(SUM(Profit),0) AS Total_Profit
FROM Financial
GROUP BY Segment, Year
ORDER BY Total_Profit ASC

-- Products with low profit or losses
SELECT 
    Product, 
    ROUND(SUM(Sales), 0) AS Total_Sales, 
    SUM(COGS) AS Total_COGS, 
    ROUND(SUM(Profit), 0) AS Total_Profit
FROM Financial
GROUP BY Product
HAVING SUM(Profit) < 3000000
ORDER BY ROUND(SUM(Profit), 0) ASC;

-- Best Sales per Country and Year 2013
SELECT Country, Year, ROUND(SUM(Sales),0) AS Total_Sales
FROM Financial
WHERE Year = 2013
GROUP BY Country, Year
ORDER BY Total_Sales;

-- Best Sales per Country and Year 2014
SELECT Country, Year, ROUND(SUM(Sales),0) AS Total_Sales
FROM Financial
WHERE Year = 2014
GROUP BY Country, Year
ORDER BY Total_Sales;