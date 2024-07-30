with meeting_rooms as (select * from {{ ref("stg_hotel_directory__meeting_rooms") }}),

meeting_room_types as (select * from {{ ref("stg_hotel_directory__meeting_room_types") }})

select
    meeting_rooms.hotel_id,
    meeting_rooms.meeting_room_id,
    meeting_rooms.meeting_room_code,
    meeting_rooms.meeting_room_name,
    meeting_room_types.meeting_room_type_label as meeting_room_type,
    meeting_rooms.surface_area,
    meeting_rooms.ceiling_height,
    meeting_rooms.number_of_seats,

from meeting_rooms

left join meeting_room_types
    on meeting_rooms.meeting_room_type_id = meeting_room_types.meeting_room_type_id
