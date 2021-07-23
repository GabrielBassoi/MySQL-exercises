show databases

use tecpuc2;

-- show tables 

-- inserções dos alunos
insert into alunos(nome, matricula, cpf)values('Arthur franco',20210831,012345678);
insert into alunos(nome, matricula, cpf)values('Pedro',20210831,012345678);
insert into alunos(nome, matricula, cpf)values('Maria',20210831,012345678);
insert into alunos(nome, matricula, cpf)values('Lucas Stopinski',20210831,012345678);

-- inserções das turmas
insert into turmas(serie,turma, curso, ano, turno) 
values('1','C','Informática','2021','Manhã');

insert into turmas(serie,turma, curso, ano, turno) 
values('1','B','Informática','2021','Manhã');

insert into turmas(serie,turma, curso, ano, turno) 
values('1','A','Informática','2021','Manhã');

insert into turmas(serie,turma, curso, ano, turno) 
values('2','A','Informática','2022','Manhã');


-- inserções dos vinculos dos alunos com as turmas.alter
insert into alunos_turmas(alunos_idalunos, turmas_idturmas)values(1,1);
insert into alunos_turmas(alunos_idalunos, turmas_idturmas)values(2,1);
insert into alunos_turmas(alunos_idalunos, turmas_idturmas)values(3,3);

insert into alunos_turmas(alunos_idalunos, turmas_idturmas)values(4,1);
insert into alunos_turmas(alunos_idalunos, turmas_idturmas)values(4,4);



select * from alunos;
select * from turmas;

-- seleção dos dados dos vinculos dos alunos com as turmas, usando a tabela alunos_turmas

select * from alunos,turmas,alunos_turmas
where idalunos = alunos_idalunos and idturmas = turmas_idturmas and ano = 2021 and serie = 1;

-- Exercícios
-- 1 - criar um modelo com as tabelas para armazenar notas, disciplinas, alunos e turmas
-- 2 - criar as tabelas no banco de dados da forma como foi demonstrado em aula

-- 3 - criar as inserções de todas as disciplinas e notas do aluno na sua turma

insert into alunos(nome, matricula, cpf)values('Gabriel Bassoi',20210831,012345678);
insert into alunos_turmas(alunos_idalunos, turmas_idturmas)values(5, 2);

insert into diciplinas(diciplina)values("Artes");
insert into diciplinas(diciplina)values("Biologia");
insert into diciplinas(diciplina)values("Desenvolvimento de Aplicativos");
insert into diciplinas(diciplina)values("Design Grafico e Multimidia");
insert into diciplinas(diciplina)values("Educacao fisica");
insert into diciplinas(diciplina)values("Filosofia");
insert into diciplinas(diciplina)values("Fisica");
insert into diciplinas(diciplina)values("Geografia");
insert into diciplinas(diciplina)values("Historia");
insert into diciplinas(diciplina)values("Lingua Portuguesa");
insert into diciplinas(diciplina)values("Matematica");
insert into diciplinas(diciplina)values("Modelagem de Banco de Dados");
insert into diciplinas(diciplina)values("Quimica");
insert into diciplinas(diciplina)values("Robotica Aplicada");
insert into diciplinas(diciplina)values("Sistemas Operacionais");
insert into diciplinas(diciplina)values("Sociologia");

insert into diciplinas_turmas(turmas_idturmas, diciplinas_iddiciplinas)values(2, 1);
insert into diciplinas_turmas(turmas_idturmas, diciplinas_iddiciplinas)values(2, 2);
insert into diciplinas_turmas(turmas_idturmas, diciplinas_iddiciplinas)values(2, 3);
insert into diciplinas_turmas(turmas_idturmas, diciplinas_iddiciplinas)values(2, 4);
insert into diciplinas_turmas(turmas_idturmas, diciplinas_iddiciplinas)values(2, 5);
insert into diciplinas_turmas(turmas_idturmas, diciplinas_iddiciplinas)values(2, 6);
insert into diciplinas_turmas(turmas_idturmas, diciplinas_iddiciplinas)values(2, 7);
insert into diciplinas_turmas(turmas_idturmas, diciplinas_iddiciplinas)values(2, 8);
insert into diciplinas_turmas(turmas_idturmas, diciplinas_iddiciplinas)values(2, 9);
insert into diciplinas_turmas(turmas_idturmas, diciplinas_iddiciplinas)values(2, 10);
insert into diciplinas_turmas(turmas_idturmas, diciplinas_iddiciplinas)values(2, 11);
insert into diciplinas_turmas(turmas_idturmas, diciplinas_iddiciplinas)values(2, 12);
insert into diciplinas_turmas(turmas_idturmas, diciplinas_iddiciplinas)values(2, 13);
insert into diciplinas_turmas(turmas_idturmas, diciplinas_iddiciplinas)values(2, 14);
insert into diciplinas_turmas(turmas_idturmas, diciplinas_iddiciplinas)values(2, 15);
insert into diciplinas_turmas(turmas_idturmas, diciplinas_iddiciplinas)values(2, 16);

insert into notas(nota, trimestre, diciplinas_iddiciplinas, alunos_idalunos)
values(10.0, 1, 1, 5);
insert into notas(nota, trimestre, diciplinas_iddiciplinas, alunos_idalunos)
values(10.0, 1, 2, 5);
insert into notas(nota, trimestre, diciplinas_iddiciplinas, alunos_idalunos)
values(10.0, 1, 3, 5);
insert into notas(nota, trimestre, diciplinas_iddiciplinas, alunos_idalunos)
values(9.0, 1, 4, 5);
insert into notas(nota, trimestre, diciplinas_iddiciplinas, alunos_idalunos)
values(9.3, 1, 5, 5);
insert into notas(nota, trimestre, diciplinas_iddiciplinas, alunos_idalunos)
values(9.0, 1, 6, 5);
insert into notas(nota, trimestre, diciplinas_iddiciplinas, alunos_idalunos)
values(8.8, 1, 7, 5);
insert into notas(nota, trimestre, diciplinas_iddiciplinas, alunos_idalunos)
values(10.0, 1, 8, 5);
insert into notas(nota, trimestre, diciplinas_iddiciplinas, alunos_idalunos)
values(10.0, 1, 9, 5);
insert into notas(nota, trimestre, diciplinas_iddiciplinas, alunos_idalunos)
values(9.1, 1, 10, 5);
insert into notas(nota, trimestre, diciplinas_iddiciplinas, alunos_idalunos)
values(9.7, 1, 11, 5);
insert into notas(nota, trimestre, diciplinas_iddiciplinas, alunos_idalunos)
values(10.0, 1, 12, 5);
insert into notas(nota, trimestre, diciplinas_iddiciplinas, alunos_idalunos)
values(9.1, 1, 13, 5);
insert into notas(nota, trimestre, diciplinas_iddiciplinas, alunos_idalunos)
values(10.0, 1, 14, 5);
insert into notas(nota, trimestre, diciplinas_iddiciplinas, alunos_idalunos)
values(10.0, 1, 15, 5);
insert into notas(nota, trimestre, diciplinas_iddiciplinas, alunos_idalunos)
values(10.0, 1, 16, 5);

-- 4 - montar o boletim do trimestre do aluno.(usando o comando select) 

select nome, diciplina, nota from alunos, diciplinas, notas
where notas.alunos_idalunos = idalunos and notas.diciplinas_iddiciplinas = iddiciplinas;
