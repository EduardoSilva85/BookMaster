--- Usuário ---
INSERT INTO Usuario (nome, email, endereco) VALUES
('Ana Silva', 'ana.silva@email.com', 'Rua das Flores, 123'),
('Bruno Pereira', 'bruno.p@email.com', 'Av. Central, 456'),
('Carla Mendes', 'carla.m@gmail.com', 'Rua Azul, 789');

--- Idioma ---
INSERT INTO Idioma (nome_idioma) VALUES
('Português'),
('Inglês'),
('Espanhol');

--- Categoria ---
INSERT INTO Categoria (nome_categoria, id_idioma) VALUES
('Fantasia', 1),
('Ficção Científica', 1),
('Terror', 1),
('Romance', 2),
('Ação', 3);

--- Livro ---
INSERT INTO Livro (titulo, ano_publicacao, quantidade_estoque) VALUES
('O Senhor dos Anéis', 1954, 5),
('Duna', 1965, 3),
('It: A Coisa', 1986, 4),
('Orgulho e Preconceito', 1813, 2);

--- Livro_Categoria ---
INSERT INTO Livro_Categoria (id_livro, id_categoria) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4);

--- Autor ---
INSERT INTO Autor (nome_autor, nacionalidade, data_nascimento) VALUES
('J.R.R. Tolkien', 'Britânica', '1892-01-03'),
('Frank Herbert', 'Americana', '1920-10-08'),
('Stephen King', 'Americana', '1947-09-21'),
('Jane Austen', 'Britânica', '1775-12-16');

--- Livro_Autor ---
INSERT INTO Livro_Autor (id_livro, id_autor) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4);

--- Emprestimo ---
INSERT INTO Emprestimo (id_livro, id_usuario, data_emprestimo, data_devolucao) VALUES
(1, 1, '2025-01-10', '2025-01-20'),
(2, 2, '2025-02-01', '2025-02-15'),
(3, 3, '2025-02-05', '2025-02-18');