SELECT
    TRY_TO_NUMBER(source_row_id) AS source_row_id,
    TRY_TO_NUMBER(user_id) AS user_id,
    TRIM(user_name) AS user_name,
    LOWER(TRIM(user_email)) AS user_email,
    user_password,
    TRY_TO_NUMBER(user_age) AS user_age,
    TRIM(user_gender) AS user_gender,
    TRIM(user_marital_status) AS user_marital_status,
    TRIM(user_occupation) AS user_occupation,
    TRIM(user_monthly_income) AS user_monthly_income,
    TRIM(user_educational_qualification) AS user_educational_qualification,
    TRY_TO_NUMBER(user_family_size) AS user_family_size
FROM {{ source('raw', 'users') }}