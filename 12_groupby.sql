-- SELECT IdProduto,
--        count(*)

-- FROM transacao_produto

-- -- Agrupa por idproduto e conta
-- GROUP BY IdProduto

SELECT IdCliente,
       sum(QtdePontos),
       count(IdTransacao)

FROM transacoes -- Tabela em que cada linha é uma transação

-- O WHERE você "tira" os dados do baú. Ele filtra NO MOMENTO em
-- que eu tiro os dados
WHERE DtCriacao >= '2025-07-01'
AND DtCriacao >= '2025-08-01'

-- ordenou por IdCliente, somando os pontos
-- havia várias linhas, cada uma era uma transação (clientes
-- podiam repetir). Agrupou tudo por cliente, somando os pontos
-- Cliente não repete mais!!!
GROUP BY IdCliente
HAVING sum(QtdePontos) >= 4000 -- filtro após agregação

ORDER BY sum(QtdePontos) DESC

LIMIT 10