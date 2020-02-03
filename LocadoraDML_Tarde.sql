USE Locadora_Tarde;

--DML

INSERT INTO Marca (Nome)
VALUES ('FORD'),('GM'),('Fiat')
GO

INSERT INTO Empresa (Nome)
VALUES ('Unidas'),('Localiza')
GO


INSERT INTO Modelo (Nome, IdMarca) 
VALUES ('Fiesta',1),('Onix',2),('Argo',3)
GO

INSERT INTO Cliente (Nome, Cpf) 
VALUES ('Fernando',23324442444),('Helena',32434554333)
GO

INSERT INTO Veiculos (IdModelo, Placa, IdEmpresa) 
VALUES (1,'HEL1805',1),(2,'FER1010',1),(3,'POR1978',2),(1,'LEM9876',2)
GO

INSERT INTO Aluguel (IdCliente, IdVeiculo, DataInicio, DataFim) 
VALUES (1,1,'19/01/2019','20/01/2019'),(1,2,'20/01/2019','21/01/2019'),(2,3,'21/01/2019','21/01/2019'),(2,2,'22/01/2019','22/01/2019')
GO






