--incremental model to filter out reviews with null review_text
-- this model will be built incrementally 
-- = 
-- dbt will automatically recognize this a table even if the dbt_project.yml file has a default materialization of view


{{ 
    config(
        materialized = 'incremental', 
        
        on_schema_change = 'fail'
    ) 
}}

WITH src_reviews as (
    SELECT * FROM {{ ref('src_reviews')}}
)
SELECT *
FROM src_reviews
WHERE review_text IS NOT NULL
--add Jinja if statement
{% if is_incremental() %}
    AND review_date > (SELECT MAX(review_date) FROM {{ this }})
{% endif %}