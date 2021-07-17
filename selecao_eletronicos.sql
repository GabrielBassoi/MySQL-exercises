use projects;

create table eletronicos(
	ideletronico int primary key auto_increment,
    eletronico varchar(50) not null,
    tipo_eletronico varchar(50),
    datacadastro timestamp default current_timestamp,
    valor float,
    modelo varchar(50),
    anolancamento char(4)
);

insert into eletronicos(eletronico,tipo_eletronico,valor, modelo,anolancamento)
values('Samsung Galaxy','Celular','150.00','S3','2011');

insert into eletronicos(eletronico,tipo_eletronico,valor, modelo,anolancamento)
values('Samsung Galaxy','Celular','800.00','S5','2019');

insert into eletronicos(eletronico,tipo_eletronico,valor, modelo,anolancamento)
values('Samsung Galaxy','Celular','15000.00','S19','2021');

insert into eletronicos(eletronico,tipo_eletronico,valor, modelo,anolancamento)
values('Logicam','webcam','850.00','w3xtc','2015');

insert into eletronicos(eletronico,tipo_eletronico,valor, modelo,anolancamento)
values('Webcam XPTO','webcam','150.00','3','1985');

insert into eletronicos(eletronico,tipo_eletronico,valor, modelo,anolancamento)
values('TV','Televisão','5850.00','95 polegadas','2015');

insert into eletronicos(eletronico,tipo_eletronico,valor, modelo,anolancamento)
values('TV LG','Televisão','150.00','Tubão das antigas','1995');
select * from eletronicos;

insert into eletronicos(eletronico,tipo_eletronico, valor, modelo, anolancamento)
values('Guitarra fender', 'Instrumento musical','350', 'F325','1975');

insert into eletronicos(eletronico,tipo_eletronico, valor, modelo, anolancamento)
values('Teclado Yamaha', 'Instrumento musical','953.25', 'Vish Prof','2021');

insert into eletronicos(eletronico,tipo_eletronico, modelo, anolancamento)
values('Teclado Casio', 'Instrumento musical', 'px670','1999');

insert into eletronicos(eletronico,tipo_eletronico, modelo, anolancamento, valor)
values('camera', 'webcam', 'px670','1999', "12000");

insert into eletronicos(eletronico,tipo_eletronico, modelo, anolancamento, valor)
values('camera', 'webcam', 'px670','1999', "2000");

select eletronico, tipo_eletronico, valor from eletronicos;

-- selecionar valores com alguns criterios
select * from eletronicos where tipo_eletronico = "celular";

select * from eletronicos where tipo_eletronico = "celular" and valor < "1000";

select * from eletronicos where tipo_eletronico = "celular" or tipo_eletronico = "webcam";

-- contar quantos celulares existem na tabela
select tipo_eletronico, count(*) from eletronicos where tipo_eletronico = "celular";

-- 1 - Selecionar os eletronicos de valor entre 500 e 1000 reais
select * from eletronicos where valor >= "500" and valor <= "1000";
select * from eletronicos where valor between "500" and "1000";

-- 2 - Selecionar os eletronicos e seus modelos onde o tipo eh diferentes de webcam
select eletronico, modelo from eletronicos where tipo_eletronico != "webcam";
select eletronico, modelo from eletronicos where tipo_eletronico <> "webcam";
select eletronico, modelo from eletronicos where tipo_eletronico not in ("webcam");

-- 3 - Selecionar o total de eletronicos de webcam e celular
select tipo_eletronico, count(*) from eletronicos where tipo_eletronico = "celular" or tipo_eletronico = "webcam";
select tipo_eletronico, count(*) from eletronicos where tipo_eletronico = "celular" or tipo_eletronico = "webcam" group by tipo_eletronico;

-- 4 - Selecionar a soma total dos valores de todos os eletronicos
select sum(valor) from eletronicos;

-- 5 - Selecionar a soma total de valores dos eletronicos agrupados por tipo_eletronico
use projects;
select tipo_eletronico, sum(valor) from eletronicos group by tipo_eletronico;

-- 6 - Selecionar a soma total de eletronicos com valores acima de 1000, do tipo webcam e cadastrados no dia de hoje.
use projects;
select sum(valor) from eletronicos where valor > "1000" and tipo_eletronico = "webcam" and datacadastro >= "2021-04-09 00:00:00";
