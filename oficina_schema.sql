-- Clientes
CREATE TABLE Cliente (
    id_cliente INT PRIMARY KEY,
    nome VARCHAR(100),
    telefone VARCHAR(20),
    tipo_cliente ENUM('PF', 'PJ') NOT NULL
);

-- Veículos
CREATE TABLE Veiculo (
    id_veiculo INT PRIMARY KEY,
    id_cliente INT,
    marca VARCHAR(50),
    modelo VARCHAR(50),
    placa VARCHAR(10) UNIQUE,
    ano INT,
    FOREIGN KEY (id_cliente) REFERENCES Cliente(id_cliente)
);

-- Funcionários
CREATE TABLE Funcionario (
    id_funcionario INT PRIMARY KEY,
    nome VARCHAR(100),
    especialidade VARCHAR(100)
);

-- Serviços
CREATE TABLE Servico (
    id_servico INT PRIMARY KEY,
    descricao VARCHAR(100),
    preco DECIMAL(10,2)
);

-- Peças
CREATE TABLE Peca (
    id_peca INT PRIMARY KEY,
    nome VARCHAR(100),
    preco DECIMAL(10,2),
    estoque INT
);

-- Ordem de Serviço
CREATE TABLE OrdemServico (
    id_os INT PRIMARY KEY,
    id_veiculo INT,
    id_funcionario INT,
    data_entrada DATE,
    data_saida DATE,
    status VARCHAR(50),
    FOREIGN KEY (id_veiculo) REFERENCES Veiculo(id_veiculo),
    FOREIGN KEY (id_funcionario) REFERENCES Funcionario(id_funcionario)
);

-- Itens da OS (Serviços executados)
CREATE TABLE ItemOS (
    id_item INT PRIMARY KEY,
    id_os INT,
    id_servico INT,
    quantidade INT,
    FOREIGN KEY (id_os) REFERENCES OrdemServico(id_os),
    FOREIGN KEY (id_servico) REFERENCES Servico(id_servico)
);

-- Peças usadas na OS
CREATE TABLE OS_Peca (
    id_os INT,
    id_peca INT,
    quantidade INT,
    FOREIGN KEY (id_os) REFERENCES OrdemServico(id_os),
    FOREIGN KEY (id_peca) REFERENCES Peca(id_peca)
);

-- Pagamentos
CREATE TABLE Pagamento (
    id_pagamento INT PRIMARY KEY,
    id_os INT,
    forma_pagamento VARCHAR(50),
    valor_pago DECIMAL(10,2),
    FOREIGN KEY (id_os) REFERENCES OrdemServico(id_os)
);
