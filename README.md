# SQL Sales Analysis

Análise de vendas e performance comercial desenvolvida em PostgreSQL, simulando um ambiente corporativo real de varejo. O projeto aplica técnicas avançadas de SQL para responder perguntas de negócio e apoiar decisões estratégicas.

---

## 📊 Contexto do Negócio

Uma empresa de varejo deseja entender sua performance comercial ao longo de 2024, identificando:
- Quais produtos geram mais receita
- Quais regiões têm maior potencial
- Como evoluiu o faturamento mês a mês
- Quais clientes são mais valiosos
- Qual forma de pagamento traz maior ticket médio

---

## 🎯 Perguntas Respondidas

1. Qual o faturamento total do período?
2. Como o faturamento evoluiu mês a mês?
3. Quais são os top 5 produtos mais vendidos?
4. Quais estados geram mais receita?
5. Qual forma de pagamento tem maior ticket médio?
6. Quais clientes mais compram? (ranking)
7. Como está o faturamento acumulado ao longo do ano?
8. Como classificar produtos por nível de performance?

---

## 💡 Principais Insights

- Faturamento total de **R$ 56.890** em 2024
- **Dezembro** foi o mês de maior receita com **R$ 11.850** — pico sazonal de fim de ano
- **Notebook Pro 15** liderou com **R$ 17.200** em faturamento
- **Eletrônicos** dominam — 8 dos 10 produtos mais vendidos são da categoria
- **SP** é o estado com maior faturamento — **R$ 7.740**
- **Cartão de Crédito** tem o maior ticket médio — **R$ 2.385**
- **Ana Lima** é a cliente com maior gasto total — **R$ 7.740**

---

## 🛠️ Tecnologias

- PostgreSQL 17
- DBeaver 26
- SQL (JOINs, CTEs, Window Functions, CASE WHEN, GROUP BY, ORDER BY)

---

## 📁 Estrutura do Projeto

```
sql-sales-analysis/
├── queries/
│   ├── 01_schema.sql          → criação das tabelas
│   ├── 02_inserts.sql         → carga de dados simulados
│   ├── 03_analises_basicas.sql   → queries de negócio
│   ├── 04_analises_avancadas.sql → CTE, RANK, Window Functions
├── assets/
│   └── (prints das queries)
└── README.md
```

---

## 🗂️ Modelo de Dados

O projeto utiliza modelo dimensional com tabelas **dim_** e **fato_**:

| Tabela | Descrição |
|---|---|
| dim_clientes | Cadastro de clientes |
| dim_produtos | Catálogo de produtos |
| dim_lojas | Lojas físicas e online |
| fato_vendas | Transações de vendas |

---

## 📐 Técnicas SQL Aplicadas

| Técnica | Aplicação |
|---|---|
| JOIN | Cruzamento entre vendas, clientes e produtos |
| GROUP BY | Agrupamento por mês, estado, produto |
| ORDER BY | Ordenação por faturamento |
| CASE WHEN | Classificação de performance |
| CTE | Ranking de clientes |
| RANK() | Posição por faturamento |
| SUM OVER | Faturamento acumulado |
| AVG | Ticket médio |
| COUNT DISTINCT | Clientes únicos por estado |

---

## 👤 Autor

Daniel Cauldron
[LinkedIn](https://www.linkedin.com/in/daniel-caldeirao/) | [GitHub](https://github.com/DanielCauldron)
