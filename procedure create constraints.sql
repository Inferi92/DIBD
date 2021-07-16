# Diogo Filipe Almeida Jesus
DELIMITER //
CREATE PROCEDURE CriarConstrangimentosTesteTipo()
BEGIN
# Diogo Filipe Almeida Jesus
# CRIAR CONSTRANGIMENTOS
	ALTER TABLE `movimento` 
		ADD CONSTRAINT CHECK (tipo='débito' or tipo='crédito');
	ALTER TABLE `cliente`
		ADD CONSTRAINT CHECK (data_nasc >= YEAR(data_nasc) + 18);
END //

DELIMITER ;

call CriarConstrangimentosTesteTipo();