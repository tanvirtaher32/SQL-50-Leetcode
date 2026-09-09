-- ============================================================
-- Platform: LeetCode
-- Problem: Big Countries
-- Problem #: 595
-- Difficulty: Easy
-- Topics: SELECT, WHERE, OR, Comparison Operators
-- Link: https://leetcode.com/problems/big-countries/
-- ============================================================

-- Problem:
-- Find the name, population, and area of countries that are
-- considered "big".
--
-- A country is big if:
-- 1. Its area is at least 3,000,000 km², OR
-- 2. Its population is at least 25,000,000.
--
-- Table:
-- World
--   name        - Country name
--   continent   - Continent where the country is located
--   area        - Area of the country in km²
--   population  - Population of the country
--   gdp         - GDP of the country
--
-- Approach:
-- 1. Select the name, population, and area columns.
-- 2. Filter countries whose area is at least 3,000,000.
-- 3. Also include countries whose population is at least
--    25,000,000.
-- 4. Since either condition is sufficient, use the OR operator.

-- Solution:
SELECT name, population, area
FROM World
WHERE area >= 3000000
   OR population >= 25000000;