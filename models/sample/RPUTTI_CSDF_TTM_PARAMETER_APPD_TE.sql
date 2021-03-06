{{ config(materialized='table', schema='WI') }}

with source_csdf_ttm_parameter as 
(
    select * from {{ source('EDW_TELMTRY_ETL_DB_W', 'CSDF_TTM_PARAMETER') }}
),
final as 
(
    select * from source_csdf_ttm_parameter where PRODUCT_NAME IN ('CST_APPD', 'CST_THOUSANDEYES')
)
select * from final