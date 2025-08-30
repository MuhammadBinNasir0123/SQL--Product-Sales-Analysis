SELECT 
    YEAR(STR_TO_DATE(LEFT(`Date`, 10), '%d/%m/%Y')) AS year,
    MONTH(STR_TO_DATE(LEFT(`Date`, 10), '%d/%m/%Y')) AS month,
    SUM(Totalprice) AS monthly_revenue,
    SUM(Quantity) AS monthly_units_sold
FROM new_schema.sales_data
WHERE `Date` IS NOT NULL 
    AND `Date` != ''
    AND LENGTH(`Date`) >= 10
GROUP BY YEAR(STR_TO_DATE(LEFT(`Date`, 10), '%d/%m/%Y')), 
         MONTH(STR_TO_DATE(LEFT(`Date`, 10), '%d/%m/%Y'))
ORDER BY year, month;
