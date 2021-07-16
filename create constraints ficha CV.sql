DELIMITER //
CREATE PROCEDURE CriarConstrangimentos()
BEGIN
	ALTER TABLE movimento
		ADD CONSTRAINT movimentos CHECK (tipo = "entrada" OR tipo = "saída"),
        ADD CONSTRAINT quantidade CHECK (quantidade >= 0);
END//

DELIMITER ;
