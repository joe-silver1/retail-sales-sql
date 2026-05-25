WITH monthly_revenue AS (
    SELECT
        DATE_TRUNC('month', invoice_date) AS month,
        SUM(revenue) AS total_revenue
    FROM clean_sales
    GROUP BY month
),
monthly_with_lag AS (
    SELECT
        month,
        total_revenue,
        LAG(total_revenue) OVER (ORDER BY month) AS previous_month_revenue
    FROM monthly_revenue
)

SELECT month,
       total_revenue,
       previous_month_revenue,
       ROUND((total_revenue - previous_month_revenue) / previous_month_revenue * 100, 2) AS revenue_growth_percentage

       
FROM monthly_with_lag
ORDER BY month;