
#  Uber & Lyft Rideshare Data Warehouse Project

This project showcases an end-to-end Data Engineering pipeline using a real-world Uber and Lyft rideshare dataset for Boston (2018). It involves data cleaning, transformation, dimensional modeling, data warehouse setup, and Redshift deployment.

---

##  Project Structure

```
rideshare_data_warehouse/
├── notebooks/                  # Jupyter notebooks for ETL and modeling
│   ├── 1_data_cleaning.ipynb
│   ├── 2_load_to_postgres.ipynb
│   └── 3_dimension_modeling.ipynb
├── csv_data/                   # Exported CSVs for all dimension and fact tables
├── redshift/                   # Redshift DDL scripts and COPY commands
├── diagrams/                   # ERD diagram
└── README.md                   # Project overview and setup instructions
```

---

##  Dataset

Source: [Uber and Lyft Dataset - Kaggle](https://www.kaggle.com/datasets/brllrb/uber-and-lyft-dataset-boston-ma)

Contains ~690,000 rows of rideshare data with pricing, weather, and location details.

---

##  Tools & Technologies

- **Python (Pandas, SQLAlchemy)** for ETL
- **PostgreSQL** for local staging & star schema modeling
- **Amazon Redshift** for cloud data warehousing
- **Amazon S3** to stage CSVs
- **ERD** via [dbdiagram.io](https://dbdiagram.io/)
- **GitHub** for version control and deployment

---

## 🧱 Star Schema

- **Fact Table**: `fact_rides`
- **Dimension Tables**:
  - `dim_product`
  - `dim_datetime`
  - `dim_location`
  - `dim_weather`
  - `dim_geolocation`

![ERD](Diagrams/star_schema.png)

---

##  Setup & Execution

### 1. Clone this repository
```bash
git clone https://github.com/yourusername/rideshare_data_warehouse.git
cd rideshare_data_warehouse
```

### 2. Create and activate virtual environment (optional)
```bash
python -m venv venv
source venv/bin/activate
pip install -r requirements.txt
```

### 3. Run Jupyter notebooks for ETL
- Clean and transform data: `1_data_cleaning.ipynb`
- Load to PostgreSQL: `2_load_to_postgres.ipynb`
- Create dimension tables: `3_dimension_modeling.ipynb`

### 4. Export dimension and fact tables to CSV
```python
df.to_csv('csv_data/dim_product.csv', index=False)
```

### 5. Upload CSVs to S3 and load into Redshift
Use provided SQL scripts in `redshift/` folder:
```sql
COPY rideshare_warehouse.dim_product
FROM 's3://your-bucket/raw/dim_product.csv'
IAM_ROLE 'arn:aws:iam::<your_account>:role/YourRedshiftRole'
CSV
IGNOREHEADER 1;
```

---

##  Sample Queries (Redshift)

```sql
SELECT product_id, AVG(price)
FROM fact_rides
JOIN dim_product USING(product_id_key)
GROUP BY 1
ORDER BY 2 DESC;
```

---

##  Next Steps

- Add Airflow pipeline to automate ETL
- Build Tableau or QuickSight dashboard on top of Redshift

---

##  Credits

- Data: [Kaggle Dataset by Brian L.](https://www.kaggle.com/datasets/brllrb/uber-and-lyft-dataset-boston-ma)
- Author: Dheeraj Varanasi

---
