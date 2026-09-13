# Write your MySQL query statement below
SELECT ROUND((SUM(t0.tiv_2016)),2) AS 'tiv_2016' FROM Insurance t0
WHERE (t0.lat, t0.lon)
IN (SELECT t1.lat, t1.lon FROM Insurance t1 GROUP BY t1.lat, t1.lon HAVING COUNT(*)=1)
AND t0.tiv_2015 IN (SELECT t2.tiv_2015 FROM Insurance t2 GROUP BY t2.tiv_2015 HAVING COUNT(*)>1)