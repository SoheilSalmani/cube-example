
with source as (

    select * from {{ source('hotel_directory', 'restaurants') }}

),

renamed as (

    select
        hotel_id,
        restaurant_id,
        restaurant_code,
        restaurant_name,
        number_of_seats,
        _loaded_at

    from source

)

select * from renamed

