WITH raw_listings as (
    SELECT * 
    --before : from AIRBNB.RAW.RAW_LISTINGS
    -- apply after adding source.yml to the project
    FROM {{ source('airbnb', 'listings') }}
)

SELECT
    ID as listing_id,
    NAME as listing_name,
    LISTING_URL, 
    ROOM_TYPE,
    MINIMUM_NIGHTS,
    HOST_ID,
    PRICE as price_str,
    CREATED_AT,
    UPDATED_AT,
FROM raw_listings