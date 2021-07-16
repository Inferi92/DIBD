# Diogo Filipe Almeida Jesus
DELIMITER //
CREATE PROCEDURE CriarBDTesteTipo()
BEGIN
# CRIAR TABELA CLIENTE
	CREATE TABLE IF NOT EXISTS `cliente` (
	  `numero` INT NOT NULL,
	  `nif` INT NULL,
	  `nome` VARCHAR(50) NOT NULL,
	  `data_nasc` DATE NOT NULL,
	UNIQUE INDEX `nif_UNIQUE` (`nif` ASC),
	PRIMARY KEY (`numero`));
    
# CRIAR TABELA CONTA
	CREATE TABLE IF NOT EXISTS `conta` (
	  `numero` INT NOT NULL,
	  `saldo` DECIMAL(10.3),
	  `cliente` VARCHAR(50) NOT NULL,
	PRIMARY KEY (`numero`),
    CONSTRAINT `FK_cliente` FOREIGN KEY (`numero`) REFERENCES `cliente` (`numero`));
    
  # CRIAR TABELA MOVIMENTO
	CREATE TABLE IF NOT EXISTS `movimento` (
	  `numero` INT NOT NULL,
      `datahora` DATETIME NOT NULL,
	  `montante` DECIMAL(10.3) NOT NULL,
      `tipo` VARCHAR(10) NOT NULL,
	  `conta` INT NOT NULL,
	PRIMARY KEY (`numero`),
    CONSTRAINT `FK_conta` FOREIGN KEY (`conta`) REFERENCES `conta` (`numero`));
END //

DELIMITER ;

call CriarBDTesteTipo();