-- Quarterback Top Ratings
-- Identify the top 10 ratings received by quarterbacks. Your output should include the quarterback's name and their corresponding rating.

-- select * from qbstats_2015_2016;

-- SELECT qb, RANK() OVER(ORDER BY rate DESC) AS rnk
-- FROM qbstats_2015_2016;

-- SELECT qb, rate
-- FROM (
--     SELECT qb, rate, DENSE_RANK() OVER(ORDER BY rate DESC) AS rnk
--     FROM qbstats_2015_2016
-- ) AS cte
-- WHERE rnk BETWEEN 1 AND 10;

WITH cte AS (
    SELECT qb, rate, 
    DENSE_RANK() OVER(ORDER BY rate DESC) AS rnk
    FROM qbstats_2015_2016)
SELECT qb, rate
FROM cte
WHERE rnk BETWEEN 1 AND 10;