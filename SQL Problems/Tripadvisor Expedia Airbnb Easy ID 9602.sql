-- Dirty Hotel Rooms
-- Find hotels in the Netherlands that got complaints from guests about room dirtiness (word "dirty" in its negative review). Output all the columns in your results

SELECT *
FROM hotel_reviews
WHERE hotel_address LIKE '%Netherlands'
AND negative_review LIKE '%dirty%';