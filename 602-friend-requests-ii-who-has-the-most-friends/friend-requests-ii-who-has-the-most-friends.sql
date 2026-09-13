# Write your MySQL query statement below
SELECT t2.id, COUNT(*) AS 'num' FROM 
(SELECT t0.requester_id AS 'id' FROM RequestAccepted t0
UNION ALL
SELECT t1.accepter_id AS 'id' FROM RequestAccepted t1) t2
GROUP BY t2.id ORDER BY num DESC LIMIT 1