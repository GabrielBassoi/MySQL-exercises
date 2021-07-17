use test;
create table plantas(
	idPlanta int primary key auto_increment,
    planta varchar(50),
    tipoPlanta varchar(20),
    dataPlantio date,
    valorVenda float,
    quantidade int(11),
    tipoQuantidade varchar(15)
);
use test;
-- inserimos registros em uma tabela.
-- Registros: conhunto de dados inseridos em uma linha de uma tabela.
insert into plantas(planta, tipoPlanta, dataPlantio, quantidade, tipoQuantidade)
values("Milho BR400 super doce Havai", "Fruto", "2021-03-17", "45", "pes");

insert into plantas(planta, tipoPlanta)values("Samambaia Amazonica", "Samambaia");

select * from plantas;

delete from plantas where idplanta = "1";

-- O aluno devera criar no db a tabela que desenvolveu na aula anterior e
-- realizar a insercao de no minimo 20 registros diferentes nesta tabela.
-- na medida que for inserido os registrs, consulte usando o comando select.

