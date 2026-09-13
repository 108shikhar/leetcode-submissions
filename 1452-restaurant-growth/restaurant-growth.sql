# Write your MySQL query statement below
SELECT t1.visited_on,

(SELECT SUM(t2.amount) FROM Customer t2 
WHERE t2.visited_on BETWEEN DATE_SUB(t1.visited_on, INTERVAL 6 DAY) AND t1.visited_on) AS 'amount',

ROUND(((SELECT SUM(t3.amount) FROM Customer t3 
WHERE t3.visited_on BETWEEN DATE_SUB(t1.visited_on, INTERVAL 6 DAY) AND t1.visited_on)/7),2) AS 'average_amount'

FROM Customer t1

WHERE t1.visited_on>= (SELECT DATE_ADD(MIN(visited_on), INTERVAL 6 DAY) FROM Customer t0)
GROUP BY t1.visited_on ORDER BY t1.visited_on ASC