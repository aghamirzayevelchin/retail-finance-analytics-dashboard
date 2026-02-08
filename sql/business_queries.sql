-- Total monthly sales
SELECT date, SUM(sales) AS total_sales
FROM retail_sales
GROUP BY date;

-- Profit calculation
SELECT date, SUM(sales-expense) AS profit
FROM retail_sales
GROUP BY date;

-- Store performance
SELECT store,
       SUM(sales) AS sales,
       SUM(expense) AS expense,
       SUM(sales-expense) AS profit
FROM retail_sales
GROUP BY store
ORDER BY profit DESC;

-- Best selling category
SELECT category, SUM(sales) AS total_sales
FROM retail_sales
GROUP BY category
ORDER BY total_sales DESC;
