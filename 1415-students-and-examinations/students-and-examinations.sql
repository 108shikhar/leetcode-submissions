# Write your MySQL query statement below
SELECT t.student_id, t.student_name, t.subject_name, COUNT(t3.subject_name) AS 'attended_exams' FROM 
(SELECT * FROM Students t1
CROSS JOIN subjects t2
ORDER BY student_id, subject_name ASC) t
LEFT JOIN Examinations t3
ON t.student_id = t3.student_id AND t.subject_name = t3.subject_name
GROUP BY t.subject_name, t.student_id
ORDER BY t.student_id, t.subject_name ASC