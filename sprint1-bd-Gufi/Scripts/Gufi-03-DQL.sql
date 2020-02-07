-- DQL

USE Gufi_Tarde

SELECT Usuario.NomeUsuario, Usuario.Email, TipoUsuario.TituloTipoUsuario, Usuario.DataNascimento, Usuario.Genero
FROM TipoUsuario
INNER JOIN Usuario ON TipoUsuario.IdTipoUsuario = Usuario.IdTipoUsuario;

SELECT Instituicao.CNPJ, Instituicao.NomeFantasia, Instituicao.Endereco FROM Instituicao;

SELECT Evento.NomeEvento, TipoEvento.TituloTipoEvento, Evento.DataEvento, Evento.AcessoLivre, Evento.Descricao, Instituicao.CNPJ, Instituicao.NomeFantasia, Instituicao.Endereco
FROM Evento
INNER JOIN TipoEvento ON Evento.IdEvento = TipoEvento.IdTipoEvento
INNER JOIN Instituicao ON Instituicao.IdInstituicao = Evento.IdInstituicao;

SELECT Evento.NomeEvento, TipoEvento.TituloTipoEvento, Evento.DataEvento, Evento.AcessoLivre, Evento.Descricao, Instituicao.CNPJ, Instituicao.NomeFantasia, Instituicao.Endereco
FROM Evento
INNER JOIN TipoEvento ON Evento.IdEvento = TipoEvento.IdTipoEvento
INNER JOIN Instituicao ON Instituicao.IdInstituicao = Evento.IdInstituicao
WHERE Evento.AcessoLivre = 1;

SELECT Evento.NomeEvento, TipoEvento.TituloTipoEvento, Evento.DataEvento, Evento.AcessoLivre, Evento.Descricao, Instituicao.CNPJ, Instituicao.NomeFantasia, Instituicao.Endereco,
Usuario.NomeUsuario, Usuario.Email, Usuario.Senha, Usuario.Genero, Usuario.DataNascimento
FROM Evento
INNER JOIN TipoEvento ON TipoEvento.IdTipoEvento = Evento.IdTipoEvento
INNER JOIN Instituicao ON Instituicao.IdInstituicao = Evento.IdInstituicao
INNER JOIN Presenca ON Presenca.IdPresenca = Evento.IdEvento
INNER JOIN Usuario ON Usuario.IdUsuario = Presenca.IdUsuario;


SELECT Evento.NomeEvento, TipoEvento.TituloTipoEvento, Evento.DataEvento, CASE Evento.AcessoLivre
         WHEN '1' THEN 'Publico'
		 ELSE 'Privado'
		 END AS AcessoLivre, Evento.Descricao, Instituicao.CNPJ, Instituicao.NomeFantasia, Instituicao.Endereco,
Usuario.NomeUsuario, Usuario.Email, Usuario.Senha, Usuario.Genero, Usuario.DataNascimento
FROM Evento
INNER JOIN TipoEvento ON TipoEvento.IdTipoEvento = Evento.IdTipoEvento
INNER JOIN Instituicao ON Instituicao.IdInstituicao = Evento.IdInstituicao
INNER JOIN Presenca ON Presenca.IdPresenca = Evento.IdEvento
INNER JOIN Usuario ON Usuario.IdUsuario = Presenca.IdUsuario;




SELECT Evento.NomeEvento, TipoEvento.TituloTipoEvento, Evento.DataEvento, Evento.AcessoLivre, Evento.Descricao, Instituicao.CNPJ, Instituicao.NomeFantasia, Instituicao.Endereco,
Usuario.NomeUsuario, Usuario.Email, Usuario.Senha, Usuario.Genero, Usuario.DataNascimento
FROM Evento
INNER JOIN TipoEvento ON TipoEvento.IdTipoEvento = Evento.IdTipoEvento
INNER JOIN Instituicao ON Instituicao.IdInstituicao = Evento.IdInstituicao
INNER JOIN Presenca ON Presenca.IdPresenca = Evento.IdEvento
INNER JOIN Usuario ON Usuario.IdUsuario = Presenca.IdUsuario
WHERE Situacao = 'Confirmada';


SELECT Usuario.NomeUsuario, DATEDIFF(year, Usuario.DataNascimento, GETDATE ()) AS Idade, Usuario.Email, TipoUsuario.TituloTipoUsuario, Usuario.DataNascimento, Usuario.Genero
FROM TipoUsuario
INNER JOIN Usuario ON TipoUsuario.IdTipoUsuario = Usuario.IdTipoUsuario;



SELECT * FROM Presenca
SELECT * FROM Usuario
SELECT * FROM Evento
SELECT * FROM Instituicao