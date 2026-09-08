# Write your MySQL query statement below
SELECT MAX(t.num) AS 'num' FROM
(SELECT *, COUNT(*) AS 'frequency' FROM MyNumbers GROUP BY num) t
WHERE t.frequency=1