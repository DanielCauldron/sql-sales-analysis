-- =============================================
-- PROJETO: SQL Sales Analysis
-- ARQUIVO: 04_analises_avancadas.sql
-- DESCRIÇÃO: Queries avançadas com CTE e Window Functions
-- =============================================

-- 6. RANKING DE CLIENTES COM CTE + RANK
WITH ranking_clientes AS (
    SELECT 
        c.nome_cliente,
        c.estado,
        COUNT(f.id_venda) AS total_compras,
        SUM(f.valor_liquido) AS total_gasto,
        RANK() OVER (ORDER BY SUM(f.valor_liquido) DESC) AS ranking
    FROM fato_vendas f
    JOIN dim_clientes c ON f.id_cliente = c.id_cliente
    GROUP BY c.nome_cliente, c.estado
)
SELECT * FROM ranking_clientes
ORDER BY ranking;

-- 7. FATURAMENTO ACUMULADO MÊS A MÊS COM SUM OVER
SELECT 
    TO_CHAR(data_venda, 'YYYY-MM') AS mes,
    SUM(valor_liquido) AS faturamento_mes,
    SUM(SUM(valor_liquido)) OVER (ORDER BY TO_CHAR(data_venda, 'YYYY-MM')) AS faturamento_acumulado
FROM fato_vendas
GROUP BY TO_CHAR(data_venda, 'YYYY-MM')
ORDER BY mes;

-- 8. CLASSIFICAÇÃO DE PRODUTOS POR PERFORMANCE COM CASE WHEN
SELECT 
    p.nome_produto,
    p.categoria,
    SUM(f.valor_liquido) AS faturamento,
    CASE 
        WHEN SUM(f.valor_liquido) >= 10000 THEN 'Alto'
        WHEN SUM(f.valor_liquido) >= 5000 THEN 'Médio'
        ELSE 'Baixo'
    END AS performance
FROM fato_vendas f
JOIN dim_produtos p ON f.id_produto = p.id_produto
GROUP BY p.nome_produto, p.categoria
ORDER BY faturamento DESC;
