with bike as (
    select
    distinct
    START_STATIO_ID as station_id,
    START_STATION_NAME as station_name,
    START_LAT as station_lat,
    START_LNG as start_staion_lng
    from {{ ref('stg_bike') }}
    where ride_id != 'ride_id'
)

select * from bike