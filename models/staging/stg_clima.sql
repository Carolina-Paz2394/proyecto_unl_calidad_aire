{{ config(materialized='view') }}

select
    ciudad as nombre_ciudad,
    temperatura as temp_celsius,
    condicion as condicion_climatica
from {{ source('semillas', 'datos_climaticos') }}