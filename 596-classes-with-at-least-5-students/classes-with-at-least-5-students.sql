# Write your MySQL query statement below
SELECT t.class FROM
(SELECT *, COUNT(DISTINCT student) AS 'total_students' FROM Courses GROUP BY class) t
WHERE t.total_students>=5