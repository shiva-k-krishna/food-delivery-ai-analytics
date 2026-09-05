SELECT
    TRY_TO_NUMBER(source_row_id) AS source_row_id,
    TRY_TO_NUMBER(id) AS restaurant_id,
    TRIM(name) AS restaurant_name,
    TRIM(coalesce(regexp_substr(city, '[^,]+$'), city)) as city,
    TRY_TO_DECIMAL(rating, 3, 1) AS rating,
    TRIM(rating_count) AS rating_count,
    TRY_TO_NUMBER(regexp_substr(cost, '[0-9]+')) as cost,
    TRIM(cuisine) AS cuisine,
    TRIM(lic_no) AS license_no,
    TRIM(link) AS link,
    TRIM(address) AS address,
    TRY_TO_NUMBER(REGEXP_SUBSTR(address, '[0-9]{5,6}')) AS pincode
FROM {{ source('raw', 'restaurant') }}
