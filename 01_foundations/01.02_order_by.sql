-- Prompt: Display a list of products sorted by price from highest to lowest

SELECT 
    product_name,
    price
FROM products
ORDER BY price DESC;

-- Sample output:
-- | product_name    | price |
-- |-----------------|-------|
-- | Ultra Laptop    | 1499  |
-- | Smartwatch Pro  | 299   |
