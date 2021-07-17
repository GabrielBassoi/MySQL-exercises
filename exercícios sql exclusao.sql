create database exerciciosexclu

use exerciciosexclu


CREATE TABLE funcionarios(
    CodFunc INT PRIMARY KEY AUTO_INCREMENT,
    NomeFunc VARCHAR(100) NOT NULL,
    SexoFunc VARCHAR(1) NOT NULL,
    BairroFunc VARCHAR(50) NOT NULL,
    SalFunc DECIMAL(8,2) NOT NULL,
    SetorFunc VARCHAR(50) NOT NULL
)


INSERT INTO funcionarios (NomeFunc,SexoFunc,BairroFunc,SalFunc,SetorFunc)
VALUES ('Larissa Menezes','F','Jabaquara',1200,'Marketing');

INSERT INTO funcionarios (NomeFunc,SexoFunc,BairroFunc,SalFunc,SetorFunc)
VALUES ('Selma Nunes','F','Grajaú',3800,'Vendas');



INSERT INTO funcionarios (NomeFunc,SexoFunc,BairroFunc,SalFunc,SetorFunc)
VALUES ('Leandro Henrique','M','Socorro',2950,'RH');



INSERT INTO funcionarios (NomeFunc,SexoFunc,BairroFunc,SalFunc,SetorFunc)
VALUES ('Amélia Jeremias','F','Socorro',4200,'Marketing');


INSERT INTO funcionarios (NomeFunc,SexoFunc,BairroFunc,SalFunc,SetorFunc)
VALUES ('Cláudio Jorge Silva','M','Jabaquara',1480,'Vendas');


INSERT INTO funcionarios (NomeFunc,SexoFunc,BairroFunc,SalFunc,SetorFunc)
VALUES ('Luciano Souza','M','Pedreira',1000,'Vendas');



INSERT INTO funcionarios (NomeFunc,SexoFunc,BairroFunc,SalFunc,SetorFunc)
VALUES ('Gabriela Santos Nunes','F','Jurubatuba',4150,'');



INSERT INTO funcionarios (NomeFunc,SexoFunc,BairroFunc,SalFunc,SetorFunc)
VALUES ('Rafaela Vieira Jr','F','Jabaquara',700,'Marketing');



INSERT INTO funcionarios (NomeFunc,SexoFunc,BairroFunc,SalFunc,SetorFunc)
VALUES ('Suzana Crispim','F','Grajaú',5600,'Produção');



INSERT INTO funcionarios (NomeFunc,SexoFunc,BairroFunc,SalFunc,SetorFunc)
VALUES ('Sabrina Oliveira Castro','F','Pedreira',2900,'Marketing');



INSERT INTO funcionarios (NomeFunc,SexoFunc,BairroFunc,SalFunc,SetorFunc)
VALUES ('Jarbas Silva Nunes','M','Jurubatuba',5300,'Produção');



INSERT INTO funcionarios (NomeFunc,SexoFunc,BairroFunc,SalFunc,SetorFunc)
VALUES ('Ralf Borges','M','Jabaquara',1600,'Marketing');

select * from funcionarios;


-- 1 - Excluir os registros com valores entre 2000 e 3000 reais

delete from funcionarios where SalFunc between 2000 and 3000;

-- 2 - Excluir os registros dos funcionários com sobrenome silva

delete from funcionarios where NomeFunc like "%silva%";

-- 3 - Excluir os registros dos funcionários que não moram no bairro Prado velho e ganham mais de 1500

delete from funcionarios where BairroFunc <> "Prado velho" and SalFunc > 1500;

-- 4 - Excluir os registros dos funcionários do sexo feminino que não tem salário

delete from funcionarios where SexoFunc = "F" and SalFunc is NULL;

-- 5 - Excluir os registros dos fucnionários que não moram em nenhum bairro e que foram cadastrados após o codigo 50.

delete from funcionarios where BairroFunc is NULL and CodFunc > 50;

-- 6 - Excluir os funcionários que o primeiro nome começa com as letras x,w,z,a,h e i.

delete from funcionarios where NomeFunc regexp "^x|^w|^z|^a|^h|^i";