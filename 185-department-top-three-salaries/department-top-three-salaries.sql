# Write your MySQL query statement below
SELECT t4.dept AS 'Department', t4.name AS 'Employee', t4.salary AS 'Salary' FROM
(SELECT *, DENSE_RANK() OVER(PARTITION BY dept ORDER BY salary DESC) AS 'rank' FROM 
(SELECT t1.id, t1.name, t1.salary, t1.departmentId, t2.name AS 'dept' FROM Employee t1
INNER JOIN Department t2 WHERE t2.id=t1.departmentId ORDER BY dept) t3) t4
WHERE t4.rank<4
