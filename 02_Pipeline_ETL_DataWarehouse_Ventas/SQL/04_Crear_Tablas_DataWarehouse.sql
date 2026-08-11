USE [DW_Ventas_Portafolio]
GO

/****** Object:  Table [dw].[DimCliente]    Script Date: 11/08/2026 13:01:36 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


-- DimCliente
CREATE TABLE [dw].[DimCliente](
	[ClienteKey] [int] IDENTITY(1,1) NOT NULL,
	[ClienteCodigo] [nvarchar](20) NOT NULL,
	[ClienteNombre] [nvarchar](150) NOT NULL,
	[Rubro] [nvarchar](100) NULL,
	[Segmento] [nvarchar](100) NULL,
	[Comuna] [nvarchar](100) NULL,
 CONSTRAINT [PK_DimCliente] PRIMARY KEY CLUSTERED 
(
	[ClienteKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [UQ_DimCliente_ClienteCodigo] UNIQUE NONCLUSTERED 
(
	[ClienteCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

USE [DW_Ventas_Portafolio]
GO

/****** Object:  Table [dw].[DimFecha]    Script Date: 11/08/2026 13:02:43 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


--DimFecha
CREATE TABLE [dw].[DimFecha](
	[FechaKey] [int] NOT NULL,
	[Fecha] [date] NOT NULL,
	[Anio] [int] NOT NULL,
	[MesNumero] [int] NOT NULL,
	[MesNombre] [nvarchar](20) NOT NULL,
	[Trimestre] [int] NOT NULL,
	[Dia] [int] NOT NULL,
	[DiaSemanaNumero] [int] NOT NULL,
	[DiaSemanaNombre] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_DimFecha] PRIMARY KEY CLUSTERED 
(
	[FechaKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [UQ_DimFecha_Fecha] UNIQUE NONCLUSTERED 
(
	[Fecha] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

USE [DW_Ventas_Portafolio]
GO

/****** Object:  Table [dw].[DimProducto]    Script Date: 11/08/2026 13:03:05 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


-- DimProducto
CREATE TABLE [dw].[DimProducto](
	[ProductoKey] [int] IDENTITY(1,1) NOT NULL,
	[ProductoCodigo] [nvarchar](20) NOT NULL,
	[ProductoNombre] [nvarchar](150) NOT NULL,
	[Categoria] [nvarchar](100) NULL,
	[PrecioLista] [decimal](18, 2) NULL,
	[CostoBase] [decimal](18, 2) NULL,
 CONSTRAINT [PK_DimProducto] PRIMARY KEY CLUSTERED 
(
	[ProductoKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [UQ_DimProducto_ProductoCodigo] UNIQUE NONCLUSTERED 
(
	[ProductoCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

USE [DW_Ventas_Portafolio]
GO

/****** Object:  Table [dw].[DimSucursal]    Script Date: 11/08/2026 13:03:33 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


-- DimSucursal
CREATE TABLE [dw].[DimSucursal](
	[SucursalKey] [int] IDENTITY(1,1) NOT NULL,
	[SucursalCodigo] [nvarchar](20) NOT NULL,
	[SucursalNombre] [nvarchar](150) NOT NULL,
	[Region] [nvarchar](100) NULL,
	[Comuna] [nvarchar](100) NULL,
 CONSTRAINT [PK_DimSucursal] PRIMARY KEY CLUSTERED 
(
	[SucursalKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [UQ_DimSucursal_SucursalCodigo] UNIQUE NONCLUSTERED 
(
	[SucursalCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

USE [DW_Ventas_Portafolio]
GO

/****** Object:  Table [dw].[DimVendedor]    Script Date: 11/08/2026 13:03:57 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


-- DimVendedor
CREATE TABLE [dw].[DimVendedor](
	[VendedorKey] [int] IDENTITY(1,1) NOT NULL,
	[VendedorCodigo] [nvarchar](20) NOT NULL,
	[VendedorNombre] [nvarchar](150) NOT NULL,
	[Cargo] [nvarchar](100) NULL,
 CONSTRAINT [PK_DimVendedor] PRIMARY KEY CLUSTERED 
(
	[VendedorKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [UQ_DimVendedor_VendedorCodigo] UNIQUE NONCLUSTERED 
(
	[VendedorCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


USE [DW_Ventas_Portafolio]
GO

/****** Object:  Table [dw].[FactMetas]    Script Date: 11/08/2026 13:04:15 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


-- FactMetas
CREATE TABLE [dw].[FactMetas](
	[MetaKey] [int] IDENTITY(1,1) NOT NULL,
	[MetaCodigo] [nvarchar](20) NOT NULL,
	[FechaKey] [int] NOT NULL,
	[VendedorKey] [int] NOT NULL,
	[MetaVentas] [decimal](18, 2) NOT NULL,
 CONSTRAINT [PK_FactMetas] PRIMARY KEY CLUSTERED 
(
	[MetaKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [UQ_FactMetas_MetaCodigo] UNIQUE NONCLUSTERED 
(
	[MetaCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dw].[FactMetas]  WITH CHECK ADD  CONSTRAINT [FK_FactMetas_DimFecha] FOREIGN KEY([FechaKey])
REFERENCES [dw].[DimFecha] ([FechaKey])
GO

ALTER TABLE [dw].[FactMetas] CHECK CONSTRAINT [FK_FactMetas_DimFecha]
GO

ALTER TABLE [dw].[FactMetas]  WITH CHECK ADD  CONSTRAINT [FK_FactMetas_DimVendedor] FOREIGN KEY([VendedorKey])
REFERENCES [dw].[DimVendedor] ([VendedorKey])
GO

ALTER TABLE [dw].[FactMetas] CHECK CONSTRAINT [FK_FactMetas_DimVendedor]
GO


USE [DW_Ventas_Portafolio]
GO

/****** Object:  Table [dw].[FactVentas]    Script Date: 11/08/2026 13:04:38 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


-- FactVentas
CREATE TABLE [dw].[FactVentas](
	[VentaKey] [bigint] IDENTITY(1,1) NOT NULL,
	[VentaCodigo] [nvarchar](20) NOT NULL,
	[FechaKey] [int] NOT NULL,
	[ClienteKey] [int] NOT NULL,
	[ProductoKey] [int] NOT NULL,
	[VendedorKey] [int] NOT NULL,
	[SucursalKey] [int] NOT NULL,
	[Canal] [nvarchar](50) NULL,
	[Cantidad] [int] NOT NULL,
	[PrecioUnitario] [decimal](18, 2) NOT NULL,
	[CostoUnitario] [decimal](18, 2) NOT NULL,
	[VentaBruta] [decimal](18, 2) NOT NULL,
	[CostoTotal] [decimal](18, 2) NOT NULL,
	[Margen] [decimal](18, 2) NOT NULL,
 CONSTRAINT [PK_FactVentas] PRIMARY KEY CLUSTERED 
(
	[VentaKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [UQ_FactVentas_VentaCodigo] UNIQUE NONCLUSTERED 
(
	[VentaCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dw].[FactVentas]  WITH CHECK ADD  CONSTRAINT [FK_FactVentas_DimCliente] FOREIGN KEY([ClienteKey])
REFERENCES [dw].[DimCliente] ([ClienteKey])
GO

ALTER TABLE [dw].[FactVentas] CHECK CONSTRAINT [FK_FactVentas_DimCliente]
GO

ALTER TABLE [dw].[FactVentas]  WITH CHECK ADD  CONSTRAINT [FK_FactVentas_DimFecha] FOREIGN KEY([FechaKey])
REFERENCES [dw].[DimFecha] ([FechaKey])
GO

ALTER TABLE [dw].[FactVentas] CHECK CONSTRAINT [FK_FactVentas_DimFecha]
GO

ALTER TABLE [dw].[FactVentas]  WITH CHECK ADD  CONSTRAINT [FK_FactVentas_DimProducto] FOREIGN KEY([ProductoKey])
REFERENCES [dw].[DimProducto] ([ProductoKey])
GO

ALTER TABLE [dw].[FactVentas] CHECK CONSTRAINT [FK_FactVentas_DimProducto]
GO

ALTER TABLE [dw].[FactVentas]  WITH CHECK ADD  CONSTRAINT [FK_FactVentas_DimSucursal] FOREIGN KEY([SucursalKey])
REFERENCES [dw].[DimSucursal] ([SucursalKey])
GO

ALTER TABLE [dw].[FactVentas] CHECK CONSTRAINT [FK_FactVentas_DimSucursal]
GO

ALTER TABLE [dw].[FactVentas]  WITH CHECK ADD  CONSTRAINT [FK_FactVentas_DimVendedor] FOREIGN KEY([VendedorKey])
REFERENCES [dw].[DimVendedor] ([VendedorKey])
GO

ALTER TABLE [dw].[FactVentas] CHECK CONSTRAINT [FK_FactVentas_DimVendedor]
GO


