
COPY rideshare_warehouse.dim_datetime
FROM 's3://rideshare-csv-data/raw/dim_datetime.csv'
IAM_ROLE 'arn:aws:iam::<your-account-id>:role/RedshiftS3ReadOnlyRole'
CSV
IGNOREHEADER 1;
