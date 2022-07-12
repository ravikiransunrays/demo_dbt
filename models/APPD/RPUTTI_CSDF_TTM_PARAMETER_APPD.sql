{{ config(materialized='table') }}

with source_csdf_ttm_parameter as 
(
    select * from {{ source('TELMTRY_ETL_DB_WI', 'RPUTTI_CSDF_TTM_PARAMETER_APPD_TE') }}
    -- select * from {{ ref('RPUTTI_CSDF_TTM_PARAMETER_APPD_TE') }}
    where PRODUCT_NAME IN ('CST_APPD')
),
final as 
(
    select * from source_csdf_ttm_parameter
)
select * from final