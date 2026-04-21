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


-- ============================================================
-- Respaldo de datos de KioscoDB
-- Todas las tablas: Categorias y Usuarios
-- ============================================================

-- =====================
-- 1. CATEGORIAS (7 registros)
-- =====================
SET IDENTITY_INSERT Categorias ON;
INSERT INTO Categorias (Id, Nombre, EsPesable) VALUES (1, 'Almacén', 0);
INSERT INTO Categorias (Id, Nombre, EsPesable) VALUES (2, 'Bebidas', 0);
INSERT INTO Categorias (Id, Nombre, EsPesable) VALUES (3, 'Golosinas', 0);
INSERT INTO Categorias (Id, Nombre, EsPesable) VALUES (4, 'Fiambrería', 1);
INSERT INTO Categorias (Id, Nombre, EsPesable) VALUES (5, 'Verdulería', 1);
INSERT INTO Categorias (Id, Nombre, EsPesable) VALUES (6, 'Perfumeria', 0);
INSERT INTO Categorias (Id, Nombre, EsPesable) VALUES (7, 'Tecnología', 0);
SET IDENTITY_INSERT Categorias OFF;
GO

-- =====================
-- 2. USUARIOS (3 registros)
-- =====================
SET IDENTITY_INSERT Usuarios ON;
INSERT INTO Usuarios (Id, Username, Password, Rol, sexo, Ruta_foto, NombreReal) VALUES (1, 'admin', '12345', 'Admin', 'Hombre', '../Empeado masculino.jpg', 'admin ');
INSERT INTO Usuarios (Id, Username, Password, Rol, sexo, Ruta_foto, NombreReal) VALUES (2, 'emp', '12345', 'Empleado', 'Hombre', '../empleado femenino.jpg', 'Admin');
INSERT INTO Usuarios (Id, Username, Password, Rol, sexo, Ruta_foto, NombreReal) VALUES (7, 'jp', '12345', 'Admin', 'Hombre', '', 'jean esquen');
SET IDENTITY_INSERT Usuarios OFF;
GO