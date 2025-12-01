# Sistema de Biblioteca SQL "BookMaster"  
  
## Descrição do Projeto
  
Este repositório contém a implementação completa de um Sistema de Biblioteca utilizando SQL.  
O projeto inclui:  
  
- Criação das tabelas seguindo boas práticas de modelagem;  
- Povoamento inicial com dados consistentes;  
- Consultas SQL envolvendo JOIN, filtros, agrupamentos e ordenação;  
- Comandos de atualização (UPDATE);  
- Comandos de exclusão (DELETE);  
- Organização conforme solicitado na atividade acadêmica;  
  
O banco de dados simula um sistema real de biblioteca, permitindo controlar livros, autores, categorias, usuários e empréstimos.  
  
---
  
## Tecnologias Utilizadas
  
- MySQL (Workbench recomendado);  
- SQL ANSI;  
- Git & GitHub;  
  
---
  
## Modelo Lógico Implementado
  
  As tabelas criadas foram:  
  
- Usuario;  
- Idioma;  
- Categoria;  
- Livro;  
- Livro_Categoria (N:N);  
- Autor;  
- Livro_Autor (N:N);  
- Emprestimo;  
  
Todas seguem 1FN, 2FN e 3FN.  
  
---
  
## 1. Script de Criação das Tabelas
  
O arquivo 01_create_tables.sql contém todo o DDL:  
- Criação das entidades;  
- Chaves primárias;  
- Chaves estrangeiras;  
- Relacionamentos N:N corretamente normalizados;  
  
---
  
## 2. Script de Inserção – insert.sql
  
Inclui:  
  
- Usuários;  
- Idiomas;  
- Categorias;  
- Livros;  
- Autores;  
- Relacionamentos Livro_Categoria e Livro_Autor;  
- Empréstimos;  
  
Tudo coerente com os tipos e relacionamentos.  
  
---
  
## 3. Consultas SQL – 03_selects.sql
  
O arquivo contém 5 consultas completas, incluindo:  
  
✔ JOIN entre múltiplas tabelas;  
✔ Filtro com WHERE;  
✔ Ordenação com ORDER BY;  
✔ LIMIT;  
✔ Agrupamentos com GROUP BY;  
  
Exemplos incluídos:  
  
- Livros + autores;  
- Livros + categorias + idioma;  
- Livros pós-1950;  
- Empréstimos por usuário;  
- Top 3 livros com maior estoque;  
  
---
  
## 4. Atualizações e Exclusões – 04_updates_deletes.sql
  
Inclui:  
  
**UPDATE**  
  
- Atualizar endereço de usuário;  
- Ajustar estoque;  
- Corrigir nacionalidade de autor;  
  
**DELETE**  
  
- Excluir empréstimo específico;  
- Excluir categoria;  
- Excluir usuário sem empréstimo;  
  
Todos com condições seguras e consistentes.  
  
---
  
# Como Executar o Projeto
  
### ✔ Passo 1 – Criar o banco  
  
Abra o MySQL Workbench ou similar e execute:  
  
```
CREATE DATABASE biblioteca;  
USE biblioteca;  
```  
  
### ✔ Passo 2 – Executar o script de criação  
  
Importe e execute:  
  
```
create_tables.sql
```  
  
### ✔ Passo 3 – Inserir os dados  
  
Execute:  
  
```
insert.sql
```  
  
### ✔ Passo 4 – Rodar consultas  
  
Execute:  
  
```
selects.sql
```  
  
### ✔ Passo 5 – Atualizar / Excluir dados  
  
Execute:  
  
```
updates_deletes.sql
```  
  
---
  
# Testes Básicos de Validação  
  
- Verifique se os livros têm autores cadastrados;  
- Verifique se cada categoria está associada a um idioma;  
- Consulte se os empréstimos aparecem com JOIN entre livros e usuários;  
- Garanta que não existam categorias ou autores sem relação, caso não seja previsto;  
  
---
  
# 📄 Licença  
  
Projeto acadêmico. Livre para uso e modificação.  
  
---
  
# 💬 Contato  
  
Criado por: Eduardo Silva  
E-mail: eduardosilva852515@gmail.com  
Disciplina: Modelagem de Banco de Dados  
Em processo de aprendizagem e formação em CIÊNCIA DA COMPUTAÇÃO.  