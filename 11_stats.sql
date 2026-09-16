SELECT round(avg(QtdePontos),2),
       1. *sum(QtdePontos)/count(QtdePontos), -- multiplica por 1.0 pra virar float
        min(QtdePontos),
        max(QtdePontos)

FROM clientes