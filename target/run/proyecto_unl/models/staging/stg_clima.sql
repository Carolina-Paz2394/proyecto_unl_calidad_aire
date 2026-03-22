
  create view "db_warehouse"."public"."stg_clima__dbt_tmp"
    
    
  as (
    

select
    ciudad as nombre_ciudad,
    temperatura as temp_celsius,
    condicion as condicion_climatica
from "db_warehouse"."public"."datos_climaticos"
  );