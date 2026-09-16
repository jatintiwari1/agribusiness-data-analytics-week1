CREATE TABLE faostat_crop_clean AS
SELECT
    CAST(area_code AS UNSIGNED) AS area_code,
    NULLIF(TRIM(area_name), '') AS area_name,
    CAST(item_code AS UNSIGNED) AS item_code,
    NULLIF(TRIM(item_name), '') AS item_name,
    CAST(element_code AS UNSIGNED) AS element_code,
    NULLIF(TRIM(element_name), '') AS element_name,
    CAST(year_value AS UNSIGNED) AS year_value,
    NULLIF(TRIM(unit), '') AS unit,
    CAST(
        NULLIF(TRIM(value_raw), '')
        AS DECIMAL(20,4)
    ) AS value,
    NULLIF(TRIM(flag), '') AS flag
FROM faostat_crop_raw
WHERE year_value REGEXP '^[0-9]{4}$'
  AND value_raw IS NOT NULL
  AND TRIM(value_raw) <> '';
