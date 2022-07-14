{{ config(materialized='table', schema='W') }}

with source_csdf_ttm_meta_rule_defn_appd AS
(
    select * from {{ source('TELMTRY_ETL_DB_WI', 'RPUTTI_CSDF_TTM_META_RULE_DEFN_APPD_TE') }}
    -- select * from {{ ref ('RPUTTI_CSDF_TTM_META_RULE_DEFN_APPD_TE') }}
    WHERE THREADING_PRODUCT_NAME = 'CST_APPD'
),
final AS
(
    select * from source_csdf_ttm_meta_rule_defn_appd
)
select * from final