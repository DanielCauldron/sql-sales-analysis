-- =============================================
-- PROJETO: SQL Sales Analysis
-- ARQUIVO: 01_schema.sql
-- DESCRIÇÃO: Criação das tabelas do projeto
-- MODELO: Dimensional (dim_ e fato_)
-- =============================================

CREATE TABLE dim_clientes (
    id_cliente SERIAL PRIMARY KEY,
    nome_cliente VARCHAR(100) NOT NULL,
    email VARCHAR(120),
    cidade VARCHAR(80),
    estado CHAR(2),
    data_cadastro DATE NOT NULL,
    status_cliente VARCHAR(20) DEFAULT 'ativo'
);

CREATE TABLE dim_produtos (
    id_produto SERIAL PRIMARY KEY,
    nome_produto VARCHAR(120) NOT NULL,
    categoria VARCHAR(60) NOT NULL,
    subcategoria VARCHAR(60),
    preco_unitario NUMERIC(10,2) NOT NULL,
    custo_unitario NUMERIC(10,2),
    estoque_atual INTEGER DEFAULT 0,
    ativo BOOLEAN DEFAULT TRUE
);

CREATE TABLE dim_lojas (
    id_loja SERIAL PRIMARY KEY,
    nome_loja VARCHAR(100),
    cidade VARCHAR(80),
    estado CHAR(2),
    canal_venda VARCHAR(30)
);

CREATE TABLE fato_vendas (
    id_venda SERIAL PRIMARY KEY,
    data_venda TIMESTAMP NOT NULL,
    id_cliente INTEGER REFERENCES dim_clientes(id_cliente),
    id_produto INTEGER REFERENCES dim_produtos(id_produto),
    id_loja INTEGER REFERENCES dim_lojas(id_loja),
    quantidade INTEGER NOT NULL,
    desconto NUMERIC(10,2) DEFAULT 0,
    valor_bruto NUMERIC(12,2) NOT NULL,
    valor_liquido NUMERIC(12,2) NOT NULL,
    forma_pagamento VARCHAR(30)
);
