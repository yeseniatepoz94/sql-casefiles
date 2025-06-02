-- Concepts Demonstrated:
-- • COUNT(*) vs COUNT(column)
-- • Filtering with HAVING after grouping
-- • Counting distinct values
-- • Using GROUP BY with aggregation
-- • Real-world analytics use cases: customer behavior, order summaries, product tracking

--------------------------------------------------------------------------------
-- Total number of orders in the system
-- Prompt: "How many total orders have been placed?"
SELECT
  COUNT(*) AS total_orders
FROM orders;

--------------------------------------------------------------------------------
-- Orders per customer
-- Prompt: "How many orders has each customer placed?"
SELECT
  customer_id,
  COUNT(*) AS total_orders
FROM orders
GROUP BY customer_id;

--------------------------------------------------------------------------------
-- Customers who placed more than 2 orders
-- Prompt: "List customers who placed more than 2 orders."
SELECT
  customer_id,
  COUNT(*) AS total_orders
FROM orders
GROUP BY customer_id
HAVING COUNT(*) > 2
ORDER BY total_orders DESC;

--------------------------------------------------------------------------------
-- Total orders per product
-- Prompt: "How many times was each product ordered?"
SELECT
  product_name,
  COUNT(order_id) AS total_orders
FROM orders
GROUP BY product_name
ORDER BY total_orders DESC;

--------------------------------------------------------------------------------
-- Products with more than 10 orders
-- Prompt: "List all products ordered more than 10 times."
SELECT
  product_name,
  COUNT(order_id) AS total_orders
FROM orders
GROUP BY product_name
HAVING COUNT(order_id) > 10
ORDER BY total_orders DESC;

--------------------------------------------------------------------------------
-- Customers who ordered at least 2 different products
-- Prompt: "Show customers who ordered at least 2 different products."
SELECT
  customer_id,
  COUNT(DISTINCT product_name) AS products_ordered
FROM orders
GROUP BY customer_id
HAVING COUNT(DISTINCT product_name) >= 2
ORDER BY products_ordered DESC;

--------------------------------------------------------------------------------
-- Products ordered more than once
-- Prompt: "How many times did each product get ordered, but only include products ordered more than once."
SELECT
  product_name,
  COUNT(order_id) AS total_orders
FROM orders
GROUP BY product_name
HAVING COUNT(order_id) > 1
ORDER BY total_orders DESC;

--------------------------------------------------------------------------------
-- Count of each product ordered per customer
-- Prompt: "How many of each product did each customer order?"
SELECT
  customer_id,
  product_name,
  COUNT(*) AS total_orders
FROM orders
GROUP BY customer_id, product_name
ORDER BY customer_id, total_orders DESC;
