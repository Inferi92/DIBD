DELIMITER //
CREATE PROCEDURE CriarBD()
BEGIN
	CREATE TABLE fornecedor(
		`cod_fornecedor` int(5) NOT NULL,
		`nif` int(9) UNIQUE NOT NULL,
		PRIMARY KEY (`cod_fornecedor`)
	);
	CREATE TABLE produto(
		`codigo` int(5) NOT NULL,
		`descricao` varchar(50) NOT NULL,
        `preco` float(5.2),
        `stock` int(5),
        `cod_fornecedor` int(5) NOT NULL,
		PRIMARY KEY (`codigo`),
		CONSTRAINT `FK_COD_FORNECEDOR` FOREIGN KEY (`cod_fornecedor`) REFERENCES `fornecedor` (`cod_fornecedor`)
	);
	CREATE TABLE movimento(
		`numero` int(5) NOT NULL,
		`tipo` varchar(8),
        `quantidade` float(5),
        `codigo` int(5) NOT NULL,
        `datahora` datetime,
		PRIMARY KEY (`numero`),
		CONSTRAINT `FK_COD_PRODUTO` FOREIGN KEY (`codigo`) REFERENCES `produto` (`codigo`)
	);
END//

DELIMITER ;

CALL CriarBD();