-- Find searches for Los Angeles neighborhoods.

-- Find distinct searches for Los Angeles neighborhoods. Output neighborhoods and remove duplicates.

SELECT DISTINCT neighbourhood
FROM airbnb_search_details
WHERE city = 'LA';