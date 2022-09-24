create database if not exists ecommercedio;

use ecommercedio;

create table if not exists cliente(
    idCliente int auto_increment primary key,
    nome varchar(45) not null,
    pf_pj enum('Pessoa Física', 'Pessoa Jurídica'),
    Endereço varchar(255),
    Numero_identificador varchar(45),
    constraint unique_num_id unique (Numero_identificador)
);

create table if not exists produto(
    idProduct int auto_increment primary key,
    descricao varchar(120) not null,
    categoria enum('Eletronico','Moveis', 'Alimento', 'Outros'),
    Valor decimal(10,2)
);

drop table pedido;
create table if not exists pedido(
    idPedido int auto_increment primary key,
    status_pedido enum('Aguardando', 'Efetuado', 'Cancelado') default 'Aguardando',
    forma_pagamento varchar(30),
    idcartao_credito int,
    id_entrega int,
    idcliente int,
    constraint fk_cartao_pedido foreign key (idcartao_credito) references cartao_cliente(idCartao),
    constraint  fk_cliente_pedido foreign key (idcliente) references cliente(idCliente),
    constraint fk_entrega_pedido foreign key (id_entrega) references entrega(idEntrega)
);


create table if not exists entrega(
    idEntrega int auto_increment primary key,
    endereco varchar(255) not null,
    valor_frete decimal(10,2),
    status_entrega enum('Aguardando pedido', 'Separando pedido', 'Em transporte', 'Entregue') default 'Aguardando pedido',
    cod_rastreio varchar(30)
);

create table if not exists cartao_cliente(
    idCartao int auto_increment primary key,
    num_cartao varchar(20),
    data_vencimento date,
    bandeira varchar(30),
    idCliente int,
    constraint unique_numcartao unique (num_cartao),
    constraint fk_cliente_cartao foreign key (idCliente) references cliente(idCliente)
);


create table if not exists fornecedor(
    idFornecedor int auto_increment primary key,
    razao_social varchar(255),
    nome_fantasia varchar(255),
    CNPJ char(15),
    endereco varchar(255),
    contato varchar(12),
    constraint unique_cnpj_fornecedor unique (CNPJ) 
);

create table if not exists vendedor(
    idVendedor int auto_increment primary key,
    razao_social varchar(255),
    nome_fantasia varchar(255),
    CNPJ char(15),
    endereco varchar(255),
    constraint unique_cnpj_fornecedor unique (CNPJ) 
);

create table if not exists estoque(
    idEstoque int auto_increment primary key,
    localEstoque varchar(255)
);

create table if not exists disponibilidade_no_estoque(
    idProdutoDisp int,
    idEstoqueDisp int,
    quantidade int default 1,
    primary key(idProdutoDisp, idEstoqueDisp),
    constraint fk_produto_disp foreign key (idProdutoDisp) references produto(idProduct),
    constraint fk_estoque_disp foreign key (idEstoqueDisp) references estoque(idEstoque)
);

create table if not exists disponibilidade_no_fornecedor(
    idProdutoDF int,
    idFornecedorDF int,
    quantidade int default 1,
    primary key(idProdutoDF, idFornecedorDF),
    constraint fk_produto_df foreign key (idProdutoDF) references produto(idProduct),
    constraint fk_fornecedor_df foreign key (idFornecedorDF) references fornecedor(idFornecedor)
);


create table if not exists produtoVendedor(
    idProdutoPV int,
    idVendedorPV int,
    quantidade int default 1,
    primary key(idProdutoPV, idVendedorPV),
    constraint fk_produto_pv foreign key (idProdutoPV) references produto(idProduct),
    constraint fk_vendedor_pv foreign key (idVendedorPV) references vendedor(idVendedor)
);

create table if not exists produtoPedido(
    idProdutoPP int,
    idPedidoPP int,
    primary key(idProdutoPP, idPedidoPP),
    constraint fk_produto_pp foreign key (idProdutoPP) references produto(idProduct),
    constraint fk_pedido_pp foreign key (idPedidoPP) references pedido(idPedido)
);


