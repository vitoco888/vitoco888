# Databricks Lakehouse de Ventas

Proyecto end-to-end de Ingeniería de Datos orientado a la construcción de una arquitectura Lakehouse utilizando Databricks, PySpark, Delta Lake, Unity Catalog y Databricks SQL.

El objetivo es implementar un flujo completo de datos desde archivos CSV hasta un modelo analítico Gold y un dashboard comercial, aplicando arquitectura Medallion Bronze–Silver–Gold.

---

## Arquitectura de la solución

```text
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
