SELECT
    TRY_TO_NUMBER(source_row_id) AS source_row_id,
    TRY_TO_NUMBER(RIGHT(f_id, LENGTH(f_id) - 2)) AS food_id,
    TRIM(item) AS food_name,
    TRIM(veg_or_non_veg) AS food_type
FROM {{ source('raw', 'food') }}
