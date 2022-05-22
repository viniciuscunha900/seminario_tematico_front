# RECUPERAR livro
SELECT * FROM livro WHERE id = 1;

# LISTA livro
SELECT * FROM livro;

# CRIAR livro
INSERT INTO livro (nome, publicado_em, categoria_id, editora_id, autor_id) 
VALUES ("livro 1", "2020-01-01", 1, 1, 1);

# ATULIZAR livro
UPDATE livro SET nome = "livro top" WHERE id = 1;

# DELETAR livro
DELETE FROM livro WHERE id = 1;