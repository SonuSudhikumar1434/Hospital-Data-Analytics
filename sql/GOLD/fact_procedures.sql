CREATE OR REPLACE TABLE gold.fact_procedures AS
SELECT
      patient_id,
      encounter_id,
      procedure_starts,
      procedure_stops,
      procedure_duration_minutes,
      encounter_code,
      procedure_code,
      procedure_description,
      base_encounter_cost,
      reason_code,
      reason_description,
      procedure_status

FROM SILVER.stg_Procedures