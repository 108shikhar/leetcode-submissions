# Write your MySQL query statement below
(
    SELECT t2.name AS 'results'
    FROM MovieRating t1 INNER JOIN Users t2
    ON t1.user_id = t2.user_id
    GROUP BY t1.user_id, t2.name
    ORDER BY COUNT(*) DESC, t2.name ASC LIMIT 1
)
UNION ALL
(
    SELECT t4.title AS results
    FROM MovieRating t3 INNER JOIN Movies t4
    ON t3.movie_id = t4.movie_id
    WHERE t3.created_at >= '2020-02-01' AND t3.created_at < '2020-03-01'
    GROUP BY t3.movie_id, t4.title
    ORDER BY AVG(t3.rating) DESC, t4.title ASC LIMIT 1
)