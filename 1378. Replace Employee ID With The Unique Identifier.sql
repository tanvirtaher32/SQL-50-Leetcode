-- ============================================================
-- Platform: LeetCode
-- Problem: Replace Employee ID With The Unique Identifier
-- Problem #: 1378
-- Difficulty: Easy
-- Topics: SELECT, LEFT JOIN, JOIN Conditions
-- ============================================================

-- Problem:
-- Show the unique ID and name of every employee.
--
-- If an employee does not have a unique ID, display NULL.
--
-- Table:
-- Employees
--   id    - Unique ID of the employee
--   name  - Name of the employee
--
-- EmployeeUNI
--   id         - Employee ID
--   unique_id  - Unique identifier assigned to the employee
--
-- Approach:
-- 1. Start with the Employees table because we need to return
--    every employee.
-- 2. Use LEFT JOIN to include employees who do not have a
--    matching row in EmployeeUNI.
-- 3. Match the two tables using their id columns.
-- 4. Select unique_id and name.
-- 5. If there is no matching unique_id, LEFT JOIN automatically
--    returns NULL.

-- Solution:
SELECT unique_id, name
FROM Employees
LEFT JOIN EmployeeUNI
    ON Employees.id = EmployeeUNI.id;