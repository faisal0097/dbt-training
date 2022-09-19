{{
    config(
        materialized='table'
    )
}}

select * 
From RAW.GLOBALMART.ORDERS