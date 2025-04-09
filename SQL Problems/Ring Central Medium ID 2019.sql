-- Top 2 Users With Most Calls
-- Return the top 2 users in each company that called the most. Output the company_id, user_id, and the user's rank. If there are multiple users in the same rank, keep all of them.

-- select * from rc_calls;

WITH cte AS (
        SELECT 
            company_id, 
            b.user_id,
            COUNT(call_id) AS call_cnt,
        DENSE_RANK() OVER(PARTITION BY company_id ORDER BY COUNT(call_id) DESC) AS rnk
        FROM rc_users AS a
        JOIN rc_calls AS b
        ON a.user_id = b.user_id
        GROUP BY company_id, b.user_id
        )
    SELECT company_id, user_id, rnk
    FROM cte
    WHERE rnk <= 2;