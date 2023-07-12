CREATE TABLE
  tubo(
      id VARCHAR(255) NOT NULL PRIMARY KEY COMMENT 'Primary Key',
      diametro SMALLINT,
      comprimentoEmM SMALLINT,
      espessuraEmMM SMALLINT,
      desdobramento FLOAT DEFAULT (3.1416 * diametro),
      peso FLOAT DEFAULT ( (
              desdobramento * espessuraEmMM * comprimentoEmM * 7.85
          ) / 1000
      ),
      precoPorKg TINYINT DEFAULT 3,
      total FLOAT DEFAULT (precoPorKg * peso),
      material ENUM(
          'aco_1020',
          'aco_inox_AISI304'
      ),
      criado_em DATETIME DEFAULT NOW()
  );
