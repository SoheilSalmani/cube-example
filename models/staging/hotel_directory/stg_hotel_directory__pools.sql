
with source as (

    select * from {{ source('hotel_directory', 'pools') }}

),

renamed as (

    select
        hotel_id,
        -- pool_id,
        pool_name,
        pool_type,
        water_type,
        _loaded_at

    from source

)

select * from renamed

