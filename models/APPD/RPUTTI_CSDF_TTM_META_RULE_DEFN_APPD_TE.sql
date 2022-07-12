{{ config(materialized='table') }}

with source_csdf_ttm_meta_rule_defn as 
(
    select * from {{ source('TELMTRY_ETL_DB_W', 'CSDF_TTM_META_RULE_DEFN') }}
),
final as 
(
    select * from source_csdf_ttm_meta_rule_defn where THREADING_PRODUCT_NAME IN ('CST_APPD', 'CST_THOUSANDEYES')
)
select * from final