DELIMITER //

CREATE PROCEDURE TransferenciaTesteTipo(
	IN numero_conta_origem INT,
    IN numero_conta_destino INT,
    IN montante_transferir INT)
BEGIN    
	DECLARE excecao SMALLINT DEFAULT 0;
    DECLARE CONTINUE HANDLER FOR SQLEXCEPTION
    SET excecao = 1;
    START TRANSACTION;
    #UPDATE DA CONTA DE ORIGEM, RETIRAR AO SALDO O MONTANTE A TRANSFERIR
		UPDATE CONTA
		SET saldo = saldo - montante_transferir
		WHERE conta = numero_conta_origem;
	#UPDATE DA CONTA DE DESTINO, ADICIONAR AO SALDO O MONTANTE A TRANSFERIR
		UPDATE CONTA
		SET saldo = saldo + montante_transferir
		WHERE conta = numero_conta_destino;
        IF excecao = 1 THEN
			SELECT 'Erro ao transferir o montante' AS mensagem;
            ROLLBACK;
		ELSE
			COMMIT;
		END IF;
END//

DELIMITER ;