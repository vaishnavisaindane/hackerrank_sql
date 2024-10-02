WITH cte1 AS (
  SELECT s.Id, s.name, p.Salary
  FROM Students s
  INNER JOIN Packages p ON s.Id = p.Id
),
cte2 AS (
  SELECT f.Id, f.Friend_ID, p.Salary
  FROM Friends f
  INNER JOIN Packages p ON f.Friend_ID = p.Id
)
SELECT cte1.name
FROM cte1
INNER JOIN cte2 ON cte1.Id = cte2.Id
WHERE cte2.Salary > cte1.Salary
ORDER BY cte2.Salary;
