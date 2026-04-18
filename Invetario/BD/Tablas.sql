-- ============================================
-- Script de creación de Base de Datos KioscoDB
-- Proyecto: Inventario Kiosco Berta
-- ============================================

CREATE DATABASE KioscoDB;
GO

USE KioscoDB;
GO

-- ============================================
-- Tabla: Categorias
-- ============================================
CREATE TABLE Categorias (
	Id          INT IDENTITY(1,1) PRIMARY KEY,
	Nombre      NVARCHAR(100)   NOT NULL,
	EsPesable   BIT             NOT NULL DEFAULT 0
);
GO

-- ============================================
-- Tabla: Productos
-- ============================================
CREATE TABLE Productos (
	Id            INT IDENTITY(1,1) PRIMARY KEY,
	CodigoBarras  NVARCHAR(50)    NOT NULL,
	Nombre        NVARCHAR(200)   NOT NULL,
	Descripcion   NVARCHAR(500)   NULL DEFAULT '',
	PrecioCosto   DECIMAL(18,2)   NOT NULL DEFAULT 0,
	PrecioVenta   DECIMAL(18,2)   NOT NULL DEFAULT 0,
	Stock         INT             NOT NULL DEFAULT 0,
	CategoriaId   INT             NOT NULL,
	CONSTRAINT FK_Productos_Categorias FOREIGN KEY (CategoriaId) REFERENCES Categorias(Id)
);
GO

-- ============================================
-- Tabla: Usuarios
-- ============================================
CREATE TABLE Usuarios (
	Id          INT IDENTITY(1,1) PRIMARY KEY,
	Username    NVARCHAR(100)   NOT NULL,
	Password    NVARCHAR(200)   NOT NULL,
	Rol         NVARCHAR(50)    NOT NULL DEFAULT 'Empleado',
	Sexo        NVARCHAR(20)    NOT NULL DEFAULT 'Hombre',
	Ruta_foto   NVARCHAR(500)   NULL DEFAULT '',
	NombreReal  NVARCHAR(200)   NULL DEFAULT ''
);
GO

-- ============================================
-- Tabla: Ventas
-- ============================================
CREATE TABLE Ventas (
	Id          INT IDENTITY(1,1) PRIMARY KEY,
	FechaVenta  DATETIME        NOT NULL DEFAULT GETDATE(),
	TotalVenta  DECIMAL(18,2)   NOT NULL,
	MetodoPago  NVARCHAR(50)    NOT NULL DEFAULT 'Efectivo'
);
GO

-- ============================================
-- Tabla: DetalleVentas
-- ============================================
CREATE TABLE DetalleVentas (
	Id              INT IDENTITY(1,1) PRIMARY KEY,
	IdVenta         INT             NOT NULL,
	IdProducto      INT             NOT NULL,
	Cantidad        INT             NOT NULL,
	PrecioUnitario  DECIMAL(18,2)   NOT NULL,
	Preciototal     AS (Cantidad * PrecioUnitario),
	CONSTRAINT FK_DetalleVentas_Ventas   FOREIGN KEY (IdVenta)    REFERENCES Ventas(Id),
	CONSTRAINT FK_DetalleVentas_Productos FOREIGN KEY (IdProducto) REFERENCES Productos(Id)
);
GO


