DELIMITER //
CREATE PROCEDURE add_dados()
BEGIN
INSERT INTO `DIBDdb01`.`disciplina_teste` (`cod_disciplina`,`disciplina`)
VALUES (60879,"Mecânica");
INSERT INTO `DIBDdb01`.`curso_teste` (`cod_curso`, `curso`, `tipo`)
VALUES (8747, "Gestão de PME", "CTESP");
INSERT INTO `DIBDdb01`.`aluno_teste` (`numero`, `nome`, `ano_matricula`, `cod_curso`)
VALUES (754, "José Figueiras", 2020, 8747);
INSERT INTO `DIBDdb01`.`nota_teste` (`n_aluno`, `cod_disciplina`, `ano_lectivo`, `nota`)
VALUES (754, 60879, "2020/21", 17);

END//
DELIMITER ;

call add_dados();