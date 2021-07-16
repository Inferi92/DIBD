DELIMITER //
CREATE TRIGGER `conta_AFTER_INSERT`
AFTER INSERT ON `movimento` FOR EACH ROW
BEGIN
	IF NEW.tipo = 'crédito' THEN
		UPDATE `conta` SET saldo = saldo + NEW.montante;
	ELSEIF NEW.tipo = 'débito' THEN
		UPDATE `conta` SET saldo = saldo - NEW.montante;
	END IF;
END //

CREATE TRIGGER `conta_BEFORE_DELETE`
BEFORE DELETE ON `movimento` FOR EACH ROW
BEGIN
	IF OLD.tipo = 'crédito' THEN
		UPDATE `conta` SET saldo = saldo - OLD.montante;
	ELSEIF OLD.tipo = 'débito' THEN
		UPDATE `conta` SET saldo = saldo + OLD.montante;
	END IF;
END //

DELIMITER ;