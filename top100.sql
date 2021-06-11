\c postgres
-- Crear base de datos llamada peliculas.
DROP DATABASE peliculas;
CREATE DATABASE peliculas;

\c peliculas

-- Cargar ambos archivos a su tabla correspondiente

CREATE TABLE peliculas (
    id INT,
    pelicula VARCHAR(100),
    año_estreno INT,
    director VARCHAR(25),
    PRIMARY KEY(id)
);

CREATE TABLE reparto (
    id_pelicula INT,
    actor VARCHAR(50),
    FOREIGN KEY(id_pelicula) REFERENCES peliculas(id)
);

\copy peliculas FROM 'peliculas.csv' csv header;

\copy reparto FROM 'reparto.csv' csv header;

SELECT id FROM peliculas WHERE pelicula = 'Titanic';

SELECT actor FROM reparto WHERE id_pelicula = 2;

SELECT COUNT (*) FROM reparto WHERE actor = 'Harrison Ford';

SELECT año_estreno, pelicula FROM peliculas WHERE año_estreno BETWEEN 1990 AND 1999 ORDER BY año_estreno ASC;

SELECT LENGTH (pelicula) AS longitud_titulo, pelicula
FROM peliculas;

SELECT MAX(LENGTH(pelicula)) FROM peliculas;
