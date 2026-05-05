# Hospital Data Analytics Project

## Project Overview

This project demonstrates an end-to-end healthcare data analytics pipeline using Google Sheets, DuckDB, SQL, Medallion Architecture, and Looker Studio for visualization.

The project follows a modern data engineering workflow including data ingestion, transformation, warehousing, and dashboard reporting.

---

# Architecture Workflow

1. Healthcare datasets from Kaggle are uploaded into Google Sheets.
2. Each table is maintained as an individual sub-sheet.
3. Every sub-sheet is exposed as a CSV URL that mimics API-based ingestion.
4. CSV endpoints are ingested into DuckDB as views.
5. Medallion Architecture is implemented using:
   - Bronze Layer
   - Silver Layer
   - Gold Layer
6. SQL transformations are used to clean and model the data.
7. Gold mart tables are exported into Google Sheets.
8. Gold tables are connected to Looker Studio for dashboard creation.
9. GitHub is used for version control and project management.

---

# Tech Stack

- Python
- SQL
- DuckDB
- Google Sheets
- Looker Studio (Google Data Studio)
- Git & GitHub
- Kaggle Dataset

---

## 🔗 Live Dashboard

[Click here to view dashboard](https://datastudio.google.com/reporting/dad5bf02-36a5-4f0e-b0c0-a14370159624)

# Medallion Architecture

## Bronze Layer
- Raw data ingestion
- API-style CSV extraction from Google Sheets
- Minimal transformation

## Silver Layer
- Data cleaning
- Standardization
- Null handling
- Data quality improvements

## Gold Layer
- Business-ready marts
- KPI calculations
- Aggregated analytics tables
- Dashboard-ready datasets

---

## 📁 Project Structure

```
Hospital-Data-Analytics/
│
├── dashboards/
│   └── looker_studio_dashboard_links.md
│
├── screenshots/
│   ├── Business_Summary.png
│   ├── Hospital_Performance_Dashboard.png
│   └── Insights_and_Trends_Analysis.png
│
├── sql/
│   ├── bronze/
│   │   ├── bronze_encounters.sql
│   │   ├── bronze_organization.sql
│   │   ├── bronze_patients.sql
│   │   ├── bronze_payers.sql
│   │   └── bronze_procedures.sql
│   │
│   ├── silver/
│   │   ├── stg_encounter.sql
│   │   ├── stg_organization.sql
│   │   ├── stg_patients.sql
│   │   ├── stg_payers.sql
│   │   └── stg_procedures.sql
│   │
│   └── gold/
│       ├── dimensions/
│       │   ├── dim_organization.sql
│       │   ├── dim_patients.sql
│       │   └── dim_payers.sql
│       │
│       ├── facts/
│       │   ├── fact_encounters.sql
│       │   └── fact_procedures.sql
│       │
│       └── marts/
│           ├── mart_encounter_by_year.sql
│           ├── mart_payer_avg_claim_cost.sql
│           ├── mart_top10_frequent_procedures.sql
│           ├── mart_top10_procedures_high_cost.sql
│           └── mart_unique_patients_admit_each_year.sql
│
├── requirements.txt
├── README.md
├── .gitignore
└── hospital.duckdb
---

# Dashboard Features

The dashboard provides insights into:

- Total Patients
- Total Encounters
- Total Procedures
- Revenue Analytics
- Gender Composition
- Alive vs Dead Analysis
- Death Count by Year & Month
- Hospital Performance KPIs

Visualization is created using Looker Studio.

---

# Key Features

- End-to-end healthcare analytics pipeline
- DuckDB-based lightweight data warehouse
- Medallion architecture implementation
- SQL transformation workflow
- Interactive KPI dashboards
- GitHub version control

---

# Future Improvements

- Apache Airflow orchestration
- Cloud deployment
- Real-time data refresh
- Predictive analytics
- Machine learning integration

---

# Author

## SONU S

Electrical & Electronics Engineer

- Solar Project Coordinator
- Data Analytics Enthusiast
- SQL & Python Learner
- Dashboard Developer

---

# GitHub

Project maintained using Git and GitHub for version control and collaboration.
