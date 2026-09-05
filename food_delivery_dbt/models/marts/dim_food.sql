SELECT
    food_id,
    food_name,
    food_type
FROM {{ ref('stg_food') }}