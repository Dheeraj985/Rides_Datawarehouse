
DROP TABLE IF EXISTS rideshare_warehouse.dim_datetime;
CREATE TABLE rideshare_warehouse.dim_datetime (
    time_id INT PRIMARY KEY,
    timestamp FLOAT,
    date DATE,
    hour INT,
    weekday VARCHAR(20),
    is_weekend BOOLEAN
);
