-- Query: Top Customers by Order Volume
-- Purpose:
--     Identify customers who have placed more than 2 orders, 
--     and display their full name and total number of orders.
--     Results are sorted from highest to lowest order count.
-- Tables Used:
--     - customers (customer_id, first_name, last_name)
--     - orders (order_id, customer_id, order_total, order_date)
-- Concepts Used:
--     - INNER JOIN
--     - GROUP BY with multiple columns
--     - COUNT aggregate
--     - HAVING clause
--     - ORDER BY alias

SELECT 
  first_name, 
  last_name, 
  COUNT(o.order_id) AS total_orders
FROM customers c
JOIN orders o 
  ON c.customer_id = o.customer_id
GROUP BY first_name, last_name
HAVING COUNT(o.order_id) > 2
ORDER BY total_orders DESC;

