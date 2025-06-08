-- Query: Customer Engagement Level
-- Purpose:
--     Use JOIN and CASE to label customers based on how many orders they've placed.
--     Categories: 'High', 'Medium', 'Low', or 'None'.
-- Tables Used:
--     - customers (customer_id, first_name, last_name)
--     - orders (order_id, customer_id, order_total, order_date)
-- Concepts Used:
--     - LEFT JOIN
--     - CASE WHEN logic
--     - COUNT aggregate
--     - GROUP BY
--     - Aliasing

SELECT 
  c.customer_id,
  c.first_name,
  c.last_name,
  COUNT(o.order_id) AS total_orders,
  CASE 
    WHEN COUNT(o.order_id) >= 5 THEN 'High'
    WHEN COUNT(o.order_id) >= 3 THEN 'Medium'
    WHEN COUNT(o.order_id) >= 1 THEN 'Low'
    ELSE 'None'
  END AS engagement_level
FROM customers c
LEFT JOIN orders o 
  ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.first_name, c.last_name
ORDER BY total_orders DESC;

