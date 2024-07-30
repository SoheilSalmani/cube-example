
with source as (

    select * from {{ source('hotel_directory', 'parkings') }}

),

renamed as (

    select
        hotel_id,
        -- parking_id,
        parking_name,
        parking_type,
        number_of_places,
        _loaded_at

    from source

)

select * from renamed

