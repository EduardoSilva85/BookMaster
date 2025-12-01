UPDATE Usuario
SET endereco = 'Rua Nova Esperança, 999'
WHERE id_usuario = 1;

UPDATE Livro
SET quantidade_estoque = quantidade_estoque + 2
WHERE id_livro = 2;

UPDATE Autor
SET nacionalidade = 'Inglaterra'
WHERE nome_autor = 'J.R.R. Tolkien';

DELETE FROM Emprestimo
WHERE id_emprestimo = 1;


DELETE FROM Categoria
WHERE nome_categoria = 'Ação';


DELETE FROM Usuario
WHERE id_usuario NOT IN (SELECT id_usuario FROM Emprestimo);