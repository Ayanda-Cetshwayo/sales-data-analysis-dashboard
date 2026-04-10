-- Total Sales
SELECT SUM(sales) AS total_revenue
FROM sales_data;

-- Sales by Product
SELECT product, SUM(sales) AS revenue
FROM sales_data
GROUP BY product
ORDER BY revenue DESC;

-- Sales by Region
SELECT region, SUM(sales) AS revenue
FROM sales_data
GROUP BY region
ORDER BY revenue DESC;

-- Monthly Sales Trend
SELECT month, SUM(sales) AS revenue
FROM sales_data
GROUP BY month
ORDER BY month;

-- Top Customers
SELECT customer_name, SUM(sales) AS total_spent
FROM sales_data
GROUP BY customer_name
ORDER BY total_spent DESC
LIMIT 5;
