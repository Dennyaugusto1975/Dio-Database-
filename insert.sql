use oficina; 

INSERT INTO Cliente (Nome, Telefone, Email) VALUES ('Sidnei Oliveira', '(19)9922.7880', 'sidnei@gmail.com');
INSERT INTO Cliente (Nome, Telefone, Email) VALUES ('Cibeli Antunes', '(19)99023.2563', 'cibeli@gmail.com');
INSERT INTO Cliente (Nome, Telefone, Email) VALUES ('Luiz Fagundes', '(19)99753.1846', 'luiz@gmail.com');

INSERT INTO StatusOrdemServico (Identificacao) VALUES ('ABERTO');
INSERT INTO StatusOrdemServico (Identificacao) VALUES ('EM ANDAMENTO');
INSERT INTO StatusOrdemServico (Identificacao) VALUES ('CONCLUÍDO');

INSERT INTO OrdemServico (idCliente, idStatusOrdemServico, Codigo, DataEmissao, DataParaConclusao, Valor, DataAutorizacao, Obs) VALUES (1, 1, '0000000001', '2022-09-09', null, 250, '2022-09-08', null);
INSERT INTO OrdemServico (idCliente, idStatusOrdemServico, Codigo, DataEmissao, DataParaConclusao, Valor, DataAutorizacao, Obs) VALUES (2, 1, '0000000002', '2022-09-10', null, 123, '2022-09-08', null);

INSERT INTO Marca (Identificacao) VALUES ('Fiat');
INSERT INTO Marca (Identificacao) VALUES ('Honda');
INSERT INTO Marca (Identificacao) VALUES ('Renault');

INSERT INTO Modelo (idMarca, Identificacao, Ano) VALUES (1, 'Sandero', 2011);
INSERT INTO Modelo (idMarca, Identificacao, Ano) VALUES (3, 'City', 2012);
INSERT INTO Modelo (idMarca, Identificacao, Ano) VALUES (2, 'Fiorino', 2015);

INSERT INTO Equipe (Identificacao) VALUES ('Elétrica');
INSERT INTO Equipe (Identificacao) VALUES ('Funilária');
INSERT INTO Equipe (Identificacao) VALUES ('Mecânica');

INSERT INTO TabelaServico (Identificacao, ValorTabela) VALUES ('Regulagem de farol', 130);
INSERT INTO TabelaServico (Identificacao, ValorTabela) VALUES ('Pintura porta esquerda', 1200);
INSERT INTO TabelaServico (Identificacao, ValorTabela) VALUES ('Retifica motor', 2200);

INSERT INTO Veiculo (idOrdemServico, idModelo, Cor, Placa) VALUES (1, 1, 1254,'ASD8569');
INSERT INTO Veiculo (idOrdemServico, idModelo, Cor, Placa) VALUES (1, 2, 7589, 'LOP8456');
INSERT INTO Veiculo (idOrdemServico, idModelo, Cor, Placa) VALUES (2, 3, 1254,'PLD8569');

INSERT INTO Servico (idVeiculo, idTabelaServico, idEquipe, idStatusServico, Descricao, ValorPecas, ValorMaoDeObra, DataInicio, DataTermino) VALUES (1, 1, 1, 1, 'Trocar retentor ', 180, 30, '2022-09-21', '2022-09-21');
INSERT INTO Servico (idVeiculo, idTabelaServico, idEquipe, idStatusServico, Descricao, ValorPecas, ValorMaoDeObra, DataInicio, DataTermino) VALUES (2, 2, 2, 2, 'Troca filtro de combustivel', 150, 25, '2022-09-21', '2022-09-21');

INSERT INTO Especialidade (Identificacao) VALUES ('Troca retentor');
INSERT INTO Especialidade (Identificacao) VALUES ('Troca filtros');

INSERT INTO Mecanico (idEspecialidade, idEquipe, Codigo, Nome, CEP, Logradouro, Numero,	Complemento) VALUES (1, 1, '8', 'Guilherme Magno', '12365-523', 'Rua Oriente ', '5', null);
INSERT INTO Mecanico (idEspecialidade, idEquipe, Codigo, Nome, CEP, Logradouro, Numero,	Complemento) VALUES (2, 2, '9', 'Manoel Carlos', '15845-842', 'Rua Pantera', '13', null);

INSERT INTO Peca (Identificacao, ValorReferencia) VALUES ('Filtro de combustivel', 150);
INSERT INTO Peca (Identificacao, ValorReferencia) VALUES ('Retentor', 180);

INSERT INTO ServicoPeca (idServico, idPeca, ValorPeca) VALUES (1, 1, 150);
INSERT INTO ServicoPeca (idServico, idPeca, ValorPeca) VALUES (2, 2, 180);

select * from servicopeca;
