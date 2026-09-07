# Write your MySQL query statement below
SELECT t3.contest_id, ROUND(((t3.contest_detail/t3.total_users)*100),2) AS 'percentage' FROM
(SELECT t2.total_users, t2.contest_id, COUNT(*) AS 'contest_detail' FROM
(SELECT t0.total_users, t0.user_id, t0.user_name, t1.contest_id FROM
(SELECT * FROM
(SELECT COUNT(*) AS 'total_users' FROM Users) t
CROSS JOIN Users) t0 INNER JOIN Register t1
ON t0.user_id = t1.user_id) t2
GROUP BY t2.contest_id) t3
ORDER BY percentage DESC, contest_id ASC