
with source as (

    select * from {{ source('hotel_directory', 'meeting_room_types') }}

),

renamed as (

    select
        meeting_room_type_id,
        meeting_room_type_label,
        _loaded_at

    from source

)

select * from renamed

