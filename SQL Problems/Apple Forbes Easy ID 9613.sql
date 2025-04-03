-- Find the date with the highest opening stock price
-- Find the date when Apple's opening stock price reached its maximum

SELECT date 
FROM aapl_historical_stock_price
WHERE open = (
    SELECT MAX(open)
    FROM aapl_historical_stock_price
);