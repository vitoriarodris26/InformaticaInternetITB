-- 1. Liste o nome do vendedor, o número do pedido e o prazo de entrega para os pedidos dos vendedores 100 e 400.

SELECT NOME_VENDEDOR, NUM_PEDIDO, PRAZO_ENTREGA
FROM PEDIDO INNER JOIN VENDEDOR ON (PEDIDO.COD_VENDEDOR = VENDEDOR.COD_VENDEDOR)
WHERE VENDEDOR.COD_VENDEDOR IN (100, 400);

SELECT * FROM VENDEDOR;

-- 2. Liste o número do pedido, nome do cliente, nome do produto e quantidade por item.

SELECT PEDIDO.NUM_PEDIDO, NOME_CLIENTE, DESC_PRODUTO, QTD_ITEM
FROM PEDIDO INNER JOIN CLIENTE ON (PEDIDO.COD_CLIENTE = CLIENTE.COD_CLIENTE)
			INNER JOIN ITEM_PEDIDO ON (PEDIDO.NUM_PEDIDO = ITEM_PEDIDO.NUM_PEDIDO)
            INNER JOIN PRODUTO ON (ITEM_PEDIDO.COD_PRODUTO = PRODUTO.COD_PRODUTO);


-- 3. Liste os vendedores e o número dos pedidos associados a eles.

SELECT NOME_VENDEDOR, NUM_PEDIDO 
FROM PEDIDO INNER JOIN VENDEDOR ON (PEDIDO.COD_VENDE
-- 4. Mostre o total de pedidos por vendedor.
-- 5. Altere a faixa de comissão para ‘B’ dos vendedores com o código de 20 a 49 and faixa de comissão é vazia.
-- 6. Liste o nome do cliente e o número do pedido, mostrar o cliente mesmo que não tenha pedido associado.
-- 7. Liste somente os produtos que possuem pedido associado
-- 8. Liste o nome do produto, o número do pedido  e a quantidade de item, mostrar os produtos mesmo que não estejam associados a um pedido.




SELECT NOME_VENDEDOR, VENDEDOR.COD_VENDEDOR, NUM_PEDIDO
FROM PEDIDO RIGHT JOIN VENDEDOR  ON (VENDEDOR.COD_VENDEDOR = PEDIDO.COD_VENDEDOR);


