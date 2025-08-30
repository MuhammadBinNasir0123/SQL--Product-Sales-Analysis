SELECT Region, SUM(Totalprice) AS Revenue
FROM new_schema.sales_data
GROUP BY Region
ORDER BY Revenue DESC