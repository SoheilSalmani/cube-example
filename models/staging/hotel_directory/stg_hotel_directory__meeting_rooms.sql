
with source as (

    select * from {{ source('hotel_directory', 'meeting_rooms') }}

),

renamed as (

    select
        hotel_id,
        meeting_room_id,
        meeting_room_code,
        meeting_room_name,
        meeting_room_type_id,
        surface_area,
        ceiling_height,
        number_of_seats,
        _loaded_at

    from source

)

select * from renamed

