SELECT * FROM {{ ref('dim_listings_cleansed') }} as l
INNER JOIN {{ ref('fct_reviews') }} as r
USING (listing_id)
WHERE l.created_at >= r.review_date
