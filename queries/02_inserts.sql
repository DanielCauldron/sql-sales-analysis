-- =============================================
-- PROJETO: SQL Sales Analysis
-- ARQUIVO: 02_inserts.sql
-- DESCRIÇÃO: Carga de dados simulados
-- =============================================

-- CLIENTES
INSERT INTO dim_clientes (nome_cliente, email, cidade, estado, data_cadastro, status_cliente) VALUES
('Ana Lima', 'ana.lima@email.com', 'São Paulo', 'SP', '2022-01-15', 'ativo'),
('Carlos Souza', 'carlos.souza@email.com', 'Rio de Janeiro', 'RJ', '2022-03-20', 'ativo'),
('Fernanda Reis', 'fernanda.reis@email.com', 'Belo Horizonte', 'MG', '2021-11-10', 'ativo'),
('João Melo', 'joao.melo@email.com', 'Salvador', 'BA', '2022-06-05', 'inativo'),
('Patricia Silva', 'patricia.silva@email.com', 'Curitiba', 'PR', '2023-02-18', 'ativo'),
('Rafael Costa', 'rafael.costa@email.com', 'Fortaleza', 'CE', '2021-08-30', 'ativo'),
('Juliana Neves', 'juliana.neves@email.com', 'Manaus', 'AM', '2022-09-12', 'ativo'),
('Marcos Paulo', 'marcos.paulo@email.com', 'Porto Alegre', 'RS', '2023-04-22', 'ativo'),
('Camila Rocha', 'camila.rocha@email.com', 'Recife', 'PE', '2021-05-17', 'ativo'),
('Diego Alves', 'diego.alves@email.com', 'Goiânia', 'GO', '2022-12-01', 'inativo');

-- PRODUTOS
INSERT INTO dim_produtos (nome_produto, categoria, subcategoria, preco_unitario, custo_unitario, estoque_atual) VALUES
('Notebook Pro 15', 'Eletrônicos', 'Computadores', 3500.00, 2100.00, 50),
('Smartphone X12', 'Eletrônicos', 'Celulares', 2200.00, 1300.00, 120),
('Cadeira Gamer', 'Móveis', 'Escritório', 1200.00, 700.00, 30),
('Monitor 27"', 'Eletrônicos', 'Periféricos', 1800.00, 1000.00, 45),
('Teclado Mecânico', 'Eletrônicos', 'Periféricos', 450.00, 200.00, 80),
('Mouse Sem Fio', 'Eletrônicos', 'Periféricos', 280.00, 120.00, 100),
('Headset Gamer', 'Eletrônicos', 'Áudio', 350.00, 150.00, 60),
('Mesa de Escritório', 'Móveis', 'Escritório', 950.00, 500.00, 20),
('Webcam HD', 'Eletrônicos', 'Periféricos', 320.00, 140.00, 75),
('HD Externo 1TB', 'Eletrônicos', 'Armazenamento', 380.00, 180.00, 90);

-- LOJAS
INSERT INTO dim_lojas (nome_loja, cidade, estado, canal_venda) VALUES
('Loja SP Centro', 'São Paulo', 'SP', 'Físico'),
('Loja RJ Norte', 'Rio de Janeiro', 'RJ', 'Físico'),
('E-commerce SP', 'São Paulo', 'SP', 'Online'),
('Loja BH Sul', 'Belo Horizonte', 'MG', 'Físico'),
('E-commerce Nacional', 'São Paulo', 'SP', 'Online');

-- VENDAS
INSERT INTO fato_vendas (data_venda, id_cliente, id_produto, id_loja, quantidade, desconto, valor_bruto, valor_liquido, forma_pagamento) VALUES
('2024-01-05', 1, 1, 1, 1, 0, 3500.00, 3500.00, 'Cartão Crédito'),
('2024-01-10', 2, 2, 3, 2, 200.00, 4400.00, 4200.00, 'PIX'),
('2024-01-15', 3, 5, 2, 3, 0, 1350.00, 1350.00, 'Cartão Débito'),
('2024-02-03', 4, 3, 4, 1, 100.00, 1200.00, 1100.00, 'Boleto'),
('2024-02-14', 5, 4, 3, 1, 0, 1800.00, 1800.00, 'Cartão Crédito'),
('2024-02-20', 6, 6, 5, 2, 0, 560.00, 560.00, 'PIX'),
('2024-03-01', 7, 7, 1, 1, 50.00, 350.00, 300.00, 'Cartão Crédito'),
('2024-03-10', 8, 9, 3, 2, 0, 640.00, 640.00, 'PIX'),
('2024-03-22', 9, 10, 5, 3, 0, 1140.00, 1140.00, 'Boleto'),
('2024-04-05', 10, 1, 2, 1, 300.00, 3500.00, 3200.00, 'Cartão Crédito'),
('2024-04-18', 1, 4, 3, 2, 0, 3600.00, 3600.00, 'PIX'),
('2024-05-02', 2, 8, 4, 1, 0, 950.00, 950.00, 'Boleto'),
('2024-05-15', 3, 2, 5, 1, 150.00, 2200.00, 2050.00, 'Cartão Crédito'),
('2024-06-01', 4, 5, 1, 4, 0, 1800.00, 1800.00, 'PIX'),
('2024-06-20', 5, 3, 3, 1, 0, 1200.00, 1200.00, 'Cartão Débito'),
('2024-07-08', 6, 1, 5, 1, 0, 3500.00, 3500.00, 'Cartão Crédito'),
('2024-07-19', 7, 6, 2, 3, 0, 840.00, 840.00, 'PIX'),
('2024-08-05', 8, 4, 3, 1, 200.00, 1800.00, 1600.00, 'Boleto'),
('2024-08-22', 9, 7, 1, 2, 0, 700.00, 700.00, 'Cartão Crédito'),
('2024-09-10', 10, 2, 4, 1, 0, 2200.00, 2200.00, 'PIX'),
('2024-09-25', 1, 9, 5, 2, 0, 640.00, 640.00, 'Cartão Débito'),
('2024-10-03', 2, 10, 3, 4, 0, 1520.00, 1520.00, 'PIX'),
('2024-10-18', 3, 1, 1, 1, 0, 3500.00, 3500.00, 'Cartão Crédito'),
('2024-11-05', 4, 3, 2, 2, 150.00, 2400.00, 2250.00, 'Boleto'),
('2024-11-20', 5, 5, 5, 2, 0, 900.00, 900.00, 'PIX'),
('2024-12-01', 6, 4, 3, 1, 0, 1800.00, 1800.00, 'Cartão Crédito'),
('2024-12-15', 7, 2, 4, 2, 300.00, 4400.00, 4100.00, 'PIX'),
('2024-12-22', 8, 1, 5, 1, 0, 3500.00, 3500.00, 'Cartão Crédito'),
('2024-12-28', 9, 6, 1, 5, 0, 1400.00, 1400.00, 'PIX'),
('2024-12-30', 10, 7, 3, 3, 0, 1050.00, 1050.00, 'Boleto');
