# Write your MySQL query statement below
SELECT t0.product_id, IFNULL((ROUND((SUM(t0.money)/SUM(t0.units)),2)),0) AS 'average_price' FROM
(SELECT t1.product_id, t1.start_date, t1.end_date, t1.price, t2.purchase_date, t2.units,
t1.price*t2.units AS 'money' 
FROM Prices t1
LEFT JOIN UnitsSold t2
ON t1.product_id = t2.product_id AND
t2.purchase_date BETWEEN t1.start_date AND t1.end_date) t0
GROUP BY t0.product_id
