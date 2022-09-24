use ecommercedio;

-- populando cliente
insert into cliente(nome, pf_pj, endereço, numero_identificador) values ("Fernando Justo", "Pessoa Física", "Rua A, 55 - Cidade Tiradentes - SP", "123456789");
insert into cliente(nome, pf_pj, endereço, numero_identificador) values ("Amanda Barnes LTDA", "Pessoa Jurídica", "Rua B, 66 - Butantã - SP", "12345678910");
insert into cliente(nome, pf_pj, endereço, numero_identificador) values ("Casa dos Games -  ME", "Pessoa Jurídica", "Rua J, 8072 - Ermelino Matarazzo - SP", "98765432210");
insert into cliente(nome, pf_pj, endereço, numero_identificador) values ("Tatiane Oliveira", "Pessoa Física", "Rua F, S/N - Piedade - SP", "123456689");

select * from cliente;

-- populando produto
insert into produto(descricao, categoria, valor) values ("Guarda-Roupa Bartira 2 Portas", "Moveis", 2300.00);
insert into produto(descricao, categoria, valor) values ("Celular Samsung Galaxy Pocket", "Eletronico", 1900.00);
insert into produto(descricao, categoria, valor) values ("Cama King Size", "Moveis", 700.00);
insert into produto(descricao, categoria, valor) values ("Ventilador Mondial", "Outros", 300.00);
insert into produto(descricao, categoria, valor) values ("Bala Fini 80G sabor Morango", "Alimento", 7.00);
insert into produto(descricao, categoria, valor) values ("Bara de Chocolate Snickers 40G", "Alimento", 5.00);

select * from produto;

-- populando entrega
insert into entrega(endereco, valor_frete, status_entrega, cod_rastreio) values ("Rua A, 55 - Cidade Tiradentes - SP", 17.00, default, '453FRD');
insert into entrega(endereco, valor_frete, status_entrega, cod_rastreio) values ("Rua D, 456, Franco da Rocha - SP", 40.00, 'Separando pedido', 'RDR345');

SELECT * from entrega;

-- populando cartao
insert into cartao_cliente (num_cartao, data_vencimento, bandeira, idCliente) values (5678566785521, '2022-11-01', "Visa", 2);
insert into cartao_cliente (num_cartao, data_vencimento, bandeira, idCliente) values (5634066785521, '2027-10-01', "MasterCard", 1);

select * from cartao_cliente;

-- populando fornecedor
insert into fornecedor (razao_social, nome_fantasia, CNPJ, endereco, contato) values ("José Maria Domingues ME", "Doces do Zé", "123456789101112", "Rua T, 66, Jardim Peri - SP", "1198765432");
insert into fornecedor (razao_social, nome_fantasia, CNPJ, endereco, contato) values ("Rebirth Fábrica de Móveis LTDA", "Rebirth Móveis", "123456789121112", "Rua K, 700, Parelheiros - SP", "11987665932");
insert into fornecedor (razao_social, nome_fantasia, CNPJ, endereco, contato) values ("TudoCell Celulares e Outros", "TudoCell", "123456709101112", "Rua P, 361, Jardim Arpoador - SP", "1198765432");

select * from fornecedor;

-- populando estoque
insert into estoque(localEstoque) values ("Centro SP");
insert into estoque(localEstoque) values ("Cotia SP");
insert into estoque(localEstoque) values ("Grande ABC");

select * from estoque;

-- populando vendedor
insert into vendedor (razao_social, nome_fantasia, CNPJ, endereco) values ("Monte Sião Vendas LTDA", "M. Sião Vendas", "987654321000000", "Rua E, 321, Pinheiros - SP");
insert into vendedor (razao_social, nome_fantasia, CNPJ, endereco) values ("Rebirth Fábrica de Móveis LTDA", "Rebirth Móveis", "123456789121112", "Rua K, 700, Parelheiros - SP");
insert into vendedor (razao_social, nome_fantasia, CNPJ, endereco) values ("TudoCell Celulares e Outros", "TudoCell", "123456709101112", "Rua P, 361, Jardim Arpoador - SP");

select * from vendedor;

