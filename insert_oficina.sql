-- Clientes
INSERT INTO Cliente VALUES (1, 'Carlos Silva', '11999999999', 'PF');
INSERT INTO Cliente VALUES (2, 'Oficina ABC LTDA', '1133334444', 'PJ');

-- Veículos
INSERT INTO Veiculo VALUES (1, 1, 'Toyota', 'Corolla', 'ABC1234', 2018);
INSERT INTO Veiculo VALUES (2, 2, 'Fiat', 'Ducato', 'XYZ9876', 2020);

-- Funcionários
INSERT INTO Funcionario VALUES (1, 'João Mecânico', 'Motor');
INSERT INTO Funcionario VALUES (2, 'Maria Eletricista', 'Elétrica');

-- Serviços
INSERT INTO Servico VALUES (1, 'Troca de óleo', 120.00);
INSERT INTO Servico VALUES (2, 'Alinhamento', 80.00);
INSERT INTO Servico VALUES (3, 'Troca de bateria', 350.00);

-- Peças
INSERT INTO Peca VALUES (1, 'Óleo 5W30', 40.00, 100);
INSERT INTO Peca VALUES (2, 'Bateria 60Ah', 300.00, 10);

-- OS
INSERT INTO OrdemServico VALUES (1, 1, 1, '2024-04-01', '2024-04-03', 'Finalizado');
INSERT INTO OrdemServico VALUES (2, 2, 2, '2024-04-05', NULL, 'Em andamento');

-- Itens da OS
INSERT INTO ItemOS VALUES (1, 1, 1, 1);
INSERT INTO ItemOS VALUES (2, 1, 2, 1);
INSERT INTO ItemOS VALUES (3, 2, 3, 1);

-- Peças usadas
INSERT INTO OS_Peca VALUES (1, 1, 2); -- 2 óleos
INSERT INTO OS_Peca VALUES (2, 2, 1); -- 1 bateria

-- Pagamentos
INSERT INTO Pagamento VALUES (1, 1, 'Cartão', 200.00);
