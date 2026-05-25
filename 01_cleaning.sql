--Creates a view called clean_sales that filters out invalid records from the retail_sales table and calculates revenue for each sale.
CREATE VIEW clean_sales AS
SELECT
    invoice_no,
    stock_code,
    description,
    quantity,
    invoice_date,
    unit_price,
    customer_id,
    country,
    quantity * unit_price AS revenue
FROM
    retail_sales
WHERE
    customer_id IS NOT NULL
    AND quantity > 0
    AND unit_price > 0
    AND invoice_no NOT LIKE 'C%';