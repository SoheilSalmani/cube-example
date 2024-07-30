
with source as (

    select * from {{ source('hotel_directory', 'fitness_centers') }}

),

renamed as (

    select
        hotel_id,
        fitness_center_id,
        fitness_center_name,
        location,
        _loaded_at

    from source

)

select * from renamed

