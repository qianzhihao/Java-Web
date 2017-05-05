-- Nth Highest Salary

-- Write a SQL query to get the Nth highest salary from the Employee table.
-- +----+--------+
-- | Id | Salary |
-- +----+--------+
-- | 1  | 100    |
-- | 2  | 200    |
-- | 3  | 300    |
-- +----+--------+

-- For example, given the above Employee table, the Nth highest salary where n = 2 is 200. If If there is no nth highest salary, then the query should return null.

--
CREATE FUNCTION getNthHighestSalary (N INT) RETURNS INT
BEGIN
DECLARE M INT;
SET M = N - 1;
	RETURN (
		SELECT DISTINCT Salary FROM Employee ORDER BY Salary DESC LIMIT M, 1
	);
END 