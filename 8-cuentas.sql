USE foraneas;

SELECT sum(anios) FROM hobbies;
SELECT max(anios) FROM hobbies;
SELECT min(anios) FROM hobbies;
SELECT min(anios) FROM hobbies WHERE hobby='programacion';
SELECT min(anios) FROM hobbies WHERE hobby LIKE 'programacion';
SELECT min(anios) FROM hobbies WHERE hobby NOT LIKE 'viajar';

SELECT avg(anios) AS porcentajes FROM hobbies;
SELECT count(*) AS contador FROM hobbies;

