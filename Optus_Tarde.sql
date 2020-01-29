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

CREATE TABLE TipoUsuario (
		IdTipoUsuario INT PRIMARY KEY IDENTITY,
		Titulo VARCHAR (200) NOT NULL,
);

ALTER TABLE Albuns
ADD DataLancamento DATE;

ALTER TABLE Albuns
ADD QtdVisualizacoes BIGINT;

ALTER TABLE Usuario
ADD IdTipoUsuario INT FOREIGN KEY REFERENCES TipoUsuario (IdTipoUsuario);

SELECT * FROM Albuns;
SELECT * FROM Usuario;
SELECT * FROM EstiloMusical;
SELECT * FROM Artistas;
SELECT* FROM TipoUsuario;

-- DML LINGUAGEM DE MANIPULACAO DE DADOS

-- COMANDO DE INSERIR DADOS
INSERT INTO EstiloMusical (NomeEstilo)
VALUES ('Pagode'),('Samba'),('Rock'),('Forro'),('Pop');

INSERT INTO TipoUsuario(Titulo)
VALUES ('Usuario'),('ADM'),('Filiado');


INSERT INTO Artistas (NomeArtista)
VALUES ('Anita'),('Zeca Pagodinha'),('Pitty'),('Thiaguinho'), ('Beyonce');


INSERT INTO Albuns (NomeAlbum, IdEstilo, IdArtista, DataLancamento, QtdVisualizacoes)
VALUES ('Equalize', 1, 2, '29/01/2020', 1897),
		('Magnite', 3, 3, '29/01/2020', 2548),
		('Barrigudinha', 2, 1, '29/01/2020', 5652),
		('CorSIM CorNÃO', 7, 4, '29/01/2020', 10273),
		('Soldier', 8, 5, '29/01/2020', 8784);


-- Update Alterar dados 

UPDATE Artistas
SET NomeArtista = 'VéiDaGayta'
WHERE IdArtista = 4;

UPDATE TipoUsuario
SET Titulo = 'Administrador'
WHERE IdTipoUsuario = 2;

UPDATE Albuns
SET QtdVisualizacoes = '8784'
WHERE IdAlbum = 5;

-- DELETE APAGAR DADOS
DELETE FROM Albuns
WHERE IdAlbum = 1;


-- Limpar todos os dados da tabela
TRUNCATE TABLE Artistas;
