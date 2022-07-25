CREATE TABLE IF NOT EXISTS receptai(
    id SMALLINT(5) UNSIGNED NOT NULL AUTO_INCREMENT,
    pavadinimas VARCHAR(50) NOT NULL,
    kaina DECIMAL(4, 2) NOT NULL,
    nurodymai VARCHAR(300),
    PRIMARY KEY(id)
) ENGINE = INNODB;
---- sukurtas duomenu baze kuriami skyriai
CREATE TABLE IF NOT EXISTS indigrientas(
    id SMALLINT(5) UNSIGNED NOT NULL AUTO_INCREMENT,
    pavadinimas VARCHAR(50) NOT NULL,
    kaina DECIMAL(4, 2) NOT NULL,
    PRIMARY KEY(id)
) ENGINE = INNODB;
---- sukurtas indigriejntas skyrius jungtine lentel
CREATE TABLE IF NOT EXISTS receptu_ingredientai(
    indigriento_id SMALLINT(5) UNSIGNED NOT NULL,
    recepto_id SMALLINT(5) UNSIGNED NOT NULL,
    FOREIGN KEY(indigriento_id) REFERENCES indigrientas(id),
    FOREIGN KEY(recepto_id) REFERENCES receptai(id)
) ENGINE = INNODB;
