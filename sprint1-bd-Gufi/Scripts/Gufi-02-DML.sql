-- DML

INSERT INTO TipoUsuario (TituloTipoUsuario)
VALUES ('Administrador'), ('Comum');

INSERT INTO TipoEvento (TituloTipoEvento)
VALUES ('C#'), ('React'), ('SQL');

INSERT INTO Instituicao(CNPJ, NomeFantasia, Endereco)
VALUES ('11111111111111'), ('Escola SENAI de Informatica'), ('Alameda Bar�o de Limeira,538');

INSERT INTO Usuario(NomeUsuario, Email, Senha, Genero, DataNascimento, IdTipoUsuario)
VALUES ('Administrador', 'adm@adm.com', 'adm123', 'N�o Informado', '06/02/2020', 1),
('Carol', 'carol@email.com', 'carol123', 'Feminino', '06/02/2020', 2),
('Saulo', 'saulo@email.com', 'saulo123', 'Masculino', '06/02/2020', 2);


INSERT INTO Evento (NomeEvento, DataEvento, Descricao, AcessoLivre, IdInstituicao, IdTipoEvento)
VALUES ('Introdu��o ao C#', 'Ciclo de vida', 'Optimiza��o de banco de dados'), 
('07/02/2020', '07/02/2020', '07/02/2020'),
('Conceitos sobre os pilares da programa��o orientada a objetos', 'Como ultilizar o ciclo de vida com ReactJs', 'Aplica��o de �ndices clusterizados e n�o clusterizados'),
(1, 0, 1),
(1 ,1 ,1),
(1 ,2 ,3);

INSERT INTO Presenca(IdUsuario, IdEvento, Situacao)
VALUES (2, 2, 3), 
(2, 3, 1), 
('Agendada', 'Confirmada', 'N�o Compareceu');





SELECT * FROM Usuario