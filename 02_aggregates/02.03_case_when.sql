-- Query Objective:
-- Classify customers into four membership tiers based on total spend.
-- Output: full name, total_spent, and tier label.
-- Sorted by total_spent from highest to lowest.

-- Assumptions:
-- Table: customers
-- Columns: first_name, last_name, total_spent

-- SQL Solution:
SELECT
  first_name,
  last_name,
  total_spent,
  CASE
    WHEN total_spent >= 2000 THEN 'Platinum'
    WHEN total_spent >= 1000 THEN 'Gold'
    WHEN total_spent >= 500 THEN 'Silver'
    ELSE 'Standard'
  END AS member_tier
FROM customers
ORDER BY total_spent DESC;

