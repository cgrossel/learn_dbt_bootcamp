SELECT
    *
FROM {{ ref('dim_listings_cleansed') }} as listings
INNER JOIN {{ ref('fct_reviews') }} as reviews
ON listings.listing_id = reviews.listing_id
WHERE listings.created_at >= reviews.review_date
