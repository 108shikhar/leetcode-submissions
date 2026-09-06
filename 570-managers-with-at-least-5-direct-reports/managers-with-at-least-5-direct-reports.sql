# Write your MySQL query statement below
SELECT t0.name FROM
(SELECT *, COUNT(*) AS 'report' FROM
(SELECT t2.id, t2.name FROM
Employee t1 JOIN Employee t2
ON t1.managerId = t2.id) t
GROUP BY t.id) t0
WHERE t0.report>=5