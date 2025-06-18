
DROP TABLE IF EXISTS rideshare_warehouse.dim_geolocation;
CREATE TABLE rideshare_warehouse.dim_geolocation (
    geolocation_id INT PRIMARY KEY,
    latitude FLOAT,
    longitude FLOAT
);
