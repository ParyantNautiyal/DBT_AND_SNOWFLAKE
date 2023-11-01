with source as (

    select * from {{ source('tpch', 'AIRLINE') }}

),

renamed as (

    select

      
	PASSENGER_ID as P_ID,
	FIRST_NAME as F_NAME,
	LAST_NAME as L_name,
	GENDER,
	AGE,
	NATIONALITY,
	AIRPORT_NAME,
	AIRPORT_COUNTRY_CODE ,
	COUNTRY_NAME,
	AIRPORT_CONTINENT,
	CONTINENTS,
	DEPARTURE_DATE,
	ARRIVAL_AIRPORT,
	PILOT_NAME,
	FLIGHT_STATUS as STATUS_OF_FLIGHT
    from source

)

select * from renamed

-- select * from {{ source('tpch', 'AIRLINE') }}