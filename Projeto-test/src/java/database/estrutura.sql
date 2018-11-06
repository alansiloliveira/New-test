
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

    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    data_nascimento DATE NOT NULL,
    genero ENUM('M', 'F') NOT NULL,
    email VARCHAR(50) NOT NULL,
    telefone VARCHAR(15) NOT NULL,
    login VARCHAR(20) NOT NULL,
    senha VARCHAR(100) NOT NULL,
    acesso TINYINT(1) NOT NULL,
    UNIQUE INDEX email_UNIQUE (email ASC)
	) DEFAULT CHARSET = utf8;


CREATE TABLE IF NOT EXISTS alunos (
	
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    pessoas_id INT NOT NULL,
    FOREIGN KEY (pessoas_id) REFERENCES pessoas(id))
    DEFAULT CHARSET = utf8;

CREATE TABLE IF NOT EXISTS professores (
	
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    pessoas_id INT NOT NULL,
    FOREIGN KEY (pessoas_id) REFERENCES pessoas(id))
    DEFAULT CHARSET = utf8;
    

CREATE TABLE IF NOT EXISTS instituicao(
	
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    instituicao VARCHAR(100) NOT NULL,
    endereco VARCHAR(45) NOT NULL,
    numero VARCHAR(10) NOT NULL,
    cep VARCHAR(9) NOT NULL,
    bairro VARCHAR(30) NOT NULL,
    cidade VARCHAR(50) NOT NULL,
    estado VARCHAR(2) NOT NULL,
    UNIQUE INDEX instituicao_UNIQUE (instituicao ASC))
    DEFAULT CHARSET = utf8;
    

CREATE TABLE IF NOT EXISTS cursos (
	
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    instituicao_id INT NOT NULL,
    curso VARCHAR(150) NOT NULL,
    data_inicio DATE NOT NULL,
    data_final DATE NOT NULL,
    carga_horaria SMALLINT(4) NOT NULL,
    UNIQUE INDEX curso_UNIQUE (curso ASC),
    FOREIGN KEY (instituicao_id) REFERENCES instituicao(id))
    DEFAULT CHARSET = utf8;
    

CREATE TABLE IF NOT EXISTS turmas (
	
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    cursos_id INT NOT NULL,
    professores_id INT NOT NULL,
    turma VARCHAR(45) NOT NULL,
    data_inicio DATE NOT NULL,
    data_final DATE NOT NULL,
    carga_horaria VARCHAR(45) NOT NULL,
    FOREIGN KEY (cursos_id) REFERENCES cursos(id),
    FOREIGN KEY (professores_id) REFERENCES professores(id))
    DEFAULT CHARSET = utf8;
    

CREATE TABLE IF NOT EXISTS matriculas(
	
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    alunos_id INT NOT NULL,
    turmas_id INT NOT NULL,
    matricula VARCHAR(20) NOT NULL,
    data_matricula DATE NOT NULL,
    data_inativa DATE NULL,
    FOREIGN KEY (alunos_id) REFERENCES alunos(id),
    FOREIGN KEY (turmas_id) REFERENCES turmas(id))
    DEFAULT CHARSET = utf8;
    

CREATE TABLE IF NOT EXISTS notas (
	
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    matriculas_id INT NOT NULL,
    nota_1 FLOAT NULL,
    nota_2 FLOAT NULL,
    nota_3 FLOAT NULL,
    nota_4 FLOAT NULL,
    FOREIGN KEY (matriculas_id) REFERENCES matriculas(id))
    DEFAULT CHARSET = utf8;
    

CREATE TABLE IF NOT EXISTS mensagem(

    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    pessoas_id INT NOT NULL,
    mensagem VARCHAR(255) NOT NULL,
    descricao VARCHAR(50) NOT NULL,
    data_envio DATETIME NOT NULL,
    FOREIGN KEY (pessoas_id) REFERENCES pessoas(id))
    DEFAULT CHARSET = utf8;
	