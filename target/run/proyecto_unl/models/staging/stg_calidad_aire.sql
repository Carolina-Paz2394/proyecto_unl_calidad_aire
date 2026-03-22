
  create view "db_warehouse"."public"."stg_calidad_aire__dbt_tmp"
    
    
  as (
    

select
    ciudad_id as nombre_ciudad,
    indice_ica,
    particulas_pm25
from "db_warehouse"."public"."calidad_aire"
  );