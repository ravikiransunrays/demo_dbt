{{ config(materialized='table', database='EDW_TELMTRY_ETL_DB_DV1', schema='WI') }}

select * from {{ref('rputti_country_codes')}}