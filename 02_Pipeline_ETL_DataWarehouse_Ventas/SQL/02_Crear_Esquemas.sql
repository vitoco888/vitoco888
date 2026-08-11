USE DW_Ventas_Portafolio;
GO

-- Crear esquema de staging
CREATE SCHEMA stg;
GO

-- Clientes
CREATE TABLE stg.Clientes
(
    ClienteCodigo  VARCHAR(20)   NOT NULL,
    ClienteNombre  VARCHAR(150)  NOT NULL,
    Rubro          VARCHAR(100)  NULL,
    Segmento       VARCHAR(100)  NULL,
    Comuna         VARCHAR(100)  NULL
);
GO

-- Productos
CREATE TABLE stg.Productos
(
    ProductoCodigo VARCHAR(20)   NOT NULL,
    ProductoNombre VARCHAR(150)  NOT NULL,
    Categoria      VARCHAR(100)  NULL,
    PrecioLista    DECIMAL(18,2) NULL,
    CostoBase      DECIMAL(18,2) NULL
);
GO

-- Vendedores
CREATE TABLE stg.Vendedores
(
    VendedorCodigo VARCHAR(20)   NOT NULL,
    VendedorNombre VARCHAR(150)  NOT NULL,
    Cargo          VARCHAR(100)  NULL
);
GO

-- Sucursales
CREATE TABLE stg.Sucursales
(
    SucursalCodigo VARCHAR(20)   NOT NULL,
    SucursalNombre VARCHAR(150)  NOT NULL,
    Region         VARCHAR(100)  NULL,
    Comuna         VARCHAR(100)  NULL
);
GO

-- Ventas
CREATE TABLE stg.Ventas
(
    VentaCodigo     VARCHAR(20)   NOT NULL,
    FechaVenta      DATE          NOT NULL,
    ClienteCodigo   VARCHAR(20)   NOT NULL,
    ProductoCodigo  VARCHAR(20)   NOT NULL,
    VendedorCodigo  VARCHAR(20)   NOT NULL,
    SucursalCodigo  VARCHAR(20)   NOT NULL,
    Canal           VARCHAR(50)   NULL,
    Cantidad        INT           NOT NULL,
    PrecioUnitario  DECIMAL(18,2) NOT NULL,
    CostoUnitario   DECIMAL(18,2) NOT NULL
);
GO

-- Metas
CREATE TABLE stg.Metas
(
    MetaCodigo      VARCHAR(20)   NOT NULL,
    FechaMes        DATE          NOT NULL,
    VendedorCodigo  VARCHAR(20)   NOT NULL,
    MetaVentas      DECIMAL(18,2) NOT NULL
);
GO