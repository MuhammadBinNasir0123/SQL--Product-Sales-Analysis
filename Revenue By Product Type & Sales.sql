SELECT 
    product,
    SUM(Quantity) AS total_units_sold,
    SUM(Totalprice) AS total_revenue
FROM new_schema.sales_data
GROUP BY product
ORDER BY total_revenue DESC
LIMIT 5;