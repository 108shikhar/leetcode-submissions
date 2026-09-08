# Write your MySQL query statement below
SELECT t3.manager_id AS 'employee_id', t3.manager_name AS 'name', 
COUNT(*) AS 'reports_count', ROUND(AVG(t3.employee_age)) AS 'average_age' FROM
(SELECT t1.employee_id, t1.name AS 'employee_name', t1.age AS 'employee_age', 
t2.employee_id AS 'manager_id', t2.name AS 'manager_name' 
FROM Employees t1 INNER JOIN Employees t2 
ON t1.reports_to=t2.employee_id) t3
GROUP BY t3.manager_id
ORDER BY t3.manager_id