create table clientes(
	codigo int primary key auto_increment,
	nome varchar(30),
	email varchar(30) unique
);

create table funcionarios(
	codigo int primary key auto_increment,
	nome varchar(30),
	cpf varchar(11) unique
);

create table filiais(
	codigo int primary key auto_increment,
	nome varchar(30),
	cnpj varchar(14) 
);

create table categorias(
	codigo int primary key auto_increment,
	nome varchar(30) 
);

create table marcas(
	codigo int primary key auto_increment,
	nome varchar(30) 
);

create table produtos(
	codigo int primary key auto_increment,
	nome varchar(30),
	codigoMarca int,
	FOREIGN KEY (codigoMarca) REFERENCES marcas(codigo),
	codigoCategoria int,
	FOREIGN KEY (codigoCategoria) REFERENCES categorias(codigo),
	codigoFilial int,
	FOREIGN KEY (codigoFilial) REFERENCES filiais(codigo),
	quantidade float,
	precoMedioCompra float
);

create table vendas(
	codigo int UNIQUE,
	dataHora datetime,
	codigoFilial int,
	FOREIGN KEY (codigoFilial) REFERENCES filiais(codigo),
	codigoFuncionario int,
	FOREIGN KEY (codigoFuncionario) REFERENCES funcionarios(codigo),
	codigoCliente int,
	FOREIGN KEY (codigoCliente) REFERENCES clientes(codigo),
	totalVenda float
);

create table movimentacoesProdutos(
	codigo int primary key auto_increment,
	tipo varchar(10),
	codigoVenda int,
	FOREIGN KEY (codigoVenda) REFERENCES vendas(codigo),
	codigoFilial int,
	FOREIGN KEY (codigoFilial) REFERENCES filiais(codigo),
	codigoProduto int,
	FOREIGN KEY (codigoProduto) REFERENCES produtos(codigo),
	dataHora datetime,
	quantidade float,
	preco float
);