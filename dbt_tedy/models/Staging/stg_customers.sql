

WITH source AS (

    SELECT * FROM {{ source('Instacart', 'customers') }}
),
name_merge AS (
    SELECT customer_id,
        CONCAT(first_name, ' ', last_name) AS customer_name,
        email,
        address,
        phone_number,
        country,
        age,
        gender
FROM source
)

SELECT * FROM name_merge

--CI/CD test 2