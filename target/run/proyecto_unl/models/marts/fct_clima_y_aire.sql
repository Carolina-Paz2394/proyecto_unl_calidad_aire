
  
    

  create  table "db_warehouse"."public"."fct_clima_y_aire__dbt_tmp"
  
  
    as
  
  (
    

with clima as (
    select * from "db_warehouse"."public"."stg_clima"
),
aire as (
    select * from "db_warehouse"."public"."stg_calidad_aire"
)

select
    c.nombre_ciudad,
    c.temp_celsius,
    c.condicion_climatica,
    a.indice_ica,
    a.particulas_pm25,
    
case
    when a.indice_ica <= 50 then 'Bueno'
    when a.indice_ica > 50 and a.indice_ica <= 100 then 'Moderado'
    else 'Dañino'
end
 as categoria_calidad_aire
from clima c
left join aire a
    on c.nombre_ciudad = a.nombre_ciudad
  );
  