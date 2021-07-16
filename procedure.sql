# LISTAR NUMERO E NOME DE TODOS OS ALUNOS
DELIMITER //
CREATE PROCEDURE listar_alunos()
BEGIN
	SELECT numero, nome FROM aluno;
END//

DELIMITER ;

CALL listar_alunos();

# LISTAR TODOS OS ATRIBUTOS DE TODAS AS RELAÇÕES
DELIMITER //
CREATE PROCEDURE listar_tudo()
BEGIN
	SELECT * FROM aluno;
    SELECT * FROM curso;
    SELECT * FROM disciplina;
    SELECT * FROM nota;
END//

DELIMITER ;

CALL listar_tudo();

# LISTAR NUMERO E NOME DE TODOS OS ALUNOS
DELIMITER //
CREATE PROCEDURE lista_alunosN(
	IN nome_curso varchar(50))
BEGIN
	DECLARE nome varchar(50);
	SELECT a.numero, a.nome FROM aluno AS a
    INNER JOIN curso AS c
    ON a.cod_curso=c.cod_curso
    WHERE c.curso=nome_curso;
END//
DELIMITER ;

DELIMITER //
CREATE PROCEDURE teste()
BEGIN 
	DECLARE nome varchar(50);
    SET nome = "Programação de Sistemas de Informação";
	CALL lista_alunosN(nome);
END//
DELIMITER ;

call teste();



