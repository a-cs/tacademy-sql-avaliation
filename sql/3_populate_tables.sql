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

--Produtos
call pCriarProduto("P1M1", 1, 1, 1);
call pCriarProduto("P2M2", 2, 2, 2);
call pCriarProduto("P3M3", 3, 3, 3);
call pCriarProduto("P4M4", 4, 4, 4);
call pCriarProduto("P5M5", 5, 5, 5);
call pCriarProduto("P6M6", 6, 6, 6);
call pCriarProduto("P7M7", 7, 7, 7);
call pCriarProduto("P8M8", 8, 8, 8);
call pCriarProduto("P9M9", 9, 9, 9);
call pCriarProduto("P10M10", 10, 10, 10);

--vendas
call pCriarVenda(1, 1, 1);
call pCriarVenda(2, 2, 2);
call pCriarVenda(3, 3, 3);
call pCriarVenda(4, 4, 4);
call pCriarVenda(5, 5, 5);
call pCriarVenda(6, 6, 6);
call pCriarVenda(7, 7, 7);
call pCriarVenda(8, 8, 8);
call pCriarVenda(9, 9, 9);
call pCriarVenda(10, 10, 10);

--MovimentalçaoProduto
call pCriarMovimentacaoEntrada(1, 1, 10, 1);
call pCriarMovimentacaoEntrada(2, 2, 20, 2);
call pCriarMovimentacaoEntrada(3, 3, 30, 3);
call pCriarMovimentacaoEntrada(4, 4, 40, 4);
call pCriarMovimentacaoEntrada(5, 5, 50, 5);
call pCriarMovimentacaoSaida(1, 1, 1, 1, 1.10);
call pCriarMovimentacaoSaida(2, 2, 2, 1, 2.10);
call pCriarMovimentacaoSaida(3, 3, 3, 1, 3.10);
call pCriarMovimentacaoSaida(4, 4, 4, 1, 4.10);
call pCriarMovimentacaoSaida(5, 5, 5, 1, 5.10);