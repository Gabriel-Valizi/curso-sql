-- SELECT DISTINCT flTwitch -- DISTINCT olha para todas as colunas da query
--                          -- e traz valores distintos 

-- FROM clientes

-- qtdade transacoes em jul/25
SELECT COUNT(*),
       COUNT(DISTINCT IdTransacao),-- deu igual pq IdTransacao é chave
                                   -- primária nessa tabela, então não repete
       COUNT(DISTINCT idCliente)   -- clientes distintos que fizeram transação

FROM transacoes

WHERE DtCriacao >= '2025-07-01'
AND DtCriacao < '2025-08-01'

ORDER BY DtCriacao DESC