INSERT INTO clientes (nome, email)
VALUES
("Cliente1", "cliente1@gmail.com"),
("Cliente2", "cliente2@gmail.com"),
("Cliente3", "cliente3@gmail.com"),
("Cliente4", "cliente4@gmail.com"),
("Cliente5", "cliente5@gmail.com"),
("Cliente6", "cliente6@gmail.com"),
("Cliente7", "cliente7@gmail.com"),
("Cliente8", "cliente8@gmail.com"),
("Cliente9", "cliente9@gmail.com"),
("Cliente10", "cliente10@gmail.com");

INSERT INTO vendedores (nome)
VALUES
("Vendedor1"),
("Vendedor2"),
("Vendedor3"),
("Vendedor4"),
("Vendedor5"),
("Vendedor6"),
("Vendedor7"),
("Vendedor8"),
("Vendedor9"),
("Vendedor10");

INSERT INTO filiais (nome, cnpj)
VALUES
("Filial1", "11111111111111"),
("Filial2", "11111111111112"),
("Filial3", "11111111111113"),
("Filial4", "11111111111114"),
("Filial5", "11111111111115"),
("Filial6", "11111111111116"),
("Filial7", "11111111111117"),
("Filial8", "11111111111118"),
("Filial9", "11111111111119"),
("Filial10", "11111111111110");

INSERT INTO categorias (nome)
VALUES
("Categoria1"),
("Categoria2"),
("Categoria3"),
("Categoria4"),
("Categoria5"),
("Categoria6"),
("Categoria7"),
("Categoria8"),
("Categoria9"),
("Categoria10");

INSERT INTO marcas (nome)
VALUES
("Marca1"),
("Marca2"),
("Marca3"),
("Marca4"),
("Marca5"),
("Marca6"),
("Marca7"),
("Marca8"),
("Marca9"),
("Marca10");

INSERT INTO produtos (nome, codigoMarca, codigoCategoria, codigoFilial)
VALUES
("P1M1", 1, 1, 1),
("P2M2", 2, 2, 2),
("P3M3", 3, 3, 3),
("P4M4", 4, 4, 4),
("P5M5", 5, 5, 5),
("P6M6", 6, 6, 6),
("P7M7", 7, 7, 7),
("P8M8", 8, 8, 8),
("P9M9", 9, 9, 9),
("P10M10", 10, 10, 10);

INSERT INTO vendas (codigo, dataHora, codigoFilial, codigoVendedor, codigoCliente)
VALUES
(1, NOW()+100, 1, 1, 1),
(2, NOW()+200, 2, 2, 2),
(3, NOW()+300, 3, 3, 3),
(4, NOW()+400, 4, 4, 4),
(5, NOW()+500, 5, 5, 5),
(6, NOW()+600, 6, 6, 6),
(7, NOW()+700, 7, 7, 7),
(8, NOW()+800, 8, 8, 8),
(9, NOW()+900, 9, 9, 9),
(10, NOW()+1000, 10, 10, 10);

INSERT INTO movimentacoesProdutos (tipo, codigoVenda, codigoFilial, codigoProduto, dataHora, quantidade, preco)
VALUES
("Entrada", NULL, 1, 1, NOW()+100, 10, 1),
("Entrada", NULL, 2, 2, NOW()+200, 20, 2),
("Entrada", NULL, 3, 3, NOW()+300, 30, 3),
("Entrada", NULL, 4, 4, NOW()+400, 40, 4),
("Entrada", NULL, 5, 5, NOW()+500, 50, 5),
("Saida", 1, 1, 1, NOW()+100, 1, 1.10),
("Saida", 2, 2, 2, NOW()+200, 2, 2.10),
("Saida", 3, 3, 3, NOW()+300, 3, 3.10),
("Saida", 4, 4, 4, NOW()+400, 4, 4.10),
("Saida", 5, 5, 5, NOW()+500, 5, 5.10);