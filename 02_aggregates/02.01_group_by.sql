-- Query Objective:
-- Show the total revenue generated per sales region.
-- Sort results by highest revenue first.

-- Assumptions:
-- Table: orders
-- Columns: region, total_price

-- SQL Solution:
SELECT
  region,
  SUM(total_price) AS total_revenue
FROM
  orders
GROUP BY
  region
ORDER BY
  total_revenue DESC;

