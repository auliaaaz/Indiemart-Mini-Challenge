SELECT * FROM {{ source('sql_test', 'discounts_prices_all')}}
ORDER BY created_at    