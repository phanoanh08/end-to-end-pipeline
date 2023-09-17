{% macro classify_total_bills(values) %}
    CASE 
        WHEN {{ values }} > 0 AND {{ values }} <= 100 THEN 'D'
        WHEN {{ values }} > 100 AND {{ values }} <= 200 THEN 'C'
        WHEN {{ values }} > 200 AND {{ values }} <= 300 THEN 'B'
        WHEN {{ values }} > 300 THEN 'A'
        ELSE null
    END 
{% endmacro %}