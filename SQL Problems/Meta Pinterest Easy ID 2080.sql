-- Mobile and Web Logins
-- Count the number of unique users per day who logged in from both a mobile device and web. Output the date and the corresponding number of users.

SELECT m.log_date, COUNT(DISTINCT m.user_id)
FROM mobile_logs AS m
JOIN web_logs AS w
ON m.user_id = w.user_id AND m.log_date = w.log_date
GROUP BY m.log_date;