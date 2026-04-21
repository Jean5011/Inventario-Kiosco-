-- ============================================================
-- Respaldo de datos de KioscoDB
-- Todas las tablas: Categorias, Usuarios, Productos, Ventas, DetalleVentas
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
INSERT INTO Categorias (Id, Nombre, EsPesable) VALUES (7, 'Tecno', 0);
SET IDENTITY_INSERT Categorias OFF;
GO

-- =====================
-- 2. USUARIOS (3 registros)
-- =====================
SET IDENTITY_INSERT Usuarios ON;
INSERT INTO Usuarios (Id, Username, Password, Rol, sexo, Ruta_foto, NombreReal) VALUES (1, 'admin', '123456', 'Admin', 'Hombre', '../Empeado masculino.jpg', 'Juan ');
INSERT INTO Usuarios (Id, Username, Password, Rol, sexo, Ruta_foto, NombreReal) VALUES (2, 'emp', '123456', 'Empleado', 'Hombre', '../empleado femenino.jpg', 'juana');
INSERT INTO Usuarios (Id, Username, Password, Rol, sexo, Ruta_foto, NombreReal) VALUES (7, 'jp', '12345', 'Admin', 'Hombre', '', 'jean esquen');
SET IDENTITY_INSERT Usuarios OFF;
GO

-- =====================
-- 3. PRODUCTOS (14 registros)
-- =====================
SET IDENTITY_INSERT Productos ON;
INSERT INTO Productos (Id, CodigoBarras, Nombre, Descripcion, PrecioCosto, PrecioVenta, CategoriaId, Stock) VALUES (1, '77901', 'Galletitas Oreo', 'Paquete familiar', 800.00, 1200.00, 3, 48);
INSERT INTO Productos (Id, CodigoBarras, Nombre, Descripcion, PrecioCosto, PrecioVenta, CategoriaId, Stock) VALUES (2, '77902', 'Coca Cola 1.5L', 'Original', 1500.00, 2200.00, 2, 22);
INSERT INTO Productos (Id, CodigoBarras, Nombre, Descripcion, PrecioCosto, PrecioVenta, CategoriaId, Stock) VALUES (3, '77903', 'Yerba Mate 500g', 'Tradicional', 2000.00, 2800.00, 1, 20);
INSERT INTO Productos (Id, CodigoBarras, Nombre, Descripcion, PrecioCosto, PrecioVenta, CategoriaId, Stock) VALUES (4, '77904', 'Alfajor Jorgito', 'Chocolate', 400.00, 700.00, 3, 89);
INSERT INTO Productos (Id, CodigoBarras, Nombre, Descripcion, PrecioCosto, PrecioVenta, CategoriaId, Stock) VALUES (5, '77905', 'Agua Mineral 500ml', 'Sin gas', 500.00, 900.00, 2, 95);
INSERT INTO Productos (Id, CodigoBarras, Nombre, Descripcion, PrecioCosto, PrecioVenta, CategoriaId, Stock) VALUES (6, 'FIAM01', 'Jamón Cocido', 'Precio por Kg', 8000.00, 12500.00, 4, 4);
INSERT INTO Productos (Id, CodigoBarras, Nombre, Descripcion, PrecioCosto, PrecioVenta, CategoriaId, Stock) VALUES (7, 'FIAM02', 'Queso Tybo', 'Precio por Kg', 7000.00, 11000.00, 4, 5);
INSERT INTO Productos (Id, CodigoBarras, Nombre, Descripcion, PrecioCosto, PrecioVenta, CategoriaId, Stock) VALUES (8, 'FIAM03', 'Salame Milán', 'Precio por Kg', 9000.00, 14000.00, 4, 5);
INSERT INTO Productos (Id, CodigoBarras, Nombre, Descripcion, PrecioCosto, PrecioVenta, CategoriaId, Stock) VALUES (9, 'VERD01', 'Tomate Redondo', 'Precio por Kg', 1200.00, 2000.00, 5, 10);
INSERT INTO Productos (Id, CodigoBarras, Nombre, Descripcion, PrecioCosto, PrecioVenta, CategoriaId, Stock) VALUES (10, 'VERD02', 'Banana Ecuador', 'Precio por Kg', 1500.00, 2300.00, 5, 20);
INSERT INTO Productos (Id, CodigoBarras, Nombre, Descripcion, PrecioCosto, PrecioVenta, CategoriaId, Stock) VALUES (11, 'coca12344', 'coca zero', 'coca 250ml', 0.00, 2500.00, 2, 20);
INSERT INTO Productos (Id, CodigoBarras, Nombre, Descripcion, PrecioCosto, PrecioVenta, CategoriaId, Stock) VALUES (12, 'P001', 'Natura ensencia', '80gr', 0.00, 30000.00, 6, 1);
INSERT INTO Productos (Id, CodigoBarras, Nombre, Descripcion, PrecioCosto, PrecioVenta, CategoriaId, Stock) VALUES (13, 'M011', 'Manaus cola', '1,5L', 0.00, 1500.00, 2, 10);
INSERT INTO Productos (Id, CodigoBarras, Nombre, Descripcion, PrecioCosto, PrecioVenta, CategoriaId, Stock) VALUES (15, 'P00111', 'Pitusas', '500g', 0.00, 1200.00, 1, 35);
SET IDENTITY_INSERT Productos OFF;
GO

