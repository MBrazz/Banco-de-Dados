CREATE DATABASE EstiloMusical_Tarde;

USE EstiloMusical_Tarde;

CREATE TABLE Estilos (
		IdEstilo		INT PRIMARY KEY IDENTITY,
		NomeEstilo		VARCHAR (200) NOT NULL
);

CREATE TABLE Artistas (
		IdArtista		INT PRIMARY KEY IDENTITY,
		NomeArtista		VARCHAR (200) NOT NULL,
		IdEstilo		INT FOREIGN KEY REFERENCES Estilos (IdEstilo)
);

SELECT * FROM Estilos;
SELECT * FROM Artistas;

ALTER TABLE Artistas
ADD DataNascimento DATE;

ALTER TABLE Artistas
DROP COLUMN DataNascimento;

DROP TABLE Artistas;

USE Optus_Tarde;

DROP DATABASE EstiloMusical_Tarde;




