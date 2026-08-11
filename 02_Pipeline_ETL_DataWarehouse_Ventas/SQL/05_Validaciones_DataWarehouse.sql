USE [DW_Ventas_Portafolio]
GO

--*******************
-- Tablas Staging
--*******************
-- Validación DimCliente
select count(*)
  from dw.DimCliente
GO

select TOP 10 *
  from dw.DimCliente
GO
  
  
-- Validación DimFecha
select count(*)
  from dw.DimFecha
GO

select TOP 10 *
  from dw.DimFecha
GO
  
  
-- Validación DimProducto
select count(*)
  from dw.DimProducto
GO

select TOP 10 *
  from dw.DimCliente
GO
  
  
-- Validación DimSucursal
select count(*)
  from dw.DimSucursal
GO

select TOP 10 *
  from dw.DimSucursal
  
  
-- Validación DimVendedor
select count(*)
  from dw.DimVendedor
GO

select TOP 10 *
  from dw.DimVendedor
GO
  
  
-- Validación FacMetas
select count(*)
  from dw.FacMetas
GO

select TOP 10 *
  from dw.FacMetas
  
  
--*************************  
-- Tablas DataWarehouse
--*************************
-- Validación Clientes
select count(*)
  from stg.Clientes
GO

select TOP 10 *
  from stg.Clientes
  
-- Validación Metas
select count(*)
  from stg.Metas
GO

select TOP 10 *
  from stg.Metas
  
-- Validación Productos
select count(*)
  from stg.Productos
GO

select TOP 10 *
  from stg.Productos
  
-- Validación Sucursales
select count(*)
  from stg.Sucursales
GO

select TOP 10 *
  from stg.Sucursales
  
-- Validación Vendedores
select count(*)
  from stg.Vendedores
GO

select TOP 10 *
  from stg.Vendedores
  
-- Validación Ventas
select count(*)
  from stg.Ventas
GO

select TOP 10 *
  from stg.Ventas
GO