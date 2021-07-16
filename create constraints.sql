ALTER TABLE aluno 
ADD data_nascimento DATETIME,
ADD CONSTRAINT anoMatricula
	CHECK (ano_matricula >= YEAR(data_nascimento) + 18);

ALTER TABLE nota
ADD CONSTRAINT notasPermitidas 
	CHECK (nota BETWEEN 0 AND 20);