# Write your MySQL query statement below
SELECT t1.product_id, t1.first_year, t2.quantity, t2.price FROM
(SELECT product_id, MIN(year) AS 'first_year' FROM Sales GROUP BY product_id) t1
INNER JOIN Sales t2
ON t2.year=t1.first_year AND t2.product_id=t1.product_id