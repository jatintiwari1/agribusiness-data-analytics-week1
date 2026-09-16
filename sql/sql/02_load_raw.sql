LOAD DATA LOCAL INFILE 'C:/data/faostat_crop_production_raw.csv'
INTO TABLE faostat_crop_raw
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(area_code, area_name, item_code, item_name,
 element_code, element_name, year_value, unit,
 value_raw, flag);
