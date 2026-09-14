-- ============================================================
-- Platform: LeetCode
-- Problem: Find Customer Referee
-- Problem #: 584
-- Difficulty: Easy
-- Topics: SELECT, WHERE, OR, NULL, Comparison Operators
-- ============================================================

-- Problem:
-- Find the names of customers who are either:
-- 1. Referred by a customer whose id is not 2, or
-- 2. Not referred by any customer.
--
-- Table:
-- Customer
--   id          - Unique ID of the customer
--   name        - Name of the customer
--   referee_id  - ID of the customer who referred them
--
-- Approach:
-- 1. Select the name column.
-- 2. Include customers whose referee_id is not equal to 2.
-- 3. Also include customers whose referee_id is NULL.
-- 4. Use OR because either condition is sufficient.
--
-- Important:
-- NULL cannot be checked using = or !=.
-- Use IS NULL to find customers who have no referee.

-- Solution:
SELECT name
FROM Customer
WHERE referee_id != 2
   OR referee_id IS NULL;