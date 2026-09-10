# Write your MySQL query statement below
SELECT t0.person_name FROM
(SELECT *, 
SUM(weight) OVER(ORDER BY turn ASC ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW) AS 'total'
FROM Queue) t0
WHERE t0.total<=1000 ORDER BY turn DESC LIMIT 1