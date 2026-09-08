# Write your MySQL query statement below
SELECT customer_id FROM
(SELECT t5.customer_id, t5.total_products, t6.product_key AS 'bought_product' FROM
(SELECT * FROM 
(SELECT * FROM
(SELECT DISTINCT(customer_id) FROM Customer) t0 CROSS JOIN
(SELECT COUNT(DISTINCT product_key) AS 'total_products' FROM Product) t1) t2
CROSS JOIN Product t4) t5 LEFT JOIN Customer t6 
ON t5.customer_id=t6.customer_id AND t5.product_key=t6.product_key) t7
GROUP BY customer_id, total_products
HAVING COUNT(DISTINCT bought_product) = total_products;