-- Prompt:
-- A report needs the 5 oldest customers based on when they joined.
-- List their first and last names with join dates.

-- Assumptions:
-- Table: customers
-- Columns: first_name, last_name, join_date

-- SQL Solution:
SELECT
  first_name,
  last_name,
  join_date
FROM
  customers
ORDER BY
  join_date ASC
LIMIT 5;
