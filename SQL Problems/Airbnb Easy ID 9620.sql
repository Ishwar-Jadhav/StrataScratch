-- Find searches with no data for the host_response_rate column

-- Find all search details where data is missing from the host_response_rate column.

SELECT *
FROM airbnb_search_details
WHERE host_response_rate IS NULL;