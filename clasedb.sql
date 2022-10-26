-- Muestra las bases de datos
SHOW DATABASES;

-- Crea una base de datos
CREATE DATABASE negocio;

-- Usa la base de datos
USE negocio;

-- Borra una base de datos
DROP DATABASE negocio;

-- --------------------------------------------------

-- Muestro las tablas de la base de datos donde estoy
SHOW tables;

-- Creo mi primera tablita
CREATE TABLE productos(
id int(4) NOT NULL AUTO_INCREMENT PRIMARY KEY,
nombre varchar(20) NOT NULL DEFAULT 'fulano',
edad smallint(2)
);

CREATE TABLE productos(
id int(4) NOT NULL AUTO_INCREMENT,
nombre varchar(20) NOT NULL DEFAULT 'fulano',
edad smallint(2),
PRIMARY KEY(id)
);

CREATE TABLE productos(
id int(4) NOT NULL AUTO_INCREMENT,
nombre varchar(20) NOT NULL DEFAULT 'fulano',
edad smallint(2),
CONSTRAINT indexid PRIMARY key(id)
);

CREATE TABLE productos(
id int(4) NOT NULL AUTO_INCREMENT,
nombre varchar(20) NOT NULL DEFAULT 'fulano',
edad smallint(2),
PRIMARY KEY(id),
INDEX(nombre),
UNIQUE(edad)
);

-- Borro mi primera tablita
DROP TABLE productos;

-- Crear mis productos

INSERT INTO productos (nombre, edad) VALUES ('Juan', 23);
INSERT INTO productos (nombre, edad) VALUES ('Ramon', 13);
INSERT INTO productos (edad) VALUES (35);
-- INSERT INTO productos (nombre) VALUES (40);

DELETE FROM productos WHERE nombre = 'fulano';