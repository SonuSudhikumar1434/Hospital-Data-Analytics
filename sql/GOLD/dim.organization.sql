CREATE OR REPLACE TABLE GOLD.dim_organization AS
SELECT
      organization_id,
      organization_name,
      address,
      city,
      state,
      zip,
      latitude,
      longitude

FROM SILVER.stg_organization;