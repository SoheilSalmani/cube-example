
with source as (

    select * from {{ source('hotel_directory', 'hotels') }}

),

renamed as (

    select
        hotel_id,
        hotel_name,
        status,
        country,
        city,
        street,
        gps_latitude,
        gps_longitude,
        _loaded_at

    from source

)

select * from renamed

