ALTER TABLE disciplina
ADD num_notas int default 0;

DELIMITER //
CREATE TRIGGER triggerInsereNota BEFORE INSERT ON nota
	FOR EACH ROW 
    BEGIN
		UPDATE disciplina set num_notas = num_notas + 1
        WHERE cod_disciplina = new.cod_disciplina;
	END;
    
CREATE TRIGGER triggerEliminaNota AFTER DELETE ON nota
	FOR EACH ROW 
    BEGIN
		UPDATE disciplina set num_notas = num_notas - 1
        WHERE cod_disciplina = old.cod_disciplina;
	END//

DELIMITER ;