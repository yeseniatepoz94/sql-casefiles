-- Customers from CA or TX who joined in 2023
-- Output: full name, email, state, join date
-- Sorted by newest join date

SELECT
  first_name,
  last_name,
  email,
  state,
  join_date
FROM
  customers
WHERE
  state IN ('CA', 'TX')
  AND join_date BETWEEN '2023-01-01' AND '2023-12-31'
ORDER BY
  join_date DESC;

