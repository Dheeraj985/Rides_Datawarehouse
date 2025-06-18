
DROP TABLE IF EXISTS rideshare_warehouse.dim_product;
CREATE TABLE rideshare_warehouse.dim_product (
    product_id_key INT PRIMARY KEY,
    product_id VARCHAR(50),
    name VARCHAR(100)
);
