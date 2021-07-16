DELIMITER //

CREATE PROCEDURE ExtractoTesteTipo(
	IN numero_conta INT,
    IN data1 DATE,
    IN data2 DATE)
BEGIN    
    SELECT datahora, montante, tipo
    FROM movimento
    WHERE DATE(datahora) BETWEEN (data1 AND data2) AND numero=numero_conta
    ORDER BY numero DESC;
END//

DELIMITER ;