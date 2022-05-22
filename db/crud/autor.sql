# RECUPERAR autor
SELECT * FROM autor WHERE id = 1;

# LISTA autor
SELECT * FROM autor;

# CRIAR autor
INSERT INTO autor (nome, sobrenome) VALUES ("autor 1", "sobrenome");

# ATULIZAR autor
UPDATE autor SET nome = "autor top", sobrenome = "xxx" WHERE id = 1;

# DELETAR autor
DELETE FROM autor WHERE id = 1;