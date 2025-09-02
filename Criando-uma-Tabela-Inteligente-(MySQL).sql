CREATE DATABASE IF NOT EXISTS minha_loja
  CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE minha_loja;

DROP TABLE IF EXISTS clientes;

CREATE TABLE clientes (
  id INT PRIMARY KEY,
  name VARCHAR(150),
  street VARCHAR(150),
  city VARCHAR(100),
  state CHAR(2),
  credit_limit DECIMAL(10,2)
);

INSERT INTO clientes (id, name, street, city, state, credit_limit) VALUES
(1, 'Pedro Augusto da Rocha', 'Rua Pedro Carlos Hoffman', 'Porto Alegre', 'RS', 700.00),
(2, 'Antonio Carlos Mamel', 'Av. Pinheiros', 'Belo Horizonte', 'MG', 3500.50),
(3, 'Luiza Augusta Mhor', 'Rua Salto Grande', 'Niteroi', 'RJ', 4000.00),
(4, 'Jane Ester', 'Av 7 de setembro', 'Erechim', 'RS', 800.00),
(5, 'Marcos Antônio dos Santos', 'Av Farrapos', 'Porto Alegre', 'RS', 4250.25);

SELECT name
FROM clientes
WHERE state = 'RS';
