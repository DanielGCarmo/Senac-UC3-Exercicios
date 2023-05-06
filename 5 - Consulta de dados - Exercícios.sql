-- Imagine o seguinte cenário: você foi contratado para realizar consultas de produtos de uma empresa do ramo de supermercado.
-- A tabela principal para essa tarefa é Produtos, que contará com ID, nome, categoria, valor e quantidade em estoque.

DROP DATABASE IF EXISTS super;
CREATE DATABASE super;
USE super;

CREATE TABLE Produtos(
idProduto INT NOT NULL AUTO_INCREMENT,
nomeProduto VARCHAR(200),
categoriaProduto VARCHAR(200),
valorVendaProduto DOUBLE(9,2),
quantidadeProduto INT,
PRIMARY KEY (idProduto)
);

-- Serão incluídos os seguintes dados para demonstração:

INSERT into Produtos
(nomeProduto,categoriaProduto,valorVendaProduto,quantidadeProduto) values
('Refrigerante','Bebidas','5.50',300),
('Arroz 5kg','Mercearia','8.50',100),
('Feijão','Mercearia','6.50',800),
('Detergente','Limpeza','2.10',100),
('Leite','Laticínios','2.70',600),
('Bolacha recheada',NULL,'1.50',200),
('Leite condensado','Mercearia','4.50',500);

SELECT * FROM Produtos;

-- 1) Elabore uma consulta que apresente o nome do produto, a categoria e o valor, exibindo os produtos que não sejam da categoria “mercearia” e cujo valor de venda seja superior a 2.00. 
-- Não esqueça de ordenar pelo nome do produto.

SELECT nomeProduto, categoriaProduto, valorVendaProduto FROM Produtos WHERE categoriaProduto <> 'Mercearia' AND valorVendaProduto > 2.00 ORDER BY nomeProduto;

-- 2) O dono do estabelecimento precisa saber quanto em dinheiro consta em seu estoque, afinal, foi realizado um investimento para compras das mercadorias. 
-- Para isso, utilizando as funções internas básicas estudadas, implemente agora uma consulta que exiba o valor em estoque de todos os produtos por meio da multiplicação da quantidade pelo valor dos produtos.

SELECT SUM(quantidadeProduto * valorVendaProduto) AS valorTotalEmEstoque FROM Produtos;