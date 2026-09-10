# Write your MySQL query statement below
SELECT 'Low Salary' AS 'category', COUNT(CASE WHEN income<20000 THEN 1 END) AS 'accounts_count' FROM Accounts
UNION ALL
SELECT 'Average Salary' AS 'category', COUNT(CASE WHEN 20000<=income AND income<=50000 THEN 1 END) AS 'accounts_count' FROM Accounts
UNION ALL
SELECT 'High Salary' AS 'category', COUNT(CASE WHEN income>50000 THEN 1 END) AS 'accounts_count' FROM Accounts

/*
(SELECT *, 
CASE
        WHEN income<20000 THEN 'Low Salary'
        WHEN 20000<=income AND income<=50000 THEN 'Average Salary'
        WHEN income>50000 THEN 'High Salary'
END
AS 'category'
FROM Accounts) t0
*/
