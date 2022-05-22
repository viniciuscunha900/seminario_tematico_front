# RECUPERAR livro_por_categoria
SELECT * FROM livro_por_categoria WHERE id = 1;

# LISTA livro_por_categoria
SELECT * FROM livro_por_categoria;

# CRIAR livro_por_categoria
INSERT INTO livro_por_categoria (livro_id, categoria_id) 
VALUES (1, 1);

# ATULIZAR livro_por_categoria
UPDATE livro_por_categoria SET livro_id = 1, categoria_id = 1 WHERE id = 1;

# DELETAR livro_por_categoria
DELETE FROM livro_por_categoria WHERE id = 1;