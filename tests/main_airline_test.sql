-- Tests for airline data mart
select P_ID from {{ ref('int_airline_mart') }}
where P_ID NOT IN (select DISTINCT(P_ID) from {{ ref('stg_airline') }})