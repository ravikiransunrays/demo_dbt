
/*
    Welcome to your first dbt model!
    Did you know that you can also configure models directly within SQL files?
    This will override configurations stated in dbt_project.yml

    Try changing "table" to "view" below
*/

{{ config(materialized='table') }}

with source_data as (

    select 1 as eid, 'Ravi' as ename
    union all
    select null as eid, null as ename
    union all
    select 3 as eid, 'Kiran' as ename
    union all
    select null as eid, null as ename
    union all
    select 5 as eid, 'Aditya' as ename
    union all
    select null as eid, null as ename
    union all
    select 7 as eid, 'Surya' as ename
)

select *
from source_data

/*
    Uncomment the line below to remove records with null `id` values
*/

-- where id is not null
