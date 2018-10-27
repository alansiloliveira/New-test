
/**
 * Author:  alan-
 * Created: 26/10/2018
 */

DROP DATABASE IF EXISTS schoolshare;
CREATE DATABASE schoolshare
DEFAULT CHARACTER SET utf8
DEFAULT COLLATE utf8_general_ci;

USE schoolshare;
DROP TABLE IF EXISTS schoolshare;
CREATE TABLE IF NOT EXISTS pessoas (

    id INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL,
    data_nascimento DATE NOT NULL,
    genero ENUM('M', 'F') NOT NULL,
    email VARCHAR(50) NOT NULL,
    telefone VARCHAR(15) NOT NULL,
    login VARCHAR(20) NOT NULL,
    senha VARCHAR(100) NOT NULL,
    acesso TINYINT(1) NOT NULL,
    PRIMARY KEY(id)

) DEFAULT CHARSET = utf8;
	