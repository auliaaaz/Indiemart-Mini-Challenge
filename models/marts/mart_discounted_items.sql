SELECT dd.id AS id, 
        dd.discount_price, 
        dd.percentage, 
        dd.created_at, 
        items.category_fix, 
        items.source, 
        items.name
FROM {{ ref('inter_discounts_cleaned_data') }} AS dd
JOIN {{ ref('inter_items_cleaned_data')}} AS items ON items.id = dd.items_id