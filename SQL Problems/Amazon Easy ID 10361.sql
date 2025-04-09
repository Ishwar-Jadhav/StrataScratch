-- Peak Online Time
-- You are given a dataset from Amazon that tracks and aggregates user activity on their platform in certain time periods. For each device type, find the time period with the highest number of active users.


-- The output should contain 'user_count', 'time_period', and 'device_type', where 'time_period' is a concatenation of 'start_timestamp' and 'end_timestamp', like ; "start_timestamp to end_timestamp".

-- select * from user_activity;

-- SELECT CONCAT(start_timestamp, ' ', end_timestamp) AS 'start_timestamp to end_timestamp'
-- FROM user_activity;

-- select * from user_activity;

-- SELECT CONCAT(start_timestamp, ' ', end_timestamp) AS 'start_timestamp to end_timestamp'
-- FROM user_activity;

WITH cte AS(
    SELECT *,
    RANK() OVER (PARTITION BY device_type ORDER BY user_count DESC ) AS rnk
    FROM user_activity)
    
SELECT user_count, CONCAT(start_timestamp, ' to ', end_timestamp) AS 'start_timestamp to end_timestamp', device_type
FROM cte
WHERE rnk = 1;