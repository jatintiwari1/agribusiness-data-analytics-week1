SELECT COUNT(*) AS total_rows
FROM faostat_crop_raw;

SELECT
    SUM(area_name IS NULL OR TRIM(area_name) = '') AS missing_area,
    SUM(item_name IS NULL OR TRIM(item_name) = '') AS missing_item,
    SUM(year_value IS NULL OR TRIM(year_value) = '') AS missing_year,
    SUM(value_raw IS NULL OR TRIM(value_raw) = '') AS missing_value
FROM faostat_crop_raw;

SELECT
    area_code,
    item_code,
    element_code,
    year_value,
    COUNT(*) AS row_count
FROM faostat_crop_raw
GROUP BY area_code, item_code, element_code, year_value
HAVING COUNT(*) > 1;
