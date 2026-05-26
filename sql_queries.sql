SELECT Region,
       ROUND(SUM(Sales), 2) AS Total_Sales,
       ROUND(SUM(Profit), 2) AS Total_Profit
FROM superstore_cleaned
GROUP BY Region
ORDER BY Total_Sales DESC;



SELECT Category,
       "Sub-Category",
       ROUND(SUM(Sales), 2) AS Total_Sales
FROM superstore_cleaned
GROUP BY Category, "Sub-Category"
ORDER BY Total_Sales DESC
LIMIT 5;



SELECT Segment,
       COUNT(DISTINCT "Order ID") AS Orders,
       ROUND(SUM(Sales), 2) AS Sales,
       ROUND(SUM(Profit), 2) AS Profit,
       ROUND(AVG("Profit Margin %"), 2) AS Avg_Margin
FROM superstore_cleaned
GROUP BY Segment
ORDER BY Profit DESC;


SELECT Year,
       Month,
       ROUND(SUM(Sales), 2) AS Monthly_Sales
FROM superstore_cleaned
GROUP BY Year, Month
ORDER BY Year, Monthly_Sales DESC;



SELECT "Product Name",
       Category,
       ROUND(SUM(Sales), 2) AS Sales,
       ROUND(SUM(Profit), 2) AS Profit
FROM superstore_cleaned
GROUP BY "Product Name", Category
HAVING SUM(Profit) < 0
ORDER BY Profit ASC
LIMIT 10;











