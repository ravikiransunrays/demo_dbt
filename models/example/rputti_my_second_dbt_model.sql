
-- Use the `ref` function to select from other models

select *
from {{ ref('rputti_my_first_dbt_model') }}
--where eid <> null
