{% set l = [1, 2, 3, 4, 5] %}
select
    {% for amount in l %}
        {{ test_m(amount) }} as new_amount_{{ amount }}
        {% if not loop.last %}, {% endif %}
    {% endfor %}

    -- -- with cte as (select * from {{ ref("stg_airline") }} limit 10)
    -- -- select
    -- --     p_id,
    -- --     case when gender = 'Female' then 'female' end as female,
    -- --     case when gender = 'Male' then 'male' end as male
    -- -- from cte
    -- select * from {{ ref("stg_airline") }} where gender = 'Female' limit 10
    
