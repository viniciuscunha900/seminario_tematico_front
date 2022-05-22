CREATE VIEW usuario_endereco AS
SELECT nome, sobrenome, criado_em, endereco_id, cpf, cep, cidade, pais, rua, logradouro
FROM membro 
INNER JOIN endereco ON endereco.id  = membro.endereco_id;
