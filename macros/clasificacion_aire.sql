{% macro clasificacion_aire(indice) %}
case
    when {{ indice }} is null then 'Sin datos'
    when {{ indice }} <= 50 then 'Bueno'
    when {{ indice }} <= 100 then 'Moderado'
    else 'Dañino'
end
{% endmacro %}
