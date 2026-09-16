SELECT
        count(*), -- quantas linhas têm a tabela? (ou "registros")
        count(1),
        count(idCliente)

FROM clientes