CREATE DATABASE Optus_Tarde;

Use Optus_Tarde;

CREATE TABLE EstiloMusical (
	IdEstilo	INT PRIMARY KEY IDENTITY,
	NomeEstilo	VARCHAR (200) NOT NULL
);

CREATE TABLE Artistas (
		IdArtista		INT PRIMARY KEY IDENTITY,
		NomeArtista		VARCHAR (200) NOT NULL,
);

CREATE TABLE Albuns (
		IdAlbum		INT PRIMARY KEY IDENTITY,
		NomeAlbum	VARCHAR (200) NOT NULL,
		IdEstilo		INT FOREIGN KEY REFERENCES EstiloMusical (IdEstilo),
		IdArtista		INT FOREIGN KEY REFERENCES Artistas (IdArtista)
);

CREATE TABLE Usuario (
		IdUsuario	INT PRIMARY KEY IDENTITY,
		NomeUsuario	VARCHAR (200) NOT NULL,
		CpfUsuario CHAR (11)
);

SELECT * FROM Albuns;
SELECT * FROM Usuario;