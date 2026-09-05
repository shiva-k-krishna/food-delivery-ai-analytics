SELECT
    TRY_TO_NUMBER(source_row_id) AS source_row_id,
    TRY_TO_NUMBER(RIGHT(menu_id, LENGTH(menu_id) - 2)) AS menu_id,
    TRY_TO_NUMBER(r_id) AS restaurant_id,
    TRY_TO_NUMBER(RIGHT(f_id, LENGTH(f_id) - 2)) AS food_id,
    TRIM(cuisine) AS cuisine,
    TRY_TO_DECIMAL(price, 10, 2) AS price
FROM {{ source('raw', 'menu') }}