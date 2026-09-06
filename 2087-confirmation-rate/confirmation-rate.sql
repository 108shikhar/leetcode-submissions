# Write your MySQL query statement below
SELECT t0.user_id, IFNULL(ROUND((t0.success/t0.total_rate),2),0) AS 'confirmation_rate' FROM
(SELECT *, COUNT(action) AS 'total_rate', SUM(action='confirmed') AS 'success'FROM
(SELECT t1.user_id, t2.time_stamp, t2.action FROM Signups t1
LEFT JOIN Confirmations t2
ON t1.user_id = t2.user_id) t
GROUP BY t.user_id) t0
ORDER BY t0.user_id