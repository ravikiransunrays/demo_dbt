{{ config(materialized = 'table'
)}}

{% if var('source') == 'APPD' %}

    SELECT * 
    FROM {{ref('WI_N_RT_CUST_PS_STEP_METRIC_DLY_APPD')}}	

{% endif %}

