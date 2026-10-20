-- ============================================================
-- AULA 08 - ATIVIDADE PRÁTICA DE DML
-- Nome: LEONARDO BERTANHA DE PAULA
-- Turma: 2° Data: 29/09/2026
-- Base: smartcoffee_dml
-- ============================================================
USE smartcoffee_dml;

-- IMPORTANTE:
-- Para toda questão de UPDATE ou DELETE, escreva primeiro um SELECT
-- com o mesmo WHERE para validar os registros afetados.

-- PARTE A - INSERT

-- 1. Cadastre dois novos clientes com dados diferentes.

INSERT INTO clientes (nome, telefone, cidade) VALUES
('Carlos Almeida', '988119', 'Osasco'),('Mariana Souza', '977222', 'São Paulo');

-- 2. Cadastre a categoria 'Especiais da Casa'.

INSERT INTO categorias (nome) VALUES
('Especiais da Casa');

-- 3. Localize o id da categoria criada e cadastre três produtos nela.

SELECT id, nome
FROM categorias
WHERE nome = 'Especiais da Casa';

-- 4. Cadastre um terceiro cliente sem telefone.

INSERT INTO cliente (nome, telefone)
VALUES ('Carlos Oliveira', NULL);


-- 5. Crie um novo pedido para um dos clientes cadastrados.

INSERT INTO pedido (id_cliente) VALUES
(1 PEDIDO);

-- 6. Use LAST_INSERT_ID() para guardar o id do pedido em @pedido_atividade
--    e insira pelo menos dois itens nesse pedido.

INSERT INTO item_pedido (id_pedido, id_produto, quantidade)
VALUES
    (@pedido_atividade, 1, 2),
    (@pedido_atividade, 2, 1);

-- PARTE B - UPDATE

-- 7. Corrija o telefone de um dos clientes criados.
-- SELECT de validação:
-- UPDATE:
-- SELECT final:

SELECT *
FROM clientes
WHERE id_cliente = 1;

UPDATE clientes
SET telefone = '11987654321'
WHERE id_cliente = 1;

SELECT *
FROM clientes
WHERE id_cliente = 1;


-- 8. Altere cidade e telefone de outro cliente em um único UPDATE.

UPDATE clientes
SET cidade = 'Curitiba',
    telefone = '41999999999'
WHERE id_cliente = 2;

-- 9. Aumente em 8% o preço dos produtos da categoria 'Especiais da Casa'.

UPDATE produtos
SET preco = preco * 1.08
WHERE categoria = 'Especiais da Casa';


-- 10. Altere o status do pedido criado para 'PREPARANDO'.

UPDATE pedidos
SET status = 'PREPARANDO'
WHERE id_pedido = 1;

-- 11. Atualize valor_total do pedido de acordo com os itens cadastrados.
--     Você pode calcular previamente com SELECT SUM(quantidade * preco_unitario).

UPDATE pedidos
SET valor_total = (
    SELECT COALESCE(SUM(quantidade * preco_unitario), 0)
    FROM itens_pedido
    WHERE itens_pedido.id_pedido = pedidos.id_pedido
)
WHERE id_pedido = 1;

-- 12. Escolha um dos produtos criados e faça uma exclusão lógica (ativo = FALSE).

UPDATE produtos
SET ativo = FALSE
WHERE id_produto = 1;

-- PARTE C - DELETE

-- 13. Crie um cliente de teste sem pedidos.
--     Depois localize e exclua apenas esse cliente.

INSERT INTO clientes (nome, cidade, telefone)
VALUES ('Cliente Teste Exclusao', 'Curitiba', '41988887777');

SELECT *
FROM clientes
WHERE nome = 'Cliente Teste Exclusao';

DELETE FROM clientes
WHERE nome = 'Cliente Teste Exclusao'
  AND telefone = '41988887777';

-- 14. Tente excluir um cliente da base original que possua pedidos.
--     Deixe o DELETE comentado após o teste e descreva o erro abaixo.
-- Resultado observado:

-- DELETE FROM clientes
-- WHERE id_cliente = 1;

-- Resultado:
-- A exclusão foi bloqueada porque o cliente possui pedidos associados.
-- O banco impediu a operação devido à restrição de chave estrangeira.


-- 15. Explique em comentário por que a FK bloqueou a exclusão.
-- Resposta:

A chave estrangeira impediu a exclusão porque existem registros
em outra tabela que referenciam o registro que seria excluído.

-- 16. Crie uma categoria temporária chamada 'Excluir Depois' e remova-a.

INSERT INTO categorias (nome)
VALUES ('Excluir Depois');

DELETE FROM categorias
WHERE nome = 'Excluir Depois';

-- PARTE D - INTEGRIDADE E ERROS CONTROLADOS
-- Execute uma tentativa por vez. Depois deixe o comando problemático comentado.

-- 17. Tente inserir um produto com id_categoria = 9999.
-- Qual restrição impediu a operação?

INSERT INTO produtos (nome, preco, id_categoria)
VALUES ('Produto Teste', 10.00, 9999);

A chave estrangeira (FOREIGN KEY), pois a categoria 9999
não existe na tabela categorias.

-- 18. Tente cadastrar um cliente usando 'ana@email.com'.
-- Qual restrição impediu a operação?


-- 19. Tente criar um pedido com id_cliente = 9999.
-- Qual restrição impediu a operação?


-- 20. Escreva em comentários a diferença entre os três erros anteriores.


-- PARTE E - DESAFIO COMPLETO COM TRANSAÇÃO

-- 21. Inicie uma transação.


-- 22. Dentro dela, cadastre um cliente, um pedido e dois itens relacionados.


-- 23. Faça uma consulta com JOIN comprovando que os registros existem
--     enquanto a transação está aberta.


-- 24. Execute ROLLBACK e depois use SELECT para provar que o cadastro foi desfeito.


-- 25. Repita o processo com novos dados e finalize usando COMMIT.
--     Depois consulte os registros persistidos.



-- DESAFIO EXTRA
-- 26. Escolha uma situação realista do SmartCoffee que exija INSERT + UPDATE
--     ou UPDATE + DELETE lógico. Descreva a regra de negócio e implemente.

