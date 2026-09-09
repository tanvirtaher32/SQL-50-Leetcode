-- ============================================================
-- Platform: LeetCode
-- Problem: Invalid Tweets
-- Problem #: 1683
-- Difficulty: Easy
-- Topics: SELECT, WHERE, String Functions, Comparison Operators
-- ============================================================

-- Problem:
-- Find the IDs of tweets that are invalid.
--
-- A tweet is invalid if the number of characters in its content
-- is strictly greater than 15.
--
-- Return the tweet IDs in any order.
--
-- Table:
-- Tweets
--   tweet_id  - Unique ID of the tweet
--   content   - Content of the tweet
--
-- Approach:
-- 1. Select the tweet_id column.
-- 2. Use LENGTH() to calculate the number of characters in content.
-- 3. Filter tweets whose content length is greater than 15.

-- Solution:
SELECT tweet_id
FROM Tweets
WHERE LENGTH(content) > 15;