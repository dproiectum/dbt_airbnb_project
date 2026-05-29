WITH raw_reviews as (
    SELECT * 
    --before : from AIRBNB.RAW.RAW_REVIEWS
    -- apply after adding source.yml to the project
    FROM {{ source('airbnb', 'reviews') }}
)

SELECT
    LISTING_ID
    , DATE as review_date
    , REVIEWER_NAME 
    , COMMENTS as review_text
    , SENTIMENT as review_sentiment

FROM raw_reviews