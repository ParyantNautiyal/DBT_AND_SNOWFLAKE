with airline as (
    
    select * from {{ ref('stg_airline') }} order by DEPARTURE_DATE

)
select * from airline 