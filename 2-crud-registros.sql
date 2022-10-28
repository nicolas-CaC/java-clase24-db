CREATE DATABASE campos;
USE campos;
CREATE TABLE jugadores(
	id int NOT NULL,
	nombre varchar(100) NOT NULL,
	numero SMALLINT(3) NOT NULL,
	posicion varchar(30) NOT NULL,
	precio decimal(11,2),
	INDEX (id)
);
DESCRIBE jugadores;
ALTER TABLE jugadores MODIFY COLUMN id int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY;
ALTER TABLE jugadores CHANGE id idcito int(6) NOT NULL AUTO_INCREMENT;
ALTER TABLE jugadores CHANGE idcito id int(6) NOT NULL AUTO_INCREMENT;
DESCRIBE jugadores;

-- -------------------------------------------------------------------

-- REGISTROS/DATOS

-- Crear // **

INSERT INTO jugadores(nombre,numero,posicion,precio) values('Nico', 10, 'delantero', 100);
INSERT INTO jugadores(nombre,numero,posicion) values('Sergio', 9, 'delantero');
INSERT INTO jugadores (nombre,numero,posicion) VALUES ('Raul', 1, 'defensor');
INSERT INTO jugadores (nombre,numero,posicion) VALUES ('Jorge', 8, 'portero');
INSERT INTO jugadores (nombre,numero,posicion) VALUES ('Ulises', 7, 'mediocampo');

-- Modificar // **

UPDATE jugadores SET precio=8000.50 WHERE nombre='Sergio';
UPDATE jugadores SET precio=100000000, nombre='Mario' WHERE id=3;
UPDATE jugadores SET precio=500000.99, nombre='Peluso' WHERE nombre='Sergio' AND id=4;

-- Mostrar // **

SELECT * FROM jugadores;
SELECT idcito,nombre,numero FROM jugadores;
SELECT idcito,nombre,numero FROM jugadores WHERE numero > 8;
SELECT idcito,nombre,numero FROM jugadores WHERE numero > 5 AND id < 2;

-- Borrar // **

DELETE FROM jugadores WHERE numero < 4;

-- -------------------------------------------------------------------

CREATE TABLE pepes(a1 int);
INSERT INTO pepes (a1) VALUES (3);

-- Vaciar registros // **

DELETE FROM pepes;
truncate TABLE pepes;

-- -------------------------------------------------------------------

-- Autocompletar espacios con ceros

CREATE TABLE ids(
	id int(6) ZEROFILL,
	nro smallint(6) ZEROFILL
);

INSERT INTO ids VALUES (1,2);
INSERT INTO ids VALUES (10,2);
