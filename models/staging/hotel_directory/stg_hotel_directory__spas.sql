
with source as (

    select * from {{ source('hotel_directory', 'spas') }}

),

renamed as (

    select
        hotel_id,
        spa_id,
        spa_name,
        location,
        _loaded_at

    from source

)

select * from renamed

