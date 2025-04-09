-- Rank guests based on their ages
-- Rank guests based on their ages.
-- Output the guest id along with the corresponding rank.
-- Order records by the age in descending order.

-- select * from airbnb_guests;

SELECT guest_id,
RANK() OVER (ORDER BY age DESC) AS rnk
FROM airbnb_guests;