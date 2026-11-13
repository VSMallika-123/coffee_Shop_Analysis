# Coffee Shop Sales Analysis using SQL and Power BI

## About the Project

I worked on this project to practise SQL and Power BI using a real-world sales dataset. The data contains 149,116 transaction records from three coffee shop locations in New York, covering January to June 2023.

I wanted to understand how sales differed between stores, which products customers purchased the most, and when the shops were busiest. I used MySQL to analyse the data and Power BI to create a dashboard that makes the results easier to explore.

## Tools Used

- **MySQL Workbench:** Data cleaning and SQL queries
- **Power BI:** Dashboard and visualisations
- **DAX:** Revenue calculation and transaction count
- **Excel/CSV:** Working with the dataset

## Dataset

I used the Coffee Shop Sales dataset from Maven Analytics.

The data includes transaction IDs, dates, times, store locations, product categories, quantities and unit prices.

Dataset: https://mavenanalytics.io/data-playground/coffee-shop-sales

## Data Cleaning

I started by importing the dataset into MySQL and checking the table structure.

Before analysing the sales, I checked for missing values in the main columns, repeated transaction IDs, and quantities or prices that were zero or negative. These checks didn't identify any issues.

The date and time columns were originally imported as text, so I converted them into DATE and TIME formats. I also checked that the converted values matched the original data.

## SQL Analysis

After checking the data, I wrote SQL queries to calculate total revenue and compare sales across different stores and products.

I also looked at monthly sales trends, the top 10 product types by revenue, hourly sales and sales across different days of the week.

I used functions such as SUM, COUNT, GROUP BY, ORDER BY and DATE_FORMAT to analyse the transactions.

## What I Found

The coffee shops generated **$698,812.33** in total revenue during the six-month period.

Hell's Kitchen had the highest revenue at $236,511.17, although the three stores performed fairly similarly overall.

Monthly sales increased from $81,677.74 in January to $166,485.88 in June.

Coffee was the highest-revenue category, followed by Tea. Barista Espresso generated the most revenue among the product types.

I also found that the busiest sales period was in the morning, with 10 AM generating the highest hourly revenue.

## Power BI Dashboard

I created an interactive dashboard to present the results.

The dashboard shows total revenue, transaction records, monthly sales, store performance, product categories and hourly sales.

I added slicers for store location and product category so users can explore the data without running SQL queries.

## Business Insights

Based on the analysis, the coffee shops could review staffing during busy morning hours and make sure popular products are available when demand is high.

Since Coffee and Tea generate most of the revenue, these categories would be useful starting points for reviewing inventory and promotional opportunities.

The dataset doesn't include product costs or operating expenses, so I focused on revenue rather than profitability.

## What I Learned

This project gave me practical experience working with a larger dataset in MySQL and Power BI.

I improved my understanding of SQL aggregation, data validation, DAX measures and dashboard development. I also learned how to turn query results into visuals that help explain business performance.