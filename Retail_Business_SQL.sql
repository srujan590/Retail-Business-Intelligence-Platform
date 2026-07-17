SELECT * FROM `sample - superstore` LIMIT 10;
SELECT SUM(Sales) AS Total_Sales
FROM `sample - superstore`;
SELECT SUM(Profit) AS Total_Profit
FROM `sample - superstore`;
SELECT COUNT(DISTINCT `Order ID`) AS Total_Orders
FROM `sample - superstore`;
SELECT Category,
       SUM(Sales) AS Total_Sales
FROM `sample - superstore`
GROUP BY Category
ORDER BY Total_Sales DESC;
SELECT Category,
       SUM(Profit) AS Total_Profit
FROM `sample - superstore`
GROUP BY Category
ORDER BY Total_Profit DESC;
SELECT Region,
       SUM(Sales) AS Total_Sales
FROM `sample - superstore`
GROUP BY Region
ORDER BY Total_Sales DESC;
SELECT `Product Name`,
       SUM(Sales) AS Total_Sales
FROM `sample - superstore`
GROUP BY `Product Name`
ORDER BY Total_Sales DESC
LIMIT 10;
SELECT `Customer Name`,
       SUM(Sales) AS Total_Sales
FROM `sample - superstore`
GROUP BY `Customer Name`
ORDER BY Total_Sales DESC
LIMIT 10;
SELECT Segment,
       SUM(Sales) AS Total_Sales
FROM `sample - superstore`
GROUP BY Segment
ORDER BY Total_Sales DESC;
SELECT Category,
       AVG(Discount) AS Average_Discount
FROM `sample - superstore`
GROUP BY Category;
SELECT State,
       SUM(Sales) AS Total_Sales
FROM `sample - superstore`
GROUP BY State
ORDER BY Total_Sales DESC
LIMIT 10;
SELECT `Product Name`,
       SUM(Profit) AS Total_Profit
FROM `sample - superstore`
GROUP BY `Product Name`
HAVING Total_Profit < 0
ORDER BY Total_Profit;
SELECT
DATE_FORMAT(STR_TO_DATE(`Order Date`, '%m/%d/%Y'), '%Y-%m') AS Month,
SUM(Sales) AS Total_Sales
FROM `sample - superstore`
GROUP BY Month
ORDER BY Month;
SELECT
AVG(DATEDIFF(
STR_TO_DATE(`Ship Date`, '%m/%d/%Y'),
STR_TO_DATE(`Order Date`, '%m/%d/%Y')
)) AS Average_Shipping_Days
FROM `sample - superstore`;
SELECT
`Product Name`,
SUM(Profit) AS Total_Profit
FROM `sample - superstore`
GROUP BY `Product Name`
ORDER BY Total_Profit DESC
LIMIT 10;