{{ config(materialized='table') }}

with tb1 as(
    select 
    ID,
    FIRST_NAME,
    LAST_NAME
    from {{ source('datafeed_shared_schema','RAW_CUSTOMERS_DATA')}})
select * from tb1