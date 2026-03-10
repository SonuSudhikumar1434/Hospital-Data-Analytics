
CREATE OR REPLACE TABLE gold.fact_encounters AS
select
    encounter_id,
    patient_id,
    organization_id,
    payer_id,
    encounter_start,
    encounter_stop,
    encounter_class,
    encounter_code,
    encounter_description,
    base_encounter_cost,
    total_claim_cost,
    payer_coverage,
    reason_code,
    reason_description,
    encounter_duration_minutes,
    patient_out_of_pocket

FROM 
    SILVER.stg_encounters