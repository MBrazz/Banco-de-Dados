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



-- DML LINGUAGEM DE MANIPULACAO DE DADOS

-- COMANDO DE INSERIR DADOS
INSERT INTO EstiloMusical (NomeEstilo)
VALUES ('Pagode'),('Samba'),('Rock'),('Forro'),('Pop');

INSERT INTO TipoUsuario(Titulo)
VALUES ('Usuario'),('ADM'),('Filiado');


INSERT INTO Artistas (NomeArtista)
VALUES ('Anita'),('Zeca Pagodinha'),('Pitty'),('Thiaguinho'), ('Beyonce'), ('Zé Pinga');


INSERT INTO Albuns (NomeAlbum, IdEstilo, IdArtista, DataLancamento, QtdVisualizacoes)
VALUES ('Equalize', 1, 2, '29/01/2020', 1897),
		('Magnite', 3, 3, '29/02/2020', 2548),
		('Barrigudinha', 2, 1, '29/03/2020', 5652),
		('CorSIM CorNÃO', 7, 4, '29/04/2020', 10273),
		('Soldier', 8, 5, '29/05/2020', 8784),
		('Halo', 8, 5, '30/05/2020', 6543),
		('Pisadinha', 7, 4, '30/06/2020', 15397);
		('Rei do Corote', 7, 4, '30/06/2020', 13445);
		('Pinguinha', 7, 6, '15/01/2020', 11753);


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
WHERE IdAlbum = 10;


-- Limpar todos os dados da tabela
TRUNCATE TABLE Artistas;
TRUNCATE TABLE Albuns;

-- DQL LINGUAGEM DE CONSULTA DE DADOS 

SELECT * FROM Albuns;
SELECT * FROM Usuario;
SELECT * FROM EstiloMusical;
SELECT * FROM Artistas;
SELECT* FROM TipoUsuario;

SELECT * FROM Albuns WHERE IdArtista = 4;

SELECT * FROM Albuns WHERE DataLancamento = '2020-06-30';

SELECT * FROM Albuns WHERE IdEstilo = 7;

SELECT IdArtista, NomeAlbum, DataLancamento FROM Albuns
ORDER BY DataLancamento DESC;