-- populando pedido
insert into pedido (status_pedido, forma_pagamento, idcartao_credito, id_entrega, idcliente) values ('Aguardando', 'Cartão de Crédito', 2, 3, 1);
insert into pedido (status_pedido, forma_pagamento, idcartao_credito, id_entrega, idcliente) values ('Efetuado', 'Dinheiro', null, 2, 3);
insert into pedido (status_pedido, forma_pagamento, idcartao_credito, id_entrega, idcliente) values ('Efetuado', 'Cartão de Crédito', 1, 1, 2);

select * from pedido;

-- populando disponibilidade_no_estoque
insert into disponibilidade_no_estoque(idProdutoDisp, idEstoqueDisp, quantidade) values (1, 2, 40);
insert into disponibilidade_no_estoque(idProdutoDisp, idEstoqueDisp, quantidade) values (4, 3, 200);
insert into disponibilidade_no_estoque(idProdutoDisp, idEstoqueDisp, quantidade) values (3, 1, 30);
insert into disponibilidade_no_estoque(idProdutoDisp, idEstoqueDisp, quantidade) values (4, 2, 2);
insert into disponibilidade_no_estoque(idProdutoDisp, idEstoqueDisp, quantidade) values (5, 2, 20);

select * from disponibilidade_no_estoque;

-- populando disponibilidade_no_fornecedor

insert into disponibilidade_no_fornecedor(idProdutoDF, idFornecedorDF, quantidade) values (1, 3, 4);
insert into disponibilidade_no_fornecedor(idProdutoDF, idFornecedorDF, quantidade) values (2, 3, 2);

select * from disponibilidade_no_fornecedor;

-- populando produtoVendedor

insert into produtovendedor(idVendedorPV, idProdutoPV,quantidade ) values (2, 3, 2);
insert into produtovendedor(idVendedorPV, idProdutoPV,quantidade) values (3, 2, 15);
insert into produtovendedor(idVendedorPV, idProdutoPV,quantidade) values (1, 3, 4);
insert into produtovendedor(idVendedorPV, idProdutoPV,quantidade) values (2, 4, 30);
insert into produtovendedor(idVendedorPV, idProdutoPV,quantidade) values (1,5, 20);
insert into produtovendedor(idVendedorPV, idProdutoPV,quantidade) values (1, 6, 40);
insert into produtovendedor(idVendedorPV, idProdutoPV,quantidade) values (3, 1, 10);

select * from produtovendedor;

-- populando produtopedido

insert into produtopedido(idProdutoPP, idPedidoPP) values (2, 1);
insert into produtopedido(idProdutoPP, idPedidoPP) values (3, 1);
insert into produtopedido(idProdutoPP, idPedidoPP) values (4, 2);
insert into produtopedido(idProdutoPP, idPedidoPP) values (3, 2);

select * from produtopedido;

-- selects


-- Relação entre produtos e quantidade nos estoques com group by
select p.descricao, e.localEstoque, de.quantidade from estoque e, produto p, 
disponibilidade_no_estoque de where de.idProdutoDisp = p.idProduct group by p.idProduct;

-- Relação entre produtos e quantidade nos estoques com group by, e com having
select p.descricao, e.localEstoque, de.quantidade from estoque e, produto p, 
disponibilidade_no_estoque de where de.idProdutoDisp = p.idProduct group by p.idProduct 
having de.quantidade > 50;

-- Relação entre vendedor, porduto e produtovendedor usando join
select v.razao_social, v.endereco, p.descricao, pv.quantidade from vendedor v join produto p join 
produtovendedor pv on pv.idProdutoPV = p.idProduct and pv.idVendedorPV = v.idVendedor;

-- Relação entre fornecedor, produto e disponibilidade no estoque usando join
select f.nome_fantasia, f.CNPJ, p.descricao, df.quantidade from fornecedor f join disponibilidade_no_fornecedor df 
join produto p on df.idFornecedorDF = f.idFornecedor and df.idProdutoDF = p.idProduct;

-- Quais cartões estão relacionados a clientes?
select * from cartao_cliente, cliente where cartao_cliente.idCliente = cliente.idCliente order by cliente.nome;

-- Select simples de pedido com joins onde os pedidos foram feitos com cartão
select c.nome, pe.status_pedido, pe.forma_pagamento from pedido pe join cliente as c join cartao_cliente as cc
on pe.idcartao_credito = cc.idCartao and cc.idCliente = c.idCliente;






