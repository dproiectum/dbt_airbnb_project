{# {{ 
    config(
        materialized = 'view'
    ) 
}} #}

{{ 
    config(
        materialized = 'table'
    ) 
}}

WITH src_hosts as (
    SELECT * FROM {{ ref('src_hosts')}}
)
SELECT
    host_id
  , NVL(host_name,'Anonymous') as host_name

    --vid 44: modify data type from string to boolean. IFF is a snowflake function
  --, IFF(is_superhost = 't', true, false) as is_superhost  
  
  , is_superhost

  , CREATED_AT
  , UPDATED_AT

FROM 
    src_hosts