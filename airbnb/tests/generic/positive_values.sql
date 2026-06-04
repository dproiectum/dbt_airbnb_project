-- generic test with column_name as parameter

{% test positive_values_test(model, column_name) %}

    SELECT *
    FROM {{ model }}
    WHERE {{ column_name }} <= 0

{% endtest %}