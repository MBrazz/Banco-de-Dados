CREATE DATABASE Pessoas_Tarde;

USE Pessoas_Tarde;

CREATE TABLE Telefones (
		IdTelefone INT PRIMARY KEY IDENTITY,
		Numero	VARCHAR (100) NOT NULL
);

CREATE TABLE Emails (
		IdEmail INT PRIMARY KEY IDENTITY,
		Email	VARCHAR (100) NOT NULL
);

CREATE TABLE CNHs (
		IdCNH INT PRIMARY KEY IDENTITY,
		CNH VARCHAR (100) NOT NULL UNIQUE
);

CREATE TABLE Pessoa (
		IdPessoa INT PRIMARY KEY IDENTITY,
		Nome VARCHAR (100) NOT NULL,
		IdTelefone	INT FOREIGN KEY REFERENCES Telefones (IdTelefone),
		IdEmail	INT FOREIGN KEY REFERENCES Emails (IdEmail),
		IdCNH	INT FOREIGN KEY REFERENCES CNHs (IdCNH)
);

INSERT INTO Telefones(Numero)
VALUES ('4642-5674'),('4091-1241'),('4812-5352'),('4353-4213'),('4231-5324');


INSERT INTO Emails(Email)
VALUES ('robsonjunior@gmail.com'),('jeferssonvieira@gmail.com'),('felipejoares@gmail.com'),('mayconluis@gmail.com'),('renanbrito@gmail.com');


INSERT INTO CNHs(CNH)
VALUES ('58196999721'),('54628463597'),('54678436127'),('58904517594'),('53424318464');


SELECT * FROM Telefones;
SELECT * FROM Emails;
SELECT * FROM CNHs;
SELECT * FROM Pessoa;


