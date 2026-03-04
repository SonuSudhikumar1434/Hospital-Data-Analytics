CREATE OR REPLACE TABLE SILVER.stg_patients AS
SELECT
    Id AS patient_id,
    CAST(BIRTHDATE AS DATE) AS birth_date,
    CAST(DEATHDATE AS DATE) AS death_date,
    CASE
       WHEN DEATHDATE IS NULL THEN 'ALIVE'
         ELSE 'DIED'
    END AS life_status,
    UPPER(TRIM(PREFIX)) AS name_prefix,
    upper(LOWER(TRIM(FIRST))) AS first_name,
    upper(LOWER(TRIM(LAST))) AS last_name,
    UPPER(TRIM(SUFFIX)) AS name_suffix,
    CASE
        WHEN UPPER(GENDER) IN ('M','MALE') THEN 'MALE'
        WHEN UPPER(GENDER) IN ('F','FEMALE') THEN 'FEMALE'
        ELSE 'UNKNOWN'
    END AS gender,
    DATE_DIFF('year', CAST(BIRTHDATE AS DATE), CURRENT_DATE) AS age_years,
    UPPER(TRIM(MARITAL)) AS marital_status,
    upper(LOWER(TRIM(MAIDEN))) AS maiden_name,
    UPPER(TRIM(RACE)) AS race,
    UPPER(TRIM(ETHNICITY)) AS ethnicity,
    TRIM(BIRTHPLACE) AS birth_place,
    TRIM(ADDRESS) AS address,
    UPPER(TRIM(CITY)) AS city,
    UPPER(TRIM(STATE)) AS state,
    UPPER(TRIM(COUNTY)) AS county,
    CAST(ZIP AS VARCHAR) AS zip,
    CAST(LAT AS DOUBLE) AS latitude,
    CAST(LON AS DOUBLE) AS longitude
   
FROM bronze.patients;