-- UPDATE --

-- 1) Atualizar o endereço de um usuário
UPDATE Usuario
SET endereco = 'Rua Nova Esperança, 999'
WHERE id_usuario = 1;

-- 2) Aumentar o estoque de um livro específico
UPDATE Livro
SET quantidade_estoque = quantidade_estoque + 2
WHERE id_livro = 2;

-- 3) Alterar a nacionalidade de um autor
UPDATE Autor
SET nacionalidade = 'Inglaterra'
WHERE nome_autor = 'J.R.R. Tolkien';

-- DELETE --

-- 1) Remover um empréstimo específico
DELETE FROM Emprestimo
WHERE id_emprestimo = 1;

-- 2) Remover categoria "Ação"
DELETE FROM Categoria
WHERE nome_categoria = 'Ação';

-- 3) Remover usuário que nunca fez empréstimo
DELETE FROM Usuario
WHERE id_usuario NOT IN (SELECT id_usuario FROM Emprestimo);