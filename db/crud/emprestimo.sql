# RECUPERAR emprestimo
SELECT * FROM emprestimo WHERE id = 1;

# LISTA emprestimo
SELECT * FROM emprestimo;

# CRIAR emprestimo
INSERT INTO emprestimo (exemplar_id, livro_id, data_emprestimo) 
VALUES (1, 1, '2002-01-01');

# ATULIZAR emprestimo
UPDATE emprestimo SET exemplar_id = 1, livro_id = 1, data_emprestimo = '2002-01-01' WHERE id = 1;

# DELETAR emprestimo
DELETE FROM emprestimo WHERE id = 1;