
with source as (

    select * from {{ source('hotel_directory', 'accommodations') }}

),

renamed as (

    select
        hotel_id,
        accommodation_id,
        accommocation_code,
        accommodation_name,
        max_occupancy,
        inventory_count,
        classification_type,
        surface_area_meters,
        classification_standard,
        _loaded_at

    from source

)

select * from renamed

