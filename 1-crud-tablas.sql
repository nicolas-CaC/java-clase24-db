-- DB

-- Muestra las bases de datos
SHOW DATABASES;

-- Crea una base de datos
CREATE DATABASE basededatos;

-- Usa la base de datos
USE basededatos;

-- Borra una base de datos
DROP DATABASE basededatos;

-- -------------------------------------------------------------------

-- TABLAS

-- Muestro las tablas de la base de datos donde estoy
SHOW tables;

-- Crear // **

-- Creo mi primera tablita
CREATE TABLE productos(
	id int(4) NOT NULL AUTO_INCREMENT PRIMARY KEY,
	nombre varchar(20) NOT NULL DEFAULT 'fulano',
	edad smallint(2)
);

-- Otra forma de asignar los índices
CREATE TABLE productos(
	id int(4) NOT NULL AUTO_INCREMENT,
	nombre varchar(20) NOT NULL DEFAULT 'fulano',
	edad smallint(2),
	PRIMARY KEY(id)
);

-- Otra forma de asignar los índices
CREATE TABLE productos(
	id int(4) NOT NULL AUTO_INCREMENT,
	nombre varchar(20) NOT NULL DEFAULT 'fulano',
	edad smallint(2),
	CONSTRAINT indexid PRIMARY KEY(id)
);

-- Otra forma de asignar los índices
CREATE TABLE productos(
	id int(4) NOT NULL AUTO_INCREMENT,
	nombre varchar(20) NOT NULL DEFAULT 'fulano',
	edad smallint(2),
	PRIMARY KEY(id),
	INDEX(nombre),
	UNIQUE(edad)
);

-- Mostrar // **

SHOW fields FROM productos;
DESCRIBE productos;

-- Modificar // **

CREATE TABLE a1(dato char);
SHOW CREATE TABLE a1;

-- Modificadores

-- agregar campo
ALTER TABLE a1 ADD datamediumblob MEDIUMBLOB NULL;
-- cambiar nombre del campo
ALTER TABLE a1 CHANGE dato datito varchar(100);
-- modificar propiedades de columna
ALTER TABLE a1 MODIFY COLUMN datito int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY;
-- agregar campo después de:
ALTER TABLE a1 ADD numerito int AFTER datito;
-- agregar campo al comienzo:
ALTER TABLE a1 ADD fechita datetime FIRST;

-- Borrar // **

DROP TABLE IF EXISTS a1;
-- Borro mi primera tablita
DROP TABLE productos;
