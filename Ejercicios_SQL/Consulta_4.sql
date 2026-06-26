-- Insertar Usuarios / Empleados
INSERT INTO usuarios (ID_USUARIO, USERNAME, CONTRASENA, ROL) VALUES 
('U001', 'carlos_admin', 'hash_password_segura_1', 'Administrador'),
('U002', 'maria_ventas', 'hash_password_segura_2', 'Vendedor');

-- Insertar Clientes
INSERT INTO cliente (ID_CLIENTE, NOMBRE, APELLIDO, EMAIL, CITY) VALUES 
('C001', 'Ana María', 'Pérez Gómez', 'ana.perez@email.com', 'Madrid'),
('C002', 'Luis', 'Gómez', 'luis.gomez@email.com', 'Barcelona'),
('C003', 'Carlos', 'Villamizar', 'carlos.villa@email.com', NULL); -- Cliente sin ciudad

-- Insertar Ventas
-- La venta V001 la compró el cliente C001 y la registró la vendedora U002
INSERT INTO ventas (ID_VENTAS, VALOR, FECHA, ID_CLIENTE, ID_USUARIO) VALUES 
('V001', 150.50, '2026-06-25', 'C001', 'U002'),
('V002', 4200.00, '2026-06-25', 'C002', 'U002'),
('V003', 85.25, '2026-06-25', 'C001', 'U001'); -- Otra compra de Ana, registrada por el Admin