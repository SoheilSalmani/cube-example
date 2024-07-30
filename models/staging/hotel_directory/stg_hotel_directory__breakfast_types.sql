
with source as (

    select * from {{ source('hotel_directory', 'breakfast_types') }}

),

renamed as (

    select
        breakfast_type_id,
        breakfast_type_label,
        _loaded_at

    from source

)

select * from renamed

