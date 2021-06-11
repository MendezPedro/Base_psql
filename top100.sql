\c postgres
-- Crear base de datos llamada peliculas.
DROP DATABASE peliculas;
CREATE DATABASE peliculas;

\c peliculas


--creo tablas para después cargar sus archivos
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

-- Cargar ambos archivos a su tabla correspondiente
\copy peliculas FROM 'peliculas.csv' csv header;

\copy reparto FROM 'reparto.csv' csv header;

--consultas a las tablas
--pregunto por el ID de titanic
SELECT id FROM peliculas WHERE pelicula = 'Titanic';

--el teparto de titanic
SELECT actor FROM reparto WHERE id_pelicula = 2;

--peliculas cuenta las pelicuas en las que participa harrison ford
SELECT COUNT (*) FROM reparto WHERE actor = 'Harrison Ford';

--peliculas estrenadas entre los años 1990 y 1999
SELECT año_estreno, pelicula FROM peliculas WHERE año_estreno BETWEEN 1990 AND 1999 ORDER BY año_estreno ASC;

--muestra la longitud de caracteres de los titulos de las peliculas
SELECT LENGTH (pelicula) AS longitud_titulo, pelicula
FROM peliculas;

-- Consulta por cual es la longitud más grande entre todos los títulos de las películas.
SELECT MAX(LENGTH(pelicula)) FROM peliculas;
