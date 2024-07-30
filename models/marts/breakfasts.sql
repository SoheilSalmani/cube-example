with breakfasts as (select * from {{ ref("stg_hotel_directory__breakfasts") }}),

breakfast_types as (select * from {{ ref("stg_hotel_directory__breakfast_types") }}),

joined as (

    select
        breakfasts.*,
        breakfast_types.breakfast_type_label as breakfast_type

    from breakfasts

    left join breakfast_types
        on breakfasts.breakfast_type_id = breakfast_types.breakfast_type_id

)

select
    hotel_id,
    restaurant_name,
    {{ dbt_utils.generate_surrogate_key(['hotel_id', 'restaurant_name', 'breakfast_name', 'breakfast_type']) }} as breakfast_id,
    breakfast_name,
    breakfast_type

from joined
