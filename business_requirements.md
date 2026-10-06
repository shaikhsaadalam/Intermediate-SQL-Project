# 🍕 Pizza Sales SQL Analysis — Business Requirements

## 📌 Project Objective

The objective of this project is to analyze pizza sales data using **SQL** to evaluate business performance, identify sales trends, understand customer purchasing behavior, and determine the performance of individual pizza products.

The analysis focuses on **key performance indicators (KPIs)**, time-based ordering patterns, sales distribution, and product-level performance.

---

# 📊 KPI Requirements

The following **Key Performance Indicators (KPIs)** must be calculated:

### 1. 💰 Total Revenue

Calculate the total revenue generated from all pizza sales.

**Calculation:**

```text
Total Revenue = SUM(total_price)
```

---

### 2. 💵 Average Order Value

Calculate the average amount spent per order.

**Calculation:**

```text
Average Order Value = Total Revenue / Total Number of Orders
```

---

### 3. 🍕 Total Pizzas Sold

Calculate the total number of pizzas sold.

**Calculation:**

```text
Total Pizzas Sold = SUM(quantity)
```

---

### 4. 🧾 Total Orders

Calculate the total number of unique orders placed.

**Calculation:**

```text
Total Orders = COUNT(DISTINCT order_id)
```

---

### 5. 🍕 Average Pizzas Per Order

Calculate the average number of pizzas sold per order.

**Calculation:**

```text
Average Pizzas Per Order = Total Pizzas Sold / Total Orders
```

---

# 📈 Analysis Requirements

## 1. 📅 Daily Trend of Total Orders

Analyze the number of orders placed on each day over the available sales period.

**Objective:**

Identify patterns and fluctuations in daily order volume.

---

## 2. 🕐 Hourly Trend of Total Orders

Analyze the number of orders placed during each hour of the day.

**Objective:**

Identify peak ordering hours and periods of low order activity.

---

## 3. 🍕 Percentage of Sales by Pizza Category

Calculate the percentage contribution of each pizza category to total sales revenue.

**Objective:**

Determine which pizza categories contribute the most to overall revenue.

---

## 4. 📏 Percentage of Sales by Pizza Size

Calculate the percentage contribution of each pizza size to total sales revenue.

**Objective:**

Understand customer preferences regarding pizza sizes and their contribution to revenue.

---

## 5. 📊 Total Pizzas Sold by Pizza Category

Calculate the total number of pizzas sold within each pizza category.

**Objective:**

Compare the sales volume of different pizza categories.

---

## 6. 🏆 Top 5 Best-Selling Pizzas

Identify the **five individual pizza products** with the highest total quantity sold.

**Objective:**

Determine the most popular pizza products based on sales volume.

---

## 7. 📉 Bottom 5 Worst-Selling Pizzas

Identify the **five individual pizza products** with the lowest total quantity sold.

**Objective:**

Identify underperforming pizza products that may require further business investigation.

---

# 🎯 Expected Business Outcomes

The analysis should provide insights into:

- 💰 Overall revenue performance
- 💵 Average customer spending per order
- 🍕 Total pizza demand
- 📦 Average pizzas purchased per order
- 📅 Daily ordering patterns
- 🕐 Peak ordering hours
- 🍕 Revenue contribution by pizza category
- 📏 Revenue contribution by pizza size
- 📊 Category-level sales volume
- 🏆 Best-performing pizza products
- 📉 Worst-performing pizza products

