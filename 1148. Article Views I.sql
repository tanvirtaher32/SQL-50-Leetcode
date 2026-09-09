-- ============================================================
-- Platform: LeetCode
-- Problem: Article Views I
-- Problem #: 1148
-- Difficulty: Easy
-- Topics: SELECT, DISTINCT, WHERE, ORDER BY
-- ============================================================

-- Problem:
-- Find all authors who viewed at least one of their own articles.
--
-- An author viewed their own article when:
-- author_id = viewer_id
--
-- Return the author IDs as "id" and sort them in ascending order.
--
-- Table:
-- Views
--   article_id  - ID of the article
--   author_id   - ID of the author who wrote the article
--   viewer_id   - ID of the person who viewed the article
--   view_date   - Date when the article was viewed
--
-- Approach:
-- 1. Select author_id and rename it to id.
-- 2. Compare author_id with viewer_id to find authors who viewed
--    their own articles.
-- 3. Use DISTINCT because the same author may appear multiple times.
-- 4. Sort the result by id in ascending order.

-- Solution:
SELECT DISTINCT author_id AS id
FROM Views
WHERE author_id = viewer_id
ORDER BY id;