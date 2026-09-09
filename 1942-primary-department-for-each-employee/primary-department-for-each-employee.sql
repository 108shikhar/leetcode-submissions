# Write your MySQL query statement below
SELECT * FROM
(SELECT employee_id, department_id FROM Employee WHERE primary_flag='Y' GROUP BY employee_id) t1
UNION
(SELECT t0.employee_id, t0.department_id FROM
(SELECT *, COUNT(department_id) AS 'dept_number' FROM Employee GROUP BY employee_id) t0
WHERE t0.dept_number=1)