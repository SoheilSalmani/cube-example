
with source as (

    select * from {{ source('hotel_directory', 'bars') }}

),

renamed as (

    select
        hotel_id,
        code,
        bar_name,
        number_of_seats,
        has_air_conditioning,
        _loaded_at

    from source

)

select * from renamed

