ALTER TABLE nota
	DROP FOREIGN KEY nota_ibfk_1;
    
ALTER TABLE nota
	ADD CONSTRAINT FK_n_aluno FOREIGN KEY(n_aluno) REFERENCES aluno(numero);
    
CREATE TABLE curso (
	cod_curso CHAR(5) NOT NULL,
	curso VARCHAR(50) NOT NULL,
	tipo varchar(50) NOT NULL,
	PRIMARY KEY (cod_curso)
);

ALTER TABLE aluno
	ADD CONSTRAINT FK_cod_curso FOREIGN KEY(cod_curso) REFERENCES curso(cod_curso);
    
CREATE TABLE disciplina (
	cod_disciplina CHAR(5) NOT NULL,
	disciplina VARCHAR(50) NOT NULL,
	PRIMARY KEY (cod_disciplina)
);

ALTER TABLE nota
	ADD CONSTRAINT FK_cod_disciplina FOREIGN KEY(cod_disciplina) REFERENCES disciplina(cod_disciplina);