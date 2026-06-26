-- COUNT
-- SELECT COUNT(MAKE)
-- FROM fuelconsumptionco2
-- WHERE MAKE = 'AUDI';

-- DISTINCT
-- SELECT DISTINCT MODEL
-- FROM fuelconsumptionco2;

-- LIMIT
-- SELECT *
-- FROM fuelconsumptionco2
-- LIMIT 10;

-- CREAR TABLA - CREATE TABLE
-- CREATE TABLE usuarios(
-- 	ID VARCHAR(12),
--     NOMBRE VARCHAR(24)
-- )
-- SELECT * FROM usuarios;
-- INSERT INTO NOMBRETABLA VALUES

-- INSERT INTO usuarios(ID,NOMBRE) VALUES (1234, 'Ignacio Peralta');
-- INSERT INTO usuarios(ID,NOMBRE) VALUES (1235, 'Maria Velazquez');
-- INSERT INTO usuarios(ID,NOMBRE) VALUES (1236, 'Jose Rodriguez');
-- INSERT INTO usuarios(ID,NOMBRE) VALUES (1237, 'Laura Pinilla');

-- SELECT * FROM usuarios;
-- UPDATE
-- SET SQL_SAFE_UPDATE = 0;
-- UPDATE usuarios
-- SET NOMBRE = 'Paula Vargas'
-- WHERE ID = 1234;
-- SET SQL_SAFE_UPDATE = 1;
-- SELECT * FROM usuarios;
-- INSERT INTO usuarios(ID,NOMBRE) VALUES (1235, 'Maria Velazquez');
-- INSERT INTO usuarios(ID,NOMBRE) VALUES (1236, 'Jose Rodriguez');
-- INSERT INTO usuarios(ID,NOMBRE) VALUES (1237, 'Laura Pinilla');
-- SELECT * FROM usuarios;


-- DELETE
-- SET SQL_SAFE_UPDATE = 0;
-- delete from usuarios
-- where ID = 1234;
-- SET SQL_SAFE_UPDATE = 1;

-- CREATE TABLE cliente (
--   ID CHAR(4) PRIMARY KEY NOT NULL,
--    NOMBRE VARCHAR(10) NOT NULL,
--    APELLIDO VARCHAR(10) NOT NULL,
--    EMAIL VARCHAR(40) NOT NULL,
--    CITY VARCHAR(30)
-- );



-- Ejemplo 1: Cliente con todos los campos llenos
-- INSERT INTO cliente (ID, NOMBRE, APELLIDO, EMAIL, CITY) 
-- VALUES ('C001', 'Ana', 'Pérez', 'ana.perez@email.com', 'Madrid');

-- Ejemplo 2: Cliente sin ciudad (ya que CITY permite valores nulos)
-- INSERT INTO cliente (ID, NOMBRE, APELLIDO, EMAIL, CITY) 
-- VALUES ('C002', 'Luis', 'Gómez', 'luis.gomez@email.com', NULL);

select * from usuarios