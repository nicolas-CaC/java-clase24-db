CREATE DATABASE tipos;
USE tipos;
SHOW tables;

-- Datos -----------------------------------------

CREATE TABLE datos(
	tipochar char(1),
	tipovarchar varchar(200),
	tipobinary binary(1),
	tipovarbinary varbinary(100),
	tipotinyblob TINYBLOB,
	tipotinytext TINYTEXT,
	tipoblob blob,
	tipotext text,
	tipomediumblob MEDIUMBLOB,
	tipomediumtext MEDIUMTEXT,
	tipolongblob LONGBLOB,
	tipolongtext LONGTEXT,
	tipoenum enum('a','b','c'),
	tiposet set('moto','auto','camion','colectivo','avion')
);

-- Numéricos -----------------------------------------

CREATE TABLE numericos(
	tipotinyint tinyint(4) NOT NULL,
	tiposmallint smallint(6),
	tipomediumint MEDIUMINT,
	tipoint int(11),
	tipobigint bigint,
	-- float
	tipodecimal decimal(10,2),
	tipofloat float,
	tipodouble double
);

-- Tiempo -----------------------------------------

CREATE TABLE tiempo(
	tipodate date,
	tipotime time,
	tipodatetime datetime,
	tipotimestamp timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE CURRENT_timestamp()
);

-- JSON -----------------------------------------

CREATE TABLE json (archivo json NOT null);

INSERT INTO json values('
{"mascota":{
	"animal":"perro", 
	"raza":"malamute"
	}
}');

SELECT JSON_EXTRACT(archivo, '$.mascota.animal') AS animalito FROM json;
UPDATE json SET archivo = JSON_REPLACE(archivo, '$.mascota.raza', 'akita inu');
UPDATE json SET archivo = JSON_REMOVE(archivo, '$.mascota.animal');
DELETE FROM json WHERE JSON_EXTRACT(archivo, '$.mascota.raza') = 'akita inu';
