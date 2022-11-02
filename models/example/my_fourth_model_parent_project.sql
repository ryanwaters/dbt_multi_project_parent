with my_first_dbt_model as (

    Select * from {{ ref('my_first_dbt_model_parent_project') }}
),

my_second_dbt_model as (

    Select * from {{ ref('my_third_model_parent_project') }}
)


Select * from my_first_dbt_model
UNION ALL
SELECT * FROM my_second_dbt_model