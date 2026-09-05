# Write your MySQL query statement below
SELECT t1.name, t2.bonus 
FROM Employee t1
LEFT JOIN Bonus t2
ON t1.empID = t2.empID
WHERE bonus IS NULL OR bonus<1000