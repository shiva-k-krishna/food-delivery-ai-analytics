SELECT
    TRY_TO_NUMBER(order_item_id) AS order_item_id,
    TRY_TO_NUMBER(order_id) AS order_id,
    TRY_TO_NUMBER(r_id) AS restaurant_id,
    TRY_TO_NUMBER(RIGHT(f_id, LENGTH(f_id) - 2)) AS food_id,
    TRY_TO_DECIMAL(price, 10, 2) AS price,
    TRY_TO_NUMBER(quantity) AS quantity,
    TRY_TO_DECIMAL(line_amount, 12, 2) AS line_amount
FROM {{ source('raw', 'order_items') }}