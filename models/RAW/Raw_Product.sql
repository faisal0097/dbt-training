{{
    config(
        materialized='table'
    )
}}

select * 
from Raw.globalmart.product