-- Least Popular Video
-- You have been asked to find the least popular video based on how many users have watched it.
-- Consider that a user can watch a video multiple times. Only the unique user views are counted.
-- In the case of a tie, output all the video ids of the least popular video(s).

SELECT video_id
FROM videos_watched
GROUP BY video_id
ORDER BY COUNT(DISTINCT user_id)
LIMIT 1;