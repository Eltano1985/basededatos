/* Comandos que usemos en mysql */


/* ---------------------------------- CREATE -------------- */

/* Crea una base de datos */
CREATE DATABASE primer_db;

USE primer_db;

/* Crear una tabla */
CREATE TABLE productos(
    id INT PRIMARY KEY AUTO_INCREMENT,
    precio FLOAT DEFAULT 9999999,
    nombre VARCHAR(20)
);

INSERT INTO productos (precio, nombre) VALUES ( 500000.23, "notebook");
INSERT INTO productos (precio, nombre) VALUES ( 100000, "notebook barata");
INSERT INTO productos () VALUES ();
INSERT INTO productos (nombre) VALUES ("notebook");




/* ---------------------------------- FIN CREATE -------------- */
/* ---------------------------------- READ -------------- */

/* Muestra las base de datos existentes */
SHOW DATABASES;

/* ver las tablas */
SHOW TABLES;

/* ver los registros de una tabla */
SELECT * FROM productos;

/* detalla los campos de una tabla */

DESCRIBE productos; 

/* ---------------------------------- FIN READ -------------- */

/* ---------------------------------- UPDATE -------------- */

ALTER TABLE productos ADD COLUMN tiene_oferta TINYINT(1) DEFAULT 0;

ALTER TABLE productos ADD COLUMN peso FLOAT;

ALTER TABLE productos ADD COLUMN tamanio FLOAT NOT NULl;

ALTER TABLE productos ADD COLUMN unidad VARCHAR(3) NOT NULl;


UPDATE productos
SET peso = 1 WHERE id = 2;

UPDATE productos
SET peso = 2 WHERE id = 4;

UPDATE productos
SET unidad = "kg" WHERE id = 3;

/* ---------------------------------- FIN UPDATE -------------- */

/* ---------------------------------- DELETE -------------- */

DELETE FROM productos WHERE id = 3;

DELETE FROM productos WHERE id = 1;

/* ---------------------------------- FIN DELETE -------------- */