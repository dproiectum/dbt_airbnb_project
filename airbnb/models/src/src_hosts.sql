WITH raw_hosts as (
    SELECT * 
    --before : from AIRBNB.RAW.RAW_HOSTS
    -- apply after adding source.yml to the project
    FROM {{ source('airbnb', 'hosts') }}

)
SELECT
  ID as host_id
  , NAME as host_name
  , IS_SUPERHOST
  , CREATED_AT
  , UPDATED_AT
  
FROM raw_hosts