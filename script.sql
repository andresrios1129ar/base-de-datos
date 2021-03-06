/****** andres david rios espinal 17-eiin-1-026 0541 ******/

USE [master]
GO
/****** Object:  Database [tenysapp]    Script Date: 4/15/2019 3:32:40 AM ******/
CREATE DATABASE [tenysapp]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'tenysapp', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\tenysapp.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'tenysapp_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\tenysapp_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [tenysapp] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [tenysapp].[dbo].[sp_fulltext_database] @action = 'enable'
end

CREATE TABLE [dbo].[Pedidos](
	[PedidosID] [numeric](18, 0) NULL,
	[NombreCliente] [ntext] NULL,
	[LugarCliente] [ntext] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tennis]    Script Date: 4/15/2019 3:32:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tennis](
	[TenysID] [numeric](18, 0) NOT NULL,
	[Marca] [ntext] NULL,
	[Tamaño] [numeric](18, 0) NULL,
	[Color] [ntext] NULL,
 CONSTRAINT [PK_Tennis] PRIMARY KEY CLUSTERED 
(
	[TenysID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[Tennis] ([TenysID], [Marca], [Tamaño], [Color]) VALUES (CAST(1 AS Numeric(18, 0)), N'Nike', CAST(8 AS Numeric(18, 0)), N'red')
INSERT [dbo].[Tennis] ([TenysID], [Marca], [Tamaño], [Color]) VALUES (CAST(2 AS Numeric(18, 0)), N'Adidas', CAST(7 AS Numeric(18, 0)), N'Black')
USE [master]
GO
ALTER DATABASE [tenysapp] SET  READ_WRITE 
GO
