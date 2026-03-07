CREATE OR REPLACE TABLE SILVER.stg_procedures AS
SELECT
    patient AS patient_id,
    encounter AS encounter_id,
    CAST(start  AS timestamp)AS procedure_starts,
    CAST(stop  AS timestamp)AS procedure_stops,
    CASE
        WHEN STOP IS NOT NULL
         THEN
            DATEDIFF(
                'minute',
                CAST(START AS TIMESTAMP),
                CAST(STOP  AS TIMESTAMP)
            )
        ELSE NULL
    END   AS procedure_duration_minutes,
    code AS encounter_code,
    CAST(CODE AS BIGINT) AS procedure_code,
    LOWER(TRIM(DESCRIPTION)) AS procedure_description,
    CAST(BASE_COST AS DOUBLE) AS base_encounter_cost,
    CAST(REASONCODE AS BIGINT)        AS reason_code,
    LOWER(TRIM(REASONDESCRIPTION))   AS reason_description,
    
   CASE
        WHEN STOP IS NULL THEN 'open'
        ELSE 'closed'
    END  AS procedure_status

FROM BRONZE.Procedures