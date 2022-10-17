CREATE TRIGGER trg_movimentacoesProdutos_insert AFTER INSERT 
ON movimentacoesProdutos
FOR EACH ROW
BEGIN 
	declare qtdEntrada float;
	declare qtdSaida float;
	declare precoMedio float;
	declare valorTotal float;
	select sum(quantidade) into qtdEntrada from movimentacoesProdutos mp 
	where tipo = 'Entrada' 
	and codigoProduto = NEW.codigoProduto;
	select sum(quantidade) into qtdSaida from movimentacoesProdutos mp 
	where tipo = 'Saida' 
	and codigoProduto = NEW.codigoProduto;
	UPDATE produtos SET quantidade = qtdEntrada - qtdSaida
	WHERE codigo = NEW.codigoProduto;
	IF(NEW.tipo = "Entrada") THEN 
		select sum(quantidade * preco)/sum(quantidade) into precoMedio from movimentacoesProdutos mp 
		where tipo = 'Entrada' 
		and codigoProduto = NEW.codigoProduto;
		UPDATE produtos SET precoMedioCompra = precoMedio
		WHERE codigo = NEW.codigoProduto;
	ELSEIF(NEW.tipo = "Saida") THEN
		select ROUND(sum(mp.quantidade * mp.preco),2) into valorTotal from movimentacoesProdutos mp
		inner join vendas v on mp.codigoVenda = v.codigo 
		where mp.codigoVenda = new.codigoVenda;
		UPDATE vendas SET totalVenda = valorTotal
		WHERE vendas.codigo = NEW.codigoVenda;
	END IF;
END;

CREATE TRIGGER trg_movimentacoesProdutos_delete AFTER DELETE 
ON movimentacoesProdutos
FOR EACH ROW
BEGIN 
	declare qtdEntrada float;
	declare qtdSaida float;
	declare precoMedio float;
	declare valorTotal float;
	select sum(quantidade) into qtdEntrada from movimentacoesProdutos mp 
	where tipo = 'Entrada' 
	and codigoProduto = OLD.codigoProduto;
	select sum(quantidade) into qtdSaida from movimentacoesProdutos mp 
	where tipo = 'Saida' 
	and codigoProduto = OLD.codigoProduto;
	UPDATE produtos SET quantidade = qtdEntrada - qtdSaida
	WHERE codigo = OLD.codigoProduto;
	IF(OLD.tipo = "Entrada") THEN 
		select sum(quantidade * preco)/sum(quantidade) into precoMedio from movimentacoesProdutos mp 
		where tipo = 'Entrada' 
		and codigoProduto = OLD.codigoProduto;
		UPDATE produtos SET precoMedioCompra = precoMedio
		WHERE codigo = OLD.codigoProduto;
	ELSEIF(OLD.tipo = "Saida") THEN
		select ROUND(sum(mp.quantidade * mp.preco),2) into valorTotal from movimentacoesProdutos mp
		inner join vendas v on mp.codigoVenda = v.codigo 
		where mp.codigoVenda = new.codigoVenda;
		UPDATE vendas SET totalVenda = valorTotal
		WHERE vendas.codigo = OLD.codigoVenda;
	END IF;
END;


CREATE TRIGGER trg_movimentacoesProdutos_update AFTER UPDATE 
ON movimentacoesProdutos
FOR EACH ROW
BEGIN 
	declare qtdEntrada float;
	declare qtdSaida float;
	declare precoMedio float;
	declare valorTotal float;
	select sum(quantidade) into qtdEntrada from movimentacoesProdutos mp 
	where tipo = 'Entrada' 
	and codigoProduto = OLD.codigoProduto;
	select sum(quantidade) into qtdSaida from movimentacoesProdutos mp 
	where tipo = 'Saida' 
	and codigoProduto = OLD.codigoProduto;
	UPDATE produtos SET quantidade = qtdEntrada - qtdSaida
	WHERE codigo = OLD.codigoProduto;
	IF(OLD.tipo = "Entrada") THEN 
		select sum(quantidade * preco)/sum(quantidade) into precoMedio from movimentacoesProdutos mp 
		where tipo = 'Entrada' 
		and codigoProduto = OLD.codigoProduto;
		UPDATE produtos SET precoMedioCompra = precoMedio
		WHERE codigo = OLD.codigoProduto;
	ELSEIF(OLD.tipo = "Saida") THEN
		select ROUND(sum(mp.quantidade * mp.preco),2) into valorTotal from movimentacoesProdutos mp
		inner join vendas v on mp.codigoVenda = v.codigo 
		where mp.codigoVenda = new.codigoVenda;
		UPDATE vendas SET totalVenda = valorTotal
		WHERE vendas.codigo = OLD.codigoVenda;
	END IF;
	select sum(quantidade) into qtdEntrada from movimentacoesProdutos mp 
	where tipo = 'Entrada' 
	and codigoProduto = NEW.codigoProduto;
	select sum(quantidade) into qtdSaida from movimentacoesProdutos mp 
	where tipo = 'Saida' 
	and codigoProduto = NEW.codigoProduto;
	UPDATE produtos SET quantidade = qtdEntrada - qtdSaida
	WHERE codigo = NEW.codigoProduto;
	IF(NEW.tipo = "Entrada") THEN 
		select sum(quantidade * preco)/sum(quantidade) into precoMedio from movimentacoesProdutos mp 
		where tipo = 'Entrada' 
		and codigoProduto = NEW.codigoProduto;
		UPDATE produtos SET precoMedioCompra = precoMedio
		WHERE codigo = NEW.codigoProduto;
	ELSEIF(NEW.tipo = "Saida") THEN
		select ROUND(sum(mp.quantidade * mp.preco),2) into valorTotal from movimentacoesProdutos mp
		inner join vendas v on mp.codigoVenda = v.codigo 
		where mp.codigoVenda = new.codigoVenda;
		UPDATE vendas SET totalVenda = valorTotal
		WHERE vendas.codigo = NEW.codigoVenda;
	END IF;
END;