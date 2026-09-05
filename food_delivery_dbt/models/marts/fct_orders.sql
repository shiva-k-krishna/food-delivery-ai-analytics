{{ config(materialized='incremental', unique_key='order_id', incremental_strategy='merge', on_schema_change='append_new_columns') }}
SELECT 
    order_id,
    order_timestamp,
    order_date,
    user_id,
    restaurant_id,
    restaurant_city,    
    cuisine,
    items_count,
    sales_qty,
    subtotal,
    discount,
    delivery_fee,
    gst,
    sales_amount,
    currency,
    payment_method,
    order_status,
    user_rating,
    delivery_time_min,
    (order_status='Delivered') as is_delivered
FROM {{ ref('stg_orders') }}

{% if is_incremental() %}
    WHERE order_timestamp > ( SELECT MAX(order_timestamp) FROM {{ this }})
{% endif %}