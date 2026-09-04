# Write your MySQL query statement below
SELECT t1.customer_id, COUNT(*) AS 'count_no_trans' FROM Visits t1
LEFT JOIN Transactions t2
ON t1.visit_id = t2.visit_id
WHERE t2.amount IS NULL
GROUP BY t1.customer_id ORDER BY t1.customer_id