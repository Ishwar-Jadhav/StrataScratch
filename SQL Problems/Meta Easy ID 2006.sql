-- Users Activity Per Month Day
-- Return a distribution of users activity per day of the month. By distribution we mean the number of posts per day of the month.

SELECT DAY(post_date), COUNT(DISTINCT post_id)
FROM facebook_posts
GROUP BY post_date;