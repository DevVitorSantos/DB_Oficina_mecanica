# 🛠 Projeto de Banco de Dados - Oficina Mecânica

Este projeto tem como objetivo modelar e implementar um banco de dados relacional para o contexto de uma **oficina mecânica**, aplicando os conceitos de modelagem conceitual, lógica e física utilizando SQL.

---

## 📚 Descrição do Projeto

A modelagem contempla clientes (pessoa física ou jurídica), veículos, ordens de serviço, serviços prestados, peças utilizadas, funcionários, além de todo o processo de pagamento.

O projeto inclui:

- Modelagem lógica do banco de dados
- Criação de esquema relacional em SQL
- Inserção de dados para testes
- Consultas SQL avançadas utilizando `JOIN`, `WHERE`, `HAVING`, `ORDER BY`, e expressões derivadas

---

## 🧱 Estrutura do Banco de Dados

### Tabelas principais:

- `Cliente` - Armazena dados de clientes (PF e PJ)
- `Veiculo` - Contém informações dos veículos associados aos clientes
- `Funcionario` - Lista os profissionais que prestam os serviços
- `Servico` - Serviços disponíveis na oficina
- `Peca` - Peças utilizadas na manutenção
- `OrdemServico` - Ordem de serviço emitida para um veículo
- `ItemOS` - Serviços aplicados em uma OS
- `OS_Peca` - Peças aplicadas a uma OS
- `Pagamento` - Registro de pagamentos das OS

---

## 🧪 Scripts

- [`oficina_schema.sql`](./oficina_schema.sql): Criação do banco de dados e tabelas
- [`insert_oficina.sql`](./insert_oficina.sql): Inserção de dados de teste
- [`queries_oficina.sql`](./queries_oficina.sql): Consultas SQL com filtros, joins e agregações

---

## 🔎 Exemplos de Consultas

Algumas perguntas que podem ser respondidas com as consultas SQL presentes no projeto:

- Quais serviços foram feitos em cada veículo?
- Qual o valor total gasto por OS?
- Quais peças foram utilizadas em cada OS?
- Quais OS ainda estão em andamento?
- Quais OS possuem mais de um serviço aplicado?
- Quais clientes tiveram veículos atendidos recentemente?

---

## 💡 Tecnologias Utilizadas

- Modelagem: Modelo ER e relacional
- Banco de Dados: SQL (compatível com MySQL e MariaDB)
- Ferramentas: VS Code, DBeaver, GitHub

---

## 📁 Como executar

1. Clone este repositório:
   ```bash
   git clone https://github.com/DevVitorSantos/DB_Oficina_mecanica
