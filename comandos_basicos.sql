-- comando para vizualizar os dbs so servidor
show databases;

-- comando para criar um novo databse
create database info1B;

-- comando para deletar um database
drop database info1;

-- comando para usar um database
use info1B;

-- estrtura para criacao de uma tabela
create table avaliacoes(
	idavaliacoes int primary key auto_increment,
    serie varchar(45) not null,
    temporada varchar(45),
    episodios varchar(15),
    assistido date,
    opiniao text,
    avaliacao tinyint
);

-- Primary key - chave primaria que eh um campo que identifica um registro.
-- registro - linha com os dados que sao inseridos em uma tabela.
-- auto_increment = campo auto incrementavel inserido automaticamente, deve ser int.
-- not null - nao nulo, campo obrigatorio o preenchimento.

-- comando para deletar a tabela, destroi a tabela
drop table avaliacoes;