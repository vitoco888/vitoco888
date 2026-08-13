-- ============================================================
-- Proyecto: Databricks Lakehouse de Ventas
-- Consultas SQL para Dashboard Comercial Lakehouse
-- Capas Gold - Databricks SQL
-- ============================================================


-- 1. RESUMEN DE KPIs
SELECT
    VentasTotales,
    MargenTotal,
    CantidadVentas,
    ClientesAtendidos,
    MargenPorcentaje,
    TicketPromedio
FROM workspace.gold.resumen_ventas;


-- 2. VENTAS POR MES
SELECT
    date_format(FechaVenta, 'yyyy-MM') AS Periodo,
    SUM(VentaBruta) AS VentasTotales,
    SUM(Margen) AS MargenTotal,
    COUNT(DISTINCT VentaCodigo) AS CantidadVentas
FROM workspace.gold.fact_ventas
GROUP BY date_format(FechaVenta, 'yyyy-MM')
ORDER BY Periodo;


-- 3. VENTAS POR REGIÓN
SELECT
    Region,
    VentasTotales,
    MargenTotal,
    CantidadVentas,
    ClientesAtendidos,
    MargenPorcentaje
FROM workspace.gold.ventas_por_region
ORDER BY VentasTotales DESC;


-- 4. VENTAS POR VENDEDOR
SELECT
    VendedorCodigo,
    VendedorNombre,
    VentasTotales,
    MargenTotal,
    CantidadVentas,
    ClientesAtendidos,
    MargenPorcentaje
FROM workspace.gold.ventas_por_vendedor
ORDER BY VentasTotales DESC;


-- 5. CUMPLIMIENTO PROMEDIO DE META POR VENDEDOR
SELECT
    VendedorNombre,
    ROUND(
        AVG(CumplimientoMetaPorcentaje),
        2
    ) AS CumplimientoPromedio
FROM workspace.gold.cumplimiento_metas
GROUP BY VendedorNombre
ORDER BY CumplimientoPromedio DESC;
