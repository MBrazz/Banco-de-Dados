-- DML

USE Gufi_Tarde

INSERT INTO TipoUsuario (TituloTipoUsuario)
VALUES ('Administrador'), ('Comum');

INSERT INTO TipoEvento (TituloTipoEvento)
VALUES ('C#'), ('React'), ('SQL');

INSERT INTO Instituicao(CNPJ, NomeFantasia, Endereco)
VALUES ('11111111111111', 'Escola SENAI de Informatica', 'Alameda Barão de Limeira,538');

INSERT INTO Usuario(NomeUsuario, Email, Senha, Genero, DataNascimento, IdTipoUsuario)
VALUES ('Administrador', 'adm@adm.com', 'adm123', 'Não Informado', '06/02/2020', 1),
('Carol', 'carol@email.com', 'carol123', 'Feminino', '06/02/2020', 2),
('Saulo', 'saulo@email.com', 'saulo123', 'Masculino', '06/02/2020', 2);


INSERT INTO Evento (NomeEvento, DataEvento, Descricao, AcessoLivre, IdInstituicao, IdTipoEvento)
VALUES ('Introdução ao C#', '07/02/2020', 'Conceitos sobre os pilares da programação orientada a objetos', 1, 1, 1), 
('Ciclo de vida', '07/02/2020', 'Como ultilizar o ciclo de vida com ReactJs', 0, 1, 2),
('Optimização de banco de dados', '07/02/2020', 'Aplicação de índices clusterizados e não clusterizados', 1, 1, 3);


INSERT INTO Presenca(IdUsuario, IdEvento, Situacao)
VALUES (2, 2, 'Agendada'), 
(2, 3, 'Confirmada'), 
(3, 1, 'Não Compareceu');

INSERT INTO Usuario(NomeUsuario, Email, Senha, Genero, DataNascimento, IdTipoUsuario)
VALUES ('Mateus', 'mateus@email.com', 'mateus123', 'Masculino', '20/04/2002', 2),
('Jefersson', 'jefersson@email.com', 'jefersson123', 'Masculino', '16/05/1999', 2),
('Cleber', 'cleber@email.com', 'cleber123', 'Masculino', '23/05/1999', 2);

ALTER TABLE Usuario
ADD Idade INT;

SELECT * FROM TipoUsuario

SELECT * FROM Usuario

SELECT * FROM TipoEvento

SELECT * FROM Instituicao

SELECT * FROM Evento

SELECT * FROM Presenca