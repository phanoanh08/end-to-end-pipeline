{{ config(materialized='table') }}

SELECT 
    *,
    {{ classify_total_bills("total_bills") }} AS class
FROM {{ ref('sale_values_by_category') }}