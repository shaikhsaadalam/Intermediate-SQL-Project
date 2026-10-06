# 🍕 Pizza Sales SQL Analysis

## 📌 Project Overview

This project analyzes pizza sales data using **Microsoft SQL Server** to evaluate business performance, identify sales trends, and uncover insights into customer ordering behavior.

The analysis focuses on key performance indicators (KPIs), order trends, pizza category and size performance, and the best- and worst-performing pizza products.

The project demonstrates an end-to-end **SQL-based data analysis workflow**, including data exploration, aggregation, business metric calculation, trend analysis, and extracting actionable insights from transactional sales data.

---

## 🎯 Business Objectives

The primary objectives of this analysis are to:

- Measure overall pizza sales performance.
- Calculate important business KPIs.
- Analyze daily and hourly ordering patterns.
- Understand sales distribution across pizza categories.
- Analyze customer preferences by pizza size.
- Identify the best-selling pizza categories.
- Identify the top 5 best-selling pizzas.
- Identify the bottom 5 worst-selling pizzas.
- Translate transactional sales data into meaningful business insights.

---

## 🛠️ Tools & Technologies

- **SQL Server**
- **SQL**
- **Microsoft SQL Server Management Studio (SSMS)**

### SQL Concepts Used

- `SELECT`
- `WHERE`
- `GROUP BY`
- `ORDER BY`
- `DISTINCT`
- Aggregate functions
  - `SUM()`
  - `COUNT()`
  - `AVG()`
  - `MAX()`
- Date functions
  - `DATENAME()`
  - `DATEPART()`
  - `MONTH()`
- `CAST()`
- Subqueries
- Conditional filtering
- Percentage calculations
- Sorting and ranking
- Data aggregation

---

## 📂 Dataset

The project uses a transactional pizza sales dataset containing **48,620 records** and **12 columns**.

Each row represents a pizza item included in an order, with information about the order, pizza, quantity, pricing, size, category, and ingredients.

### Dataset Columns

| Column | Description |
|---|---|
| `pizza_id` | Unique identifier for each pizza record |
| `order_id` | Identifier of the customer order |
| `pizza_name_id` | Identifier for the pizza and size combination |
| `quantity` | Number of units of the pizza sold |
| `order_date` | Date on which the order was placed |
| `order_time` | Time at which the order was placed |
| `unit_price` | Price of one unit of the pizza |
| `total_price` | Total price for the pizza item/line |
| `pizza_size` | Size of the pizza |
| `pizza_category` | Category of the pizza |
| `pizza_ingredients` | Ingredients used in the pizza |
| `pizza_name` | Name of the pizza |

### Data Used in the Analysis

The analysis primarily uses the following fields:

- **Order information:** `order_id`, `order_date`, `order_time`
- **Sales information:** `quantity`, `unit_price`, `total_price`
- **Product information:** `pizza_name`, `pizza_name_id`
- **Product classification:** `pizza_category`, `pizza_size`
- **Product details:** `pizza_ingredients`

The dataset provides the transactional-level information required to calculate sales KPIs and analyze ordering patterns, pizza categories, pizza sizes, and individual pizza performance.

---

# 📊 KPI Analysis

The project calculates the following key performance indicators:

### 1. Total Revenue

The total amount of revenue generated from all pizza sales.

```text
Total Revenue = SUM(total_price)
```

### 2. Average Order Value

The average amount spent per unique order.

```text
Average Order Value =
Total Revenue / Total Orders
```

### 3. Total Pizzas Sold

The total quantity of pizzas sold.

```text
Total Pizzas Sold = SUM(quantity)
```

### 4. Total Orders

The total number of unique orders placed.

```text
Total Orders = COUNT(DISTINCT order_id)
```

### 5. Average Pizzas Per Order

The average number of pizzas purchased per order.

```text
Average Pizzas Per Order =
Total Pizzas Sold / Total Orders
```

---

# 📈 Sales Analysis

The SQL analysis addresses the following business questions.

## 1. Daily Trend of Total Orders

Analyzes the number of orders placed on each day to identify changes and patterns in daily order volume.

**Business Question:**

> How does order volume vary across different days?

---

## 2. Hourly Trend of Total Orders

Analyzes order volume by hour of the day.

**Business Question:**

> Which hours experience the highest and lowest order activity?

This can help identify peak operating periods and support staffing and operational planning.

---

## 3. Percentage of Sales by Pizza Category

Calculates the contribution of each pizza category to total sales.

**Business Question:**

> Which pizza categories contribute the most to overall revenue?

---

## 4. Percentage of Sales by Pizza Size

Analyzes the percentage contribution of different pizza sizes to total sales.

**Business Question:**

> Which pizza sizes generate the greatest share of sales?

This provides insight into customer purchasing preferences.

---

## 5. Total Pizzas Sold by Pizza Category

Calculates the total number of pizzas sold within each pizza category.

**Business Question:**

> Which pizza categories have the highest sales volume?

---

## 6. Top 5 Best-Selling Pizzas

Identifies the five pizzas with the highest total quantity sold.

**Business Question:**

> Which individual pizza products are the most popular?

---

## 7. Bottom 5 Worst-Selling Pizzas

Identifies the five pizzas with the lowest total quantity sold.

**Business Question:**

> Which pizza products have the lowest sales volume?

These products may require further investigation regarding pricing, customer demand, menu placement, or product strategy.

---

# 🔍 Key Business Insights

The analysis can be used to identify:

- Overall revenue and sales performance.
- Average customer spending per order.
- Total pizza demand.
- Average number of pizzas purchased per order.
- Peak ordering hours.
- High- and low-performing days.
- Most valuable pizza categories.
- Most popular pizza sizes.
- Best-selling individual pizza products.
- Underperforming pizza products.

These insights can support decisions related to **staffing, inventory management, menu optimization, product strategy, and sales planning**.

---

# 💡 Business Value

Although the project is SQL-focused, the analysis demonstrates how transactional data can be transformed into information useful for business decision-making.

The results can help a pizza business:

- Understand overall sales performance.
- Identify peak demand periods.
- Optimize staffing during high-demand hours.
- Improve inventory planning.
- Understand customer preferences.
- Evaluate product performance.
- Identify products that may need strategic attention.
- Make more data-driven menu and sales decisions.

---

# 🚀 Skills Demonstrated

### Technical Skills

- SQL
- Microsoft SQL Server
- Data aggregation
- Data analysis
- KPI development
- Date/time analysis
- Percentage calculations
- Subqueries
- Business-oriented SQL querying

### Analytical Skills

- Business problem translation
- Performance measurement
- Trend identification
- Product performance analysis
- Customer behavior analysis
- Data-driven decision-making

---

# 📌 Conclusion

This project demonstrates the use of SQL to analyze transactional pizza sales data and convert raw sales records into meaningful business metrics and insights.

By combining KPI analysis, time-based analysis, category analysis, size analysis, and product-level performance analysis, the project provides a structured view of pizza sales performance and demonstrates practical SQL skills applicable to real-world **Data Analyst, Business Analyst, BI Analyst, and Data Science** roles.
