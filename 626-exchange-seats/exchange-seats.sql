# Write your MySQL query statement below
SELECT t0.id,
CASE
    WHEN t0.post IS NULL AND t0.id%2!=0 THEN t0.student
    WHEN t0.id%2=0 THEN t0.pre
    WHEN t0.id%2!=0 THEN t0.post
END AS 'student'
FROM
(SELECT *, 
LEAD(student) OVER (ORDER BY id) AS 'post', LAG(student) OVER (ORDER BY id) AS 'pre'
FROM Seat) t0