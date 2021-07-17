-- Criacao de database

create database pecas_de_computador;
use pecas_de_computador;

-- Criacao de tabela

create table pecas(
	id int primary key auto_increment,
    nome varchar(100) not null,
    funcionando bool not null,
    modelo varchar(50) not null,
    data_de_compra date,
    quantidade_armazenamento_gb float,
    memoria_ram_gb float,
    memoria_vram_gb float,
    frequencia_mhz int,
    frequencia_ghz float,
    categoria varchar(40) not null,
    led bool,
    quantidade int,
    ddr varchar(4),
    w varchar(10),
    nucleos int,
    cache_mb int,
    threads int,
    soquete varchar(20),
    cor varchar(30)
);
use pecas_de_computador;
select * from pecas;

-- Insercao

-- 1
insert into pecas(nome, funcionando, modelo, data_de_compra, memoria_ram_gb, frequencia_mhz, categoria, led, quantidade, ddr, cor)
values("Memória HyperX Fury", "1", "HX424C15FB3/8","2021-04-10", 8, 2400, "memoria RAM", "0", "2", "DDR4", "preto");

-- 2
insert into pecas(nome, funcionando, modelo, data_de_compra, memoria_vram_gb, categoria, led, quantidade, ddr, cor)
values("GTX 1050Ti", "1", "1050tigalaxy4gb", "2018-05-10", 4, "Placa de video", "0", 1, "ddr5", "perto e vermelho");

-- 3
insert into pecas(nome, funcionando, modelo, data_de_compra, categoria, led, quantidade, cor)
values("Aorus b360 gaming 3", "1", "b360g3asdj", "2019-03-23", "Placa mae", "1", "1", "preto");
-- 4
insert into pecas(nome, funcionando, modelo, data_de_compra, quantidade_armazenamento_gb, categoria, led, quantidade, cor)
values("SSd kingston", "1", "kingston250g1003", "2019-03-23", "250","SSD", "0", "1", "cinza");
-- 5
insert into pecas(nome, funcionando, modelo, data_de_compra, frequencia_ghz, categoria, led, quantidade, nucleos, cache_mb, threads, soquete, cor)
values("Processador Intel Core i3-8100 Coffee Lake", "1", "BX80684I38100", "2019-03-23", 3.6, "Processador", "0", 1, 4, 6, 4, "LGA 1151", "prateado");

-- Selecao

-- 1
use pecas_de_computador;
select * from pecas where quantidade >= 1 and funcionando = "1" and cor like "%preto%";

-- 2
use pecas_de_computador;
select categoria, sum(quantidade) from pecas where funcionando = "1" group by categoria;

-- 3
use pecas_de_computador;
select * from pecas where funcionando = "1" order by nome;

-- 4
use pecas_de_computador;
select sum(quantidade) from pecas where categoria = "memoria RAM" and funcionando = "1";

-- 5
use pecas_de_computador;
select * from pecas where funcionando = "1" and led = "0" and data_de_compra >= "2019-01-01" and cor not like "%preto%";

delete from pecas where modelo = "HX424C15FB3/8"