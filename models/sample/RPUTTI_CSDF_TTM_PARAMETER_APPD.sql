{{ config(materialized='table', schema='W') }}

{%- call statement('sqlstmt_output', fetch_result=True) -%}
      SELECT 'CST_APPD'
{%- endcall -%}

{%- set message_from_sqlstmt = load_result('sqlstmt_output')['data'][0][0] -%}

with source_csdf_ttm_parameter as 
(
    select * from {{ source('EDW_TELMTRY_ETL_DB_WI', 'RPUTTI_CSDF_TTM_PARAMETER_APPD_TE') }}          
    where PRODUCT_NAME = '{{ message_from_sqlstmt}}'::VARCHAR
),
final as 
(
    select * from source_csdf_ttm_parameter
)
select * from final