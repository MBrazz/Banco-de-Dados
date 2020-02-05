USE Locadora_Tarde;

--DQL

SELECT Cliente.Nome as NomeCliente, DataInicio, DataFim
FROM Cliente
INNER JOIN Aluguel ON Cliente.IdCliente = Aluguel.IdCliente;


SELECT * FROM Marca;
SELECT * FROM Veiculos;
SELECT * FROM Modelo;
SELECT * FROM Aluguel;