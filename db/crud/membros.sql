# CRIAR USUARIO
START TRANSACTION;
    INSERT INTO endereco (cep, cidade, pais, rua, logradouro)
        VALUES (1234, "slz", "br", "03", "maiobao");
    SELECT LAST_INSERT_ID() INTO @ederecoId;
    INSERT IGNORE INTO membro (nome, sobrenome, email, cpf, senha, endereco_id)
        VALUES ("italo", "costa", "fulano@cicrano.com", "123123", "123312", @ederecoId);
COMMIT;


# ATULIZAR USUARIO
UPDATE membro SET nome = "italo", sobrenome = "costa", email = "ital@italo.com", cpf = "222222", senha = "123312" WHERE id = 1;


# DELETAR USUARIO
START TRANSACTION;
  SET @user_id = 1;
  SELECT @ederecoId:=endereco_id FROM membro WHERE id = @user_id;
  DELETE FROM membro WHERE id=@user_id;
  DELETE FROM endereco WHERE id=@ederecoId;
COMMIT;

# RECUPERAR MEMBRO
SELECT nome, sobrenome, criado_em, @endereco_id:=endereco_id, cpf, cep, cidade, pais, rua, logradouro
FROM membro 
INNER JOIN endereco ON endereco.id = @endereco_id AND membro.id = 36;


# LISTAR MEMBROS
SELECT * FROM membro;

