-- SELECT *

-- FROM clientes

-- Por padrão, order by é crescente (ascendente)
-- DESC faz ficar decrescente
-- ORDER BY qtdePontos DESC

-- LIMIT é a última coisa. Primeiro ordena, depois limita para o top 10
-- LIMIT 10;

SELECT *
FROM clientes
-- Data = quanto "mais antiga", menor --> pegar clientes mais antigos

-- Ordenando pela data de criação e pela qtd pontos 
-- ASC e DESC para definir maior p/ menor ou contrário

WHERE flTwitch = 1 -- só quem tem twitch
ORDER BY DtCriacao ASC, qtdePontos DESC