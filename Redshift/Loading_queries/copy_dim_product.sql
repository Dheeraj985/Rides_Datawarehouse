
COPY rideshare_warehouse.dim_product
FROM 's3://rideshare-csv-data/raw/dim_product.csv'
IAM_ROLE 'arn:aws:iam::<your-account-id>:role/RedshiftS3ReadOnlyRole'
CSV
IGNOREHEADER 1;
