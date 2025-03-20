-- Unique Employee Logins
-- You have been tasked with finding the worker IDs of individuals who logged in between the 13th to the 19th inclusive of December 2021.
-- In your output, provide the unique worker IDs for the dates requested.

SELECT worker_id
FROM worker_logins
WHERE login_timestamp BETWEEN '2021-12-13' AND '2021-12-19';