SELECT
    orcamento.`TuboID` AS ID,
    orcamento.quantidade AS QUANTIDADE,
    tubo.total AS TOTAL_PECA,
    cast( (
            tubo.total * orcamento.quantidade
        ) as FLOAT
    ) as TOTAL_ORCADO,
    orcamento.criado_em as CRIADO_EM
FROM orcamento
    LEFT JOIN tubo ON orcamento.TuboID = tubo.id;
