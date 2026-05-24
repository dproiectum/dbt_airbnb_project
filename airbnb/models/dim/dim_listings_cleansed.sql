With src_listings 
as (
    select * from {{ ref('src_listings') }}
)
select
    listing_id,
    listing_name,
    listing_url,
    room_type,
    CASE 
        WHEN minimum_nights = 0 THEN 1
        ELSE minimum_nights 
    END as minimum_nights,
    host_id,
    replace(price_str, '$', '')::NUMBER(10,2) as price, 
    created_at, 
    updated_at
from src_listings