USE foraneas;

SELECT now() FROM usuarios;
SELECT curdate() FROM usuarios;
SELECT curtime() FROM usuarios;
SELECT dayname(now()) FROM usuarios;
SELECT datediff('20221018','20201018') FROM usuarios;

SELECT format (nombre, email, id) FROM usuarios;