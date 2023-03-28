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


------------------------------------------------------------------------------------------------------------------
--  EXERCÍCIO DE FIXAÇÃO --

-- Crie uma tabela de tarefas com pelo menos 3 colunas, sendo uma delas necessariamente a ID (pk)--
CREATE TABLE tasks (
    id TEXT PRIMARY KEY NOT NULL UNIQUE,
    name TEXT NOT NULL,
    user_id TEXT NOT NULL
);

-- Popule sua tabela com pelo menos 3 linhas. --
INSERT INTO tasks(id, name, user_id)
VALUES
(001, "Estudar", "Rafael"),
(002, "Trabalhar", "Rafael"),
(003, "Descansar", "Rafael");

SELECT * FROM tasks;

-- Delete sua tabela e recrie-a --
DROP TABLE tasks;


-- Monte uma query que edita uma das linhas --
UPDATE tasks
SET 
name = "Gabriel"
WHERE id = 1;

-- Monte uma query que deleta uma das linhas --
DELETE FROM tasks
WHERE id=1;