
with source as (

    select * from {{ source('hotel_directory', 'breakfasts') }}

),

renamed as (

    select
        hotel_id,
        restaurant_name,
        breakfast_name,
        breakfast_type_id,
        _loaded_at

    from source

)

select * from renamed