-- =====================
-- 4. VENTAS (49 registros)
-- =====================
SET IDENTITY_INSERT Ventas ON;
INSERT INTO Ventas (Id, FechaVenta, TotalVenta, MetodoPago) VALUES (1, '2026-04-17 21:52:51.720', 900.00, 'Efectivo');
INSERT INTO Ventas (Id, FechaVenta, TotalVenta, MetodoPago) VALUES (2, '2026-04-17 21:57:14.280', 16600.00, 'Efectivo');
INSERT INTO Ventas (Id, FechaVenta, TotalVenta, MetodoPago) VALUES (3, '2026-04-17 22:01:50.470', 700.00, 'Efectivo');
INSERT INTO Ventas (Id, FechaVenta, TotalVenta, MetodoPago) VALUES (21, '2025-04-15 10:00:00.000', 45.00, 'Efectivo');
INSERT INTO Ventas (Id, FechaVenta, TotalVenta, MetodoPago) VALUES (22, '2025-05-05 16:40:00.000', 120.00, N'Tarjeta de Crédito');
INSERT INTO Ventas (Id, FechaVenta, TotalVenta, MetodoPago) VALUES (23, '2025-05-20 11:15:00.000', 35.50, 'Efectivo');
INSERT INTO Ventas (Id, FechaVenta, TotalVenta, MetodoPago) VALUES (24, '2025-06-12 09:30:00.000', 280.00, 'Transferencia');
INSERT INTO Ventas (Id, FechaVenta, TotalVenta, MetodoPago) VALUES (25, '2025-06-28 18:00:00.000', 15.00, 'Efectivo');
INSERT INTO Ventas (Id, FechaVenta, TotalVenta, MetodoPago) VALUES (26, '2025-07-04 12:45:00.000', 95.20, N'Tarjeta de Débito');
INSERT INTO Ventas (Id, FechaVenta, TotalVenta, MetodoPago) VALUES (27, '2025-07-15 14:20:00.000', 210.00, N'Tarjeta de Crédito');
INSERT INTO Ventas (Id, FechaVenta, TotalVenta, MetodoPago) VALUES (28, '2025-08-10 10:05:00.000', 55.00, 'Efectivo');
INSERT INTO Ventas (Id, FechaVenta, TotalVenta, MetodoPago) VALUES (29, '2025-08-30 17:30:00.000', 420.00, 'Transferencia');
INSERT INTO Ventas (Id, FechaVenta, TotalVenta, MetodoPago) VALUES (30, '2025-09-12 13:00:00.000', 88.00, N'Tarjeta de Débito');
INSERT INTO Ventas (Id, FechaVenta, TotalVenta, MetodoPago) VALUES (31, '2025-10-05 08:50:00.000', 12.00, 'Efectivo');
INSERT INTO Ventas (Id, FechaVenta, TotalVenta, MetodoPago) VALUES (32, '2025-10-25 15:10:00.000', 175.00, N'Tarjeta de Crédito');
INSERT INTO Ventas (Id, FechaVenta, TotalVenta, MetodoPago) VALUES (33, '2025-11-11 11:00:00.000', 60.00, 'Efectivo');
INSERT INTO Ventas (Id, FechaVenta, TotalVenta, MetodoPago) VALUES (34, '2025-11-28 19:45:00.000', 310.50, 'Transferencia');
INSERT INTO Ventas (Id, FechaVenta, TotalVenta, MetodoPago) VALUES (35, '2025-12-15 12:30:00.000', 45.00, N'Tarjeta de Débito');
INSERT INTO Ventas (Id, FechaVenta, TotalVenta, MetodoPago) VALUES (36, '2025-12-31 16:00:00.000', 500.00, N'Tarjeta de Crédito');
INSERT INTO Ventas (Id, FechaVenta, TotalVenta, MetodoPago) VALUES (37, '2026-01-10 09:20:00.000', 25.00, 'Efectivo');
INSERT INTO Ventas (Id, FechaVenta, TotalVenta, MetodoPago) VALUES (38, '2026-01-25 14:15:00.000', 135.00, 'Transferencia');
INSERT INTO Ventas (Id, FechaVenta, TotalVenta, MetodoPago) VALUES (39, '2026-02-05 10:40:00.000', 78.90, N'Tarjeta de Débito');
INSERT INTO Ventas (Id, FechaVenta, TotalVenta, MetodoPago) VALUES (40, '2026-02-20 13:55:00.000', 190.00, 'Efectivo');
INSERT INTO Ventas (Id, FechaVenta, TotalVenta, MetodoPago) VALUES (41, '2026-03-05 09:00:00.000', 125.00, N'Tarjeta de Crédito');
INSERT INTO Ventas (Id, FechaVenta, TotalVenta, MetodoPago) VALUES (42, '2026-03-12 11:30:00.000', 45.90, 'Efectivo');
INSERT INTO Ventas (Id, FechaVenta, TotalVenta, MetodoPago) VALUES (43, '2026-03-20 15:15:00.000', 310.00, 'Transferencia');
INSERT INTO Ventas (Id, FechaVenta, TotalVenta, MetodoPago) VALUES (44, '2026-04-01 10:45:00.000', 85.00, N'Tarjeta de Débito');
INSERT INTO Ventas (Id, FechaVenta, TotalVenta, MetodoPago) VALUES (45, '2026-04-08 17:20:00.000', 12.00, 'Efectivo');
INSERT INTO Ventas (Id, FechaVenta, TotalVenta, MetodoPago) VALUES (46, '2026-04-15 12:00:00.000', 250.00, N'Tarjeta de Crédito');
INSERT INTO Ventas (Id, FechaVenta, TotalVenta, MetodoPago) VALUES (47, '2026-05-02 09:30:00.000', 65.50, 'Efectivo');
INSERT INTO Ventas (Id, FechaVenta, TotalVenta, MetodoPago) VALUES (48, '2026-05-15 14:00:00.000', 180.00, 'Transferencia');
INSERT INTO Ventas (Id, FechaVenta, TotalVenta, MetodoPago) VALUES (49, '2026-06-01 18:45:00.000', 95.00, N'Tarjeta de Débito');
INSERT INTO Ventas (Id, FechaVenta, TotalVenta, MetodoPago) VALUES (50, '2026-06-20 13:10:00.000', 40.00, 'Efectivo');
INSERT INTO Ventas (Id, FechaVenta, TotalVenta, MetodoPago) VALUES (51, '2026-07-05 10:20:00.000', 215.00, N'Tarjeta de Crédito');
INSERT INTO Ventas (Id, FechaVenta, TotalVenta, MetodoPago) VALUES (52, '2026-07-22 16:05:00.000', 55.00, 'Efectivo');
INSERT INTO Ventas (Id, FechaVenta, TotalVenta, MetodoPago) VALUES (53, '2026-08-10 11:40:00.000', 320.00, 'Transferencia');
INSERT INTO Ventas (Id, FechaVenta, TotalVenta, MetodoPago) VALUES (54, '2026-08-28 09:15:00.000', 72.50, N'Tarjeta de Débito');
INSERT INTO Ventas (Id, FechaVenta, TotalVenta, MetodoPago) VALUES (55, '2026-09-12 15:50:00.000', 110.00, 'Efectivo');
INSERT INTO Ventas (Id, FechaVenta, TotalVenta, MetodoPago) VALUES (56, '2026-09-30 14:30:00.000', 430.00, N'Tarjeta de Crédito');
INSERT INTO Ventas (Id, FechaVenta, TotalVenta, MetodoPago) VALUES (57, '2026-10-15 12:20:00.000', 28.00, 'Efectivo');
INSERT INTO Ventas (Id, FechaVenta, TotalVenta, MetodoPago) VALUES (58, '2026-11-05 10:00:00.000', 195.00, 'Transferencia');
INSERT INTO Ventas (Id, FechaVenta, TotalVenta, MetodoPago) VALUES (59, '2026-11-25 17:35:00.000', 64.00, N'Tarjeta de Débito');
INSERT INTO Ventas (Id, FechaVenta, TotalVenta, MetodoPago) VALUES (60, '2026-12-20 13:00:00.000', 500.00, N'Tarjeta de Crédito');
INSERT INTO Ventas (Id, FechaVenta, TotalVenta, MetodoPago) VALUES (61, '2026-04-18 00:14:34.467', 10700.00, 'Efectivo');
INSERT INTO Ventas (Id, FechaVenta, TotalVenta, MetodoPago) VALUES (62, '2026-04-18 00:17:59.857', 17254.00, 'Efectivo');
INSERT INTO Ventas (Id, FechaVenta, TotalVenta, MetodoPago) VALUES (63, '2026-04-18 00:36:22.240', 9575.00, 'Efectivo');
INSERT INTO Ventas (Id, FechaVenta, TotalVenta, MetodoPago) VALUES (64, '2026-04-18 00:50:16.600', 17730.00, 'Efectivo');
INSERT INTO Ventas (Id, FechaVenta, TotalVenta, MetodoPago) VALUES (65, '2026-04-18 01:05:22.730', 84900.00, 'Efectivo');
INSERT INTO Ventas (Id, FechaVenta, TotalVenta, MetodoPago) VALUES (66, '2026-04-18 01:15:29.693', 69240.00, 'Efectivo');
SET IDENTITY_INSERT Ventas OFF;
GO

