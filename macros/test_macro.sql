{% macro test_m(a) %}
select p_id+{{a}} from {{ ref('stg_airline') }}
{% endmacro %}