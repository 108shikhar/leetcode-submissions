# Write your MySQL query statement below
SELECT t4.product_name, t4.sold AS 'unit' FROM
(SELECT *, SUM(t3.unit) AS 'sold' FROM
(SELECT t2.product_id, t2.product_name, t2.product_category, t1.order_date, t1.unit 
FROM Products t2 INNER JOIN
(SELECT * FROM Orders WHERE order_date>='2020-02-01' AND order_date<'2020-03-01') t1
WHERE t2.product_id=t1.product_id) t3
GROUP BY t3.product_id) t4
WHERE t4.sold>=100