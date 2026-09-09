-- ============================================================
-- Platform: LeetCode
-- Problem: Recyclable and Low Fat Products
-- Problem #: 1757
-- Difficulty: Easy
-- Topics: SELECT, WHERE, AND
-- Link: https://leetcode.com/problems/recyclable-and-low-fat-products/
-- ============================================================

-- Problem:
-- Find the IDs of products that are both low fat and recyclable.
--
-- Table:
-- Products
--   product_id  - Unique ID of the product
--   low_fats    - 'Y' if the product is low fat, otherwise 'N'
--   recyclable  - 'Y' if the product is recyclable, otherwise 'N'
--
-- Approach:
-- 1. Return the product_id column.
-- 2. Filter products where low_fats is 'Y'.
-- 3. Filter products where recyclable is 'Y'.
-- 4. Both conditions must be true, so use the AND operator.

-- Solution:
SELECT product_id
FROM Products
WHERE low_fats = 'Y'
  AND recyclable = 'Y';