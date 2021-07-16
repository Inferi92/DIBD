CREATE TABLE `aluno` (
	`numero` INT(5) NOT NULL,
	`nome` VARCHAR(50) NOT NULL,
	`ano_matricula` INT(4) NOT NULL,
	`cod_curso` CHAR(5),
	PRIMARY KEY (`numero`)
);
CREATE TABLE `nota` (
	`n_aluno` INT(5) NOT NULL,
	`cod_disciplina` CHAR(5) NOT NULL,
	`ano_lectivo` INT(8) NOT NULL,
	`nota` INT(2) NOT NULL,
	PRIMARY KEY (`n_aluno`,`cod_disciplina`,`ano_lectivo`),
    FOREIGN KEY(n_aluno) REFERENCES aluno(numero)
);