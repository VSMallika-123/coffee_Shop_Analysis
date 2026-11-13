
#Coffee Shop Sales - Data Quality Checks

USE coffee_shop_analysis;

#Total records
SELECT COUNT(*) AS total_records
FROM coffee_sales;

#the table structure
DESCRIBE coffee_sales;

#Check missing values
SELECT
    SUM(CASE WHEN transaction_id IS NULL THEN 1 ELSE 0 END) AS missing_ids,
    SUM(CASE WHEN transaction_date IS NULL THEN 1 ELSE 0 END) AS missing_dates,
    SUM(CASE WHEN transaction_qty IS NULL THEN 1 ELSE 0 END) AS missing_quantities,
    SUM(CASE WHEN unit_price IS NULL THEN 1 ELSE 0 END) AS missing_prices,
    SUM(CASE WHEN store_location IS NULL THEN 1 ELSE 0 END) AS missing_locations
FROM coffee_sales;

# duplicate transaction IDs
SELECT
    COUNT(*) AS total_rows,
    COUNT(DISTINCT transaction_id) AS unique_transactions
FROM coffee_sales;

#invalid quantities and prices
SELECT
    SUM(CASE WHEN transaction_qty <= 0 THEN 1 ELSE 0 END) AS invalid_quantities,
    SUM(CASE WHEN unit_price <= 0 THEN 1 ELSE 0 END) AS invalid_prices
FROM coffee_sales;

# original date and time formats
SELECT
    transaction_date,
    transaction_time
FROM coffee_sales
LIMIT 10;

#converted date and time columns
SELECT
    COUNT(*) AS total_records,
    COUNT(sale_date) AS converted_dates,
    COUNT(sale_time) AS converted_times
FROM coffee_sales;

#Verify date and time conversion
SELECT
    COUNT(*) AS total_records,
    SUM(CASE
        WHEN sale_date IS NULL
          OR DATE_FORMAT(sale_date, '%d-%m-%Y') <> transaction_date
        THEN 1 ELSE 0
    END) AS date_mismatches,
    SUM(CASE
        WHEN sale_time IS NULL
          OR TIME_FORMAT(sale_time, '%H:%i:%s') <> transaction_time
        THEN 1 ELSE 0
    END) AS time_mismatches
FROM coffee_sales;
