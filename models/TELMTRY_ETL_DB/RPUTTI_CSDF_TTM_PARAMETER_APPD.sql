{{ config(materialized='table') }}

with source_csdf_ttm_parameter as 
(
    select * from {{ source('TELMTRY_ETL_DB_DV1', 'CSDF_TTM_PARAMETER') }}
),
final as 
(
    select * from source_csdf_ttm_parameter where PRODUCT_NAME IN ('CST_APPD')
)
select * from final