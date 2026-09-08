# Write your MySQL query statement below
SELECT ROUND((100*SUM(IF(t3.order_type='immediate',1,0))/COUNT(*)),2) AS 'immediate_percentage' FROM
(SELECT *, IF(t2.customer_pref_delivery_date=t2.first_order,'immediate','scheduled') AS 'order_type' FROM
(SELECT t0.customer_id, t0.first_order, t1.delivery_id, t1.customer_pref_delivery_date  FROM 
(SELECT customer_id, MIN(order_date) AS 'first_order' FROM Delivery GROUP BY customer_id) t0
INNER JOIN Delivery t1
ON t1.customer_id=t0.customer_id AND t1.order_date=t0.first_order) t2) t3