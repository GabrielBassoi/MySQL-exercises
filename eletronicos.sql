use projects;
create table eletronicos(
	ideletronico int primary key auto_increment,
    eletronico varchar(50) not null,
    tipo_eletronico varchar(50),
    datacadastro timestamp default current_timestamp,
    valor float,
    modelo varchar(50),
    anolancamento char(4)
)