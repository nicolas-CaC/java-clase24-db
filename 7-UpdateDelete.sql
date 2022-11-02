USE foraneas;

CREATE TABLE rutas (
	id int NOT NULL AUTO_INCREMENT,
	ruta varchar(30) NOT NULL,
	autoid int NOT NULL,
	trabajoid int NOT NULL,
	hobbyid int,
	PRIMARY KEY (id),
	FOREIGN KEY (autoid) REFERENCES autos(id),
	FOREIGN KEY (trabajoid) REFERENCES trabajos(id),
	FOREIGN KEY (hobbyid) REFERENCES hobbies(id) ON UPDATE CASCADE ON DELETE SET NULL
);
DROP TABLE rutas;

INSERT INTO rutas (ruta, autoid, trabajoid, hobbyid) VALUES ('ruta1', 1, 1, 3);
DELETE FROM rutas WHERE id = 2;

-- Accion On Delete: Null
INSERT INTO hobbies (hobby, anios) VALUES ('comer', 2);
INSERT INTO rutas (ruta, autoid, trabajoid, hobbyid) VALUES ('ruta1', 1, 1, 6);
DELETE FROM hobbies WHERE id = 6;

-- Accion On Update: Cascade
INSERT INTO hobbies (hobby, anios) VALUES ('merendar', 2);
INSERT INTO rutas (ruta, autoid, trabajoid, hobbyid) VALUES ('ruta1', 1, 1, 7);
UPDATE hobbies SET id=70 WHERE hobby='merendar';