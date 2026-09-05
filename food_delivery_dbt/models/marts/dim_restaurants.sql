SELECT
    restaurant_id,
    restaurant_name,
    city,
    rating,
    rating_count,
    cost,
    cuisine,
    license_no,
    link,
    address,
    pincode
FROM {{ ref('stg_restaurant') }}