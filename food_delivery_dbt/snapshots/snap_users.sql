{% snapshot snap_users %}

{{
    config(
        target_schema='MARTS',
        unique_key='user_id',
        strategy='check',
        check_cols=[
            'user_name',
            'user_email',
            'user_age',
            'user_gender',
            'user_marital_status',
            'user_occupation',
            'user_monthly_income',
            'user_educational_qualification',
            'user_family_size'
        ]
    )
}}

SELECT *
FROM {{ ref('stg_users') }}

{% endsnapshot %}