--Query to calculate total revenue, unique customers, and average revenue per customer by country from the clean_sales view. The results are ordered by total revenue in descending order and limited to the top 10 countries.
SELECT country
    , ROUND(SUM(revenue), 2) AS total_revenue
    , COUNT(DISTINCT customer_id) AS unique_customers
    , ROUND(SUM(revenue) / COUNT(DISTINCT customer_id), 2) AS avg_revenue_per_customer
FROM clean_sales
GROUP BY country
ORDER BY total_revenue DESC
LIMIT 10;