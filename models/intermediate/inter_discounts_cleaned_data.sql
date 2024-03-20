SELECT id, 
        items_id, 
        discount_price, 
        original_price, 
        percentage, 
        created_at
FROM {{ ref('stg_discounts') }}
WHERE discount_price != 0