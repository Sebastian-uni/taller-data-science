-- 1. Tabla de Usuarios (Para los empleados del sistema)
CREATE TABLE usuarios (
    ID_USUARIO CHAR(4) PRIMARY KEY NOT NULL,
    USERNAME VARCHAR(20) NOT NULL UNIQUE,
    CONTRASENA VARCHAR(100) NOT NULL,
    ROL VARCHAR(15) NOT NULL
);

-- 2. Tabla de Clientes
CREATE TABLE cliente (
    ID_CLIENTE CHAR(4) PRIMARY KEY NOT NULL,
    NOMBRE VARCHAR(50) NOT NULL,    -- Aumentado a 50 para evitar nombres cortados
    APELLIDO VARCHAR(50) NOT NULL,  -- Aumentado a 50
    EMAIL VARCHAR(100) NOT NULL UNIQUE,
    CITY VARCHAR(50)
);

-- 3. Tabla de Ventas (Relaciona qué cliente compró y qué usuario/empleado la registró)
CREATE TABLE ventas (
    ID_VENTAS CHAR(4) PRIMARY KEY NOT NULL,
    VALOR DECIMAL(10,2) NOT NULL,   -- Mejorado a DECIMAL para operaciones matemáticas de dinero
    FECHA DATE NOT NULL,            -- Mejorado a DATE para filtros de tiempo reales
    ID_CLIENTE CHAR(4) NOT NULL,
    ID_USUARIO CHAR(4) NOT NULL,
    FOREIGN KEY (ID_CLIENTE) REFERENCES cliente(ID_CLIENTE),
    FOREIGN KEY (ID_USUARIO) REFERENCES usuarios(ID_USUARIO)
);