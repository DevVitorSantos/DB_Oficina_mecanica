-- 1. Quais serviços foram feitos por veículo
SELECT v.placa, s.descricao
FROM OrdemServico os
JOIN Veiculo v ON os.id_veiculo = v.id_veiculo
JOIN ItemOS ios ON os.id_os = ios.id_os
JOIN Servico s ON ios.id_servico = s.id_servico;

-- 2. Total gasto por OS (atributo derivado)
SELECT os.id_os,
       SUM(s.preco * ios.quantidade) AS total_servicos
FROM OrdemServico os
JOIN ItemOS ios ON os.id_os = ios.id_os
JOIN Servico s ON ios.id_servico = s.id_servico
GROUP BY os.id_os;

-- 3. Peças usadas em cada OS
SELECT os.id_os, p.nome AS peca, osp.quantidade
FROM OS_Peca osp
JOIN OrdemServico os ON os.id_os = osp.id_os
JOIN Peca p ON p.id_peca = osp.id_peca;

-- 4. Ordem de serviços em andamento
SELECT * FROM OrdemServico
WHERE status = 'Em andamento';

-- 5. OS com mais de 1 serviço aplicado (HAVING)
SELECT os.id_os, COUNT(*) AS qtd_servicos
FROM ItemOS ios
JOIN OrdemServico os ON ios.id_os = os.id_os
GROUP BY os.id_os
HAVING COUNT(*) > 1;

-- 6. Lista de clientes com veículos atendidos ordenados por data
SELECT c.nome, v.placa, os.data_entrada
FROM Cliente c
JOIN Veiculo v ON c.id_cliente = v.id_cliente
JOIN OrdemServico os ON v.id_veiculo = os.id_veiculo
ORDER BY os.data_entrada DESC;
