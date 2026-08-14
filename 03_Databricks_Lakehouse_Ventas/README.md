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

## 🎥 Videos demostrativos

A continuación se presentan videos breves que muestran las principales etapas de implementación del proyecto Databricks Lakehouse de Ventas.

### 01. Presentación del proyecto
Introducción a la solución, arquitectura Lakehouse y organización general del proyecto.

▶ [Ver video – Presentación](https://drive.google.com/file/d/176rv7oNyHXfiZJ31sfqkO2VUbaaWhy-v/view?usp=drive_link)

### 02. Ingesta de datos – Capa Bronze
Proceso de ingesta de archivos CSV mediante PySpark y almacenamiento inicial de los datos en la capa Bronze.

▶ [Ver video – Ingesta Bronze](https://drive.google.com/file/d/1CurmjZR3ToJqfLgd7D0BYuM1ACU-FMhL/view?usp=drive_link)

### 03. Transformación de datos – Capa Silver
Limpieza, transformación, estandarización y controles de calidad aplicados sobre los datos provenientes de Bronze.

▶ [Ver video – Transformación Silver](https://drive.google.com/file/d/1ImtaBDqlBsbhgFV7SxPnjeMprXFisLOr/view?usp=drive_link)

### 04. Modelo analítico – Capa Gold
Construcción del modelo dimensional y preparación de tablas de hechos y dimensiones para consumo analítico.

▶ [Ver video – Modelo Gold](https://drive.google.com/file/d/1L3ZMKFSPglhgprq29g189481sn7wI5uT/view?usp=drive_link)

### 05. Databricks SQL
Consultas analíticas sobre la capa Gold para validación y explotación de la información procesada.

▶ [Ver video – Databricks SQL](https://drive.google.com/file/d/1-UiuSUwzKIFQOdHUkCTymAnGnxfi_L4e/view?usp=drive_link)

### 06. Validaciones
Controles de calidad e integridad para verificar consistencia, nulos, duplicados y resultados del procesamiento antes del consumo analítico.

▶ [Ver video – Validaciones](https://drive.google.com/file/d/1X1w7ywLtouvyRsFJ682YBvb4d01g3gcy/view?usp=drive_link)

### 07. Dashboard Comercial Lakehouse
Presentación del dashboard final construido sobre la información procesada en la capa Gold, con indicadores comerciales y visualizaciones para apoyar el análisis y la toma de decisiones.

▶ [Ver video – Dashboard Comercial Lakehouse](https://drive.google.com/file/d/1KSKf6UixJKnzFyEkum4NUvKFBH96GNzU/view?usp=drive_link)

El proyecto fue desarrollado en Databricks Free Edition y utiliza componentes y patrones de arquitectura directamente aplicables a implementaciones empresariales con Azure Databricks.
