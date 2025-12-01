-- 1) Listar livros e seus autores
SELECT
    L.titulo AS "Livro",
    A.nome_autor AS "Autor"
FROM Livro L
JOIN Livro_Autor LA ON L.id_livro = LA.id_livro
JOIN Autor A ON LA.id_autor = A.id_autor
ORDER BY L.titulo;

-- 2) Listar categorias de livros por idioma
SELECT
    L.titulo,
    C.nome_categoria,
    I.nome_idioma
FROM Livro L
JOIN Livro_Categoria LC ON L.id_livro = LC.id_livro
JOIN Categoria C ON LC.id_categoria = C.id_categoria
JOIN Idioma I ON C.id_idioma = I.id_idioma;

-- 3) Livros publicados após 1950
SELECT titulo, ano_publicacao
FROM Livro
WHERE ano_publicacao > 1950;

-- 4) Total de empréstimos por usuário
SELECT
    U.nome,
    COUNT(E.id_emprestimo) AS total_emprestimos
FROM Usuario U
LEFT JOIN Emprestimo E ON U.id_usuario = E.id_usuario
GROUP BY U.id_usuario;

-- 5) Top 3 livros com maior estoque
SELECT titulo, quantidade_estoque
FROM Livro
ORDER BY quantidade_estoque DESC
LIMIT 3;