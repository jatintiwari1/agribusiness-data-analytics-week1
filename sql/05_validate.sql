SELECT
    COUNT(*) AS rows_total,
    COUNT(DISTINCT area_code) AS areas,
    COUNT(DISTINCT item_code) AS commodities,
    COUNT(DISTINCT year_value) AS years,
    MIN(year_value) AS first_year,
    MAX(year_value) AS last_year,
    SUM(value IS NULL) AS null_values
FROM faostat_crop_clean;

SELECT
    element_name,
    unit,
    COUNT(*) AS row_count
FROM faostat_crop_clean
GROUP BY element_name, unit
ORDER BY element_name, unit;

SELECT *
FROM faostat_crop_clean
WHERE element_name = 'Production'
AND value < 0;
