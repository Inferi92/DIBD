DELIMITER  //
CREATE PROCEDURE criar_bd_escola()
BEGIN
CREATE TABLE `curso_teste` (
  `cod_curso` char(5) NOT NULL,
  `curso` varchar(50) NOT NULL,
  `tipo` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`cod_curso`)
);
CREATE TABLE `disciplina_teste` (
  `cod_disciplina` char(5) NOT NULL,
  `disciplina` varchar(50) NOT NULL,
  PRIMARY KEY (`cod_disciplina`)
);
CREATE TABLE `aluno_teste` (
  `numero` int(5) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `ano_matricula` int(4) NOT NULL,
  `cod_curso` char(5) DEFAULT NULL,
  PRIMARY KEY (`numero`),
  KEY `FK_cod_curso_teste` (`cod_curso`),
  CONSTRAINT `FK_cod_curso_teste` FOREIGN KEY (`cod_curso`) REFERENCES `curso_teste` (`cod_curso`)
);
CREATE TABLE `nota_teste` (
  `n_aluno` int(5) NOT NULL,
  `cod_disciplina` char(5) NOT NULL,
  `ano_lectivo` char(8) NOT NULL,
  `nota` int(2) NOT NULL,
  PRIMARY KEY (`n_aluno`,`cod_disciplina`,`ano_lectivo`),
  KEY `fk_cod_disciplina_teste` (`cod_disciplina`),
  CONSTRAINT `fk_cod_disciplina_teste` FOREIGN KEY (`cod_disciplina`) REFERENCES `disciplina_teste` (`cod_disciplina`),
  CONSTRAINT `FK_n_aluno_teste` FOREIGN KEY (`n_aluno`) REFERENCES `aluno_teste` (`numero`)
);

END//
DELIMITER ;

CALL criar_bd_escola();