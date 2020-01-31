--COMENTARIO
--CRIAR BANCO DE DADOS
CREATE DATABASE Biblioteca_tarde;

-- Apontar para o banco que quero usar
USE Biblioteca_tarde;

-- CRIAR TABELAS 

CREATE TABLE Autores (

	IdAutor		INT PRIMARY KEY IDENTITY,
	NomeAutor	VARCHAR (200) NOT NULL
);

CREATE TABLE Generos (
	IdGenero	INT PRIMARY KEY IDENTITY,
	Nome		VARCHAR(200) NOT NULL
);

CREATE TABLE Livros (
	IdLivro		INT PRIMARY KEY IDENTITY,
	Titulo		VARCHAR(255),
	IdAutor		INT FOREIGN KEY REFERENCES Autores (IdAutor),
	IdGenero	INT FOREIGN KEY REFERENCES Generos (IdGenero)
);


-- ALTERAR ADICIONAR UMA NOVA COLUNA
ALTER TABLE Generos
ADD Descricao VARCHAR (255);

-- ALTERAR TIPO DE DADO
ALTER TABLE Generos
ALTER COLUMN Descricao CHAR(100);

-- ALTERAR EXCLUIR COLUNA
ALTER TABLE Generos 
DROP COLUMN Descricao;

-- Excluir Tabela
DROP TABLE Livros;

-- Excluir banco de dados
DROP DATABASE Biblioteca_Tarde;

INSERT INTO Generos (Nome)
VALUES ('Aventura'),('Ficcao'),('Comedia'),('Suspense'),('Aventura');

UPDATE Generos
SET Nome = 'Terror'
WHERE IdGenero = 5;

INSERT INTO Autores (NomeAutor)
VALUES ('Stephen King'),('J.K Rowling'),('George R.R. Martin'),('Mauricio de Sousa'),('Dan Brown');

INSERT INTO Livros (Titulo,IdAutor,IdGenero)
VALUES ('O Iluminado', 1,5), ('Harry Potter',2,2),('GameOfThrones',3,1),('Turma da Mônica',4,3),('Origem',5,4);

TRUNCATE TABLE Livros;


--DESAFIO
- Selecionar todos os autores;
SELECT * FROM Autores;


- Selecionar todos os gêneros;
SELECT * FROM Generos;


- Selecionar todos os livros;
SELECT * FROM Livros;


- Selecionar todos os livros e seus respectivos autores;
SELECT Titulo,IdAutor FROM Livros;


- Selecionar todos os livros e seus respectivos gêneros;
SELECT Titulo,IdGenero FROM Livros;



- Selecionar todos os livros e seus respectivos autores e gêneros;
SELECT Titulo,IdAutor,IdGenero FROM Livros;





