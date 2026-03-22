En este trabajo desarrollé la integración de datos dentro del proyecto en dbt, incorporando la información de calidad del aire junto con los datos climáticos que ya se tenían.

- Primero realicé la ingesta de datos, agregando el archivo correspondiente en la carpeta seeds, lo que permitió trabajar con los indicadores de calidad del aire.

- Luego, en la capa de staging, en la preparación de los datos, realice ajustes básicos como limpieza, estandarización y cambio de nombres de columnas para asegurar que puedan relacionarse correctamente.

- Después, apliqué la lógica de integración utilizando JOINs entre las tablas, cuidando que las relaciones sean correctas y considerando posibles valores nulos para no perder información.

- También utilicé herramientas propias de dbt como ref() y source(), lo que permitió mantener organizado el flujo del proyecto.

- Finalmente, verifiqué la ejecución del proceso completo, asegurando que los modelos se ejecuten correctamente y que los resultados sean coherentes.
