
DROP TABLE IF EXISTS rideshare_warehouse.dim_location;
CREATE TABLE rideshare_warehouse.dim_location (
    location_id INT PRIMARY KEY,
    location VARCHAR(100)
);
