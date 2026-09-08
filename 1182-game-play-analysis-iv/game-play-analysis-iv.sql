# Write your MySQL query statement below 
SELECT ROUND((AVG(t3.value)),2) AS 'fraction' FROM
(SELECT t1.player_id, t1.device_id, t1.event_date, t1.games_played, t1.initial_login, 
IF((DATEDIFF(t2.event_date,t1.initial_login)=1),1,0) AS 'value' FROM
(SELECT *, MIN(event_date) AS 'initial_login' FROM Activity GROUP BY player_id) t1
LEFT JOIN Activity t2
ON DATEDIFF(t2.event_date,t1.initial_login)=1 AND t2.player_id=t1.player_id) t3