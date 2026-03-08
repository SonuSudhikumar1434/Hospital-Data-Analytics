CREATE OR REPLACE TABLE gold.dim_payers AS
SELECT 
    payer_id,
    payer_name,
    payer_address,
    payer_city,
    payer_state,
    payer_zip,
    payer_phone,
    payer_type,
FROM SILVER.stg_Payers