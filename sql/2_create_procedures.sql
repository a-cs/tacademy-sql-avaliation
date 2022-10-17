create procedure pCriarVenda(in codigoFilial int, in codigoVendedor int, in codigoCliente int)
begin
	declare codigoVenda int;
	declare msg varchar(100);
	select IFNULL(max(codigo),0) + 1 into codigoVenda from vendas;
	insert into vendas (codigo, dataHora, codigoFilial, codigoVendedor, codigoCliente, totalVenda)
	values (codigoVenda, now(), codigoFilial, codigoVendedor, codigoCliente, 0);
	set msg = "Venda criada com sucesso";
	select msg;
end;

call pCriarVenda(1,1,1);


create procedure pCriarProduto(in nome varchar(30), in codigoMarca int, in codigoCategoria int, in codigoFilial int)
begin
	declare msg varchar(100);
	if (select count(*) from produtos p where p.nome = nome and p.codigoFilial = codigoFilial) !=0 THEN 
		set msg = "O Produto já está cadastrado nessa filial";
	ELSE
		INSERT INTO produtos (nome, codigoMarca, codigoCategoria, codigoFilial, quantidade, precoMedioCompra)
		VALUES (nome, codigoMarca, codigoCategoria, codigoFilial,0,0);
		set msg = "Produto cadastrado com sucesso";
	end if;
	select msg;
end;

call pCriarProduto("P1",1,1,1);
call pCriarProduto("P1",1,1,1);
call pCriarProduto("P1",1,1,2);


create procedure pCriarMovimentacaoEntrada(in codigoFilial int, in codigoProduto int, in quantidade float, in preco float)
begin
	declare msg varchar(100);
	INSERT INTO movimentacoesProdutos (tipo, codigoVenda, codigoFilial, codigoProduto, dataHora, quantidade, preco)
	VALUES
	("Entrada", NULL, codigoFilial, codigoProduto, NOW(), quantidade, preco);
	set msg = "Cadastro de entrada efetuado com sucesso";
	select msg;
end;

call pCriarMovimentacaoEntrada(1,1,1,1);

create procedure pCriarMovimentacaoSaida(in codigoVenda int, in codigoFilial int, in codigoProduto int, in quantidade float, in preco float)
begin
	declare msg varchar(100);
	INSERT INTO movimentacoesProdutos (tipo, codigoVenda, codigoFilial, codigoProduto, dataHora, quantidade, preco)
	VALUES
	("Saida", codigoVenda, codigoFilial, codigoProduto, NOW(), quantidade, preco);
	set msg = "Cadastro de saida efetuado com sucesso";
	select msg;
end;

call pCriarMovimentacaoSaida(1,1,1,1,1);