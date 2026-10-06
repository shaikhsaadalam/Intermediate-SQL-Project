SELECT * FROM pizza_sales
-- ---------------------------------
-- KPI Requirements
-- ---------------------------------

-- Total Revenue
SELECT SUM(total_price) AS Total_Revenue FROM pizza_sales;

-- Avg Order Value
SELECT SUM(total_price) / COUNT(DISTINCT order_id) AS AVG_Order_Value FROM pizza_sales;

-- Total Pizza Sold
SELECT SUM(quantity) AS Total_Pizza_Sold FROM pizza_sales;

-- Total Orders
SELECT COUNT(DISTINCT order_id) AS Total_Orders
FROM pizza_sales;

-- Average Pizzas Per Order
SELECT
    CAST(
        CAST(SUM(quantity) AS DECIMAL(10,2)) /
        COUNT(DISTINCT order_id)
        AS DECIMAL(10,2)
    ) AS Average_Pizzas_Per_Order
FROM pizza_sales;


-- ----------------------------------
-- Analysis Requirements
-- ----------------------------------

-- Daily Trend of Total Orders
SELECT DATENAME(DW, order_date) as order_day, COUNT(DISTINCT order_id) AS Total_orders
FROM pizza_sales
GROUP BY DATENAME(DW, order_date)

-- Hourly Trend of Total Orders
SELECT DATEPART(HOUR, order_time) AS order_hours, COUNT(DISTINCT order_id) AS Total_orders
FROM pizza_sales
GROUP BY DATEPART(HOUR, order_time)
Order BY DATEPART(HOUR, order_time);

-- Percentage of Total Sales by Pizza Category
SELECT pizza_category, sum(total_price) AS Total_Sales, sum(total_price) * 100 / 
(SELECT sum(total_price) from pizza_sales WHERE MONTH(order_date)=1) AS PCT
FROM pizza_sales
WHERE MONTH(order_date)=1
GROUP BY pizza_category;

-- Percentage of Total Sales by Pizza Size
SELECT pizza_size, CAST(sum(total_price) AS DECIMAL(10,2)) AS Total_Sales, CAST(SUM(total_price) * 100 / 
(SELECT sum(total_price) from pizza_sales WHERE DATEPART(quarter, order_date)=1) AS DECIMAL (10,2)) AS PCT
FROM pizza_sales
WHERE DATEPART(quarter, order_date)=1
GROUP BY pizza_size
Order BY PCT DESC;

-- Total Pizzas Sold by Pizza Category
SELECT pizza_category, SUM(quantity) AS Total_Pizzas_Sold
FROM pizza_sales
GROUP BY pizza_category;

-- Top 5 Bestsellers
SELECT TOP 5
    pizza_name,
    SUM(quantity) AS Total_Pizzas_Sold
FROM pizza_sales
GROUP BY pizza_name
ORDER BY SUM(quantity) DESC;

-- Top 5 Worstsellers
SELECT TOP 5
    pizza_name,
    SUM(quantity) AS Total_Pizzas_Sold
FROM pizza_sales
WHERE MONTH(order_date) =1
GROUP BY pizza_name
ORDER BY SUM(quantity) ASC;