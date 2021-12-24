SELECT COUNT(email)
FROM users
WHERE email LIKE '%.com';

SELECT first_name, COUNT(first_name) AS Count 
FROM users
GROUP BY 1
ORDER BY 2 DESC;

SELECT ROUND(watch_duration_in_minutes,0), COUNT(ROUND(watch_duration_in_minutes,0)) AS Count
FROM watch_history
GROUP BY 1
ORDER BY 1 ASC;

SELECT user_id, SUM(amount) AS 'Total'
FROM payments
WHERE status = 'paid'
GROUP BY user_id
ORDER BY 2 DESC;

SELECT user_id, SUM(watch_duration_in_minutes) AS 'Total'
FROM watch_history
GROUP BY 1
HAVING Total > 400 ;


SELECT ROUND(SUM(watch_duration_in_minutes),0)
FROM watch_history;

SELECT pay_date, SUM(amount)
FROM payments
WHERE status = 'paid'
GROUP BY 1
ORDER BY 2 DESC;

SELECT AVG(amount)
FROM payments
WHERE status = 'paid';

SELECT MAX(watch_duration_in_minutes), MIN(watch_duration_in_minutes)
FROM watch_history;
