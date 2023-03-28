-- Active: 1680031548189@@127.0.0.1@3306

-- CRIANDO A TABELA --
CREATE TABLE books (
    id TEXT PRIMARY KEY NOT NULL UNIQUE, 
    name TEXT NOT NULL, 
    author TEXT NOT NULL, 
    page_count INTEGER, 
    price REAL NOT NULL

);

SELECT * FROM books; -- LENDO A TABELA INTEIRA --
SELECT NAME, price FROM books; -- LENDO SOMENTE O NOME E O PREÇO --


-- INSERINDO ÍTENS NA TABELA --
INSERT INTO books (id, name, author, page_count, price) 
VALUES
(8503012928, "O Quinze", "Rachel de Queiroz", 208, 24.95),
(8578887239, "Dom Casmurro", "Machado de Assis", NULL, 46.77);

INSERT INTO books -- inserindo sem declarar -> (id, name, author, page_count, price) --
VALUES
(1, "Aventuras na Barbosa D", "Labenu", 1500, 100);

-- SE FOR COLOCAR TODOS OS ÍTENS NÃO PRECISA DECLARAR! --


UPDATE books --     EDITANDO OS DADOS DA TABELA --
SET  
name = "Alala"
WHERE id = 1;


DELETE FROM books -- DELETANDO ITENS DA TABELA PELO ID --
WHERE ID = 1;


