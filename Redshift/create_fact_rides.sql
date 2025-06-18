
DROP TABLE IF EXISTS rideshare_warehouse.fact_rides;
CREATE TABLE rideshare_warehouse.fact_rides (
    ride_id BIGINT IDENTITY(1,1),
    product_id_key INT,
    source_id INT,
    destination_id INT,
    time_id INT,
    weather_id INT,
    geolocation_id INT,
    price FLOAT,
    distance FLOAT,
    surge_multiplier FLOAT,
    price_missing BOOLEAN,
    PRIMARY KEY (ride_id),
    FOREIGN KEY (product_id_key) REFERENCES rideshare_warehouse.dim_product(product_id_key),
    FOREIGN KEY (source_id) REFERENCES rideshare_warehouse.dim_location(location_id),
    FOREIGN KEY (destination_id) REFERENCES rideshare_warehouse.dim_location(location_id),
    FOREIGN KEY (time_id) REFERENCES rideshare_warehouse.dim_datetime(time_id),
    FOREIGN KEY (weather_id) REFERENCES rideshare_warehouse.dim_weather(weather_id),
    FOREIGN KEY (geolocation_id) REFERENCES rideshare_warehouse.dim_geolocation(geolocation_id)
);
