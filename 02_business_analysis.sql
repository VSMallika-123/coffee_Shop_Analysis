
USE coffee_shop_analysis;

-- 1. Total sales revenue
SELECT
    ROUND(SUM(transaction_qty * unit_price), 2) AS total_revenue
FROM coffee_sales;


-- 2. Revenue by store location
SELECT
    store_location,
    ROUND(SUM(transaction_qty * unit_price), 2) AS total_revenue
FROM coffee_sales
GROUP BY store_location
ORDER BY total_revenue DESC;


-- 3. Monthly sales revenue
SELECT
    DATE_FORMAT(sale_date, '%Y-%m') AS sales_month,
    ROUND(SUM(transaction_qty * unit_price), 2) AS monthly_revenue
FROM coffee_sales
GROUP BY DATE_FORMAT(sale_date, '%Y-%m')
ORDER BY sales_month;


-- 4. Sales by product category
SELECT
    product_category,
    SUM(transaction_qty) AS units_sold,
    ROUND(SUM(transaction_qty * unit_price), 2) AS total_revenue
FROM coffee_sales
GROUP BY product_category
ORDER BY total_revenue DESC;


-- 5. Top 10 product types by revenue
SELECT
    product_category,
    product_type,
    SUM(transaction_qty) AS units_sold,
    ROUND(SUM(transaction_qty * unit_price), 2) AS total_revenue
FROM coffee_sales
GROUP BY product_category, product_type
ORDER BY total_revenue DESC
LIMIT 10;


-- 6. Sales by hour
SELECT
    HOUR(sale_time) AS sales_hour,
    COUNT(*) AS total_transactions,
    SUM(transaction_qty) AS units_sold,
    ROUND(SUM(transaction_qty * unit_price), 2) AS total_revenue
FROM coffee_sales
GROUP BY HOUR(sale_time)
ORDER BY sales_hour;


-- 7. Sales by day of the week
SELECT
    DAYNAME(sale_date) AS sales_day,
    COUNT(*) AS total_transactions,
    ROUND(SUM(transaction_qty * unit_price), 2) AS total_revenue
FROM coffee_sales
GROUP BY DAYOFWEEK(sale_date), DAYNAME(sale_date)
ORDER BY DAYOFWEEK(sale_date);
