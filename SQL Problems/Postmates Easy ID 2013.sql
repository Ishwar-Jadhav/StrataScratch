-- Customer Average Orders
-- How many customers placed an order and what is the average order amount?


SELECT COUNT(DISTINCT customer_id) AS count, AVG(amount) AS av_amount
FROM postmates_orders;