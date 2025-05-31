-- Query Objective:
-- Show all products that generated more than $10,000 in total sales.
-- Sort results from highest to lowest total sales.

-- Assumptions:
-- Table: orders
-- Columns: product_name, total_price

-- SQL Solution:
SELECT
  product_name,
  SUM(total_price) AS total_sales
FROM orders
GROUP BY product_name
HAVING SUM(total_price) > 10000
ORDER BY total_sales DESC;

