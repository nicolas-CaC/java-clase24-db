USE foraneas;

CREATE TABLE categorias(
	id int,
	categoria varchar(10),
	PRIMARY KEY (id),
	FOREIGN KEY (id) REFERENCES trabajos(id)
);
DROP TABLE categorias;

INSERT INTO categorias VALUES (1,'amateur');
INSERT INTO categorias VALUES (2,'basico');
INSERT INTO categorias VALUES (3,'medium');
INSERT INTO categorias VALUES (4,'pro');

SELECT 
	categorias.categoria AS categoria,
	trabajos.trabajo AS trabajito,
	trabajos.horario AS horas
	FROM categorias
	INNER JOIN trabajos using(id);
	
SELECT 
	usuarios.id AS id,
	usuarios.nombre AS usuario,
	autos.marca AS auto,
	trabajos.trabajo AS trabajo,
	hobbies.hobby AS hobby
	FROM usuarios
	INNER JOIN autos ON autos.id = usuarios.autoid
	INNER JOIN trabajos ON trabajos.id = usuarios.trabajoid
	INNER JOIN hobbies ON hobbies.id = usuarios.hobbyid
	GROUP BY trabajo;
-- 	ORDER BY trabajo;