{{ config(materialized='table') }}

select
    ORDER_ID,
    CUSTOMER_ID,
    PAYMENT_METHOD,
    ORDER_STATUS
from {{ source('raw', 'ORDERS') }}

