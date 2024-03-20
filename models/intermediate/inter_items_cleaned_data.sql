WITH trimmed_items AS (
  SELECT
    id,
    sku,
    name,
    source,
    created_at,
    REPLACE(category, ' ', '') AS category_trimmed
  FROM {{ ref('stg_items') }}
)

SELECT
    id,
    sku,
    name,
    source,
    created_at,
    category_trimmed,
    CASE
    WHEN category_trimmed IN ('sayur', 'makanan siap saji', 'makanan kaleng', 'bahan makanan', 'makanan instan', 'makanan beku', 'buah dan dessert', 'olahan susu telur', 'dagingayam seafood', 'Produk Segar & Beku') THEN 'Produk Segar & Beku'
    WHEN category_trimmed IN ('perawatan diri', 'cosmetic', 'body care', 'hair care', 'mens care', 'produk tisu', 'Personal Care') THEN 'Personal Care'
    WHEN category_trimmed IN ('health care', 'Kebutuhan Kesehatan') THEN 'Kebutuhan Kesehatan'
    WHEN category_trimmed IN ('kartu perdana', 'kartu giftcard', 'gadget accessories', 'tas travel', 'mainan dan hobi', 'stationery special items', 'rokok', 'alat kontrasepsi', 'womens fashion', 'mens fashion', 'kids fashion', 'computer 2', 'florist', 'Lifestyle') THEN 'Lifestyle'
    WHEN category_trimmed IN ('perlengkapan makanan hewan', 'Pet Foods') THEN 'Pet Foods'
    WHEN category_trimmed IN ('bahan kue', 'Kebutuhan Dapur') THEN 'Kebutuhan Dapur'
    WHEN category_trimmed IN ('perlengkapan menyusui', 'makanan bayi', 'perlengkapan bayi', 'perlengkapan anak', 'popok bayi', 'Kebutuhan Ibu & Anak') THEN 'Kebutuhan Ibu & Anak'
    WHEN category_trimmed IN ('jas hujan', 'bed cover dan sprei', 'gas elpiji', 'handuk', 'deterjen dan pembersih', 'pembasmi kuman dan pewangi', 'household non electric hobby product', 'mekanik elektrik', 'elektronik rumah tangga', 'Kebutuhan Rumah') THEN 'Kebutuhan Rumah'
    WHEN category_trimmed IN ('cokelat permen', 'oriental food','cemilan biskuit', 'healthy food', 'korean food', 'western food', 'es krim', 'aneka roti', 'sarapan', 'Makanan') THEN 'Makanan'
    WHEN category_trimmed IN ('kental manis', 'jus', 'sirup', 'coklat bubuk kremer', 'minuman tradisional', 'susu', 'minuman ringan', 'kopi', 'teh', 'air mineral', 'Minuman') THEN 'Minuman'
  END AS category_fix
FROM trimmed_items