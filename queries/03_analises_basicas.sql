-- =============================================
-- PROJETO: SQL Sales Analysis
-- ARQUIVO: 03_analises_basicas.sql
-- DESCRIÇÃO: Queries de análise de negócio
-- =============================================

-- 1. FATURAMENTO TOTAL
SELECT SUM(valor_liquido) AS faturamento_total
FROM fato_vendas;

-- 2. FATURAMENTO MÊS A MÊS
SELECT 
    TO_CHAR(data_venda, 'YYYY-MM') AS mes,
    SUM(valor_liquido) AS faturamento_mes
FROM fato_vendas
GROUP BY mes
ORDER BY mes;

-- 3. TOP 5 PRODUTOS MAIS VENDIDOS
SELECT 
    p.nome_produto,
    p.categoria,
    SUM(f.quantidade) AS total_vendido,
    SUM(f.valor_liquido) AS faturamento
FROM fato_vendas f
JOIN dim_produtos p ON f.id_produto = p.id_produto
GROUP BY p.nome_produto, p.categoria
ORDER BY faturamento DESC
LIMIT 5;

-- 4. FATURAMENTO POR ESTADO
SELECT 
    c.estado,
    COUNT(DISTINCT f.id_cliente) AS total_clientes,
    SUM(f.valor_liquido) AS faturamento
FROM fato_vendas f
JOIN dim_clientes c ON f.id_cliente = c.id_cliente
GROUP BY c.estado
ORDER BY faturamento DESC;

-- 5. TICKET MÉDIO POR FORMA DE PAGAMENTO
SELECT 
    forma_pagamento,
    COUNT(*) AS total_vendas,
    ROUND(AVG(valor_liquido), 2) AS ticket_medio,
    SUM(valor_liquido) AS faturamento
FROM fato_vendas
GROUP BY forma_pagamento
ORDER BY ticket_medio DESC;
