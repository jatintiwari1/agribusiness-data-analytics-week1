CREATE DATABASE IF NOT EXISTS agribusiness_week1;

USE agribusiness_week1;

CREATE TABLE faostat_crop_raw (
    area_code VARCHAR(30),
    area_name VARCHAR(150),
    item_code VARCHAR(30),
    item_name VARCHAR(200),
    element_code VARCHAR(30),
    element_name VARCHAR(100),
    year_value VARCHAR(20),
    unit VARCHAR(50),
    value_raw VARCHAR(50),
    flag VARCHAR(20)
);
