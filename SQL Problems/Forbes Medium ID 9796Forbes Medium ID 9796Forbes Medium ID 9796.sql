-- Find the most popular sector in the Forbes list
-- Find the most popular sector from the Forbes list based on the number of companies in each sector.
-- Output the sector along with the number of companies.

-- select * from forbes_global_2010_2014;
WITH cte AS(
    SELECT sector, COUNT(*) AS n_companies,
    RANK() OVER(ORDER BY COUNT(company) DESC) AS rnk
    FROM forbes_global_2010_2014
    GROUP BY sector
    )
SELECT sector, n_companies
FROM cte
WHERE rnk = 1;