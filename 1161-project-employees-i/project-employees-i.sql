# Write your MySQL query statement below
SELECT t.project_id, ROUND((AVG(t.experience_years)),2) AS 'average_years' FROM
(SELECT t1.project_id, t1.employee_id, t2.name, t2.experience_years 
FROM Project t1
INNER JOIN Employee t2
ON t2.employee_id = t1.employee_id) t
GROUP BY t.project_id
ORDER BY t.project_id