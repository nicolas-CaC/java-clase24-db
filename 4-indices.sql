CREATE DATABASE foraneas;
USE foraneas;
DROP DATABASE foraneas;

-- ------------------------------------------------

-- tabla padre
CREATE TABLE autos (
	id int NOT NULL AUTO_INCREMENT,
	marca varchar(20) NOT NULL,
	modelo varchar(30) NOT NULL,
	PRIMARY KEY (id)
);
DROP TABLE autos;

-- tabla padre
CREATE TABLE trabajos(
	id int NOT NULL AUTO_INCREMENT,
	trabajo varchar(50) NOT NULL,
	horario enum('6 a 13hs','13 a 21hs','22 a 6hs') NOT NULL,
	PRIMARY KEY (id)
);
DROP TABLE trabajos;

-- tabla padre
CREATE TABLE hobbies(
	id int NOT NULL AUTO_INCREMENT,
	hobby varchar(50) NOT NULL,
	anios int(2) NOT NULL,
	PRIMARY KEY (id)
);
DROP TABLE hobbies;

-- tabla hija
CREATE TABLE usuarios(
	id int NOT NULL AUTO_INCREMENT,
	nombre varchar(30) NOT NULL,
	email varchar(50),
	autoid int NOT NULL,
	trabajoid int NOT NULL,
	hobbyid int NOT NULL,
	PRIMARY KEY (id),
	FOREIGN KEY (autoid) REFERENCES autos(id),
	FOREIGN KEY (trabajoid) REFERENCES trabajos(id),
	FOREIGN KEY (hobbyid) REFERENCES hobbies(id)
);
DROP TABLE usuarios;

INSERT INTO autos(marca, modelo) VALUES ('Lamborghini','Diablo');
INSERT INTO autos(marca, modelo) VALUES ('Ferrari','F50');
INSERT INTO autos(marca, modelo) VALUES ('Renault','9');
INSERT INTO autos(marca, modelo) VALUES ('Ford','Falcon');
INSERT INTO autos(marca, modelo) VALUES ('Fiat','147');
DELETE FROM autos WHERE id = 2;

INSERT INTO trabajos(trabajo,horario) VALUES ('minero',1);
INSERT INTO trabajos(trabajo,horario) VALUES ('banquero',2);
INSERT INTO trabajos(trabajo,horario) VALUES ('dev',3);
INSERT INTO trabajos(trabajo,horario) VALUES ('callcenter',2);
INSERT INTO trabajos(trabajo,horario) VALUES ('diseño',3);

INSERT INTO hobbies(hobby,anios) VALUES ('coleccionar',3);
INSERT INTO hobbies(hobby,anios) VALUES ('futbol',6);
INSERT INTO hobbies(hobby,anios) VALUES ('programacion',1);
INSERT INTO hobbies(hobby,anios) VALUES ('viajar',0);
INSERT INTO hobbies(hobby,anios) VALUES ('cocinar',3);

INSERT INTO usuarios (nombre,autoid,trabajoid,hobbyid) VALUES ('Marcos', 1, 2, 1);
INSERT INTO usuarios (nombre,autoid,trabajoid,hobbyid) VALUES ('Juan', 2, 3, 5);
INSERT INTO usuarios (nombre,autoid,trabajoid,hobbyid) VALUES ('Mercedes', 3, 3, 1);
INSERT INTO usuarios (nombre,autoid,trabajoid,hobbyid) VALUES ('Sosana', 4, 1, 5);
INSERT INTO usuarios (nombre,autoid,trabajoid,hobbyid) VALUES ('Ramon', 2, 1, 3);


