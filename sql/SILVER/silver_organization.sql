CREATE OR REPLACE TABLE SILVER.stg_organization AS
SELECT
    Id AS organization_id,

    UPPER(TRIM(NAME)) AS organization_name,
    TRIM(ADDRESS) AS address,
    UPPER(TRIM(CITY)) AS city,
    UPPER(TRIM(STATE)) AS state,

    CAST(ZIP AS VARCHAR) AS zip,

    CAST(LAT AS DOUBLE) AS latitude,
    CAST(LON AS DOUBLE) AS longitude

FROM bronze.organization;