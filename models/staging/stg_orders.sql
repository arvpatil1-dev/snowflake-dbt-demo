{{ config(materialized='table') }}

select
    ORDER_ID,
    CUSTOMER_ID,
    CATEGORY,
    ORDER_STATUS
from {{ source('raw', 'ORDERS') }}

