# RECUPERAR exemplar
SELECT * FROM exemplar WHERE id = 1;

# LISTA exemplar
SELECT * FROM exemplar;

# CRIAR exemplar
INSERT INTO exemplar (livro_id, status, data_emprestimo, data_entrega, prazo) 
VALUES (1, 'alugado', '2020-01-01', '2020-01-01', 1);

# ATULIZAR exemplar
UPDATE exemplar SET data_emprestimo = "2020-01-01", data_entrega = "2020-01-01", prazo = "2" WHERE id = 1;

# DELETAR exemplar
DELETE FROM exemplar WHERE id = 1;