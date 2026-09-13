# Write your MySQL query statement below
SELECT t1.visited_on,

(SELECT SUM(t0.amount) FROM Customer t0 
WHERE t0.visited_on BETWEEN DATE_SUB(t1.visited_on, INTERVAL 6 DAY) AND t1.visited_on) AS 'amount',

ROUND(((SELECT SUM(t0.amount) FROM Customer t0 
WHERE t0.visited_on BETWEEN DATE_SUB(t1.visited_on, INTERVAL 6 DAY) AND t1.visited_on)/7),2) AS 'average_amount'

FROM Customer t1

WHERE t1.visited_on>= (SELECT DATE_ADD(MIN(visited_on), INTERVAL 6 DAY) FROM Customer t0)
GROUP BY t1.visited_on ORDER BY t1.visited_on ASC