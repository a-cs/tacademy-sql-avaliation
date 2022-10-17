CREATE VIEW estoqueProdutosFilial AS
SELECT p.nome AS produto, p.codigoFilial AS filial, p.quantidade AS estoque FROM produtos p 
INNER JOIN filiais f  ON p.codigoFilial  = f.codigo;

CREATE VIEW totalVendasFilial AS
SELECT f.nome AS filial, sum(v.totalVenda) AS totalVendas FROM vendas v
INNER JOIN filiais f on v.codigoFilial = f.codigo 
GROUP BY f.nome;

CREATE VIEW infoProdutos AS
SELECT p.nome AS produto, m.nome AS marca, c.nome AS categoria, p.codigoFilial, p.quantidade AS estoque
FROM produtos p 
INNER JOIN marcas m  ON p.codigoMarca  = m.codigo
INNER JOIN categorias c  ON p.codigoCategoria  = c.codigo;

CREATE VIEW topClientesVendedor AS
SELECT c.nome AS cliente, v2.nome as Vendedor, sum(v.totalVenda) AS totalVendas FROM vendas v 
INNER JOIN vendedores v2 ON v.codigoVendedor = v2.codigo 
INNER JOIN clientes c  ON v.codigoCliente = c.codigo 
GROUP BY c.nome, v2.nome
ORDER BY totalVendas;

CREATE VIEW topProdutosClientes AS
SELECT c.nome AS cliente, p.nome AS produto, m.nome AS marca, cat.nome AS categoria, sum(mp.quantidade) AS qtd
FROM clientes c 
INNER JOIN vendas v ON v.codigoCliente = c.codigo 
INNER JOIN movimentacoesProdutos mp  ON mp.codigoVenda  = v.codigo 
INNER JOIN produtos p  ON mp.codigoProduto  = p.codigo
INNER JOIN marcas m  ON p.codigoMarca  = m.codigo 
INNER JOIN categorias cat  ON p.codigoCategoria = cat.codigo 
GROUP BY cliente, produto, marca, categoria
ORDER BY cliente, qtd

CREATE VIEW produtosIncompletos AS
SELECT p.nome AS produto, m.nome AS marca, cat.nome AS categoria
FROM produtos p 
LEFT JOIN marcas m  ON p.codigoMarca  = m.codigo 
LEFT JOIN categorias cat  ON p.codigoCategoria = cat.codigo;

CREATE VIEW estoqueNegativoFiliais AS
SELECT p.nome AS produto, f.nome AS filial, p.quantidade AS estoque
FROM produtos p 
RIGHT JOIN filiais f  ON p.codigoFilial  = f.codigo
WHERE p.quantidade < 0;