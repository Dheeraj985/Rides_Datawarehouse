
COPY rideshare_warehouse.fact_rides
FROM 's3://rideshare-csv-data/raw/fact_rides.csv'
IAM_ROLE 'arn:aws:iam::<your-account-id>:role/RedshiftS3ReadOnlyRole'
CSV
IGNOREHEADER 1;
