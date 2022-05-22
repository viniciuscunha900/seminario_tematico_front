CREATE TRIGGER validar_cpf BEFORE INSERT ON membro
FOR EACH ROW
BEGIN
    DECLARE msg VARCHAR(255);
    IF LENGTH(NEW.cpf) != 11 THEN
        set msg = "O cpf deve conter 11 digitos";
        SIGNAL SQLSTATE '45003' SET MESSAGE_TEXT = msg;
   END IF;
END;