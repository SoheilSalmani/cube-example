select
    hotel_id,
    {{ dbt_utils.generate_surrogate_key(['hotel_id', 'pool_name', 'pool_type']) }} as pool_id,
    pool_name,
    pool_type,
    count(*) as inventory_count

from {{ ref("stg_hotel_directory__pools") }}

group by all
