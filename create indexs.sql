CREATE INDEX indiceAluno
ON aluno(nome);

CREATE UNIQUE INDEX indiceDisciplina
ON disciplina(disciplina);

CREATE INDEX indiceNotas
ON nota(n_aluno, cod_disciplina);

