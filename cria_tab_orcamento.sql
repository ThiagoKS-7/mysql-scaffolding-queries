CREATE TABLE
    orcamento(
        id int NOT NULL PRIMARY KEY AUTO_INCREMENT COMMENT 'Primary Key',
        TuboID VARCHAR(255),
        FOREIGN KEY (TuboID) REFERENCES tubo(id),
        quantidade SMALLINT,
        criado_em DATETIME DEFAULT NOW()
    );
