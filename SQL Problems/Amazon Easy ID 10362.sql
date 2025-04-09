-- Top Monthly Sellers
-- You are provided with an already aggregated dataset from Amazon that contains detailed information about sales across different products and marketplaces. Your task is to list the top 3 sellers in each product category for January. In case of ties, rank them the same and include all sellers tied for that position.


-- The output should contain seller_id ,total_sales ,product_category , market_place, and sales_date.

-- select * from sales_data;
WITH cte AS(
    SELECT *,
    DENSE_RANK() OVER (PARTITION BY product_category ORDER BY total_sales DESC) AS rnk
    FROM sales_data
    WHERE MONTHNAME(sales_date) = 'January'
    )
SELECT product_category, seller_id, total_sales, market_place, sales_date
FROM cte
WHERE rnk <= 3;