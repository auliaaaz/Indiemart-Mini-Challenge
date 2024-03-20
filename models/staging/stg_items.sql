SELECT * FROM {{ source('sql_test', 'items')}}
ORDER BY created_at    