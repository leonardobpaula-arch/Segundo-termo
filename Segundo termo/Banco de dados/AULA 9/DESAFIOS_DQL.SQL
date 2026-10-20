-- Active: 1788267995884@@127.0.0.1@3306@smartcoffee_dml_bertanha
-- 1. Liste todos os clientes cadastrados.

SELECT * FROM CLIENTE;

-- 2. Exiba apenas nome, cidade e e-mail dos clientes.

SELECT NOME, CIDADE, EMAIL
FROM CLIENTE;

-- 3. Liste os nomes das cidades sem repetir valores.

SELECT DISTINCT CIDADE
FROM CLIENTE;

-- 4. Liste todos os produtos em ordem crescente de preço.

SELECT * 
FROM PRODUTO
ORDER BY PRECO ASC;

-- 5. Mostre apenas os 5 produtos mais caros.

SELECT * 
FROM PRODUTO
ORDER BY PRECO DESC 
LIMIT 5;

-- PARTE B - FILTROS

-- 6. Liste os produtos com preço entre R$ 8,00 e R$ 15,00.

SELECT * 
FROM PRODUTO 
WHERE PRECO BETWEEN 8.00 AND 15.00;

-- 7. Liste os clientes das cidades Limeira ou Americana.

SELECT * 
FROM CLIENTE 
WHERE CIDADE IN ('LIMEIRA', 'AMERICANA');

-- 8. Localize os produtos cujo nome contém a palavra “Café”.



-- 9. Liste os clientes que não informaram telefone.

SELECT * 
FROM CLIENTE 
WHERE TELEFONE IS NULL;

-- 10. Mostre os pedidos FINALIZADOS com valor acima de R$ 20,00,
--     do maior para o menor valor.



-- PARTE C - CÁLCULOS E AGRUPAMENTOS

-- 11. Informe quantos produtos estão cadastrados.



-- 12. Mostre menor preço, maior preço e preço médio dos produtos.



-- 13. Informe quantos clientes existem em cada cidade.



-- 14. Mostre somente as cidades que possuem dois ou mais clientes.



-- 15. Calcule o faturamento total considerando apenas pedidos FINALIZADOS.



-- PARTE D - RELACIONAMENTOS

-- 16. Liste cada pedido exibindo id, data, nome do cliente, status e valor total.
SELECT
    p.id AS id_pedido,
    p.data AS data_pedido,
    c.nome AS nome_cliente,
    p.status,
    p.valor_total
FROM pedidos p
INNER JOIN clientes c
    ON p.cliente_id = c.id;

-- 17. Liste cada produto acompanhado do nome de sua categoria.

SELECT
    p.nome AS produto,
    c.nome AS categoria
FROM produtos p
INNER JOIN categorias c
    ON p.categoria_id = c.id;

-- 18. Gere um relatório dos itens vendidos: pedido, produto, quantidade,
--     preço unitário e subtotal.

SELECT
    ip.pedido_id AS pedido,
    p.nome AS produto,
    ip.quantidade,
    ip.preco_unitario,
    (ip.quantidade * ip.preco_unitario) AS subtotal
FROM itens_pedido ip
INNER JOIN produtos p
    ON ip.produto_id = p.id;

-- 19. Mostre todos os clientes, inclusive aqueles que nunca fizeram pedidos.

SELECT
    c.id,
    c.nome,
    p.id AS id_pedido,
    p.data AS data_pedido
FROM clientes c
LEFT JOIN pedidos p
    ON c.id = p.cliente_id;

-- 20. Liste apenas os clientes que nunca fizeram pedidos.



-- PARTE E - DESAFIO GERENCIAL

-- 21. Informe quantos pedidos FINALIZADOS cada cliente realizou e quanto
--     cada cliente gastou. Ordene do maior gasto para o menor.


-- 22. Mostre a quantidade de produtos e o preço médio de cada categoria.


-- 23. Descubra quais produtos possuem preço superior ao preço médio geral.


-- 24. Classifique os produtos como Econômico, Intermediário ou Premium.
--     Defina e informe suas faixas de preço.


-- 25. CONSULTA AUTORAL
-- Pergunta de negócio:
--
-- Por que essa informação é útil?
--