-- =====================
-- 5. DETALLE DE VENTAS (91 registros)
-- =====================
SET IDENTITY_INSERT DetalleVentas ON;
INSERT INTO DetalleVentas (Id, IdVenta, IdProducto, Cantidad, PrecioUnitario, Preciototal) VALUES (1, 1, 5, 1, 900.00, 900.00);
INSERT INTO DetalleVentas (Id, IdVenta, IdProducto, Cantidad, PrecioUnitario, Preciototal) VALUES (2, 2, 1, 1, 1200.00, 1200.00);
INSERT INTO DetalleVentas (Id, IdVenta, IdProducto, Cantidad, PrecioUnitario, Preciototal) VALUES (3, 2, 2, 4, 2200.00, 8800.00);
INSERT INTO DetalleVentas (Id, IdVenta, IdProducto, Cantidad, PrecioUnitario, Preciototal) VALUES (4, 2, 7, 1, 6600.00, 6600.00);
INSERT INTO DetalleVentas (Id, IdVenta, IdProducto, Cantidad, PrecioUnitario, Preciototal) VALUES (5, 3, 4, 1, 700.00, 700.00);
INSERT INTO DetalleVentas (Id, IdVenta, IdProducto, Cantidad, PrecioUnitario, Preciototal) VALUES (26, 21, 1, 3, 15.00, 45.00);
INSERT INTO DetalleVentas (Id, IdVenta, IdProducto, Cantidad, PrecioUnitario, Preciototal) VALUES (27, 22, 2, 2, 60.00, 120.00);
INSERT INTO DetalleVentas (Id, IdVenta, IdProducto, Cantidad, PrecioUnitario, Preciototal) VALUES (28, 23, 3, 1, 35.50, 35.50);
INSERT INTO DetalleVentas (Id, IdVenta, IdProducto, Cantidad, PrecioUnitario, Preciototal) VALUES (29, 24, 4, 4, 70.00, 280.00);
INSERT INTO DetalleVentas (Id, IdVenta, IdProducto, Cantidad, PrecioUnitario, Preciototal) VALUES (30, 25, 5, 1, 15.00, 15.00);
INSERT INTO DetalleVentas (Id, IdVenta, IdProducto, Cantidad, PrecioUnitario, Preciototal) VALUES (31, 26, 6, 2, 47.60, 95.20);
INSERT INTO DetalleVentas (Id, IdVenta, IdProducto, Cantidad, PrecioUnitario, Preciototal) VALUES (32, 27, 7, 3, 70.00, 210.00);
INSERT INTO DetalleVentas (Id, IdVenta, IdProducto, Cantidad, PrecioUnitario, Preciototal) VALUES (33, 28, 8, 1, 55.00, 55.00);
INSERT INTO DetalleVentas (Id, IdVenta, IdProducto, Cantidad, PrecioUnitario, Preciototal) VALUES (34, 29, 9, 2, 210.00, 420.00);
INSERT INTO DetalleVentas (Id, IdVenta, IdProducto, Cantidad, PrecioUnitario, Preciototal) VALUES (35, 30, 10, 4, 22.00, 88.00);
INSERT INTO DetalleVentas (Id, IdVenta, IdProducto, Cantidad, PrecioUnitario, Preciototal) VALUES (36, 31, 1, 1, 12.00, 12.00);
INSERT INTO DetalleVentas (Id, IdVenta, IdProducto, Cantidad, PrecioUnitario, Preciototal) VALUES (37, 32, 2, 5, 35.00, 175.00);
INSERT INTO DetalleVentas (Id, IdVenta, IdProducto, Cantidad, PrecioUnitario, Preciototal) VALUES (38, 33, 3, 2, 30.00, 60.00);
INSERT INTO DetalleVentas (Id, IdVenta, IdProducto, Cantidad, PrecioUnitario, Preciototal) VALUES (39, 34, 4, 3, 103.50, 310.50);
INSERT INTO DetalleVentas (Id, IdVenta, IdProducto, Cantidad, PrecioUnitario, Preciototal) VALUES (40, 35, 5, 1, 45.00, 45.00);
INSERT INTO DetalleVentas (Id, IdVenta, IdProducto, Cantidad, PrecioUnitario, Preciototal) VALUES (41, 36, 6, 5, 100.00, 500.00);
INSERT INTO DetalleVentas (Id, IdVenta, IdProducto, Cantidad, PrecioUnitario, Preciototal) VALUES (42, 37, 7, 1, 25.00, 25.00);
INSERT INTO DetalleVentas (Id, IdVenta, IdProducto, Cantidad, PrecioUnitario, Preciototal) VALUES (43, 38, 8, 3, 45.00, 135.00);
INSERT INTO DetalleVentas (Id, IdVenta, IdProducto, Cantidad, PrecioUnitario, Preciototal) VALUES (44, 39, 9, 1, 78.90, 78.90);
INSERT INTO DetalleVentas (Id, IdVenta, IdProducto, Cantidad, PrecioUnitario, Preciototal) VALUES (45, 40, 10, 2, 95.00, 190.00);
INSERT INTO DetalleVentas (Id, IdVenta, IdProducto, Cantidad, PrecioUnitario, Preciototal) VALUES (46, 21, 1, 3, 15.00, 45.00);
INSERT INTO DetalleVentas (Id, IdVenta, IdProducto, Cantidad, PrecioUnitario, Preciototal) VALUES (47, 22, 2, 2, 60.00, 120.00);
INSERT INTO DetalleVentas (Id, IdVenta, IdProducto, Cantidad, PrecioUnitario, Preciototal) VALUES (48, 23, 3, 1, 35.50, 35.50);
INSERT INTO DetalleVentas (Id, IdVenta, IdProducto, Cantidad, PrecioUnitario, Preciototal) VALUES (49, 24, 4, 4, 70.00, 280.00);
INSERT INTO DetalleVentas (Id, IdVenta, IdProducto, Cantidad, PrecioUnitario, Preciototal) VALUES (50, 25, 5, 1, 15.00, 15.00);
INSERT INTO DetalleVentas (Id, IdVenta, IdProducto, Cantidad, PrecioUnitario, Preciototal) VALUES (51, 26, 6, 2, 47.60, 95.20);
INSERT INTO DetalleVentas (Id, IdVenta, IdProducto, Cantidad, PrecioUnitario, Preciototal) VALUES (52, 27, 7, 3, 70.00, 210.00);
INSERT INTO DetalleVentas (Id, IdVenta, IdProducto, Cantidad, PrecioUnitario, Preciototal) VALUES (53, 28, 8, 1, 55.00, 55.00);
INSERT INTO DetalleVentas (Id, IdVenta, IdProducto, Cantidad, PrecioUnitario, Preciototal) VALUES (54, 29, 9, 2, 210.00, 420.00);
INSERT INTO DetalleVentas (Id, IdVenta, IdProducto, Cantidad, PrecioUnitario, Preciototal) VALUES (55, 30, 10, 4, 22.00, 88.00);
INSERT INTO DetalleVentas (Id, IdVenta, IdProducto, Cantidad, PrecioUnitario, Preciototal) VALUES (56, 31, 1, 1, 12.00, 12.00);
INSERT INTO DetalleVentas (Id, IdVenta, IdProducto, Cantidad, PrecioUnitario, Preciototal) VALUES (57, 32, 2, 5, 35.00, 175.00);
INSERT INTO DetalleVentas (Id, IdVenta, IdProducto, Cantidad, PrecioUnitario, Preciototal) VALUES (58, 33, 3, 2, 30.00, 60.00);
INSERT INTO DetalleVentas (Id, IdVenta, IdProducto, Cantidad, PrecioUnitario, Preciototal) VALUES (59, 34, 4, 3, 103.50, 310.50);
INSERT INTO DetalleVentas (Id, IdVenta, IdProducto, Cantidad, PrecioUnitario, Preciototal) VALUES (60, 35, 5, 1, 45.00, 45.00);
INSERT INTO DetalleVentas (Id, IdVenta, IdProducto, Cantidad, PrecioUnitario, Preciototal) VALUES (61, 36, 6, 5, 100.00, 500.00);
INSERT INTO DetalleVentas (Id, IdVenta, IdProducto, Cantidad, PrecioUnitario, Preciototal) VALUES (62, 37, 7, 1, 25.00, 25.00);
INSERT INTO DetalleVentas (Id, IdVenta, IdProducto, Cantidad, PrecioUnitario, Preciototal) VALUES (63, 38, 8, 3, 45.00, 135.00);
INSERT INTO DetalleVentas (Id, IdVenta, IdProducto, Cantidad, PrecioUnitario, Preciototal) VALUES (64, 39, 9, 1, 78.90, 78.90);
INSERT INTO DetalleVentas (Id, IdVenta, IdProducto, Cantidad, PrecioUnitario, Preciototal) VALUES (65, 40, 10, 2, 95.00, 190.00);
INSERT INTO DetalleVentas (Id, IdVenta, IdProducto, Cantidad, PrecioUnitario, Preciototal) VALUES (66, 41, 1, 5, 25.00, 125.00);
INSERT INTO DetalleVentas (Id, IdVenta, IdProducto, Cantidad, PrecioUnitario, Preciototal) VALUES (67, 42, 2, 1, 45.90, 45.90);
INSERT INTO DetalleVentas (Id, IdVenta, IdProducto, Cantidad, PrecioUnitario, Preciototal) VALUES (68, 43, 3, 2, 155.00, 310.00);
INSERT INTO DetalleVentas (Id, IdVenta, IdProducto, Cantidad, PrecioUnitario, Preciototal) VALUES (69, 44, 4, 1, 85.00, 85.00);
INSERT INTO DetalleVentas (Id, IdVenta, IdProducto, Cantidad, PrecioUnitario, Preciototal) VALUES (70, 45, 5, 1, 12.00, 12.00);
INSERT INTO DetalleVentas (Id, IdVenta, IdProducto, Cantidad, PrecioUnitario, Preciototal) VALUES (71, 46, 6, 2, 125.00, 250.00);
INSERT INTO DetalleVentas (Id, IdVenta, IdProducto, Cantidad, PrecioUnitario, Preciototal) VALUES (72, 47, 7, 1, 65.50, 65.50);
INSERT INTO DetalleVentas (Id, IdVenta, IdProducto, Cantidad, PrecioUnitario, Preciototal) VALUES (73, 48, 8, 3, 60.00, 180.00);
INSERT INTO DetalleVentas (Id, IdVenta, IdProducto, Cantidad, PrecioUnitario, Preciototal) VALUES (74, 49, 9, 1, 95.00, 95.00);
INSERT INTO DetalleVentas (Id, IdVenta, IdProducto, Cantidad, PrecioUnitario, Preciototal) VALUES (75, 50, 10, 2, 20.00, 40.00);
INSERT INTO DetalleVentas (Id, IdVenta, IdProducto, Cantidad, PrecioUnitario, Preciototal) VALUES (76, 51, 1, 1, 215.00, 215.00);
INSERT INTO DetalleVentas (Id, IdVenta, IdProducto, Cantidad, PrecioUnitario, Preciototal) VALUES (77, 52, 2, 1, 55.00, 55.00);
INSERT INTO DetalleVentas (Id, IdVenta, IdProducto, Cantidad, PrecioUnitario, Preciototal) VALUES (78, 53, 3, 4, 80.00, 320.00);
INSERT INTO DetalleVentas (Id, IdVenta, IdProducto, Cantidad, PrecioUnitario, Preciototal) VALUES (79, 54, 4, 2, 36.25, 72.50);
INSERT INTO DetalleVentas (Id, IdVenta, IdProducto, Cantidad, PrecioUnitario, Preciototal) VALUES (80, 55, 5, 2, 55.00, 110.00);
INSERT INTO DetalleVentas (Id, IdVenta, IdProducto, Cantidad, PrecioUnitario, Preciototal) VALUES (81, 56, 6, 1, 430.00, 430.00);
INSERT INTO DetalleVentas (Id, IdVenta, IdProducto, Cantidad, PrecioUnitario, Preciototal) VALUES (82, 57, 7, 1, 28.00, 28.00);
INSERT INTO DetalleVentas (Id, IdVenta, IdProducto, Cantidad, PrecioUnitario, Preciototal) VALUES (83, 58, 8, 3, 65.00, 195.00);
INSERT INTO DetalleVentas (Id, IdVenta, IdProducto, Cantidad, PrecioUnitario, Preciototal) VALUES (84, 59, 9, 2, 32.00, 64.00);
INSERT INTO DetalleVentas (Id, IdVenta, IdProducto, Cantidad, PrecioUnitario, Preciototal) VALUES (85, 60, 10, 5, 100.00, 500.00);
INSERT INTO DetalleVentas (Id, IdVenta, IdProducto, Cantidad, PrecioUnitario, Preciototal) VALUES (86, 61, 5, 2, 900.00, 1800.00);
INSERT INTO DetalleVentas (Id, IdVenta, IdProducto, Cantidad, PrecioUnitario, Preciototal) VALUES (87, 61, 6, 1, 2500.00, 2500.00);
INSERT INTO DetalleVentas (Id, IdVenta, IdProducto, Cantidad, PrecioUnitario, Preciototal) VALUES (88, 61, 9, 1, 5000.00, 5000.00);
INSERT INTO DetalleVentas (Id, IdVenta, IdProducto, Cantidad, PrecioUnitario, Preciototal) VALUES (89, 61, 4, 2, 700.00, 1400.00);
INSERT INTO DetalleVentas (Id, IdVenta, IdProducto, Cantidad, PrecioUnitario, Preciototal) VALUES (90, 62, 6, 1, 6250.00, 6250.00);
INSERT INTO DetalleVentas (Id, IdVenta, IdProducto, Cantidad, PrecioUnitario, Preciototal) VALUES (91, 62, 9, 1, 5704.00, 5704.00);
INSERT INTO DetalleVentas (Id, IdVenta, IdProducto, Cantidad, PrecioUnitario, Preciototal) VALUES (92, 62, 2, 2, 2200.00, 4400.00);
INSERT INTO DetalleVentas (Id, IdVenta, IdProducto, Cantidad, PrecioUnitario, Preciototal) VALUES (93, 62, 5, 1, 900.00, 900.00);
INSERT INTO DetalleVentas (Id, IdVenta, IdProducto, Cantidad, PrecioUnitario, Preciototal) VALUES (94, 63, 4, 3, 700.00, 2100.00);
INSERT INTO DetalleVentas (Id, IdVenta, IdProducto, Cantidad, PrecioUnitario, Preciototal) VALUES (95, 63, 7, 1, 2200.00, 2200.00);
INSERT INTO DetalleVentas (Id, IdVenta, IdProducto, Cantidad, PrecioUnitario, Preciototal) VALUES (96, 63, 6, 1, 1875.00, 1875.00);
INSERT INTO DetalleVentas (Id, IdVenta, IdProducto, Cantidad, PrecioUnitario, Preciototal) VALUES (97, 63, 1, 1, 1200.00, 1200.00);
INSERT INTO DetalleVentas (Id, IdVenta, IdProducto, Cantidad, PrecioUnitario, Preciototal) VALUES (98, 63, 2, 1, 2200.00, 2200.00);
INSERT INTO DetalleVentas (Id, IdVenta, IdProducto, Cantidad, PrecioUnitario, Preciototal) VALUES (99, 64, 4, 2, 700.00, 1400.00);
INSERT INTO DetalleVentas (Id, IdVenta, IdProducto, Cantidad, PrecioUnitario, Preciototal) VALUES (100, 64, 6, 1, 8750.00, 8750.00);
INSERT INTO DetalleVentas (Id, IdVenta, IdProducto, Cantidad, PrecioUnitario, Preciototal) VALUES (101, 64, 9, 1, 5380.00, 5380.00);
INSERT INTO DetalleVentas (Id, IdVenta, IdProducto, Cantidad, PrecioUnitario, Preciototal) VALUES (102, 64, 2, 1, 2200.00, 2200.00);
INSERT INTO DetalleVentas (Id, IdVenta, IdProducto, Cantidad, PrecioUnitario, Preciototal) VALUES (103, 65, 12, 2, 30000.00, 60000.00);
INSERT INTO DetalleVentas (Id, IdVenta, IdProducto, Cantidad, PrecioUnitario, Preciototal) VALUES (104, 65, 11, 2, 2500.00, 5000.00);
INSERT INTO DetalleVentas (Id, IdVenta, IdProducto, Cantidad, PrecioUnitario, Preciototal) VALUES (105, 65, 6, 1, 2500.00, 2500.00);
INSERT INTO DetalleVentas (Id, IdVenta, IdProducto, Cantidad, PrecioUnitario, Preciototal) VALUES (106, 65, 7, 1, 5500.00, 5500.00);
INSERT INTO DetalleVentas (Id, IdVenta, IdProducto, Cantidad, PrecioUnitario, Preciototal) VALUES (107, 65, 9, 1, 11900.00, 11900.00);
INSERT INTO DetalleVentas (Id, IdVenta, IdProducto, Cantidad, PrecioUnitario, Preciototal) VALUES (108, 66, 12, 2, 30000.00, 60000.00);
INSERT INTO DetalleVentas (Id, IdVenta, IdProducto, Cantidad, PrecioUnitario, Preciototal) VALUES (109, 66, 6, 1, 2500.00, 2500.00);
INSERT INTO DetalleVentas (Id, IdVenta, IdProducto, Cantidad, PrecioUnitario, Preciototal) VALUES (110, 66, 4, 3, 700.00, 2100.00);
INSERT INTO DetalleVentas (Id, IdVenta, IdProducto, Cantidad, PrecioUnitario, Preciototal) VALUES (111, 66, 9, 1, 4640.00, 4640.00);
SET IDENTITY_INSERT DetalleVentas OFF;
GO
