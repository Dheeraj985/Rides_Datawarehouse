
DROP TABLE IF EXISTS rideshare_warehouse.dim_weather;
CREATE TABLE rideshare_warehouse.dim_weather (
    weather_id INT PRIMARY KEY,
    icon VARCHAR(50),
    short_summary VARCHAR(50),
    temperature FLOAT,
    humidity FLOAT,
    windSpeed FLOAT
);
