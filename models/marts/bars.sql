select
    hotel_id,
    {{ dbt_utils.generate_surrogate_key(['hotel_id', 'code', 'bar_name']) }} as bar_id,
    code as bar_code,
    bar_name,
    number_of_seats,
    has_air_conditioning

from {{ ref("stg_hotel_directory__bars") }}
