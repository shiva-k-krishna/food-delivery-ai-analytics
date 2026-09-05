SELECT
    user_id,
    user_name,
    user_email,
    user_age,
    user_gender,
    user_marital_status,
    user_occupation,
    user_monthly_income,
    user_educational_qualification,
    user_family_size,
    CASE WHEN user_age < 25 then 'Gen Z'
        WHEN user_age < 40 then 'Millennial'
        WHEN user_age < 55 then 'Gen X'
        WHEN user_age is null then 'Unknown'
        ELSE 'Boomer' END as age_segment
FROM {{ ref('stg_users') }}