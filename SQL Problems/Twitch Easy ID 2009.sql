-- Users With Two Statuses
-- Find users who are both a viewer and streamer.


SELECT user_id
FROM twitch_sessions
GROUP BY user_id
HAVING COUNT(DISTINCT session_type) = 2;