CREATE OR REPLACE TABLE GOLD.dim_patients AS
SELECT
      patient_id,
      birth_date,
      death_date,
      life_status,
      name_prefix,
      first_name,
      last_name,
      name_suffix,
      gender,
      age_years,
      marital_status,
      maiden_name,
      race,
      ethnicity,
      birth_place,
      address,
      city,
      state,
      county,
      zip,
      
      latitude,
      longitude
   
FROM SILVER.stg_patients;