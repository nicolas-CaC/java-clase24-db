USE foraneas;

-- ------------------------------------------------------

-- LEFT JOIN
SELECT nombre, autoid, autos.marca FROM usuarios
	LEFT JOIN autos ON trabajoid=1;
-- 		ORDER BY autos.id;

-- RIGHT JOIN 
SELECT nombre, autoid, autos.marca, autos.id FROM usuarios
	RIGHT JOIN autos ON autos.id = usuarios.autoid;
-- 		WHERE usuarios.id > 3;

-- INNER JOIN 
SELECT nombre, autoid, autos.id, autos.marca FROM usuarios
	INNER JOIN autos ON autos.id = usuarios.id;

-- FULL JOIN
SELECT nombre, autoid, autos.id FROM usuarios
	FULL JOIN autos ON autos.id = autoid;
	