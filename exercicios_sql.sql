create database exercicios;

use exercicios;


CREATE TABLE Funcionarios(

CodFunc INT PRIMARY KEY auto_increment,

NomeFunc VARCHAR(100) NOT NULL,

SexoFunc VARCHAR(1) NOT NULL,

BairroFunc VARCHAR(50) NOT NULL,

SalFunc DECIMAL(8,2) NOT NULL,

SetorFunc VARCHAR(50) NOT NULL

);


INSERT INTO Funcionarios (NomeFunc,SexoFunc,BairroFunc,SalFunc,SetorFunc)

VALUES ('Larissa Menezes','F','Jabaquara',1200,'Marketing');

INSERT INTO Funcionarios (NomeFunc,SexoFunc,BairroFunc,SalFunc,SetorFunc)

VALUES ('Selma Nunes','F','Grajaú',3800,'Vendas');



INSERT INTO Funcionarios (NomeFunc,SexoFunc,BairroFunc,SalFunc,SetorFunc)

VALUES ('Leandro Henrique','M','Socorro',2950,'RH');



INSERT INTO Funcionarios (NomeFunc,SexoFunc,BairroFunc,SalFunc,SetorFunc)

VALUES ('Amélia Jeremias','F','Socorro',4200,'Marketing');


INSERT INTO Funcionarios (NomeFunc,SexoFunc,BairroFunc,SalFunc,SetorFunc)

VALUES ('Cláudio Jorge Silva','M','Jabaquara',1480,'Vendas');


INSERT INTO Funcionarios (NomeFunc,SexoFunc,BairroFunc,SalFunc,SetorFunc)

VALUES ('Luciano Souza','M','Pedreira',1000,'Vendas');



INSERT INTO Funcionarios (NomeFunc,SexoFunc,BairroFunc,SalFunc,SetorFunc)

VALUES ('Gabriela Santos Nunes','F','Jurubatuba',4150,'');



INSERT INTO Funcionarios (NomeFunc,SexoFunc,BairroFunc,SalFunc,SetorFunc)

VALUES ('Rafaela Vieira Jr','F','Jabaquara',700,'Marketing');



INSERT INTO Funcionarios (NomeFunc,SexoFunc,BairroFunc,SalFunc,SetorFunc)

VALUES ('Suzana Crispim','F','Grajaú',5600,'Produção');



INSERT INTO Funcionarios (NomeFunc,SexoFunc,BairroFunc,SalFunc,SetorFunc)

VALUES ('Sabrina Oliveira Castro','F','Pedreira',2900,'Marketing');



INSERT INTO Funcionarios (NomeFunc,SexoFunc,BairroFunc,SalFunc,SetorFunc)

VALUES ('Jarbas Silva Nunes','M','Jurubatuba',5300,'Produção');



INSERT INTO Funcionarios (NomeFunc,SexoFunc,BairroFunc,SalFunc,SetorFunc)

VALUES ('Ralf Borges','M','Jabaquara',1600,'Marketing');






-- 1 - A soma dos salários de todos os funcionários.
use exercicios;
select sum(SalFunc) from funcionarios;


-- 2 - Qual a quantidade de funcionários do setor de Marketing.
use exercicios;
select count(*) from funcionarios where SetorFunc = "Marketing";



-- 3 - A quantidade de funcionários que ganha menos de R$3.000,00 e que mora no bairro do Socorro
use exercicios;
select count(*) from funcionarios where SalFunc < "3000" and BairroFunc = "Socorro";


-- 4 -  A soma dos salários dos funcionários agrupada por Bairro (mostrar o bairro e a soma). 
use exercicios;
select BairroFunc, sum(SalFunc) from funcionarios group by BairroFunc;


-- 5 - Os setores que possuem a soma dos salários de seus funcionários maior do que R$1.000,00 e que eles morem no bairro de Pedreira.
use exercicios;
select SetorFunc, sum(SalFunc) from funcionarios where BairroFunc = "Pedreira" group by SetorFunc having sum(SalFunc) > "1000";



-- 6 - A média do salário de todos os funcionários que moram em Jurubatuba 
-- ou no Grajaú, que sejam mulheres e que possuam sobrenome Nunes.
use exercicios;
select avg(SalFunc) from funcionarios where (BairroFunc = "Jurubatuba" or BairroFunc = "Grajaú") and SexoFunc = "F" and NomeFunc like "%Nunes%";

-- 7 - O nome do funcionário que mora no Jabaquara e tem o menor salário.
use exercicios;
select NomeFunc, min(SalFunc) from funcionarios where BairroFunc = "Jabaquara";


-- 8 - Os bairros que possuem mais do que 2 funcionários que ganhem 
-- até R$2.000,00 de salário (mostrar o bairro e a quantidade de funcionários).
use exercicios;
select BairroFunc, count(*) from funcionarios where SalFunc <= "2000" group by BairroFunc having count(*) > 2;


-- 9 - Qual a média dos salários dos funcionários por departamento, 
-- ordenado pela média (decrescente)
use exercicios;
select SetorFunc, avg(SalFunc) from funcionarios group by SetorFunc order by avg(SalFunc) desc;