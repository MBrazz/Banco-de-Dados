USE Locadora_Tarde;

--DQL

SELECT Cliente.Nome as NomeCliente, Placa, DataInicio, DataFim
FROM Cliente
INNER JOIN Aluguel ON Veiculos.Placa = Albuns.IdArtista
INNER  JOIN EstiloMusical ON Albuns.IdAlbum = EstiloMusical.IdEstilo
WHERE EstiloMusical.IdEstilo = 8;

SELECT * FROM Marca;
SELECT * FROM Veiculos;
SELECT * FROM Modelo;