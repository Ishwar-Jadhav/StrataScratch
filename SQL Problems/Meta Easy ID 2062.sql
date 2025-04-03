-- Questions in Second Quarter
-- How many searches were there in the second quarter of 2021?

SELECT COUNT(search_id) AS result
FROM fb_searches
WHERE QUARTER(date) = 2 AND YEAR(date) = 2021;