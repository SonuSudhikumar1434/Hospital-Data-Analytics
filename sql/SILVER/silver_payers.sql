CREATE OR REPLACE TABLE SILVER.stg_payers AS
SELECT 
    Id AS payer_id,
    UPPER(TRIM(NAME)) AS payer_name,
    TRIM(ADDRESS) AS payer_address,
    UPPER(TRIM(CITY)) AS payer_city,
    UPPER(TRIM(STATE_HEADQUARTERED)) AS payer_state,
    CAST(ZIP AS VARCHAR) AS payer_zip,
    TRIM(PHONE) AS payer_phone,
     CASE
        WHEN UPPER(NAME) = 'NO_INSURANCE' THEN 'SELF_PAY'
        ELSE 'INSURED'
     END AS payer_type,
FROM BRONZE.Payers