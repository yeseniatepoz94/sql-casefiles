-- Prompt:
-- As a customer success analyst, you’re asked to pull a list of customers 
-- for an email campaign. Include their first name, last name, and email.

-- Assumptions:
-- The database has a table named `customers`
-- with columns: first_name, last_name, email

-- SQL Solution:
SELECT
  first_name,
  last_name,
  email
FROM
  customers;
