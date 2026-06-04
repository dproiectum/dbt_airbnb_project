--create a test with parameters/argurments : min_row_count_params

{% test minimum_row_count_test(model, min_row_count_params) %}
{{ config(severity = 'warn') }}

    SELECT 
        count(*) as row_count
    FROM 
        {{ model }}
    HAVING 
        COUNT(*) < {{ min_row_count_params }}

{% endtest %}