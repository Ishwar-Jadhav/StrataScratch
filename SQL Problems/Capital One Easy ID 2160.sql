-- Oregon's Prior Month's Sales

-- The sales division is investigating their sales for the past month in Oregon.
-- Calculate the total revenue generated from Oregon-based customers for April.

SELECT SUM(cost_in_dollars * units_sold) AS total_revenue 
FROM online_orders AS o
JOIN online_customers AS c
ON o.customer_id = c.id
WHERE MONTH(date_sold) = '04' AND state = 'Oregon';