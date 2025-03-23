-- Latest Login Date
-- For each video game player, find the latest date when they logged in.

SELECT player_id, MAX(login_date) AS latest_date
FROM players_logins
GROUP BY player_id;