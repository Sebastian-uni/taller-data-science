CREATE TABLE cliente ( 
    ID CHAR(4) PRIMARY KEY NOT NULL, 
    NOMBRE VARCHAR(30) NOT NULL,  -- Aumenté a 30 porque 10 es muy corto para algunos nombres
    APELLIDO VARCHAR(30) NOT NULL, 
    EMAIL VARCHAR(50) NOT NULL,
    CITY VARCHAR(30)
);

-- --- Creación de la tabla Ventas ---
CREATE TABLE ventas (
    ID_VENTAS CHAR(4) PRIMARY KEY NOT NULL,
    VALOR DECIMAL(10,2) NOT NULL, -- Cambiado a decimal para manejar dinero correctamente
    FECHA DATE NOT NULL,          -- Cambiado a tipo DATE nativo
    ID_CLIENTE CHAR(4) NOT NULL,  -- Esta es la columna que conectará con cliente
    FOREIGN KEY (ID_CLIENTE) REFERENCES cliente(ID)
); 


-- --- Insertar Clientes ---
INSERT INTO cliente(ID, NOMBRE, APELLIDO, EMAIL, CITY) VALUES ('1234', 'Andres', 'Garcia', 'andres@gmail.com', 'Yopal');
INSERT INTO cliente(ID, NOMBRE, APELLIDO, EMAIL, CITY) VALUES ('9578', 'Maria', 'Gonzales', 'maria@gmail.com', 'Bogota');

-- --- Insertar Ventas ---
INSERT INTO ventas(ID_VENTAS, VALOR, FECHA, ID_CLIENTE) VALUES ('V001', 150000.00, '2026-06-25', '1234');
INSERT INTO ventas(ID_VENTAS, VALOR, FECHA, ID_CLIENTE)  VALUES ('V002', 85000.50, '2026-06-25', '9578');