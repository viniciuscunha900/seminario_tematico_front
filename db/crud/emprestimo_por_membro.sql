# RECUPERAR emprestimo_por_membro
SELECT * FROM emprestimo_por_membro WHERE id = 1;

# LISTA emprestimo_por_membro
SELECT * FROM emprestimo_por_membro;

# CRIAR emprestimo_por_membro
INSERT INTO emprestimo_por_membro (emprestimo_id, membro_id) 
VALUES (1, 1);

# ATULIZAR emprestimo_por_membro
UPDATE emprestimo_por_membro SET emprestimo_id = 1, membro_id = 1 WHERE id = 1;

# DELETAR emprestimo_por_membro
DELETE FROM emprestimo_por_membro WHERE id = 1;