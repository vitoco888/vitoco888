# Databricks Lakehouse de Ventas

Proyecto end-to-end de Ingeniería de Datos orientado a la construcción de una arquitectura Lakehouse utilizando Databricks, PySpark, Delta Lake, Unity Catalog y Databricks SQL.

El objetivo es implementar un flujo completo de datos desde archivos CSV hasta un modelo analítico Gold y un dashboard comercial, aplicando arquitectura Medallion Bronze–Silver–Gold.

---

## Arquitectura de la solución

Archivos CSV
     ↓
Databricks Volume
     ↓
Bronze
Datos originales en Delta Lake
     ↓
Silver
Limpieza, validación y transformación con PySpark
     ↓
Gold
Modelo dimensional y agregaciones de negocio
     ↓
Databricks SQL
     ↓
AI/BI Dashboard

Tecnologías utilizadas
Databricks
Apache Spark
PySpark
Spark SQL
Delta Lake
Unity Catalog
Databricks SQL
AI/BI Dashboards
Python
SQL
GitHub
Arquitectura Medallion
Bronze

La capa Bronze contiene los datos originales provenientes de archivos CSV.

Tablas:

clientes
productos
vendedores
sucursales
ventas
metas

Los archivos son almacenados en formato Delta.

Silver

En la capa Silver se realizan procesos de calidad y transformación de datos:

Limpieza de campos de texto
Eliminación de duplicados
Validación de claves de negocio
Validación de valores nulos
Control de valores negativos
Estandarización de datos
Cálculo de métricas comerciales

Principales métricas calculadas:

Venta Bruta
Costo Total
Margen
Gold

La capa Gold contiene el modelo analítico utilizado para reportería y Business Intelligence.

Modelo dimensional:

dim_cliente
dim_producto
dim_vendedor
dim_sucursal
dim_fecha
fact_ventas
fact_metas

También se generan tablas agregadas para consumo analítico:

resumen_ventas
ventas_por_region
ventas_por_vendedor
cumplimiento_metas
Validaciones de calidad

El proceso incluye validaciones de:

Integridad referencial
Registros duplicados
Claves inexistentes
Consistencia entre capas Silver y Gold
Cálculo de Venta Bruta
Cálculo de Costo Total
Cálculo de Margen
Validación de metas comerciales
Dashboard Comercial Lakehouse

El dashboard permite analizar:

Ventas Totales
Margen Total
Margen %
Clientes Atendidos
Ticket Promedio
Evolución mensual de ventas
Ventas por región
Ventas por vendedor
Cumplimiento promedio de metas

Documentación

Ver Dashboard Comercial Lakehouse en PDF

Notebooks

Los notebooks del proyecto se encuentran disponibles en:

01_Ingesta_Bronze
02_Transformacion_Silver
03_Modelo_Gold
04_Validaciones
SQL

Las consultas utilizadas para alimentar el dashboard se encuentran en:

01_Consultas_Dashboard.sql

Datos de demostración

El proyecto utiliza datos sintéticos generados únicamente con fines demostrativos.

Archivos incluidos:

Clientes.csv
Productos.csv
Vendedores.csv
Sucursales.csv
Ventas.csv
Metas.csv
Flujo del proyecto
CSV
 ↓
Databricks Volume
 ↓
Bronze
 ↓
Silver
 ↓
Gold
 ↓
Modelo dimensional
 ↓
Databricks SQL
 ↓
AI/BI Dashboard
Objetivo profesional

Este proyecto demuestra conocimientos prácticos en:

Ingeniería de Datos
Arquitecturas Lakehouse
Arquitectura Medallion
Procesamiento distribuido con Spark
Desarrollo PySpark
Delta Lake
Modelamiento dimensional
Calidad y validación de datos
SQL analítico
Visualización de datos

El proyecto fue desarrollado en Databricks Free Edition y utiliza componentes y patrones de arquitectura directamente aplicables a implementaciones empresariales con Azure Databricks.


Luego haz **Commit changes**.

Un detalle importante: el bloque de arquitectura usa un bloque `text` dentro del README. Si GitHub te muestra algún problema al pegarlo porque estamos dentro de otro bloque Markdown aquí, no cambies nada por tu cuenta; envíame una captura y te lo doy en una versión alternativa.

Cuando termines, dime **“README actualizado”** y hacemos la revisión completa de la carpeta del Proyecto 3 antes de incorporarlo al README principal de tu portafolio. 
la parte de tecnología utilizadas tambien se agregan a README.md ??

Sí, exactamente. “Tecnologías utilizadas” también va dentro del mismo README.md del proyecto.

La idea es que el README.md sea la ficha completa del proyecto, por eso allí conviene incluir:

descripción general
arquitectura
tecnologías utilizadas
capas Bronze / Silver / Gold
validaciones
dashboard
notebooks
SQL
datos de demostración
objetivo profesional
