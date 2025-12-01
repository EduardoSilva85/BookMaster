CREATE TABLE Usuario (
  id_usuario INT AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(255) NOT NULL,
  email VARCHAR(255) NOT NULL UNIQUE,
  endereco VARCHAR(255)
);

CREATE TABLE Idioma (
  id_idioma INT AUTO_INCREMENT PRIMARY KEY,
  nome_idioma VARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE Categoria (
  id_categoria INT AUTO_INCREMENT PRIMARY KEY,
  nome_categoria VARCHAR(255) NOT NULL,
  id_idioma INT NOT NULL,

  FOREIGN KEY (id_idioma) REFERENCES Idioma(id_idioma)
);

CREATE TABLE Livro (
  id_livro INT AUTO_INCREMENT PRIMARY KEY,
  titulo VARCHAR(255) NOT NULL,
  ano_publicacao INT,
  quantidade_estoque INT NOT NULL DEFAULT 0
);

CREATE TABLE Livro_Categoria (
  id_livro_categoria INT AUTO_INCREMENT PRIMARY KEY,
  id_livro INT NOT NULL,
  id_categoria INT NOT NULL,

  FOREIGN KEY (id_livro) REFERENCES Livro(id_livro),
  FOREIGN KEY (id_categoria) REFERENCES Categoria(id_categoria),

  UNIQUE (id_livro, id_categoria)
);

CREATE TABLE Autor (
  id_autor INT AUTO_INCREMENT PRIMARY KEY,
  nome_autor VARCHAR(255) NOT NULL,
  nacionalidade VARCHAR(150),
  data_nascimento DATE
);

CREATE TABLE Livro_Autor (
  id_livro_autor INT AUTO_INCREMENT PRIMARY KEY,
  id_livro INT NOT NULL,
  id_autor INT NOT NULL,

  FOREIGN KEY (id_livro) REFERENCES Livro(id_livro),
  FOREIGN KEY (id_autor) REFERENCES Autor(id_autor),

  UNIQUE (id_livro, id_autor)
);

CREATE TABLE Emprestimo (
  id_emprestimo INT AUTO_INCREMENT PRIMARY KEY,
  id_livro INT NOT NULL,
  id_usuario INT NOT NULL,
  data_emprestimo DATE NOT NULL,
  data_devolucao DATE NOT NULL,

  FOREIGN KEY (id_livro) REFERENCES Livro(id_livro),
  FOREIGN KEY (id_usuario) REFERENCES Usuario(id_usuario)
);