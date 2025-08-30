SELECT CustomerType, SUM(Totalprice) AS revenue
FROM new_schema.sales_data
GROUP BY CustomerType;