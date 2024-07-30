select
    hotel_id,
    {{ dbt_utils.generate_surrogate_key(['hotel_id', 'parking_name', 'parking_type']) }} as parking_id,
    parking_name,
    parking_type

from {{ ref("stg_hotel_directory__parkings") }}
