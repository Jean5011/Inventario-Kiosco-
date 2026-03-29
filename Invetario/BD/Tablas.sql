CREATE DATABASE KioscoDB;
GO
USE KioscoDB;
GO

-- 1. Tabla de Productos (El corazón del inventario)
CREATE TABLE Productos (
    Id INT PRIMARY KEY IDENTITY(1,1),
    CodigoBarras VARCHAR(50) UNIQUE NOT NULL, -- Aquí entra lo que tira el escáner
    Nombre VARCHAR(100) NOT NULL,
	Descripcion VARCHAR(100) NOT NULL,
    PrecioCosto DECIMAL(18, 2) NOT NULL,
    PrecioVenta DECIMAL(18, 2) NOT NULL,
    Stock INT DEFAULT 0,
);

-- 2. Tabla de Ventas (Encabezado del recibo)
CREATE TABLE Ventas (
    Id INT PRIMARY KEY IDENTITY(1,1),
    FechaVenta DATETIME DEFAULT GETDATE(),
    TotalVenta DECIMAL(18, 2) NOT NULL,
    MetodoPago VARCHAR(20) DEFAULT 'Efectivo' -- 'Efectivo', 'Débito', 'Transferencia'
);

-- 3. Detalle de Ventas (Los renglones del recibo)
CREATE TABLE DetalleVentas (
    Id INT PRIMARY KEY IDENTITY(1,1),
    IdVenta INT FOREIGN KEY REFERENCES Ventas(Id),
    IdProducto INT FOREIGN KEY REFERENCES Productos(Id),
    Cantidad INT NOT NULL,
    PrecioUnitario DECIMAL(18, 2) NOT NULL, -- Guardamos el precio del momento por si después cambia
    Preciototal AS (Cantidad * PrecioUnitario) -- Columna calculada automáticamente
);
GO

CREATE TABLE Usuarios (
    Id INT PRIMARY KEY IDENTITY(1,1),
    Username VARCHAR(50) UNIQUE NOT NULL,
    Password VARCHAR(100) NOT NULL, -- En un futuro deberíamos encriptarla
    Rol VARCHAR(20) NOT NULL CHECK (Rol IN ('Admin', 'Empleado')),
    NombreReal VARCHAR(100)
);

-- Insertamos dos de prueba
INSERT INTO Usuarios (Username, Password, Rol, NombreReal) 
VALUES ('admin', 'admin123', 'Admin', 'Jean Pierre'),
       ('empleado', 'emp123', 'Empleado', 'Juan Perez');

INSERT INTO Productos (CodigoBarras, Nombre, Descripcion, PrecioCosto, PrecioVenta, Stock)
VALUES 
('77905805', 'Alfajor Jorgito Negro', 'Alfajor de chocolate 55g', 450.00, 850.00, 50),
('7790040111604', 'Coca Cola 500ml', 'Gaseosa original pet', 900.00, 1500.00, 24),
('7790387013627', 'Galletitas Oreo', 'Paquete original 117g', 800.00, 1350.00, 30),
('7622300742643', 'Belident Menta', 'Chicles sin azúcar x2 unidades', 200.00, 450.00, 100),
('7790290000295', 'Agua Villavicencio', 'Agua mineral 500ml', 500.00, 950.00, 48),
('7791234500012', 'Caramelos Flynn Paff', 'Caramelo masticable uva', 80.00, 150.00, 200),
('7790060023451', 'Papas Lays Clásicas', 'Snack papas fritas 80g', 1100.00, 1900.00, 15),
('7790895000452', 'Turrón Misky', 'Turrón de maní clásico', 150.00, 350.00, 80),
('7790040860014', 'Cerveza Quilmes Lata', 'Cerveza rubia 473ml', 1200.00, 2200.00, 24),
('7795555555555', 'Cigarrillos Marlboro', 'Box 20 unidades', 2500.00, 3200.00, 10);