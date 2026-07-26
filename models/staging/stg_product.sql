{{ config(materialized='table') }}

select
    product_id,
    product_name,
    CATEGORY,
    UNIT_PRICE
from {{ source('raw', 'PRODUCT') }}
