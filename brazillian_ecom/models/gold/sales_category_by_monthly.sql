-- WITH sale_values_by_category AS (
--     SELECT * FROM {{ ref("sale_values_by_category") }}
-- )
{{ config(materialized="table") }}
WITH sales_category_by_monthly AS (
    SELECT 
        category,
        {{ dbt_utils.pivot(
            'monthly', 
            dbt_utils.get_column_values(
                ref("sale_values_by_category"),
                'monthly'
            ),
            agg='sum',
            then_value='total_bills'
        ) }}
    FROM {{ ref("sale_values_by_category") }}
    GROUP BY category
)

SELECT * FROM sales_category_by_monthly