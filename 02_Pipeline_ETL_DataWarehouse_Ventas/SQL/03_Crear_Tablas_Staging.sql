USE [DW_Ventas_Portafolio]
GO

/****** Object:  Table [stg].[Clientes]    Script Date: 11/08/2026 13:09:21 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


-- Clientes
CREATE TABLE [stg].[Clientes](
	[ClienteCodigo] [nvarchar](20) NOT NULL,
	[ClienteNombre] [nvarchar](150) NOT NULL,
	[Rubro] [nvarchar](100) NULL,
	[Segmento] [nvarchar](100) NULL,
	[Comuna] [nvarchar](100) NULL
) ON [PRIMARY]
GO

USE [DW_Ventas_Portafolio]
GO

/****** Object:  Table [stg].[Metas]    Script Date: 11/08/2026 13:10:09 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


-- Metas
CREATE TABLE [stg].[Metas](
	[MetaCodigo] [nvarchar](20) NOT NULL,
	[FechaMes] [date] NOT NULL,
	[VendedorCodigo] [nvarchar](20) NOT NULL,
	[MetaVentas] [decimal](18, 2) NOT NULL
) ON [PRIMARY]
GO

USE [DW_Ventas_Portafolio]
GO

/****** Object:  Table [stg].[Productos]    Script Date: 11/08/2026 13:10:30 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


-- Productos
CREATE TABLE [stg].[Productos](
	[ProductoCodigo] [nvarchar](20) NOT NULL,
	[ProductoNombre] [nvarchar](150) NOT NULL,
	[Categoria] [nvarchar](100) NULL,
	[PrecioLista] [decimal](18, 2) NULL,
	[CostoBase] [decimal](18, 2) NULL
) ON [PRIMARY]
GO

USE [DW_Ventas_Portafolio]
GO

/****** Object:  Table [stg].[Sucursales]    Script Date: 11/08/2026 13:10:46 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


-- Sucursales
CREATE TABLE [stg].[Sucursales](
	[SucursalCodigo] [nvarchar](20) NOT NULL,
	[SucursalNombre] [nvarchar](150) NOT NULL,
	[Region] [nvarchar](100) NULL,
	[Comuna] [nvarchar](100) NULL
) ON [PRIMARY]
GO


USE [DW_Ventas_Portafolio]
GO

/****** Object:  Table [stg].[Vendedores]    Script Date: 11/08/2026 13:11:18 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


-- Vendedores
CREATE TABLE [stg].[Vendedores](
	[VendedorCodigo] [nvarchar](20) NOT NULL,
	[VendedorNombre] [nvarchar](150) NOT NULL,
	[Cargo] [nvarchar](100) NULL
) ON [PRIMARY]
GO

USE [DW_Ventas_Portafolio]
GO

/****** Object:  Table [stg].[Ventas]    Script Date: 11/08/2026 13:11:44 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


-- Ventas
CREATE TABLE [stg].[Ventas](
	[VentaCodigo] [nvarchar](20) NOT NULL,
	[FechaVenta] [date] NOT NULL,
	[ClienteCodigo] [nvarchar](20) NOT NULL,
	[ProductoCodigo] [nvarchar](20) NOT NULL,
	[VendedorCodigo] [nvarchar](20) NOT NULL,
	[SucursalCodigo] [nvarchar](20) NOT NULL,
	[Canal] [nvarchar](50) NULL,
	[Cantidad] [int] NOT NULL,
	[PrecioUnitario] [decimal](18, 2) NOT NULL,
	[CostoUnitario] [decimal](18, 2) NOT NULL
) ON [PRIMARY]
GO