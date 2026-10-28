-- ============================================================
-- Platform: LeetCode
-- Problem: Product Sales Analysis I
-- Problem #: 1068
-- Difficulty: Easy
-- Topics: SELECT, INNER JOIN, JOIN Conditions
-- ============================================================

-- Problem:
-- Report the product name, year, and price for each sale
-- recorded in the Sales table.
--
-- Tables:
-- Sales
--   sale_id     - ID of the sale
--   product_id  - ID of the product sold
--   year        - Year of the sale
--   quantity    - Quantity sold
--   price       - Price per unit
--
-- Product
--   product_id    - Unique ID of the product
--   product_name  - Name of the product
--
-- Approach:
-- 1. Select product_name from the Product table.
-- 2. Select year and price from the Sales table.
-- 3. Use INNER JOIN to combine the two tables.
-- 4. Match records using product_id, which exists in both tables.
-- 5. Return the requested columns without filtering or grouping.

-- Solution:
SELECT product_name, year, price
FROM Sales
INNER JOIN Product
    ON Sales.product_id = Product.product_id;